library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- axis_match_to_stream.vhd
-- Packs incoming match IDs (match_valid/match_id) into BEAT_BYTES-sized AXI4-Stream beats.
-- Improvements:
--  - prepare_beat uses variables for synthesis-safe combinational logic
--  - configurable SINGLE_BEAT_PACKETS: if true, each beat is a packet (tlast=1 each beat)
--  - comments about endianness (LSB-first packing chosen here)
entity axis_match_to_stream is
  generic(
    ID_WIDTH           : integer := 16;    -- width of pattern ID in bits (or bytes?)
    BEAT_BYTES         : integer := 64;    -- 64 bytes -> 512-bit AXI stream width
    SINGLE_BEAT_PACKETS: boolean := true   -- if true, each beat is a separate packet (tlast=1 for every beat)
  );
  port(
    clk        : in  std_logic;
    rst        : in  std_logic;

    -- input: single-ID valid/ready interface from pattern_engine
    match_valid : in  std_logic;
    match_id    : in  std_logic_vector(ID_WIDTH-1 downto 0);
    match_ready : out std_logic;

    -- optional flush control: assert '1' one-cycle to force send of partial beat
    flush       : in  std_logic := '0';

    -- AXI4-Stream master outputs (512-bit data)
    m_axis_tdata  : out std_logic_vector(BEAT_BYTES*8-1 downto 0);
    m_axis_tkeep  : out std_logic_vector(BEAT_BYTES-1 downto 0);
    m_axis_tvalid : out std_logic;
    m_axis_tready : in  std_logic;
    m_axis_tlast  : out std_logic;
    m_axis_tdest  : out std_logic_vector(15 downto 0)  -- optional destination field
  );
end entity axis_match_to_stream;

architecture rtl of axis_match_to_stream is
  constant IDS_PER_BEAT : integer := (BEAT_BYTES*8) / ID_WIDTH;

  -- small buffer for IDs to pack into a beat
  type id_array_t is array (0 to IDS_PER_BEAT-1) of std_logic_vector(ID_WIDTH-1 downto 0);
  signal id_buf    : id_array_t := (others => (others => '0'));
  signal count     : integer range 0 to IDS_PER_BEAT := 0;

  -- sending state
  signal sending   : std_logic := '0';
  signal beat_data : std_logic_vector(BEAT_BYTES*8-1 downto 0) := (others => '0');
  signal beat_keep : std_logic_vector(BEAT_BYTES-1 downto 0) := (others => '0');

  -- internal ready/valid for accepting new IDs from pattern_engine
  signal accept_enable : std_logic := '1';

begin

  ----------------------------------------------------------------------------
  -- match_ready is driven directly from accept_enable (backpressure)
  ----------------------------------------------------------------------------
  match_ready <= accept_enable;

  ----------------------------------------------------------------------------
  -- Accept IDs from pattern_engine and pack into id_buf.
  -- un-assert match_ready (backpressure).
  ----------------------------------------------------------------------------
  accept_proc: process(clk, rst)
  begin
    if rst = '1' then
      id_buf <= (others => (others => '0'));
      count <= 0;
      accept_enable <= '1';
    elsif rising_edge(clk) then
      -- Default: keep previous accept_enable (it will be updated by send FSM)
      -- Only accept a new ID if accept_enable is '1' and match_valid is '1'
      if accept_enable = '1' and match_valid = '1' then
        if count < IDS_PER_BEAT then
          id_buf(count) <= match_id;
          count <= count + 1;
        else
          -- Buffer full and accept_enable should have been '0' -> do nothing (no overwrite)
          -- We keep the last valid buffer until it is sent.
          null;
        end if;
      end if;

      -- If buffer reached full count exactly this cycle, stop accepting new IDs
      if count = IDS_PER_BEAT then
        accept_enable <= '0';
      end if;
    end if;
  end process accept_proc;

  ----------------------------------------------------------------------------
  -- Prepare beat_data and beat_keep from id_buf/count using variables.
  -- Packing convention: id_buf(0) -> least-significant bits (LSB-first).
  -- If you want MSB-first packing, swap the assignment order here.
  ----------------------------------------------------------------------------
  prepare_beat: process(all)
    variable v : std_logic_vector(BEAT_BYTES*8-1 downto 0);
    variable k : std_logic_vector(BEAT_BYTES-1 downto 0);
    variable i : integer;
    variable bit_off : integer;
    variable valid_bits : integer;
    variable valid_bytes : integer;
  begin
    v := (others => '0');
    for i in 0 to IDS_PER_BEAT-1 loop
      bit_off := i * ID_WIDTH;
      -- map id_buf(i) into v at bit offset bit_off (LSB-first)
      v(bit_off + ID_WIDTH - 1 downto bit_off) := id_buf(i);
    end loop;

    -- compute valid bytes = ceil(count * ID_WIDTH / 8)
    valid_bits := count * ID_WIDTH;
    if valid_bits = 0 then
      valid_bytes := 0;
    else
      valid_bytes := (valid_bits + 7) / 8;
    end if;

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
  -- AXI4-Stream send FSM.
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
      m_axis_tvalid <= '0';
      m_axis_tlast  <= '0';
      m_axis_tdest  <= (others => '0');
      sending <= '0';
      accept_enable <= '1';
      count <= 0;
      id_buf <= (others => (others => '0'));
    elsif rising_edge(clk) then
      if sending = '0' then
        if count = IDS_PER_BEAT then
          -- full beat ready to send
          sending <= '1';
          m_axis_tdata  <= beat_data;
          m_axis_tkeep  <= (others => '1'); -- full beat
          m_axis_tvalid <= '1';
          if SINGLE_BEAT_PACKETS then
            m_axis_tlast <= '1';
          else
            m_axis_tlast <= '0'; -- multi-beat handling would require extra logic
          end if;
          m_axis_tdest  <= (others => '0');
          accept_enable <= '0';
        elsif flush = '1' and count > 0 then
          -- partial beat: send what's in the buffer
          sending <= '1';
          m_axis_tdata  <= beat_data;
          m_axis_tkeep  <= beat_keep; -- partial beat valid bytes
          m_axis_tvalid <= '1';
          m_axis_tlast  <= '1';
          m_axis_tdest  <= (others => '0');
          accept_enable <= '0';
        else
          -- idle
          m_axis_tdata  <= (others => '0');
          m_axis_tkeep  <= (others => '0');
          m_axis_tvalid <= '0';
          m_axis_tlast  <= '0';
        end if;
      else
        -- currently presenting a beat; wait for downstream to accept
        if m_axis_tvalid = '1' and m_axis_tready = '1' then
          -- accepted: clear buffer and return to accepting
          m_axis_tvalid <= '0';
          m_axis_tlast  <= '0';
          m_axis_tdata  <= (others => '0');
          m_axis_tkeep  <= (others => '0');
          id_buf <= (others => (others => '0'));
          count <= 0;
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
