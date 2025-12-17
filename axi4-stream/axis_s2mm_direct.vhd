library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- axis_match_to_stream_from_matchout.vhd
-- Accepts a wide match_out vector (one bit per pattern detector).
-- Detects rising edges on match_out bits -> generates match_id events internally.
-- Packs match_id events into BEAT_BYTES-sized AXI4-Stream beats (LSB-first packing).
-- SINGLE_BEAT_PACKETS: if true, each beat is a separate packet (tlast=1 each beat)
entity axis_match_to_stream_from_matchout is
  generic(
    MATCH_WIDTH         : integer := 256;   -- number of pattern detectors (bits in match_out)
    ID_WIDTH            : integer := 8;     -- width to encode index (must satisfy 2**ID_WIDTH > MATCH_WIDTH-1)
    BEAT_BYTES          : integer := 64;    -- beat size in bytes (64 -> 512-bit AXIS)
    SINGLE_BEAT_PACKETS : boolean := true   -- if true, each beat is a separate packet (tlast=1 for every beat)
  );
  port(
    clk        : in  std_logic;
    rst        : in  std_logic;

    -- input: wide match vector (one bit per pattern detector)
    match_out  : in  std_logic_vector(MATCH_WIDTH-1 downto 0);

    -- optional flush control: assert '1' one-cycle to force send of partial beat
    flush       : in  std_logic := '0';

    -- AXI4-Stream master outputs (BEAT_BYTES*8 bits)
    m_axis_tdata  : out std_logic_vector(BEAT_BYTES*8-1 downto 0);
    m_axis_tkeep  : out std_logic_vector(BEAT_BYTES-1 downto 0);
    m_axis_tvalid : out std_logic;
    m_axis_tready : in  std_logic;
    m_axis_tlast  : out std_logic;
    m_axis_tdest  : out std_logic_vector(15 downto 0)  -- optional destination field
  );
end entity axis_match_to_stream_from_matchout;

architecture rtl of axis_match_to_stream_from_matchout is

  -- how many ID words (ID_WIDTH bits) fit into one beat (floor)
  constant IDS_PER_BEAT : integer := (BEAT_BYTES*8) / ID_WIDTH;
  -- If IDS_PER_BEAT = 0 then ID_WIDTH > BEAT_BITS: operate in one-ID-per-beat mode.

  -- assume IDS_PER_BEAT >= 1
  type id_array_t is array (0 to IDS_PER_BEAT-1)
  of std_logic_vector(ID_WIDTH-1 downto 0);

  signal id_buf : id_array_t;
  signal count  : integer range 0 to IDS_PER_BEAT := 0;

  /*
  -- helper function for ceil_log2 (useful for user checks)
  function ceil_log2(n : natural) return natural is
    variable v : natural := n - 1;
    variable r : natural := 0;
  begin
    while v > 0 loop
      v := v / 2;
      r := r + 1;
    end loop;
    return r;
  end;

  -- Optionally assert ID_WIDTH large enough to index MATCH_WIDTH
  -- (this assertion executes during elaboration/simulation; synthesis tools may ignore)
  constant REQ_ID_WIDTH : natural := ceil_log2(MATCH_WIDTH);
  */

  signal clear_buf : std_logic := '0';


  signal tvalid_i : std_logic := '0';
   
  signal full_beat_ready : std_logic;

  -- sending state
  signal sending   : std_logic := '0';
  signal beat_data : std_logic_vector(BEAT_BYTES*8-1 downto 0) := (others => '0');
  signal beat_keep : std_logic_vector(BEAT_BYTES-1 downto 0) := (others => '0');

  -- internal ready/valid for accepting new IDs (drives backpressure implicitly by not enqueuing)
  signal accept_enable : std_logic := '1';

  -- previous cycle snapshot of match_out for edge detection
  signal prev_match : std_logic_vector(MATCH_WIDTH-1 downto 0) := (others => '0');

