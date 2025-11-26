library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pattern_engine is
  port(
    clk : in std_logic;
    rst : in std_logic;
    data_in : in std_logic_vector(7 downto 0);
    match : out std_logic
  );
end entity pattern_matcher;

architecture behavorial of pattern_matcher is
  component pattern_matcher
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
  end component pattern_matcher;

begin

  for i in 0 to 3 generate
    

end architecture behavorial;
