library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entity for pattern 001011110110001001101110011000100110011001101111011100100110110100101110011000110110011101101001
entity pattern_matcher_0 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(95 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_0 is
begin
  match <= 0 when data = "001011110110001001101110011000100110011001101111011100100110110100101110011000110110011101101001" else 0;
end architecture;

-- Entity for pattern 00101111011000100110001000101111011010010110111001100100011001010111100000101110011100000110100001110000
entity pattern_matcher_1 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(103 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_1 is
begin
  match <= 1 when data = "00101111011000100110001000101111011010010110111001100100011001010111100000101110011100000110100001110000" else 0;
end architecture;

-- Entity for pattern 0010111101110011011001010111001001110110011001010111001000101101011100110111010001100001011101000111010101110011
entity pattern_matcher_2 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(111 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_2 is
begin
  match <= 2 when data = "0010111101110011011001010111001001110110011001010111001000101101011100110111010001100001011101000111010101110011" else 0;
end architecture;

-- Entity for pattern 0010111101101110011100000110100000101101011001010111100001110000011011000110111101101001011101000111001101100011011000010110111001100111011001010111010000101110011000110110011101101001
entity pattern_matcher_3 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(183 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_3 is
begin
  match <= 3 when data = "0010111101101110011100000110100000101101011001010111100001110000011011000110111101101001011101000111001101100011011000010110111001100111011001010111010000101110011000110110011101101001" else 0;
end architecture;

-- Entity for pattern 01000011010000010100110000100000
entity pattern_matcher_4 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(31 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_4 is
begin
  match <= 4 when data = "01000011010000010100110000100000" else 0;
end architecture;

-- Entity for pattern 00001011
entity pattern_matcher_5 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(7 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_5 is
begin
  match <= 5 when data = "00001011" else 0;
end architecture;

-- Entity for pattern 0010111001101000011101000110110101101100001111110011000000101110
entity pattern_matcher_6 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(63 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_6 is
begin
  match <= 6 when data = "0010111001101000011101000110110101101100001111110011000000101110" else 0;
end architecture;

-- Entity for pattern 001011110110000101101110011001000111001001101111011010010110010000101111011100110110110101110011001011110111001101111001011011100110001100101110011100000110100001110000
entity pattern_matcher_7 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(167 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_7 is
begin
  match <= 7 when data = "001011110110000101101110011001000111001001101111011010010110010000101111011100110110110101110011001011110111001101111001011011100110001100101110011100000110100001110000" else 0;
end architecture;

-- Entity for pattern 001011110110100101101110011001100110111100110010011101110111011101110111
entity pattern_matcher_8 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(71 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_8 is
begin
  match <= 8 when data = "001011110110100101101110011001100110111100110010011101110111011101110111" else 0;
end architecture;

-- Entity for pattern 00101111011000110110100001100001011011100110011101100101011100000111011100101110011001010111100001100101
entity pattern_matcher_9 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(103 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_9 is
begin
  match <= 9 when data = "00101111011000110110100001100001011011100110011101100101011100000111011100101110011001010111100001100101" else 0;
end architecture;

-- Entity for pattern 00101111011100000111010101110010011000110110100001100001011100110110010100101110011100000110100001110000001111110110000100111101
entity pattern_matcher_10 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(127 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_10 is
begin
  match <= 10 when data = "00101111011100000111010101110010011000110110100001100001011100110110010100101110011100000110100001110000001111110110000100111101" else 0;
end architecture;

-- Entity for pattern 001011100111001001110000
entity pattern_matcher_11 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(23 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_11 is
begin
  match <= 11 when data = "001011100111001001110000" else 0;
end architecture;

-- Entity for pattern 0000010100101001000000000000000000000000
entity pattern_matcher_12 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(39 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_12 is
begin
  match <= 12 when data = "0000010100101001000000000000000000000000" else 0;
end architecture;

-- Entity for pattern 00101111001111110111010100111101
entity pattern_matcher_13 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(31 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_13 is
begin
  match <= 13 when data = "00101111001111110111010100111101" else 0;
end architecture;

-- Entity for pattern 01010011011101010110001001101010011001010110001101110100001110100010000000111101001111110111010101110100011001100010110100111000001111110100001000111111
entity pattern_matcher_14 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(151 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_14 is
begin
  match <= 14 when data = "01010011011101010110001001101010011001010110001101110100001110100010000000111101001111110111010101110100011001100010110100111000001111110100001000111111" else 0;
end architecture;

-- Entity for pattern 0010111101100111011011000110111101100010011000010110110000101110011000110110011101101001
entity pattern_matcher_15 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(87 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_15 is
begin
  match <= 15 when data = "0010111101100111011011000110111101100010011000010110110000101110011000110110011101101001" else 0;
end architecture;

-- Entity for pattern 0100100001100101011011000110110001101111001011100010111000101110
entity pattern_matcher_16 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(63 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_16 is
begin
  match <= 16 when data = "0100100001100101011011000110110001101111001011100010111000101110" else 0;
end architecture;

-- Entity for pattern 00101111011010010110111001110000011101010111010000101110011000100110000101110100
entity pattern_matcher_17 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(79 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_17 is
begin
  match <= 17 when data = "00101111011010010110111001110000011101010111010000101110011000100110000101110100" else 0;
end architecture;

-- Entity for pattern 0010111101000111010101110101011101000101010000100010111001000101010110000100010100111111
entity pattern_matcher_18 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(87 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_18 is
begin
  match <= 18 when data = "0010111101000111010101110101011101000101010000100010111001000101010110000100010100111111" else 0;
end architecture;

-- Entity for pattern 001011110010111001101000011010010111001101110100011011110111001001111001
entity pattern_matcher_19 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(71 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_19 is
begin
  match <= 19 when data = "001011110010111001101000011010010111001101110100011011110111001001111001" else 0;
end architecture;

-- Entity for pattern 0010111101011111011101100111010001101001010111110110001001101001011011100010111101011111011101100111010001101001010111110110000101110101011101000010111101100001011101010111010001101000011011110111001000101110011001010111100001100101
entity pattern_matcher_20 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(231 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_20 is
begin
  match <= 20 when data = "0010111101011111011101100111010001101001010111110110001001101001011011100010111101011111011101100111010001101001010111110110000101110101011101000010111101100001011101010111010001101000011011110111001000101110011001010111100001100101" else 0;
end architecture;

-- Entity for pattern 001011110110010101101101011101010110110101100001011010010110110000101110011000110110011101101001
entity pattern_matcher_21 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(95 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_21 is
begin
  match <= 21 when data = "001011110110010101101101011101010110110101100001011010010110110000101110011000110110011101101001" else 0;
end architecture;

-- Entity for pattern 001011110110100101101110011100110111010001100001011100000110100100101110011100000110100001110000001111110110100101100100010011010110101100111101
entity pattern_matcher_22 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(143 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_22 is
begin
  match <= 22 when data = "001011110110100101101110011100110111010001100001011100000110100100101110011100000110100001110000001111110110100101100100010011010110101100111101" else 0;
end architecture;

-- Entity for pattern 011001000110001001101101011100110101111101110010011001010111000001100011011000010111010000101110011000010110010001100100010111110111000001110010011010010110111101110010011010010111010001111001010111110110111001100011011010000110000101110010
entity pattern_matcher_23 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(239 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_23 is
begin
  match <= 23 when data = "011001000110001001101101011100110101111101110010011001010111000001100011011000010111010000101110011000010110010001100100010111110111000001110010011010010110111101110010011010010111010001111001010111110110111001100011011010000110000101110010" else 0;
end architecture;

-- Entity for pattern 0010111100110000001011110010000001001000010101000101010001010000001011110011000100101110
entity pattern_matcher_24 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(87 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_24 is
begin
  match <= 24 when data = "0010111100110000001011110010000001001000010101000101010001010000001011110011000100101110" else 0;
end architecture;

-- Entity for pattern 01000001010001000100110101001001010011100100100101010011010101000101001001000001010101000100111101010010
entity pattern_matcher_25 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(103 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_25 is
begin
  match <= 25 when data = "01000001010001000100110101001001010011100100100101010011010101000101001001000001010101000100111101010010" else 0;
end architecture;

-- Entity for pattern 01010100010001010101001001001101001111010111100001110100011001010111001001101101
entity pattern_matcher_26 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(79 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_26 is
begin
  match <= 26 when data = "01010100010001010101001001001101001111010111100001110100011001010111001001101101" else 0;
end architecture;

-- Entity for pattern 00101111011011010111001101100100011000010110001100101111
entity pattern_matcher_27 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(55 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_27 is
begin
  match <= 27 when data = "00101111011011010111001101100100011000010110001100101111" else 0;
end architecture;

-- Entity for pattern 00111111010100000110000101100111011001010101001101100101011100100111011001101001011000110110010101110011
entity pattern_matcher_28 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(103 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_28 is
begin
  match <= 28 when data = "00111111010100000110000101100111011001010101001101100101011100100111011001101001011000110110010101110011" else 0;
end architecture;

-- Entity for pattern 0101010101110011011001010111001000101101010000010110011101100101011011100111010000111010001000000100110101101001011011100110010001110011011100000110000101110010011010110010000001001101010010010101000000100000
entity pattern_matcher_29 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(207 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_29 is
begin
  match <= 29 when data = "0101010101110011011001010111001000101101010000010110011101100101011011100111010000111010001000000100110101101001011011100110010001110011011100000110000101110010011010110010000001001101010010010101000000100000" else 0;
end architecture;

-- Entity for pattern 0100100001101111011100110111010000111010001000000110110101100010011001100110001101100101001100100011010001110010011001110110111000110110001101010110001001111000001100110110011100101110
entity pattern_matcher_30 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(183 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_30 is
begin
  match <= 30 when data = "0100100001101111011100110111010000111010001000000110110101100010011001100110001101100101001100100011010001110010011001110110111000110110001101010110001001111000001100110110011100101110" else 0;
end architecture;

-- Entity for pattern 000110000000001100000011
entity pattern_matcher_31 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(23 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_31 is
begin
  match <= 31 when data = "000110000000001100000011" else 0;
end architecture;

-- Entity for pattern 0010111101101010011100110010111101100100011010010111001101100001011000100110110001100101001011100110101001110011001111110111010001111001011100000110010100111101
entity pattern_matcher_32 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(159 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_32 is
begin
  match <= 32 when data = "0010111101101010011100110010111101100100011010010111001101100001011000100110110001100101001011100110101001110011001111110111010001111001011100000110010100111101" else 0;
end architecture;

-- Entity for pattern 01000110011100100110000101100111
entity pattern_matcher_33 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(31 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_33 is
begin
  match <= 33 when data = "01000110011100100110000101100111" else 0;
end architecture;

-- Entity for pattern 0000000000000000000000000001000111010000000000000000000000000000
entity pattern_matcher_34 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(63 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_34 is
begin
  match <= 34 when data = "0000000000000000000000000001000111010000000000000000000000000000" else 0;
end architecture;

-- Entity for pattern 00110001001000000110011001101001011011000110010100101000011100110010100100100000011000110110111101110000011010010110010101100100
entity pattern_matcher_35 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(127 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_35 is
begin
  match <= 35 when data = "00110001001000000110011001101001011011000110010100101000011100110010100100100000011000110110111101110000011010010110010101100100" else 0;
end architecture;

-- Entity for pattern 0011000000110000
entity pattern_matcher_36 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(15 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_36 is
begin
  match <= 36 when data = "0011000000110000" else 0;
end architecture;

-- Entity for pattern 00101111011100110110010101100001011100100110001101101000001110010011011100101110011101100111010001110011
entity pattern_matcher_37 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(103 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_37 is
begin
  match <= 37 when data = "00101111011100110110010101100001011100100110001101101000001110010011011100101110011101100111010001110011" else 0;
end architecture;

-- Entity for pattern 010100000100111101010011010101000010000000101111
entity pattern_matcher_38 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(47 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_38 is
begin
  match <= 38 when data = "010100000100111101010011010101000010000000101111" else 0;
end architecture;

-- Entity for pattern 001011110111001101100011011100100110100101110000011101000111001100101111010001100111000001100001011001000110110101100011011001110110100100101110011001010111100001100101
entity pattern_matcher_39 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(167 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_39 is
begin
  match <= 39 when data = "001011110111001101100011011100100110100101110000011101000111001100101111010001100111000001100001011001000110110101100011011001110110100100101110011001010111100001100101" else 0;
end architecture;

-- Entity for pattern 0010111101101111011011100111001001100101011100010111010101100101011100110111010001100101011011100110010000101110011000110110011001101101
entity pattern_matcher_40 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(135 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_40 is
begin
  match <= 40 when data = "0010111101101111011011100111001001100101011100010111010101100101011100110111010001100101011011100110010000101110011000110110011001101101" else 0;
end architecture;

-- Entity for pattern 001001010100000101010000010100000100010001000001010101000100000100100101
entity pattern_matcher_41 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(71 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_41 is
begin
  match <= 41 when data = "001001010100000101010000010100000100010001000001010101000100000100100101" else 0;
end architecture;

-- Entity for pattern 00101111011100000110111101110011011101000010111101100101011000110110100001101111
entity pattern_matcher_42 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(79 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_42 is
begin
  match <= 42 when data = "00101111011100000110111101110011011101000010111101100101011000110110100001101111" else 0;
end architecture;

-- Entity for pattern 010000110110111101101111011010110110100101100101001110100010000001100011011000010110001101101000011001010011110101100011011000110011001000111101
entity pattern_matcher_43 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(143 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_43 is
begin
  match <= 43 when data = "010000110110111101101111011010110110100101100101001110100010000001100011011000010110001101101000011001010011110101100011011000110011001000111101" else 0;
end architecture;

-- Entity for pattern 010101000100100101001101010001010101111101011010010011110100111001000101
entity pattern_matcher_44 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(71 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_44 is
begin
  match <= 44 when data = "010101000100100101001101010001010101111101011010010011110100111001000101" else 0;
end architecture;

-- Entity for pattern 00101111011001100110111101110010011011010011001001110010011000010111011100101110011000110110011101101001
entity pattern_matcher_45 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(103 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_45 is
begin
  match <= 45 when data = "00101111011001100110111101110010011011010011001001110010011000010111011100101110011000110110011101101001" else 0;
end architecture;

-- Entity for pattern 0101001001001110010001100101001000100000
entity pattern_matcher_46 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(39 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_46 is
begin
  match <= 46 when data = "0101001001001110010001100101001000100000" else 0;
end architecture;

-- Entity for pattern 0010111001100101011110000110010100100000010010000101010001010100010100000010111100110001001011100011000000001101000010100100100001101111011100110111010000111010
entity pattern_matcher_47 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(159 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_47 is
begin
  match <= 47 when data = "0010111001100101011110000110010100100000010010000101010001010100010100000010111100110001001011100011000000001101000010100100100001101111011100110111010000111010" else 0;
end architecture;

-- Entity for pattern 00101111011000100010111101101001011011100110010001100101011110000010111001110000011010000111000000111111011010010110010000111101
entity pattern_matcher_48 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(127 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_48 is
begin
  match <= 48 when data = "00101111011000100010111101101001011011100110010001100101011110000010111001110000011010000111000000111111011010010110010000111101" else 0;
end architecture;

-- Entity for pattern 001011110110010101100011011010000110111100101110011000100110000101110100
entity pattern_matcher_49 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(71 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_49 is
begin
  match <= 49 when data = "001011110110010101100011011010000110111100101110011000100110000101110100" else 0;
end architecture;

-- Entity for pattern 00101111010000110101001101001101011000010110100101101100011101000110111100101110011000110110011101101001
entity pattern_matcher_50 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(103 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_50 is
begin
  match <= 50 when data = "00101111010000110101001101001101011000010110100101101100011101000110111100101110011000110110011101101001" else 0;
end architecture;

-- Entity for pattern 011000110111001001100101011000010111010001100101001000000111010001100001011000100110110001100101
entity pattern_matcher_51 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(95 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_51 is
begin
  match <= 51 when data = "011000110111001001100101011000010111010001100101001000000111010001100001011000100110110001100101" else 0;
end architecture;

-- Entity for pattern 011001110111001001100001011011100111010000100000
entity pattern_matcher_52 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(47 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_52 is
begin
  match <= 52 when data = "011001110111001001100001011011100111010000100000" else 0;
end architecture;

-- Entity for pattern 01101010011000010111011001100001011100110110001101110010011010010111000001110100001110100010111100101111
entity pattern_matcher_53 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(103 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_53 is
begin
  match <= 53 when data = "01101010011000010111011001100001011100110110001101110010011010010111000001110100001110100010111100101111" else 0;
end architecture;

-- Entity for pattern 0110010001100010011011010111001101011111011100100110010101110000011000110110000101110100001011100110000101101100011101000110010101110010010111110111000001110010011010010110111101110010011010010111010001111001
entity pattern_matcher_54 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(207 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_54 is
begin
  match <= 54 when data = "0110010001100010011011010111001101011111011100100110010101110000011000110110000101110100001011100110000101101100011101000110010101110010010111110111000001110010011010010110111101110010011010010111010001111001" else 0;
end architecture;

-- Entity for pattern 0111010001100011011100000110010001100001011101000110000101111100
entity pattern_matcher_55 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(63 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_55 is
begin
  match <= 55 when data = "0111010001100011011100000110010001100001011101000110000101111100" else 0;
end architecture;

-- Entity for pattern 001011110111000001110010011011110110101100101111
entity pattern_matcher_56 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(47 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_56 is
begin
  match <= 56 when data = "001011110111000001110010011011110110101100101111" else 0;
end architecture;

-- Entity for pattern 001111010010000001001000010101000101010001010000001011110011000100101110
entity pattern_matcher_57 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(71 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_57 is
begin
  match <= 57 when data = "001111010010000001001000010101000101010001010000001011110011000100101110" else 0;
end architecture;

-- Entity for pattern 0010111101101001011011100111000001110101011101000010111001100010011000010111010001111100
entity pattern_matcher_58 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(87 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_58 is
begin
  match <= 58 when data = "0010111101101001011011100111000001110101011101000010111001100010011000010111010001111100" else 0;
end architecture;

-- Entity for pattern 0101000001001011
entity pattern_matcher_59 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(15 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_59 is
begin
  match <= 59 when data = "0101000001001011" else 0;
end architecture;

-- Entity for pattern 00111100011010010110011001110010011000010110110101100101
entity pattern_matcher_60 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(55 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_60 is
begin
  match <= 60 when data = "00111100011010010110011001110010011000010110110101100101" else 0;
end architecture;

-- Entity for pattern 01010101011100110110010101110010001011010100000101100111011001010110111001110100001110100010000001010111011010010110111001001000011101000111010001110000010000110110110001101001011001010110111001110100
entity pattern_matcher_61 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(199 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_61 is
begin
  match <= 61 when data = "01010101011100110110010101110010001011010100000101100111011001010110111001110100001110100010000001010111011010010110111001001000011101000111010001110000010000110110110001101001011001010110111001110100" else 0;
end architecture;

-- Entity for pattern 010000110110111101101110011011100110010101100011011101000010111001110000011010000111000000111111011010010110010000111101
entity pattern_matcher_62 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(119 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_62 is
begin
  match <= 62 when data = "010000110110111101101110011011100110010101100011011101000010111001110000011010000111000000111111011010010110010000111101" else 0;
end architecture;

-- Entity for pattern 11111111000000010000000000000000000000000000000000000001
entity pattern_matcher_63 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(55 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_63 is
begin
  match <= 63 when data = "11111111000000010000000000000000000000000000000000000001" else 0;
end architecture;

-- Entity for pattern 0010111001110011011101110110011000111111
entity pattern_matcher_64 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(39 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_64 is
begin
  match <= 64 when data = "0010111001110011011101110110011000111111" else 0;
end architecture;

-- Entity for pattern 000000110000000000000001
entity pattern_matcher_65 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(23 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_65 is
begin
  match <= 65 when data = "000000110000000000000001" else 0;
end architecture;

-- Entity for pattern 010000110100001101000011010000110100001101000011010000110100001101000011010000110100001101000011010000110100001101000011010000110100001101000011010000110100001101000011010000110100001101000011
entity pattern_matcher_66 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(191 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_66 is
begin
  match <= 66 when data = "010000110100001101000011010000110100001101000011010000110100001101000011010000110100001101000011010000110100001101000011010000110100001101000011010000110100001101000011010000110100001101000011" else 0;
end architecture;

-- Entity for pattern 011100110110110001100101011001010111000001111100
entity pattern_matcher_67 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(47 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_67 is
begin
  match <= 67 when data = "011100110110110001100101011001010111000001111100" else 0;
end architecture;

-- Entity for pattern 00101111011100100110010101100111011010010111001101110100011001010111001000101110011000110110011101101001
entity pattern_matcher_68 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(103 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_68 is
begin
  match <= 68 when data = "00101111011100100110010101100111011010010111001101110100011001010111001000101110011000110110011101101001" else 0;
end architecture;

-- Entity for pattern 01110000011011110110111001100111
entity pattern_matcher_69 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(31 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_69 is
begin
  match <= 69 when data = "01110000011011110110111001100111" else 0;
end architecture;

-- Entity for pattern 001011110110001101100001011011000110010101101110011001000110010101110010010111110110000101100100011011010110100101101110001011100111000001101100
entity pattern_matcher_70 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(143 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_70 is
begin
  match <= 70 when data = "001011110110001101100001011011000110010101101110011001000110010101110010010111110110000101100100011011010110100101101110001011100111000001101100" else 0;
end architecture;

-- Entity for pattern 011101010111001101100101011100100101111101110100011000010110001001101100011001010111001101110000011000010110001101100101
entity pattern_matcher_71 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(119 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_71 is
begin
  match <= 71 when data = "011101010111001101100101011100100101111101110100011000010110001001101100011001010111001101110000011000010110001101100101" else 0;
end architecture;

-- Entity for pattern 001011100111000001101000011100000011111101101101011001010111010001101000011011110110010000111101
entity pattern_matcher_72 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(95 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_72 is
begin
  match <= 72 when data = "001011100111000001101000011100000011111101101101011001010111010001101000011011110110010000111101" else 0;
end architecture;

-- Entity for pattern 111111100101001101001101010000100100000000000000
entity pattern_matcher_73 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(47 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_73 is
begin
  match <= 73 when data = "111111100101001101001101010000100100000000000000" else 0;
end architecture;

-- Entity for pattern 1111111101010011010011010100001001110011
entity pattern_matcher_74 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(39 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_74 is
begin
  match <= 74 when data = "1111111101010011010011010100001001110011" else 0;
end architecture;

-- Entity for pattern 001011110110111101110010011001000110010101110010011100110010111101100011011010000110010101100011011010110111001100101110011101000111100001110100
entity pattern_matcher_75 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(143 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_75 is
begin
  match <= 75 when data = "001011110110111101110010011001000110010101110010011100110010111101100011011010000110010101100011011010110111001100101110011101000111100001110100" else 0;
end architecture;

-- Entity for pattern 000101100000001100000000
entity pattern_matcher_76 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(23 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_76 is
begin
  match <= 76 when data = "000101100000001100000000" else 0;
end architecture;

-- Entity for pattern 001011110110001101100001011101000110000101101100011011110110011100101110011011100111001101100110
entity pattern_matcher_77 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(95 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_77 is
begin
  match <= 77 when data = "001011110110001101100001011101000110000101101100011011110110011100101110011011100111001101100110" else 0;
end architecture;

-- Entity for pattern 010100110111010001101111011011110110011101010010
entity pattern_matcher_78 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(47 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_78 is
begin
  match <= 78 when data = "010100110111010001101111011011110110011101010010" else 0;
end architecture;

-- Entity for pattern 001011110110001101100110011000110110000101100011011010000110010100101110011011010110000101110000
entity pattern_matcher_79 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(95 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_79 is
begin
  match <= 79 when data = "001011110110001101100110011000110110000101100011011010000110010100101110011011010110000101110000" else 0;
end architecture;

-- Entity for pattern 001011110110100101101110011100110111010000111111
entity pattern_matcher_80 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(47 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_80 is
begin
  match <= 80 when data = "001011110110100101101110011100110111010000111111" else 0;
end architecture;

-- Entity for pattern 0010111101100100011010010111001001100101011000110111010001101111011100100111100100101110011100000110100001110000
entity pattern_matcher_81 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(111 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_81 is
begin
  match <= 81 when data = "0010111101100100011010010111001001100101011000110111010001101111011100100111100100101110011100000110100001110000" else 0;
end architecture;

-- Entity for pattern 00101111011010000110100100101110011000110110011101101001
entity pattern_matcher_82 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(55 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_82 is
begin
  match <= 82 when data = "00101111011010000110100100101110011000110110011101101001" else 0;
end architecture;

-- Entity for pattern 001011110110110001101111011000110110101101111001011000110111001001111001011100000111010000101110011100100110000101110010
entity pattern_matcher_83 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(119 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_83 is
begin
  match <= 83 when data = "001011110110110001101111011000110110101101111001011000110111001001111001011100000111010000101110011100100110000101110010" else 0;
end architecture;

-- Entity for pattern 001011110111001101101000011011110111000000101110011000110110011101101001
entity pattern_matcher_84 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(71 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_84 is
begin
  match <= 84 when data = "001011110111001101101000011011110111000000101110011000110110011101101001" else 0;
end architecture;

-- Entity for pattern 00101111011101110110010101100010001011110110011101101111011011110110011101101100011001010101111101100001011011100110000101101100011110010111010001101001011000110111001100101110011100000110100001110000
entity pattern_matcher_85 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(199 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_85 is
begin
  match <= 85 when data = "00101111011101110110010101100010001011110110011101101111011011110110011101101100011001010101111101100001011011100110000101101100011110010111010001101001011000110111001100101110011100000110100001110000" else 0;
end architecture;

-- Entity for pattern 010000010110001101110101011011100110010101110100011010010111100000101101
entity pattern_matcher_86 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(71 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_86 is
begin
  match <= 86 when data = "010000010110001101110101011011100110010101110100011010010111100000101101" else 0;
end architecture;

-- Entity for pattern 01001000011011110111001101110100001110100010000000110010001100000011100100101110001101010011001100101110001100010011000100110011001011100011001000110010001100110000110100001010
entity pattern_matcher_87 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(175 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_87 is
begin
  match <= 87 when data = "01001000011011110111001101110100001110100010000000110010001100000011100100101110001101010011001100101110001100010011000100110011001011100011001000110010001100110000110100001010" else 0;
end architecture;

-- Entity for pattern 000101110000001100000011
entity pattern_matcher_88 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(23 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_88 is
begin
  match <= 88 when data = "000101110000001100000011" else 0;
end architecture;

-- Entity for pattern 01110011011100000110111101101111011001100111011101101111011100100110101101110011
entity pattern_matcher_89 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(79 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_89 is
begin
  match <= 89 when data = "01110011011100000110111101101111011001100111011101101111011100100110101101110011" else 0;
end architecture;

-- Entity for pattern 0010111101100001011110000111001100101110011000110110011101101001
entity pattern_matcher_90 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(63 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_90 is
begin
  match <= 90 when data = "0010111101100001011110000111001100101110011000110110011101101001" else 0;
end architecture;

-- Entity for pattern 0010111100101110001011100010111000101110
entity pattern_matcher_91 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(39 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_91 is
begin
  match <= 91 when data = "0010111100101110001011100010111000101110" else 0;
end architecture;

-- Entity for pattern 0100001101101111011011010110110101100001011011100110010000100000011000110110111101101101011100000110110001100101011101000110010101100100
entity pattern_matcher_92 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(135 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_92 is
begin
  match <= 92 when data = "0100001101101111011011010110110101100001011011100110010000100000011000110110111101101101011100000110110001100101011101000110010101100100" else 0;
end architecture;

-- Entity for pattern 00110010001100100011000100100000010001110110111101101111011001000110001001111001011001010010000001101000011000010111000001110000011110010010000001110010001100000011000001110100011010010110111001100111
entity pattern_matcher_93 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(199 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_93 is
begin
  match <= 93 when data = "00110010001100100011000100100000010001110110111101101111011001000110001001111001011001010010000001101000011000010111000001110000011110010010000001110010001100000011000001110100011010010110111001100111" else 0;
end architecture;

-- Entity for pattern 0010111101100100011101100111011101110011011100110111001000101110011001000110110001101100
entity pattern_matcher_94 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(87 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_94 is
begin
  match <= 94 when data = "0010111101100100011101100111011101110011011100110111001000101110011001000110110001101100" else 0;
end architecture;

-- Entity for pattern 0010111101100111011101010110010101110011011101000110001001101111011011110110101100101110011000110110011101101001
entity pattern_matcher_95 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(111 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_95 is
begin
  match <= 95 when data = "0010111101100111011101010110010101110011011101000110001001101111011011110110101100101110011000110110011101101001" else 0;
end architecture;

-- Entity for pattern 001011110110110101100001011010010110110001101100011010010111001101110100001011100111000001101100
entity pattern_matcher_96 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(95 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_96 is
begin
  match <= 96 when data = "001011110110110101100001011010010110110001101100011010010111001101110100001011100111000001101100" else 0;
end architecture;

-- Entity for pattern 0010111101110110011011100110001101110110011010010110010101110111011001010111001000101110011010100110000101110010
entity pattern_matcher_97 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(111 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_97 is
begin
  match <= 97 when data = "0010111101110110011011100110001101110110011010010110010101110111011001010111001000101110011010100110000101110010" else 0;
end architecture;

-- Entity for pattern 001011110110001001100010001011010110100001101111011100110111010001110011011101100110001100101110011100110110100000111111
entity pattern_matcher_98 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(119 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_98 is
begin
  match <= 98 when data = "001011110110001001100010001011010110100001101111011100110111010001110011011101100110001100101110011100110110100000111111" else 0;
end architecture;

-- Entity for pattern 0101001001000011010100000101010000100000010101000100111100111010
entity pattern_matcher_99 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(63 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_99 is
begin
  match <= 99 when data = "0101001001000011010100000101010000100000010101000100111100111010" else 0;
end architecture;

-- Entity for pattern 0111001001100011011100000111010000100000011101000110111100111010
entity pattern_matcher_100 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(63 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_100 is
begin
  match <= 100 when data = "0111001001100011011100000111010000100000011101000110111100111010" else 0;
end architecture;

-- Entity for pattern 0010111101100101011011100111011001101001011100100110111101101110001011100111000001101100
entity pattern_matcher_101 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(87 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_101 is
begin
  match <= 101 when data = "0010111101100101011011100111011001101001011100100110111101101110001011100111000001101100" else 0;
end architecture;

-- Entity for pattern 011100000110010001100110010111110110010101100110011000010111100001011111
entity pattern_matcher_102 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(71 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_102 is
begin
  match <= 102 when data = "011100000110010001100110010111110110010101100110011000010111100001011111" else 0;
end architecture;

-- Entity for pattern 0010111101011001011000010100001001000010
entity pattern_matcher_103 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(39 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_103 is
begin
  match <= 103 when data = "0010111101011001011000010100001001000010" else 0;
end architecture;

-- Entity for pattern 0110000101100011011101000110100101110110011000010111010001100101
entity pattern_matcher_104 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(63 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_104 is
begin
  match <= 104 when data = "0110000101100011011101000110100101110110011000010111010001100101" else 0;
end architecture;

-- Entity for pattern 0010111100110000001100000011000000101110011010100111000001100111
entity pattern_matcher_105 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(63 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_105 is
begin
  match <= 105 when data = "0010111100110000001100000011000000101110011010100111000001100111" else 0;
end architecture;

-- Entity for pattern 01010101010100000100010001000001010101000100010101111100
entity pattern_matcher_106 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(55 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_106 is
begin
  match <= 106 when data = "01010101010100000100010001000001010101000100010101111100" else 0;
end architecture;

-- Entity for pattern 001011110110000100110001011100110111010001100001011101000111001100101111
entity pattern_matcher_107 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(71 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_107 is
begin
  match <= 107 when data = "001011110110000100110001011100110111010001100001011101000111001100101111" else 0;
end architecture;

-- Entity for pattern 00101111010101100111001101010011011001010111010001000011011011110110111101101011011010010110010100101110011001010111100001100101
entity pattern_matcher_108 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(127 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_108 is
begin
  match <= 108 when data = "00101111010101100111001101010011011001010111010001000011011011110110111101101011011010010110010100101110011001010111100001100101" else 0;
end architecture;

-- Entity for pattern 001011110100110101110011011011010100110101100001011100110110101100101110011001010111100001100101
entity pattern_matcher_109 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(95 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_109 is
begin
  match <= 109 when data = "001011110100110101110011011011010100110101100001011100110110101100101110011001010111100001100101" else 0;
end architecture;

-- Entity for pattern 00101111011101000110100001101001011011100110111001100101011100100010111101110100011010000111010101101101011000100011111101101001011011010110011100111101
entity pattern_matcher_110 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(151 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_110 is
begin
  match <= 110 when data = "00101111011101000110100001101001011011100110111001100101011100100010111101110100011010000111010101101101011000100011111101101001011011010110011100111101" else 0;
end architecture;

-- Entity for pattern 0010111101110101011100000110110001101111011000010110010000101111011011010110111101100100011101010110110001100101
entity pattern_matcher_111 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(111 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_111 is
begin
  match <= 111 when data = "0010111101110101011100000110110001101111011000010110010000101111011011010110111101100100011101010110110001100101" else 0;
end architecture;

-- Entity for pattern 01111010100011011001101111011100
entity pattern_matcher_112 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(31 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_112 is
begin
  match <= 112 when data = "01111010100011011001101111011100" else 0;
end architecture;

-- Entity for pattern 00101111011000110110011001100100011011110110001101110011001011110111001101101110011010010111000001110000011001010111010001110011001011110110011001101001011011000110010101100101011110000110100101110011011101000111001100101110011000110110011001101101
entity pattern_matcher_113 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(247 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_113 is
begin
  match <= 113 when data = "00101111011000110110011001100100011011110110001101110011001011110111001101101110011010010111000001110000011001010111010001110011001011110110011001101001011011000110010101100101011110000110100101110011011101000111001100101110011000110110011001101101" else 0;
end architecture;

-- Entity for pattern 010111110101000001001000010100000100110001001001010000100101101101101100011010010110001001100100011010010111001001011101
entity pattern_matcher_114 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(119 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_114 is
begin
  match <= 114 when data = "010111110101000001001000010100000100110001001001010000100101101101101100011010010110001001100100011010010111001001011101" else 0;
end architecture;

-- Entity for pattern 00101111011000110110111101101101011011010110010101110010011000110110010100101110011000110110011101101001
entity pattern_matcher_115 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(103 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_115 is
begin
  match <= 115 when data = "00101111011000110110111101101101011011010110010101110010011000110110010100101110011000110110011101101001" else 0;
end architecture;

-- Entity for pattern 0010111101000001011001000110110101101001011011100110100001110100011011010110110001011111
entity pattern_matcher_116 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(87 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_116 is
begin
  match <= 116 when data = "0010111101000001011001000110110101101001011011100110100001110100011011010110110001011111" else 0;
end architecture;

-- Entity for pattern 0101010101110011011001010111001000101101010000010110011101100101011011100111010000111010
entity pattern_matcher_117 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(87 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_117 is
begin
  match <= 117 when data = "0101010101110011011001010111001000101101010000010110011101100101011011100111010000111010" else 0;
end architecture;

-- Entity for pattern 00101111011001000110111001110011011101000110111101101111011011000111001100101110011100000110100001110000
entity pattern_matcher_118 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(103 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_118 is
begin
  match <= 118 when data = "00101111011001000110111001110011011101000110111101101111011011000111001100101110011100000110100001110000" else 0;
end architecture;

-- Entity for pattern 0010111101110111011010010110111001100100011011110111011101110011001011110111010101110000011001000110000101110100011001010010111101110011011001010110000101110010011000110110100000111111011010000110110000111101
entity pattern_matcher_119 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(207 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_119 is
begin
  match <= 119 when data = "0010111101110111011010010110111001100100011011110111011101110011001011110111010101110000011001000110000101110100011001010010111101110011011001010110000101110010011000110110100000111111011010000110110000111101" else 0;
end architecture;

-- Entity for pattern 00101111011001100110100101101110011001110110010101110010
entity pattern_matcher_120 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(55 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_120 is
begin
  match <= 120 when data = "00101111011001100110100101101110011001110110010101110010" else 0;
end architecture;

-- Entity for pattern 0010111101100011011001110110100100101101011000100110100101101110001011110110101001101010
entity pattern_matcher_121 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(87 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_121 is
begin
  match <= 121 when data = "0010111101100011011001110110100100101101011000100110100101101110001011110110101001101010" else 0;
end architecture;

-- Entity for pattern 001011110110001101101000011001010110001101101011011101010111000001100100011000010111010001100101
entity pattern_matcher_122 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(95 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_122 is
begin
  match <= 122 when data = "001011110110001101101000011001010110001101101011011101010111000001100100011000010111010001100101" else 0;
end architecture;

-- Entity for pattern 001011110110000101100100011011010110100101110011011000010111000001101001001011110110011001110000011000010110010001101101011010010110111000101110011010000111010001101101
entity pattern_matcher_123 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(167 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_123 is
begin
  match <= 123 when data = "001011110110000101100100011011010110100101110011011000010111000001101001001011110110011001110000011000010110010001101101011010010110111000101110011010000111010001101101" else 0;
end architecture;

-- Entity for pattern 01100100011000100110110101110011010111110111001001100101011100000110001101100001011101000010111001100100011001010110011001101001011011100110010101011111011000110110111101101100011101010110110101101110010111110110011101110010011011110111010101110000
entity pattern_matcher_124 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(247 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_124 is
begin
  match <= 124 when data = "01100100011000100110110101110011010111110111001001100101011100000110001101100001011101000010111001100100011001010110011001101001011011100110010101011111011000110110111101101100011101010110110101101110010111110110011101110010011011110111010101110000" else 0;
end architecture;

-- Entity for pattern 01101001011011100111001101110100011000010110110001101100001011110111010101110000011001110111001001100001011001000110010100101110011100000110100001110000
entity pattern_matcher_125 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(151 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_125 is
begin
  match <= 125 when data = "01101001011011100111001101110100011000010110110001101100001011110111010101110000011001110111001001100001011001000110010100101110011100000110100001110000" else 0;
end architecture;

-- Entity for pattern 0010111101110111011010000110010101110010011001010110000101101101011010010010111001100011011001110110100100111111
entity pattern_matcher_126 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(111 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_126 is
begin
  match <= 126 when data = "0010111101110111011010000110010101110010011001010110000101101101011010010010111001100011011001110110100100111111" else 0;
end architecture;

-- Entity for pattern 00101111011000100110000101100011011010110111010101110000
entity pattern_matcher_127 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(55 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_127 is
begin
  match <= 127 when data = "00101111011000100110000101100011011010110111010101110000" else 0;
end architecture;

-- Entity for pattern 001011110111000001100001011001110110010101101100011011110110011100101110011000110110011101101001
entity pattern_matcher_128 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(95 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_128 is
begin
  match <= 128 when data = "001011110111000001100001011001110110010101101100011011110110011100101110011000110110011101101001" else 0;
end architecture;

-- Entity for pattern 001011110110110101110010011101000110011100101110011000110110011101101001
entity pattern_matcher_129 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(71 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_129 is
begin
  match <= 129 when data = "001011110110110101110010011101000110011100101110011000110110011101101001" else 0;
end architecture;

-- Entity for pattern 00101111011001100111001001101101010000110110111101101101011100000110111101110011011001010010111001100001011100110111000001111000
entity pattern_matcher_130 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(127 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_130 is
begin
  match <= 130 when data = "00101111011001100111001001101101010000110110111101101101011100000110111101110011011001010010111001100001011100110111000001111000" else 0;
end architecture;

-- Entity for pattern 01000001010100000101000001000101
entity pattern_matcher_131 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(31 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_131 is
begin
  match <= 131 when data = "01000001010100000101000001000101" else 0;
end architecture;

-- Entity for pattern 01010010011001010110011001100101011100100110010101110010001110100010000001001000010101000101010001010000001011110011000100101110001100000000110100001010
entity pattern_matcher_132 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(151 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_132 is
begin
  match <= 132 when data = "01010010011001010110011001100101011100100110010101110010001110100010000001001000010101000101010001010000001011110011000100101110001100000000110100001010" else 0;
end architecture;

-- Entity for pattern 00101111011100000110111101110000011101010111000000101110011100000110100001110000
entity pattern_matcher_133 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(79 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_133 is
begin
  match <= 133 when data = "00101111011100000110111101110000011101010111000000101110011100000110100001110000" else 0;
end architecture;

-- Entity for pattern 0010111101100001011001000110110101101001011011100010111001110000011010000111000000110011
entity pattern_matcher_134 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(87 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_134 is
begin
  match <= 134 when data = "0010111101100001011001000110110101101001011011100010111001110000011010000111000000110011" else 0;
end architecture;

-- Entity for pattern 00101110011100000110000101110101011100110110010101000001011011100110100101101101011000010111010001101001011011110110111001110011
entity pattern_matcher_135 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(127 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_135 is
begin
  match <= 135 when data = "00101110011100000110000101110101011100110110010101000001011011100110100101101101011000010111010001101001011011110110111001110011" else 0;
end architecture;

-- Entity for pattern 0010111101100001011001000110110101101001011011100101111101101100011011110110011101101111011101010111010000101110011100000110100001110000
entity pattern_matcher_136 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(135 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_136 is
begin
  match <= 136 when data = "0010111101100001011001000110110101101001011011100101111101101100011011110110011101101111011101010111010000101110011100000110100001110000" else 0;
end architecture;

-- Entity for pattern 00101111011101010110110000101110011010000111010001101101
entity pattern_matcher_137 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(55 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_137 is
begin
  match <= 137 when data = "00101111011101010110110000101110011010000111010001101101" else 0;
end architecture;

-- Entity for pattern 010100000101010101010100
entity pattern_matcher_138 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(23 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_138 is
begin
  match <= 138 when data = "010100000101010101010100" else 0;
end architecture;

-- Entity for pattern 00001000011011110110100001110100011010000110010101101001011001110110100000000010011000110110001100000000
entity pattern_matcher_139 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(103 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_139 is
begin
  match <= 139 when data = "00001000011011110110100001110100011010000110010101101001011001110110100000000010011000110110001100000000" else 0;
end architecture;

-- Entity for pattern 111111110101001101001101010000100111001100000000000000000000000000000000
entity pattern_matcher_140 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(71 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_140 is
begin
  match <= 140 when data = "111111110101001101001101010000100111001100000000000000000000000000000000" else 0;
end architecture;

-- Entity for pattern 01001000010001010100110001010000
entity pattern_matcher_141 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(31 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_141 is
begin
  match <= 141 when data = "01001000010001010100110001010000" else 0;
end architecture;

-- Entity for pattern 00101111011001000110111101100101011001000110100101110100011101100110111101110100011001010111001100101110011000110110011101101001
entity pattern_matcher_142 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(127 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_142 is
begin
  match <= 142 when data = "00101111011001000110111101100101011001000110100101110100011101100110111101110100011001010111001100101110011000110110011101101001" else 0;
end architecture;

-- Entity for pattern 01110000011000010111001101110011001000000111011101101000001100000011000001110100
entity pattern_matcher_143 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(79 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_143 is
begin
  match <= 143 when data = "01110000011000010111001101110011001000000111011101101000001100000011000001110100" else 0;
end architecture;

-- Entity for pattern 0001100000000011000000100000000000000011000000010100000000000000
entity pattern_matcher_144 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(63 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_144 is
begin
  match <= 144 when data = "0001100000000011000000100000000000000011000000010100000000000000" else 0;
end architecture;

-- Entity for pattern 01010111011000010111001101101000011010010110111001100111010101000110111101101110
entity pattern_matcher_145 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(79 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_145 is
begin
  match <= 145 when data = "01010111011000010111001101101000011010010110111001100111010101000110111101101110" else 0;
end architecture;

-- Entity for pattern 00101111011010010110111001110100011100100110000101101110011001010111010000101111
entity pattern_matcher_146 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(79 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_146 is
begin
  match <= 146 when data = "00101111011010010110111001110100011100100110000101101110011001010111010000101111" else 0;
end architecture;

-- Entity for pattern 00101111011001010110010001101001011101000101111101100001011000110111010001101001011011110110111000101110011000110110011101101001
entity pattern_matcher_147 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(127 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_147 is
begin
  match <= 147 when data = "00101111011001010110010001101001011101000101111101100001011000110111010001101001011011110110111000101110011000110110011101101001" else 0;
end architecture;

-- Entity for pattern 001011110101001101100001011011010111000001101100011001010101111101110011011010000110111101110111011000110110111101100100011001010010111001101000011101000110110101101100
entity pattern_matcher_148 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(167 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_148 is
begin
  match <= 148 when data = "001011110101001101100001011011010111000001101100011001010101111101110011011010000110111101110111011000110110111101100100011001010010111001101000011101000110110101101100" else 0;
end architecture;

-- Entity for pattern 010101110100100101001110010001000100100101010010
entity pattern_matcher_149 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(47 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_149 is
begin
  match <= 149 when data = "010101110100100101001110010001000100100101010010" else 0;
end architecture;

-- Entity for pattern 001011110111001101100101011000010111001001100011011010000010111001100011011001110110100100111111
entity pattern_matcher_150 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(95 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_150 is
begin
  match <= 150 when data = "001011110111001101100101011000010111001001100011011010000010111001100011011001110110100100111111" else 0;
end architecture;

-- Entity for pattern 00101111011000010110011001110010001011100111000001101000011100000011111101111010011011110110111001100101011010010110010000111101
entity pattern_matcher_151 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(127 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_151 is
begin
  match <= 151 when data = "00101111011000010110011001110010001011100111000001101000011100000011111101111010011011110110111001100101011010010110010000111101" else 0;
end architecture;

-- Entity for pattern 0111001101111001011100110010111001100100011000100110110101110011010111110111001001100101011100000110001101100001011101000101111101110010011100010010111001100001011001000110010001011111011000110110111101101100011101010110110101101110
entity pattern_matcher_152 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(231 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_152 is
begin
  match <= 152 when data = "0111001101111001011100110010111001100100011000100110110101110011010111110111001001100101011100000110001101100001011101000101111101110010011100010010111001100001011001000110010001011111011000110110111101101100011101010110110101101110" else 0;
end architecture;

-- Entity for pattern 001011110111000001101001011011100110011100101110011000010111001101101000011110000011111101100001011000110111010001101001011011110110111000111101
entity pattern_matcher_153 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(143 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_153 is
begin
  match <= 153 when data = "001011110111000001101001011011100110011100101110011000010111001101101000011110000011111101100001011000110111010001101001011011110110111000111101" else 0;
end architecture;

-- Entity for pattern 0010111101000111011011000110111101100010011000010110110001000110011101010110111001100011011101000110100101101111011011100111001100101110011100000110100001110000
entity pattern_matcher_154 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(159 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_154 is
begin
  match <= 154 when data = "0010111101000111011011000110111101100010011000010110110001000110011101010110111001100011011101000110100101101111011011100111001100101110011100000110100001110000" else 0;
end architecture;

-- Entity for pattern 001011110110010001100011011001100110111101110010011101010110110100101110011000110110011101101001
entity pattern_matcher_155 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(95 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_155 is
begin
  match <= 155 when data = "001011110110010001100011011001100110111101110010011101010110110100101110011000110110011101101001" else 0;
end architecture;

-- Entity for pattern 00100110011010010110111001110100011010010111000000111101
entity pattern_matcher_156 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(55 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_156 is
begin
  match <= 156 when data = "00100110011010010110111001110100011010010111000000111101" else 0;
end architecture;

-- Entity for pattern 00101111011100110110100101110100011001010010111101100101011001110010111101110011011011110111010101110010011000110110010100101110011000010111001101110000
entity pattern_matcher_157 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(151 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_157 is
begin
  match <= 157 when data = "00101111011100110110100101110100011001010010111101100101011001110010111101110011011011110111010101110010011000110110010100101110011000010111001101110000" else 0;
end architecture;

-- Entity for pattern 0110111001100101011101110111001101101100011001010111010001110100011001010111001000101110011100000110100001110000
entity pattern_matcher_158 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(111 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_158 is
begin
  match <= 158 when data = "0110111001100101011101110111001101101100011001010111010001110100011001010111001000101110011100000110100001110000" else 0;
end architecture;

-- Entity for pattern 011011000110111101100111011010010110111000111010
entity pattern_matcher_159 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(47 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_159 is
begin
  match <= 159 when data = "011011000110111101100111011010010110111000111010" else 0;
end architecture;

-- Entity for pattern 0010111101000011011011110110111001100110011010010110011100101110011101000111100001110100
entity pattern_matcher_160 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(87 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_160 is
begin
  match <= 160 when data = "0010111101000011011011110110111001100110011010010110011100101110011101000111100001110100" else 0;
end architecture;

-- Entity for pattern 0011000000110001001100100011001100110100001101010011011000110111001110000011100101100001011000100110001101100100011001010110011001100111011010000110100101101010011010110110110001101101011011100110111101110000011100010111001001110011011101000111010101110110
entity pattern_matcher_161 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(255 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_161 is
begin
  match <= 161 when data = "0011000000110001001100100011001100110100001101010011011000110111001110000011100101100001011000100110001101100100011001010110011001100111011010000110100101101010011010110110110001101101011011100110111101110000011100010111001001110011011101000111010101110110" else 0;
end architecture;

-- Entity for pattern 010010100100111101001001010011100010000000100011011000100110100101111010001000000110000101100010011000110000110100001010
entity pattern_matcher_162 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(119 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_162 is
begin
  match <= 162 when data = "010010100100111101001001010011100010000000100011011000100110100101111010001000000110000101100010011000110000110100001010" else 0;
end architecture;

-- Entity for pattern 010101000111001001100001011011100111001101101100011000010111010001100101001110100010000001000110
entity pattern_matcher_163 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(95 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_163 is
begin
  match <= 163 when data = "010101000111001001100001011011100111001101101100011000010111010001100101001110100010000001000110" else 0;
end architecture;

-- Entity for pattern 010101110111010001111010011101010111000000100000010101010111001101100101
entity pattern_matcher_164 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(71 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_164 is
begin
  match <= 164 when data = "010101110111010001111010011101010111000000100000010101010111001101100101" else 0;
end architecture;

-- Entity for pattern 00101110011101110110110101111010
entity pattern_matcher_165 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(31 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_165 is
begin
  match <= 165 when data = "00101110011101110110110101111010" else 0;
end architecture;

-- Entity for pattern 0110010001100010011011010111001101011111011100100110010101110000011000110110000101110100001011100110000101101100011101000110010101110010010111110111000001110010011010010110111101110010011010010111010001111001010111110110111001100011011010000110000101110010
entity pattern_matcher_166 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(255 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_166 is
begin
  match <= 166 when data = "0110010001100010011011010111001101011111011100100110010101110000011000110110000101110100001011100110000101101100011101000110010101110010010111110111000001110010011010010110111101110010011010010111010001111001010111110110111001100011011010000110000101110010" else 0;
end architecture;

-- Entity for pattern 0010111101100111011000110111001100111111011000010110110001110000011010000110000100111101
entity pattern_matcher_167 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(87 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_167 is
begin
  match <= 167 when data = "0010111101100111011000110111001100111111011000010110110001110000011010000110000100111101" else 0;
end architecture;

-- Entity for pattern 0100011001010100010100000100111101001110
entity pattern_matcher_168 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(39 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_168 is
begin
  match <= 168 when data = "0100011001010100010100000100111101001110" else 0;
end architecture;

-- Entity for pattern 00000000000000011000011110011001
entity pattern_matcher_169 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(31 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_169 is
begin
  match <= 169 when data = "00000000000000011000011110011001" else 0;
end architecture;

-- Entity for pattern 01001110010011000101001101010100
entity pattern_matcher_170 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(31 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_170 is
begin
  match <= 170 when data = "01001110010011000101001101010100" else 0;
end architecture;

-- Entity for pattern 00101111011000110110011101101001001011010110001001101001011011100010111101100011011001110110100100101110011000110110011101101001
entity pattern_matcher_171 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(127 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_171 is
begin
  match <= 171 when data = "00101111011000110110011101101001001011010110001001101001011011100010111101100011011001110110100100101110011000110110011101101001" else 0;
end architecture;

-- Entity for pattern 001011110111001101101000011011110111000001110011011001010110000101110010011000110110100000101110011000010111001101110000
entity pattern_matcher_172 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(119 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_172 is
begin
  match <= 172 when data = "001011110111001101101000011011110111000001110011011001010110000101110010011000110110100000101110011000010111001101110000" else 0;
end architecture;

-- Entity for pattern 01100011011000010111010000100000
entity pattern_matcher_173 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(31 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_173 is
begin
  match <= 173 when data = "01100011011000010111010000100000" else 0;
end architecture;

-- Entity for pattern 0010111101001110011001010111011101110011001011110110011101100001011101000110010100101110011100000110100001110000
entity pattern_matcher_174 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(111 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_174 is
begin
  match <= 174 when data = "0010111101001110011001010111011101110011001011110110011101100001011101000110010100101110011100000110100001110000" else 0;
end architecture;

-- Entity for pattern 0010111101100001011001000111001101100001011011010111000001101100011001010111001100101111011000110110111101101110011001100110100101100111001011110111001101101001011101000110010100101110011000110111001101100011
entity pattern_matcher_175 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(207 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_175 is
begin
  match <= 175 when data = "0010111101100001011001000111001101100001011011010111000001101100011001010111001100101111011000110110111101101110011001100110100101100111001011110111001101101001011101000110010100101110011000110111001101100011" else 0;
end architecture;

-- Entity for pattern 011010010111000000101101011101110110100001101111001011010110100101110011001011100110001101101111011011010000110100001010
entity pattern_matcher_176 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(119 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_176 is
begin
  match <= 176 when data = "011010010111000000101101011101110110100001101111001011010110100101110011001011100110001101101111011011010000110100001010" else 0;
end architecture;

-- Entity for pattern 0101011001101111011011000111010101101101011001010010000001010011011001010111001001101001011000010110110000100000010011100111010101101101011000100110010101110010
entity pattern_matcher_177 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(159 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_177 is
begin
  match <= 177 when data = "0101011001101111011011000111010101101101011001010010000001010011011001010111001001101001011000010110110000100000010011100111010101101101011000100110010101110010" else 0;
end architecture;

-- Entity for pattern 0010111001100010011000010111010000111111
entity pattern_matcher_178 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(39 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_178 is
begin
  match <= 178 when data = "0010111001100010011000010111010000111111" else 0;
end architecture;

-- Entity for pattern 0010111100110001001011110011011001100010001011010011010100110101001110000011011000111001001101000011011100110000001101010011000100110010001110010110001000110000001100010110001100110000
entity pattern_matcher_179 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(183 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_179 is
begin
  match <= 179 when data = "0010111100110001001011110011011001100010001011010011010100110101001110000011011000111001001101000011011100110000001101010011000100110010001110010110001000110000001100010110001100110000" else 0;
end architecture;

-- Entity for pattern 010000110100110101000100
entity pattern_matcher_180 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(23 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_180 is
begin
  match <= 180 when data = "010000110100110101000100" else 0;
end architecture;

-- Entity for pattern 0110011001110101011011000110110001111100
entity pattern_matcher_181 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(39 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_181 is
begin
  match <= 181 when data = "0110011001110101011011000110110001111100" else 0;
end architecture;

-- Entity for pattern 0010111101101101011010010110111001100101011100100110010000101110011001010111100001100101
entity pattern_matcher_182 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(87 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_182 is
begin
  match <= 182 when data = "0010111101101101011010010110111001100101011100100110010000101110011001010111100001100101" else 0;
end architecture;

-- Entity for pattern 001011100010111000101111
entity pattern_matcher_183 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(23 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_183 is
begin
  match <= 183 when data = "001011100010111000101111" else 0;
end architecture;

-- Entity for pattern 001001010101001101111001011100110111010001100101011011010101001001101111011011110111010000100101
entity pattern_matcher_184 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(95 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_184 is
begin
  match <= 184 when data = "001001010101001101111001011100110111010001100101011011010101001001101111011011110111010000100101" else 0;
end architecture;

-- Entity for pattern 001101010011010100110000001000000011010100101110001101110010111000110001
entity pattern_matcher_185 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(71 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_185 is
begin
  match <= 185 when data = "001101010011010100110000001000000011010100101110001101110010111000110001" else 0;
end architecture;

-- Entity for pattern 0010111101101001011010010111001101100001011001000110110101110000011101110110010000101111011000010110010101111000011100000011001000101110011010000111010001110010
entity pattern_matcher_186 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(159 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_186 is
begin
  match <= 186 when data = "0010111101101001011010010111001101100001011001000110110101110000011101110110010000101111011000010110010101111000011100000011001000101110011010000111010001110010" else 0;
end architecture;

-- Entity for pattern 001011110100001101010110010100110010111101000101011011100111010001110010011010010110010101110011
entity pattern_matcher_187 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(95 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_187 is
begin
  match <= 187 when data = "001011110100001101010110010100110010111101000101011011100111010001110010011010010110010101110011" else 0;
end architecture;

-- Entity for pattern 00101111011101110110010101100010011100000110110001110101011100110010111001100101011110000110010100111111
entity pattern_matcher_188 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(103 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_188 is
begin
  match <= 188 when data = "00101111011101110110010101100010011100000110110001110101011100110010111001100101011110000110010100111111" else 0;
end architecture;

-- Entity for pattern 001011110110100101101111011011100010110101110000
entity pattern_matcher_189 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(47 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_189 is
begin
  match <= 189 when data = "001011110110100101101111011011100010110101110000" else 0;
end architecture;

-- Entity for pattern 0010010101000011010011110100110101001101010011110100111001010000010100100100111101000111010100100100000101001101010001100100100101001100010001010101001100100101
entity pattern_matcher_190 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(159 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_190 is
begin
  match <= 190 when data = "0010010101000011010011110100110101001101010011110100111001010000010100100100111101000111010100100100000101001101010001100100100101001100010001010101001100100101" else 0;
end architecture;

-- Entity for pattern 001011110110100101101110011100110110010101110010011101000010111001101001011011100110001100101110011100000110100001110000
entity pattern_matcher_191 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(119 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_191 is
begin
  match <= 191 when data = "001011110110100101101110011100110110010101110010011101000010111001101001011011100110001100101110011100000110100001110000" else 0;
end architecture;

-- Entity for pattern 01100100011000100110110101110011010111110111001001100101011100000110001101100001011101000010111001110000011101010111001001100111011001010101111101110011011101000110000101110100011010010111001101110100011010010110001101110011
entity pattern_matcher_192 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(223 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_192 is
begin
  match <= 192 when data = "01100100011000100110110101110011010111110111001001100101011100000110001101100001011101000010111001110000011101010111001001100111011001010101111101110011011101000110000101110100011010010111001101110100011010010110001101110011" else 0;
end architecture;

-- Entity for pattern 000101110000001100000000
entity pattern_matcher_193 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(23 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_193 is
begin
  match <= 193 when data = "000101110000001100000000" else 0;
end architecture;

-- Entity for pattern 011000110111001001100101011000010111010001100101
entity pattern_matcher_194 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(47 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_194 is
begin
  match <= 194 when data = "011000110111001001100101011000010111010001100101" else 0;
end architecture;

-- Entity for pattern 01100100011000100110110101110011010111110111001001100101011100000110001101100001011101000010111001110011011001010111010001011111011011000110111101100011011000010110110001011111011001100110110001100001011101100110111101110010
entity pattern_matcher_195 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(223 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_195 is
begin
  match <= 195 when data = "01100100011000100110110101110011010111110111001001100101011100000110001101100001011101000010111001110011011001010111010001011111011011000110111101100011011000010110110001011111011001100110110001100001011101100110111101110010" else 0;
end architecture;

-- Entity for pattern 01110010011011010110011101110010011011110111010101110000
entity pattern_matcher_196 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(55 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_196 is
begin
  match <= 196 when data = "01110010011011010110011101110010011011110111010101110000" else 0;
end architecture;

-- Entity for pattern 00101110011000110110111001100110
entity pattern_matcher_197 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(31 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_197 is
begin
  match <= 197 when data = "00101110011000110110111001100110" else 0;
end architecture;

-- Entity for pattern 001011110100011001110100011100000101001101100001011101100110010101000011010101100101000000101110011001000110110001101100
entity pattern_matcher_198 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(119 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_198 is
begin
  match <= 198 when data = "001011110100011001110100011100000101001101100001011101100110010101000011010101100101000000101110011001000110110001101100" else 0;
end architecture;

-- Entity for pattern 001011110110010101101110011101100110111101110101011101000010111001100010011000010111010001111100
entity pattern_matcher_199 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(95 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_199 is
begin
  match <= 199 when data = "001011110110010101101110011101100110111101110101011101000010111001100010011000010111010001111100" else 0;
end architecture;

-- Entity for pattern 00101111011000010111100000101101011000010110010001101101011010010110111000101110011000110110011101101001
entity pattern_matcher_200 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(103 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_200 is
begin
  match <= 200 when data = "00101111011000010111100000101101011000010110010001101101011010010110111000101110011000110110011101101001" else 0;
end architecture;

-- Entity for pattern 01011000010011010100101101000100
entity pattern_matcher_201 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(31 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_201 is
begin
  match <= 201 when data = "01011000010011010100101101000100" else 0;
end architecture;

-- Entity for pattern 001011100111000001101100
entity pattern_matcher_202 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(23 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_202 is
begin
  match <= 202 when data = "001011100111000001101100" else 0;
end architecture;

-- Entity for pattern 0110000101101100011101000110010101110010
entity pattern_matcher_203 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(39 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_203 is
begin
  match <= 203 when data = "0110000101101100011101000110010101110010" else 0;
end architecture;

-- Entity for pattern 0011110001010011010011100100000101010000010100010101010101001111010101000100010100111110
entity pattern_matcher_204 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(87 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_204 is
begin
  match <= 204 when data = "0011110001010011010011100100000101010000010100010101010101001111010101000100010100111110" else 0;
end architecture;

-- Entity for pattern 010100100100010101001110010000010100110101000101
entity pattern_matcher_205 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(47 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_205 is
begin
  match <= 205 when data = "010100100100010101001110010000010100110101000101" else 0;
end architecture;

-- Entity for pattern 001011110110101001110011011100000010111101110011011011100111000000101111
entity pattern_matcher_206 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(71 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_206 is
begin
  match <= 206 when data = "001011110110101001110011011100000010111101110011011011100111000000101111" else 0;
end architecture;

-- Entity for pattern 0100001101000110010111110101001101000101010101000100010001000001010101000100000101010011010011110101010101010010010000110100010101010101010100110100010101010010010011100100000101001101010001010010100000101001
entity pattern_matcher_207 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(207 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_207 is
begin
  match <= 207 when data = "0100001101000110010111110101001101000101010101000100010001000001010101000100000101010011010011110101010101010010010000110100010101010101010100110100010101010010010011100100000101001101010001010010100000101001" else 0;
end architecture;

-- Entity for pattern 011001000110000101110100011000010111000001101111011100110111010001111100
entity pattern_matcher_208 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(71 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_208 is
begin
  match <= 208 when data = "011001000110000101110100011000010111000001101111011100110111010001111100" else 0;
end architecture;

-- Entity for pattern 01100011011001000010111000101110
entity pattern_matcher_209 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(31 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_209 is
begin
  match <= 209 when data = "01100011011001000010111000101110" else 0;
end architecture;

-- Entity for pattern 01101110011001010111010000101110011001010111100001100101
entity pattern_matcher_210 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(55 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_210 is
begin
  match <= 210 when data = "01101110011001010111010000101110011001010111100001100101" else 0;
end architecture;

-- Entity for pattern 011100000110000101110011011100110111011101101111011100100110010000111101011001110011000000110000011001000101000001100001001001000010010001110111001100000111001001000100
entity pattern_matcher_211 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(167 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_211 is
begin
  match <= 211 when data = "011100000110000101110011011100110111011101101111011100100110010000111101011001110011000000110000011001000101000001100001001001000010010001110111001100000111001001000100" else 0;
end architecture;

-- Entity for pattern 01111011000010000010101000101010
entity pattern_matcher_212 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(31 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_212 is
begin
  match <= 212 when data = "01111011000010000010101000101010" else 0;
end architecture;

-- Entity for pattern 0100010101011000010001010100001101010101010101000100010101011111010100110101100101010011010101000100010101001101
entity pattern_matcher_213 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(111 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_213 is
begin
  match <= 213 when data = "0100010101011000010001010100001101010101010101000100010101011111010100110101100101010011010101000100010101001101" else 0;
end architecture;

-- Entity for pattern 00101111011101000111001001100001011000110110010100101110011000010111100001100100
entity pattern_matcher_214 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(79 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_214 is
begin
  match <= 214 when data = "00101111011101000111001001100001011000110110010100101110011000010111100001100100" else 0;
end architecture;

-- Entity for pattern 0010111101101101011000010110001000101110011011100111001101100110
entity pattern_matcher_215 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(63 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_215 is
begin
  match <= 215 when data = "0010111101101101011000010110001000101110011011100111001101100110" else 0;
end architecture;

-- Entity for pattern 00100000001011100111000001101100
entity pattern_matcher_216 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(31 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_216 is
begin
  match <= 216 when data = "00100000001011100111000001101100" else 0;
end architecture;

-- Entity for pattern 0010111101110011011001000110001001110011011001010110000101110010011000110110100000101110011000110110011101101001
entity pattern_matcher_217 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(111 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_217 is
begin
  match <= 217 when data = "0010111101110011011001000110001001110011011001010110000101110010011000110110100000101110011000110110011101101001" else 0;
end architecture;

-- Entity for pattern 0000001101110001011011110111011000000010011010000111010100000011011000110110111101101101
entity pattern_matcher_218 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(87 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_218 is
begin
  match <= 218 when data = "0000001101110001011011110111011000000010011010000111010100000011011000110110111101101101" else 0;
end architecture;

-- Entity for pattern 00101111011100100110010101100111011010010111001101110100011001010111001000101110011001000110110001101100
entity pattern_matcher_219 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(103 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_219 is
begin
  match <= 219 when data = "00101111011100100110010101100111011010010111001101110100011001010111001000101110011001000110110001101100" else 0;
end architecture;

-- Entity for pattern 01010000010000010101010000100000
entity pattern_matcher_220 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(31 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_220 is
begin
  match <= 220 when data = "01010000010000010101010000100000" else 0;
end architecture;

-- Entity for pattern 00101111011101010111000001101100011011110110000101100100011010010110110101100001011001110110010100101110011100000110100001110000
entity pattern_matcher_221 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(127 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_221 is
begin
  match <= 221 when data = "00101111011101010111000001101100011011110110000101100100011010010110110101100001011001110110010100101110011100000110100001110000" else 0;
end architecture;

-- Entity for pattern 00101110011100000110100001110000
entity pattern_matcher_222 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(31 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_222 is
begin
  match <= 222 when data = "00101110011100000110100001110000" else 0;
end architecture;

-- Entity for pattern 001001010101000001000001010101000100100001000101010110000101010000100101
entity pattern_matcher_223 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(71 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_223 is
begin
  match <= 223 when data = "001001010101000001000001010101000100100001000101010110000101010000100101" else 0;
end architecture;

-- Entity for pattern 0011100000000000000000000000000011110101000100111000100101010011
entity pattern_matcher_224 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(63 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_224 is
begin
  match <= 224 when data = "0011100000000000000000000000000011110101000100111000100101010011" else 0;
end architecture;

-- Entity for pattern 0010111101011111011000010110010001101101011010010110111000101111
entity pattern_matcher_225 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(63 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_225 is
begin
  match <= 225 when data = "0010111101011111011000010110010001101101011010010110111000101111" else 0;
end architecture;

-- Entity for pattern 00100101010101010101001101000101010100100101000001010010010011110100011001001001010011000100010100100101
entity pattern_matcher_226 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(103 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_226 is
begin
  match <= 226 when data = "00100101010101010101001101000101010100100101000001010010010011110100011001001001010011000100010100100101" else 0;
end architecture;

-- Entity for pattern 0010111101011111011100000111001001101001011101100110000101110100011001010010111101101111011100100110010001100101011100100111001100101110011010000111010001101101
entity pattern_matcher_227 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(159 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_227 is
begin
  match <= 227 when data = "0010111101011111011100000111001001101001011101100110000101110100011001010010111101101111011100100110010001100101011100100111001100101110011010000111010001101101" else 0;
end architecture;

-- Entity for pattern 0111001001101111011101000110100101101110011000010011110101110000011011000110111101100111011010010110111000100110011011000110111101100111011010010110111000111101
entity pattern_matcher_228 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(159 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_228 is
begin
  match <= 228 when data = "0111001001101111011101000110100101101110011000010011110101110000011011000110111101100111011010010110111000100110011011000110111101100111011010010110111000111101" else 0;
end architecture;

-- Entity for pattern 0010111101110000011010000111000000101110011000110110011101101001
entity pattern_matcher_229 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(63 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_229 is
begin
  match <= 229 when data = "0010111101110000011010000111000000101110011000110110011101101001" else 0;
end architecture;

-- Entity for pattern 01000001010100000100111101010000
entity pattern_matcher_230 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(31 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_230 is
begin
  match <= 230 when data = "01000001010100000100111101010000" else 0;
end architecture;

-- Entity for pattern 00101111001011100010111000101111001011100010111000101111
entity pattern_matcher_231 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(55 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_231 is
begin
  match <= 231 when data = "00101111001011100010111000101111001011100010111000101111" else 0;
end architecture;

-- Entity for pattern 0010111101110110011010010111000000101110011010100111000001100111
entity pattern_matcher_232 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(63 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_232 is
begin
  match <= 232 when data = "0010111101110110011010010111000000101110011010100111000001100111" else 0;
end architecture;

-- Entity for pattern 001011110110111001100101011101110010111101100001011011000110110001011111011001100110100101101100011001010101111101101001011011100110011001101111001100010010111001110000011010000111000000111111
entity pattern_matcher_233 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(191 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_233 is
begin
  match <= 233 when data = "001011110110111001100101011101110010111101100001011011000110110001011111011001100110100101101100011001010101111101101001011011100110011001101111001100010010111001110000011010000111000000111111" else 0;
end architecture;

-- Entity for pattern 00000101011001100110000101110011011101000011100000000111011010000110111101101101011001010110011001110100011100000000001101101111011100100110011100000000
entity pattern_matcher_234 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(151 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_234 is
begin
  match <= 234 when data = "00000101011001100110000101110011011101000011100000000111011010000110111101101101011001010110011001110100011100000000001101101111011100100110011100000000" else 0;
end architecture;

-- Entity for pattern 0100011101000101010101000010000000101111001000000100100001010100010101000101000000101111001100010010111000110001
entity pattern_matcher_235 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(111 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_235 is
begin
  match <= 235 when data = "0100011101000101010101000010000000101111001000000100100001010100010101000101000000101111001100010010111000110001" else 0;
end architecture;

-- Entity for pattern 001011110101111101110110011101000110100101011111011100100111000001100011
entity pattern_matcher_236 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(71 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_236 is
begin
  match <= 236 when data = "001011110101111101110110011101000110100101011111011100100111000001100011" else 0;
end architecture;

-- Entity for pattern 001011110111001101110100011011110111001001111001001011100111000001101100
entity pattern_matcher_237 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(71 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_237 is
begin
  match <= 237 when data = "001011110111001101110100011011110111001001111001001011100111000001101100" else 0;
end architecture;

-- Entity for pattern 01100100011000100110110101110011010111110111001001100101011100000110001101100001011101000010111001100011011011110110110101101101011001010110111001110100010111110110111101101110010111110111001001100101011100000111001101101001011101000110010101110011
entity pattern_matcher_238 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(247 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_238 is
begin
  match <= 238 when data = "01100100011000100110110101110011010111110111001001100101011100000110001101100001011101000010111001100011011011110110110101101101011001010110111001110100010111110110111101101110010111110111001001100101011100000111001101101001011101000110010101110011" else 0;
end architecture;

-- Entity for pattern 001011100111101001101111011011000110110001100001011100100110010000101111
entity pattern_matcher_239 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(71 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_239 is
begin
  match <= 239 when data = "001011100111101001101111011011000110110001100001011100100110010000101111" else 0;
end architecture;

-- Entity for pattern 1111111101010011010011010100001010100000
entity pattern_matcher_240 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(39 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_240 is
begin
  match <= 240 when data = "1111111101010011010011010100001010100000" else 0;
end architecture;

-- Entity for pattern 001011110110001101100111011001100110111101110010011101010110110100101110011000110110011101101001
entity pattern_matcher_241 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(95 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_241 is
begin
  match <= 241 when data = "001011110110001101100111011001100110111101110010011101010110110100101110011000110110011101101001" else 0;
end architecture;

-- Entity for pattern 011001000110001001101101011100110101111101110010011001010111000001100011011000010111010000101110011000010110010001100100010111110110011101110010011011110111010101110000011001010110010001011111011000110110111101101100011101010110110101101110
entity pattern_matcher_242 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(239 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_242 is
begin
  match <= 242 when data = "011001000110001001101101011100110101111101110010011001010111000001100011011000010111010000101110011000010110010001100100010111110110011101110010011011110111010101110000011001010110010001011111011000110110111101101100011101010110110101101110" else 0;
end architecture;

-- Entity for pattern 00101111011000010110010001101101011010010110111001011111011100000110000101110011011100110111011101101111011100100110010000101110011100000110100001110000
entity pattern_matcher_243 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(151 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_243 is
begin
  match <= 243 when data = "00101111011000010110010001101101011010010110111001011111011100000110000101110011011100110111011101101111011100100110010000101110011100000110100001110000" else 0;
end architecture;

-- Entity for pattern 0010111101110010011001010110000101100100011011010110010100101110011001010110110101101100
entity pattern_matcher_244 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(87 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_244 is
begin
  match <= 244 when data = "0010111101110010011001010110000101100100011011010110010100101110011001010110110101101100" else 0;
end architecture;

-- Entity for pattern 0010111101101000011000010110111001100100011011000110010101110010
entity pattern_matcher_245 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(63 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_245 is
begin
  match <= 245 when data = "0010111101101000011000010110111001100100011011000110010101110010" else 0;
end architecture;

-- Entity for pattern 001011110101001001100101011000110110111101110110011001010111001001101001011001010111001100101111010011110101001101001011011001010111100100101110011101000111100001110100
entity pattern_matcher_246 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(167 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_246 is
begin
  match <= 246 when data = "001011110101001001100101011000110110111101110110011001010111001001101001011001010111001100101111010011110101001101001011011001010111100100101110011101000111100001110100" else 0;
end architecture;

-- Entity for pattern 01100110011101000111000000101110011001010111100001100101
entity pattern_matcher_247 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(55 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_247 is
begin
  match <= 247 when data = "01100110011101000111000000101110011001010111100001100101" else 0;
end architecture;

-- Entity for pattern 00000011011101110111011101110111000001010110011101101000011010100110011101100110000001000110100101101110011001100110111100000000
entity pattern_matcher_248 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(127 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_248 is
begin
  match <= 248 when data = "00000011011101110111011101110111000001010110011101101000011010100110011101100110000001000110100101101110011001100110111100000000" else 0;
end architecture;

-- Entity for pattern 01001101011011110110010001100101001111010110010001100101011000100111010101100111
entity pattern_matcher_249 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(79 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_249 is
begin
  match <= 249 when data = "01001101011011110110010001100101001111010110010001100101011000100111010101100111" else 0;
end architecture;

-- Entity for pattern 0110011001101111011100100111010101101101010111110110010001100101011101000110000101101001011011000111001100101110011100000110100001110000
entity pattern_matcher_250 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(135 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_250 is
begin
  match <= 250 when data = "0110011001101111011100100111010101101101010111110110010001100101011101000110000101101001011011000111001100101110011100000110100001110000" else 0;
end architecture;

-- Entity for pattern 001011110111001001100001011011100110010001101111011011010011011100110101001100000111100000110111001101010011000000101110011010100111000001100111001111110111100000111101
entity pattern_matcher_251 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(167 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_251 is
begin
  match <= 251 when data = "001011110111001001100001011011100110010001101111011011010011011100110101001100000111100000110111001101010011000000101110011010100111000001100111001111110111100000111101" else 0;
end architecture;

-- Entity for pattern 0100000001000000
entity pattern_matcher_252 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(15 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_252 is
begin
  match <= 252 when data = "0100000001000000" else 0;
end architecture;

-- Entity for pattern 0010111101100100011011010111001100110000
entity pattern_matcher_253 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(39 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_253 is
begin
  match <= 253 when data = "0010111101100100011011010111001100110000" else 0;
end architecture;

-- Entity for pattern 001110000011010100110110
entity pattern_matcher_254 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(23 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_254 is
begin
  match <= 254 when data = "001110000011010100110110" else 0;
end architecture;

-- Entity for pattern 00101111011010000111010001110100011100000110111101100100011000100110001100101110011001000110110001101100
entity pattern_matcher_255 is
  port(
    clk   : in std_logic;
    data  : in std_logic_vector(103 downto 0);
    match : out integer range 0 to 256
  );
end entity;

architecture rtl of pattern_matcher_255 is
begin
  match <= 255 when data = "00101111011010000111010001110100011100000110111101100100011000100110001100101110011001000110110001101100" else 0;
end architecture;

  );
end package patterns_pkg;
