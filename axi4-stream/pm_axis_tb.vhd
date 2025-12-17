library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pm_axis_tb is
end entity;

architecture sim of pm_axis_tb is

  ------------------------------------------------------------------
  -- Parameters
  ------------------------------------------------------------------
  constant MATCH_WIDTH : integer := 256;
  constant CLK_PERIOD  : time := 3.333 ns; -- ~300 MHz

  ------------------------------------------------------------------
  -- Signals
  ------------------------------------------------------------------
  signal clk       : std_logic := '0';
  signal rst       : std_logic := '1';

  signal data_in   : std_logic_vector(7 downto 0) := (others => '0');
  signal match_out : std_logic_vector(MATCH_WIDTH-1 downto 0);

  -- AXI4-Stream
  signal tdata  : std_logic_vector(511 downto 0);
  signal tkeep  : std_logic_vector(63 downto 0);
  signal tvalid : std_logic;
  signal tready : std_logic := '1';
  signal tlast  : std_logic;

begin

  ------------------------------------------------------------------
  -- Clock generation
  ------------------------------------------------------------------
  clk <= not clk after CLK_PERIOD / 2;

  ------------------------------------------------------------------
  -- Matcher bank (aggregates pattern matchers)
  ------------------------------------------------------------------
  patterns_top_inst : entity work.patterns_top
  port map (
    clk       => clk,
    rst       => rst,
    new_byte  => data_in,
    match_out => match_out
  );


  ------------------------------------------------------------------
  -- AXI Stream output block (YOUR module)
  ------------------------------------------------------------------
  axis_stream_inst : entity work.axis_match_to_stream_from_matchout
    generic map (
      MATCH_WIDTH => MATCH_WIDTH,
      ID_WIDTH    => 8,
      BEAT_BYTES  => 64
    )
    port map (
      clk           => clk,
      rst           => rst,
      match_out     => match_out,
      flush         => '0',
      m_axis_tdata  => tdata,
      m_axis_tkeep  => tkeep,
      m_axis_tvalid => tvalid,
      m_axis_tready => tready,
      m_axis_tlast  => tlast,
      m_axis_tdest  => open
    );

  ------------------------------------------------------------------
  -- Stimulus
  ------------------------------------------------------------------
  stim_proc : process
  begin
    -- Reset
    rst <= '1';
    wait for 20 ns;
    rst <= '0';

    -- Feed bytes that trigger patterns
    data_in <= x"01"; wait for CLK_PERIOD;
    data_in <= x"02"; wait for CLK_PERIOD;
    data_in <= x"03"; wait for CLK_PERIOD;
    data_in <= x"04"; wait for CLK_PERIOD;

    -- idle
    data_in <= x"00";
    wait for 50 ns;

    wait;
  end process;

end architecture;
