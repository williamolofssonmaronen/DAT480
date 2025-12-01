library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pattern_engine is
  port(
    clk : in std_logic;
    rst : in std_logic;
    data_in : in std_logic_vector(7 downto 0);
    matches : out std_logic_vector(255 downto 0)
  );
end entity pattern_matcher;

architecture behavorial of pattern_engine is
  signal match_out : std_logic_vector(255 downto 0);
begin
  matches <= match_out;

  patterns: for i in 0 to 255 generate
    pattern_i : entity work.pattern_matcher_i(i)
      port map(
        clk => clk,
        rst => rst,
        new_byte => data_in,
        match => matches(i)
      );
  end generate;

end architecture behavorial;