begin

  ----------------------------------------------------------------------------
  -- Edge-detection and enqueueing process:
  -- On each rising clock, compare match_out with prev_match.
  -- For any bit where prev_match='0' and match_out='1' (rising edge),
  -- enqueue that index into the id_buf (LSB index first).
  --
  -- If too many rising edges occur in one cycle, we enqueue up to buffer capacity,
  -- then stop; remaining events will be detected again only when they re-rise.
  ----------------------------------------------------------------------------
  enqueue_proc : process(clk, rst)
  variable enq_pos : integer;
  variable i       : integer;
  begin
    if rst = '1' then
      count         <= 0;
      id_buf        <= (others => (others => '0'));
      prev_match    <= (others => '0');
      accept_enable <= '1';

    elsif rising_edge(clk) then

      if clear_buf = '1' then
        count         <= 0;
        id_buf        <= (others => (others => '0'));
        accept_enable <= '1';

      else
        enq_pos := count;

        for i in 0 to MATCH_WIDTH-1 loop
          if prev_match(i) = '0' and match_out(i) = '1' then
            if accept_enable = '1' and enq_pos < IDS_PER_BEAT then
              id_buf(enq_pos) <= std_logic_vector(to_unsigned(i, ID_WIDTH));
              enq_pos := enq_pos + 1;
            end if;
          end if;
        end loop;

        count <= enq_pos;

        if enq_pos = IDS_PER_BEAT then
          accept_enable <= '0';
        end if;
      end if;

      prev_match <= match_out;
    end if;
  end process;


  ----------------------------------------------------------------------------
  -- Prepare beat_data and beat_keep from id_buf/count using variables.
  -- Packing convention: id_buf(0) -> least-significant bits (LSB-first).
  -- If you want MSB-first packing, swap the assignment order here.
  ----------------------------------------------------------------------------
  prepare_beat: process(count, id_buf)
    variable v : std_logic_vector(BEAT_BYTES*8-1 downto 0);
    variable k : std_logic_vector(BEAT_BYTES-1 downto 0);
    variable i : integer;
    variable bit_off : integer;
    variable valid_bits : integer;
    variable valid_bytes : integer;
    variable tmp_id : std_logic_vector(ID_WIDTH-1 downto 0);
  begin
    v := (others => '0');
    k := (others => '0');

    if IDS_PER_BEAT > 0 then
      -- pack all buffered ids into v (LSB-first mapping)
      for i in 0 to IDS_PER_BEAT-1 loop
        bit_off := i * ID_WIDTH;
        v(bit_off + ID_WIDTH - 1 downto bit_off) := id_buf(i);
      end loop;
      valid_bits := count * ID_WIDTH;
    else
      null;      
    end if;

    if valid_bits = 0 then
      valid_bytes := 0;
    else
      -- ceil(valid_bits / 8)
      valid_bytes := (valid_bits + 7) / 8;
    end if;

    -- build tkeep: lower bytes valid (LSB-first packing => lower indices are valid)
    for i in 0 to BEAT_BYTES-1 loop
      if i < valid_bytes then
        k(i) := '1';
      else
        k(i) := '0';
      end if;
    end loop;

    beat_data <= v;
    beat_keep <= k;
  end process prepare_beat;

  ----------------------------------------------------------------------------
  -- AXI4-Stream send FSM (same semantics as your original packer).
  -- Behavior:
  --  - When count == IDS_PER_BEAT => send one full beat
  --  - When flush='1' and count > 0 => send partial beat
  --  - Wait for tready before clearing the buffer and re-enabling acceptance
  ----------------------------------------------------------------------------
  send_fsm: process(clk, rst)
  begin
    if rst = '1' then
      m_axis_tdata  <= (others => '0');
      m_axis_tkeep  <= (others => '0');
      m_axis_tvalid <= tvalid_i;
      m_axis_tlast  <= '0';
      m_axis_tdest  <= (others => '0');
      sending <= '0';
      accept_enable <= '1';
      if IDS_PER_BEAT > 0 then
        clear_buf <= '1';
      end if;
    elsif rising_edge(clk) then
      if sending = '0' then
        -- decide whether to send a beat
        if (IDS_PER_BEAT > 0 and count = IDS_PER_BEAT) then
          -- full-beat ready to send
          sending <= '1';
          m_axis_tdata  <= beat_data;
          if IDS_PER_BEAT > 0 and count = IDS_PER_BEAT then
            m_axis_tkeep  <= (others => '1');
          else
            m_axis_tkeep  <= beat_keep;
          end if;
          tvalid_i <= '1';
          if SINGLE_BEAT_PACKETS then
            m_axis_tlast <= '1';
          else
            m_axis_tlast <= '0';
          end if;
          m_axis_tdest  <= (others => '0');
          accept_enable <= '0';
        elsif flush = '1' and count > 0 then
          -- partial beat: send what's in the buffer
          sending <= '1';
          m_axis_tdata  <= beat_data;
          m_axis_tkeep  <= beat_keep;
          tvalid_i <= '1';
          m_axis_tlast  <= '1';
          m_axis_tdest  <= (others => '0');
          accept_enable <= '0';
        else
          -- idle
          m_axis_tdata  <= (others => '0');
          m_axis_tkeep  <= (others => '0');
          tvalid_i <= '0';
          m_axis_tlast  <= '0';
        end if;
      else
        -- currently presenting a beat; wait for downstream to accept
        if tvalid_i = '1' and m_axis_tready = '1' then
          -- accepted: clear buffer and return to accepting
          tvalid_i <= '0';
          m_axis_tlast  <= '0';
          m_axis_tdata  <= (others => '0');
          m_axis_tkeep  <= (others => '0');

          -- clear the buffer contents
          if IDS_PER_BEAT > 0 then
            id_buf <= (others => (others => '0'));
          end if;
          if count = IDS_PER_BEAT then
            full_beat_ready <= '1';
          else
            full_beat_ready <= '0';
          end if;

          sending <= '0';
          accept_enable <= '1';
        else
          -- hold outputs until accepted
          null;
        end if;
      end if;
    end if;
  
  end process send_fsm;

end architecture rtl;
