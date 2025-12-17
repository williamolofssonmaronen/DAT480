library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- axis_mem_to_stream.vhd
-- Simple memory-beat -> AXI4-Stream master bridge.
-- Assumes memory-side provides beat-sized data with valid/ready and optional last flag.
-- This is intended to be connected to a memory-to-beat producer (DMA/HLS mm2s or a FIFO).
-- It forwards mem_* inputs to the m_axis_* outputs while obeying m_axis_tready backpressure.

entity axis_mem_to_stream is
  generic(
    BEAT_BYTES : integer := 64  -- bytes per beat (64 -> 512-bit)
  );
  port(
    clk   : in  std_logic;
    rst   : in  std_logic;

    -- Memory-side beat input (any block that reads DDR and outputs beats)
    mem_tdata  : in  std_logic_vector(BEAT_BYTES*8-1 downto 0);
    mem_tkeep  : in  std_logic_vector(BEAT_BYTES-1 downto 0); -- which bytes in mem_tdata are valid
    mem_tvalid : in  std_logic;  -- memory-side says data is valid
    mem_tready : out std_logic;  -- we can accept memory-beat next cycle
    mem_tlast  : in  std_logic := '0'; -- optional: indicates last beat of a packet (if available)

    -- AXI4-Stream master outputs (512-bit data)
    m_axis_tdata  : out std_logic_vector(BEAT_BYTES*8-1 downto 0);
    m_axis_tkeep  : out std_logic_vector(BEAT_BYTES-1 downto 0);
    m_axis_tvalid : out std_logic;
    m_axis_tready : in  std_logic;
    m_axis_tlast  : out std_logic;
    m_axis_tdest  : out std_logic_vector(15 downto 0)  -- optional destination field
  );
end entity axis_mem_to_stream;

architecture rtl of axis_mem_to_stream is

  -- Simple FSM states
  type state_t is (IDLE, PRESENT);
  signal state : state_t := IDLE;

  -- registers to hold beat while waiting for tready
  signal reg_data : std_logic_vector(BEAT_BYTES*8-1 downto 0) := (others => '0');
  signal reg_keep : std_logic_vector(BEAT_BYTES-1 downto 0) := (others => '0');
  signal reg_last : std_logic := '0';
  signal reg_valid: std_logic := '0';

begin

  ----------------------------------------------------------------------------
  -- Policy:
  --  - When mem_tvalid='1' and mem_tready='1' we sample mem_tdata into registers.
  --  - We present the registered beat on m_axis_* with m_axis_tvalid='1'.
  --  - When m_axis_tready='1' and m_axis_tvalid='1' the beat is accepted and
  --    we return to IDLE (or accept the next mem beat if it's already available).
  ----------------------------------------------------------------------------

  -- mem_tready reflects whether we can accept incoming mem beat.
  -- We accept when we are IDLE and not currently holding an unaccepted beat.
  mem_tready <= '1' when (state = IDLE) else '0';

  -- drive outputs default
  m_axis_tdata  <= reg_data;
  m_axis_tkeep  <= reg_keep;
  m_axis_tvalid <= reg_valid;
  m_axis_tlast  <= reg_last;
  m_axis_tdest  <= (others => '0');

  process(clk, rst)
  begin
    if rst = '1' then
      state <= IDLE;
      reg_valid <= '0';
      reg_data  <= (others => '0');
      reg_keep  <= (others => '0');
      reg_last  <= '0';
    elsif rising_edge(clk) then

      case state is

        when IDLE =>
          -- if memory side presents a beat, capture it and move to PRESENT
          if mem_tvalid = '1' and mem_tready = '1' then
            reg_data  <= mem_tdata;
            reg_keep  <= mem_tkeep;
            reg_last  <= mem_tlast;
            reg_valid <= '1';
            state <= PRESENT;
          else
            -- remain idle: not holding valid beat
            reg_valid <= '0';
            reg_last  <= '0';
          end if;

        when PRESENT =>
          -- present the beat until AXI downstream accepts it
          if reg_valid = '1' and m_axis_tready = '1' then
            -- accepted by downstream
            reg_valid <= '0';
            reg_data  <= (others => '0');
            reg_keep  <= (others => '0');
            reg_last  <= '0';
            -- try to accept next memory beat next cycle (state goes to IDLE)
            state <= IDLE;
          else
            -- hold the current beat
            state <= PRESENT;
          end if;

      end case;
    end if;
  end process;

end architecture rtl;
