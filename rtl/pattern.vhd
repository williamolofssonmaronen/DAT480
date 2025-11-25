library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pattern_matcher is
  generic(
    PATTERN_LENGTH : integer := 4;
    PATTERN: std_logic_vector := x"DEAD"
  );
  port(
    clk : in std_logic;
    rst : in std_logic;
    data_in : in std_logic_vector(7 downto 0);
    match : out std_logic
  );
end entity pattern_matcher;

architecture behavorial of pattern_matcher is
  signal shift_reg : std_logic_vector(PATTERN_LENGTH*8-1 downto 0) := (others => '0');
begin

  process(clk,rst)
  begin
    if rst='1' then
      shift_reg <= (others => '0');
    elsif rising_edge(clk) then
      -- Shift in new byte
      shift_reg <= shift_reg(shift_reg'left-8 downto 0) & data_in;

      -- Compare with pattern
      if shift_reg = PATTERN then
        match <= '1';
      else
        match <= '0';
      end if;
    end if;
  end process;

end architecture behavorial;
