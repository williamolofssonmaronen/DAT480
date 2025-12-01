library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- ======================================================
-- Pattern matcher 0, pattern = 001011110110001001101110011000100110011001101111011100100110110100101110011000110110011101101001
-- ======================================================
entity pattern_matcher_0 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_0 is
  signal shreg : std_logic_vector(95 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(87 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110001001101110011000100110011001101111011100100110110100101110011000110110011101101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 1, pattern = 00101111011000100110001000101111011010010110111001100100011001010111100000101110011100000110100001110000
-- ======================================================
entity pattern_matcher_1 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_1 is
  signal shreg : std_logic_vector(103 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(95 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011000100110001000101111011010010110111001100100011001010111100000101110011100000110100001110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 2, pattern = 0010111101110011011001010111001001110110011001010111001000101101011100110111010001100001011101000111010101110011
-- ======================================================
entity pattern_matcher_2 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_2 is
  signal shreg : std_logic_vector(111 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(103 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101110011011001010111001001110110011001010111001000101101011100110111010001100001011101000111010101110011" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 3, pattern = 0010111101101110011100000110100000101101011001010111100001110000011011000110111101101001011101000111001101100011011000010110111001100111011001010111010000101110011000110110011101101001
-- ======================================================
entity pattern_matcher_3 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_3 is
  signal shreg : std_logic_vector(183 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(175 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101101110011100000110100000101101011001010111100001110000011011000110111101101001011101000111001101100011011000010110111001100111011001010111010000101110011000110110011101101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 4, pattern = 01000011010000010100110000100000
-- ======================================================
entity pattern_matcher_4 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_4 is
  signal shreg : std_logic_vector(31 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(23 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01000011010000010100110000100000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 5, pattern = 00001011
-- ======================================================
entity pattern_matcher_5 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_5 is
  signal shreg : std_logic_vector(7 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(-1 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00001011" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 6, pattern = 0010111001101000011101000110110101101100001111110011000000101110
-- ======================================================
entity pattern_matcher_6 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_6 is
  signal shreg : std_logic_vector(63 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(55 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111001101000011101000110110101101100001111110011000000101110" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 7, pattern = 001011110110000101101110011001000111001001101111011010010110010000101111011100110110110101110011001011110111001101111001011011100110001100101110011100000110100001110000
-- ======================================================
entity pattern_matcher_7 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_7 is
  signal shreg : std_logic_vector(167 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(159 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110000101101110011001000111001001101111011010010110010000101111011100110110110101110011001011110111001101111001011011100110001100101110011100000110100001110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 8, pattern = 001011110110100101101110011001100110111100110010011101110111011101110111
-- ======================================================
entity pattern_matcher_8 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_8 is
  signal shreg : std_logic_vector(71 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(63 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110100101101110011001100110111100110010011101110111011101110111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 9, pattern = 00101111011000110110100001100001011011100110011101100101011100000111011100101110011001010111100001100101
-- ======================================================
entity pattern_matcher_9 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_9 is
  signal shreg : std_logic_vector(103 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(95 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011000110110100001100001011011100110011101100101011100000111011100101110011001010111100001100101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 10, pattern = 00101111011100000111010101110010011000110110100001100001011100110110010100101110011100000110100001110000001111110110000100111101
-- ======================================================
entity pattern_matcher_10 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_10 is
  signal shreg : std_logic_vector(127 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(119 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011100000111010101110010011000110110100001100001011100110110010100101110011100000110100001110000001111110110000100111101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 11, pattern = 001011100111001001110000
-- ======================================================
entity pattern_matcher_11 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_11 is
  signal shreg : std_logic_vector(23 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(15 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011100111001001110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 12, pattern = 0000010100101001000000000000000000000000
-- ======================================================
entity pattern_matcher_12 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_12 is
  signal shreg : std_logic_vector(39 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(31 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0000010100101001000000000000000000000000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 13, pattern = 00101111001111110111010100111101
-- ======================================================
entity pattern_matcher_13 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_13 is
  signal shreg : std_logic_vector(31 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(23 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111001111110111010100111101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 14, pattern = 01010011011101010110001001101010011001010110001101110100001110100010000000111101001111110111010101110100011001100010110100111000001111110100001000111111
-- ======================================================
entity pattern_matcher_14 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_14 is
  signal shreg : std_logic_vector(151 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(143 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01010011011101010110001001101010011001010110001101110100001110100010000000111101001111110111010101110100011001100010110100111000001111110100001000111111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 15, pattern = 0010111101100111011011000110111101100010011000010110110000101110011000110110011101101001
-- ======================================================
entity pattern_matcher_15 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_15 is
  signal shreg : std_logic_vector(87 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(79 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101100111011011000110111101100010011000010110110000101110011000110110011101101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 16, pattern = 0100100001100101011011000110110001101111001011100010111000101110
-- ======================================================
entity pattern_matcher_16 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_16 is
  signal shreg : std_logic_vector(63 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(55 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0100100001100101011011000110110001101111001011100010111000101110" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 17, pattern = 00101111011010010110111001110000011101010111010000101110011000100110000101110100
-- ======================================================
entity pattern_matcher_17 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_17 is
  signal shreg : std_logic_vector(79 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(71 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011010010110111001110000011101010111010000101110011000100110000101110100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 18, pattern = 0010111101000111010101110101011101000101010000100010111001000101010110000100010100111111
-- ======================================================
entity pattern_matcher_18 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_18 is
  signal shreg : std_logic_vector(87 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(79 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101000111010101110101011101000101010000100010111001000101010110000100010100111111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 19, pattern = 001011110010111001101000011010010111001101110100011011110111001001111001
-- ======================================================
entity pattern_matcher_19 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_19 is
  signal shreg : std_logic_vector(71 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(63 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110010111001101000011010010111001101110100011011110111001001111001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 20, pattern = 0010111101011111011101100111010001101001010111110110001001101001011011100010111101011111011101100111010001101001010111110110000101110101011101000010111101100001011101010111010001101000011011110111001000101110011001010111100001100101
-- ======================================================
entity pattern_matcher_20 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_20 is
  signal shreg : std_logic_vector(231 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(223 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101011111011101100111010001101001010111110110001001101001011011100010111101011111011101100111010001101001010111110110000101110101011101000010111101100001011101010111010001101000011011110111001000101110011001010111100001100101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 21, pattern = 001011110110010101101101011101010110110101100001011010010110110000101110011000110110011101101001
-- ======================================================
entity pattern_matcher_21 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_21 is
  signal shreg : std_logic_vector(95 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(87 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110010101101101011101010110110101100001011010010110110000101110011000110110011101101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 22, pattern = 001011110110100101101110011100110111010001100001011100000110100100101110011100000110100001110000001111110110100101100100010011010110101100111101
-- ======================================================
entity pattern_matcher_22 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_22 is
  signal shreg : std_logic_vector(143 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(135 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110100101101110011100110111010001100001011100000110100100101110011100000110100001110000001111110110100101100100010011010110101100111101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 23, pattern = 011001000110001001101101011100110101111101110010011001010111000001100011011000010111010000101110011000010110010001100100010111110111000001110010011010010110111101110010011010010111010001111001010111110110111001100011011010000110000101110010
-- ======================================================
entity pattern_matcher_23 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_23 is
  signal shreg : std_logic_vector(239 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(231 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "011001000110001001101101011100110101111101110010011001010111000001100011011000010111010000101110011000010110010001100100010111110111000001110010011010010110111101110010011010010111010001111001010111110110111001100011011010000110000101110010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 24, pattern = 0010111100110000001011110010000001001000010101000101010001010000001011110011000100101110
-- ======================================================
entity pattern_matcher_24 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_24 is
  signal shreg : std_logic_vector(87 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(79 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111100110000001011110010000001001000010101000101010001010000001011110011000100101110" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 25, pattern = 01000001010001000100110101001001010011100100100101010011010101000101001001000001010101000100111101010010
-- ======================================================
entity pattern_matcher_25 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_25 is
  signal shreg : std_logic_vector(103 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(95 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01000001010001000100110101001001010011100100100101010011010101000101001001000001010101000100111101010010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 26, pattern = 01010100010001010101001001001101001111010111100001110100011001010111001001101101
-- ======================================================
entity pattern_matcher_26 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_26 is
  signal shreg : std_logic_vector(79 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(71 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01010100010001010101001001001101001111010111100001110100011001010111001001101101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 27, pattern = 00101111011011010111001101100100011000010110001100101111
-- ======================================================
entity pattern_matcher_27 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_27 is
  signal shreg : std_logic_vector(55 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(47 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011011010111001101100100011000010110001100101111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 28, pattern = 00111111010100000110000101100111011001010101001101100101011100100111011001101001011000110110010101110011
-- ======================================================
entity pattern_matcher_28 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_28 is
  signal shreg : std_logic_vector(103 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(95 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00111111010100000110000101100111011001010101001101100101011100100111011001101001011000110110010101110011" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 29, pattern = 0101010101110011011001010111001000101101010000010110011101100101011011100111010000111010001000000100110101101001011011100110010001110011011100000110000101110010011010110010000001001101010010010101000000100000
-- ======================================================
entity pattern_matcher_29 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_29 is
  signal shreg : std_logic_vector(207 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(199 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0101010101110011011001010111001000101101010000010110011101100101011011100111010000111010001000000100110101101001011011100110010001110011011100000110000101110010011010110010000001001101010010010101000000100000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 30, pattern = 0100100001101111011100110111010000111010001000000110110101100010011001100110001101100101001100100011010001110010011001110110111000110110001101010110001001111000001100110110011100101110
-- ======================================================
entity pattern_matcher_30 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_30 is
  signal shreg : std_logic_vector(183 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(175 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0100100001101111011100110111010000111010001000000110110101100010011001100110001101100101001100100011010001110010011001110110111000110110001101010110001001111000001100110110011100101110" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 31, pattern = 000110000000001100000011
-- ======================================================
entity pattern_matcher_31 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_31 is
  signal shreg : std_logic_vector(23 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(15 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "000110000000001100000011" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 32, pattern = 0010111101101010011100110010111101100100011010010111001101100001011000100110110001100101001011100110101001110011001111110111010001111001011100000110010100111101
-- ======================================================
entity pattern_matcher_32 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_32 is
  signal shreg : std_logic_vector(159 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(151 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101101010011100110010111101100100011010010111001101100001011000100110110001100101001011100110101001110011001111110111010001111001011100000110010100111101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 33, pattern = 01000110011100100110000101100111
-- ======================================================
entity pattern_matcher_33 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_33 is
  signal shreg : std_logic_vector(31 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(23 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01000110011100100110000101100111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 34, pattern = 0000000000000000000000000001000111010000000000000000000000000000
-- ======================================================
entity pattern_matcher_34 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_34 is
  signal shreg : std_logic_vector(63 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(55 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0000000000000000000000000001000111010000000000000000000000000000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 35, pattern = 00110001001000000110011001101001011011000110010100101000011100110010100100100000011000110110111101110000011010010110010101100100
-- ======================================================
entity pattern_matcher_35 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_35 is
  signal shreg : std_logic_vector(127 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(119 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00110001001000000110011001101001011011000110010100101000011100110010100100100000011000110110111101110000011010010110010101100100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 36, pattern = 0011000000110000
-- ======================================================
entity pattern_matcher_36 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_36 is
  signal shreg : std_logic_vector(15 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(7 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0011000000110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 37, pattern = 00101111011100110110010101100001011100100110001101101000001110010011011100101110011101100111010001110011
-- ======================================================
entity pattern_matcher_37 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_37 is
  signal shreg : std_logic_vector(103 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(95 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011100110110010101100001011100100110001101101000001110010011011100101110011101100111010001110011" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 38, pattern = 010100000100111101010011010101000010000000101111
-- ======================================================
entity pattern_matcher_38 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_38 is
  signal shreg : std_logic_vector(47 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(39 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "010100000100111101010011010101000010000000101111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 39, pattern = 001011110111001101100011011100100110100101110000011101000111001100101111010001100111000001100001011001000110110101100011011001110110100100101110011001010111100001100101
-- ======================================================
entity pattern_matcher_39 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_39 is
  signal shreg : std_logic_vector(167 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(159 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110111001101100011011100100110100101110000011101000111001100101111010001100111000001100001011001000110110101100011011001110110100100101110011001010111100001100101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 40, pattern = 0010111101101111011011100111001001100101011100010111010101100101011100110111010001100101011011100110010000101110011000110110011001101101
-- ======================================================
entity pattern_matcher_40 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_40 is
  signal shreg : std_logic_vector(135 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(127 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101101111011011100111001001100101011100010111010101100101011100110111010001100101011011100110010000101110011000110110011001101101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 41, pattern = 001001010100000101010000010100000100010001000001010101000100000100100101
-- ======================================================
entity pattern_matcher_41 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_41 is
  signal shreg : std_logic_vector(71 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(63 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001001010100000101010000010100000100010001000001010101000100000100100101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 42, pattern = 00101111011100000110111101110011011101000010111101100101011000110110100001101111
-- ======================================================
entity pattern_matcher_42 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_42 is
  signal shreg : std_logic_vector(79 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(71 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011100000110111101110011011101000010111101100101011000110110100001101111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 43, pattern = 010000110110111101101111011010110110100101100101001110100010000001100011011000010110001101101000011001010011110101100011011000110011001000111101
-- ======================================================
entity pattern_matcher_43 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_43 is
  signal shreg : std_logic_vector(143 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(135 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "010000110110111101101111011010110110100101100101001110100010000001100011011000010110001101101000011001010011110101100011011000110011001000111101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 44, pattern = 010101000100100101001101010001010101111101011010010011110100111001000101
-- ======================================================
entity pattern_matcher_44 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_44 is
  signal shreg : std_logic_vector(71 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(63 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "010101000100100101001101010001010101111101011010010011110100111001000101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 45, pattern = 00101111011001100110111101110010011011010011001001110010011000010111011100101110011000110110011101101001
-- ======================================================
entity pattern_matcher_45 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_45 is
  signal shreg : std_logic_vector(103 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(95 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011001100110111101110010011011010011001001110010011000010111011100101110011000110110011101101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 46, pattern = 0101001001001110010001100101001000100000
-- ======================================================
entity pattern_matcher_46 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_46 is
  signal shreg : std_logic_vector(39 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(31 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0101001001001110010001100101001000100000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 47, pattern = 0010111001100101011110000110010100100000010010000101010001010100010100000010111100110001001011100011000000001101000010100100100001101111011100110111010000111010
-- ======================================================
entity pattern_matcher_47 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_47 is
  signal shreg : std_logic_vector(159 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(151 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111001100101011110000110010100100000010010000101010001010100010100000010111100110001001011100011000000001101000010100100100001101111011100110111010000111010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 48, pattern = 00101111011000100010111101101001011011100110010001100101011110000010111001110000011010000111000000111111011010010110010000111101
-- ======================================================
entity pattern_matcher_48 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_48 is
  signal shreg : std_logic_vector(127 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(119 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011000100010111101101001011011100110010001100101011110000010111001110000011010000111000000111111011010010110010000111101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 49, pattern = 001011110110010101100011011010000110111100101110011000100110000101110100
-- ======================================================
entity pattern_matcher_49 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_49 is
  signal shreg : std_logic_vector(71 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(63 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110010101100011011010000110111100101110011000100110000101110100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 50, pattern = 00101111010000110101001101001101011000010110100101101100011101000110111100101110011000110110011101101001
-- ======================================================
entity pattern_matcher_50 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_50 is
  signal shreg : std_logic_vector(103 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(95 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111010000110101001101001101011000010110100101101100011101000110111100101110011000110110011101101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 51, pattern = 011000110111001001100101011000010111010001100101001000000111010001100001011000100110110001100101
-- ======================================================
entity pattern_matcher_51 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_51 is
  signal shreg : std_logic_vector(95 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(87 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "011000110111001001100101011000010111010001100101001000000111010001100001011000100110110001100101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 52, pattern = 011001110111001001100001011011100111010000100000
-- ======================================================
entity pattern_matcher_52 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_52 is
  signal shreg : std_logic_vector(47 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(39 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "011001110111001001100001011011100111010000100000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 53, pattern = 01101010011000010111011001100001011100110110001101110010011010010111000001110100001110100010111100101111
-- ======================================================
entity pattern_matcher_53 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_53 is
  signal shreg : std_logic_vector(103 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(95 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01101010011000010111011001100001011100110110001101110010011010010111000001110100001110100010111100101111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 54, pattern = 0110010001100010011011010111001101011111011100100110010101110000011000110110000101110100001011100110000101101100011101000110010101110010010111110111000001110010011010010110111101110010011010010111010001111001
-- ======================================================
entity pattern_matcher_54 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_54 is
  signal shreg : std_logic_vector(207 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(199 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0110010001100010011011010111001101011111011100100110010101110000011000110110000101110100001011100110000101101100011101000110010101110010010111110111000001110010011010010110111101110010011010010111010001111001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 55, pattern = 0111010001100011011100000110010001100001011101000110000101111100
-- ======================================================
entity pattern_matcher_55 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_55 is
  signal shreg : std_logic_vector(63 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(55 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0111010001100011011100000110010001100001011101000110000101111100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 56, pattern = 001011110111000001110010011011110110101100101111
-- ======================================================
entity pattern_matcher_56 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_56 is
  signal shreg : std_logic_vector(47 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(39 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110111000001110010011011110110101100101111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 57, pattern = 001111010010000001001000010101000101010001010000001011110011000100101110
-- ======================================================
entity pattern_matcher_57 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_57 is
  signal shreg : std_logic_vector(71 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(63 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001111010010000001001000010101000101010001010000001011110011000100101110" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 58, pattern = 0010111101101001011011100111000001110101011101000010111001100010011000010111010001111100
-- ======================================================
entity pattern_matcher_58 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_58 is
  signal shreg : std_logic_vector(87 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(79 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101101001011011100111000001110101011101000010111001100010011000010111010001111100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 59, pattern = 0101000001001011
-- ======================================================
entity pattern_matcher_59 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_59 is
  signal shreg : std_logic_vector(15 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(7 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0101000001001011" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 60, pattern = 00111100011010010110011001110010011000010110110101100101
-- ======================================================
entity pattern_matcher_60 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_60 is
  signal shreg : std_logic_vector(55 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(47 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00111100011010010110011001110010011000010110110101100101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 61, pattern = 01010101011100110110010101110010001011010100000101100111011001010110111001110100001110100010000001010111011010010110111001001000011101000111010001110000010000110110110001101001011001010110111001110100
-- ======================================================
entity pattern_matcher_61 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_61 is
  signal shreg : std_logic_vector(199 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(191 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01010101011100110110010101110010001011010100000101100111011001010110111001110100001110100010000001010111011010010110111001001000011101000111010001110000010000110110110001101001011001010110111001110100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 62, pattern = 010000110110111101101110011011100110010101100011011101000010111001110000011010000111000000111111011010010110010000111101
-- ======================================================
entity pattern_matcher_62 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_62 is
  signal shreg : std_logic_vector(119 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(111 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "010000110110111101101110011011100110010101100011011101000010111001110000011010000111000000111111011010010110010000111101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 63, pattern = 11111111000000010000000000000000000000000000000000000001
-- ======================================================
entity pattern_matcher_63 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_63 is
  signal shreg : std_logic_vector(55 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(47 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "11111111000000010000000000000000000000000000000000000001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 64, pattern = 0010111001110011011101110110011000111111
-- ======================================================
entity pattern_matcher_64 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_64 is
  signal shreg : std_logic_vector(39 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(31 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111001110011011101110110011000111111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 65, pattern = 000000110000000000000001
-- ======================================================
entity pattern_matcher_65 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_65 is
  signal shreg : std_logic_vector(23 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(15 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "000000110000000000000001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 66, pattern = 010000110100001101000011010000110100001101000011010000110100001101000011010000110100001101000011010000110100001101000011010000110100001101000011010000110100001101000011010000110100001101000011
-- ======================================================
entity pattern_matcher_66 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_66 is
  signal shreg : std_logic_vector(191 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(183 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "010000110100001101000011010000110100001101000011010000110100001101000011010000110100001101000011010000110100001101000011010000110100001101000011010000110100001101000011010000110100001101000011" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 67, pattern = 011100110110110001100101011001010111000001111100
-- ======================================================
entity pattern_matcher_67 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_67 is
  signal shreg : std_logic_vector(47 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(39 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "011100110110110001100101011001010111000001111100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 68, pattern = 00101111011100100110010101100111011010010111001101110100011001010111001000101110011000110110011101101001
-- ======================================================
entity pattern_matcher_68 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_68 is
  signal shreg : std_logic_vector(103 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(95 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011100100110010101100111011010010111001101110100011001010111001000101110011000110110011101101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 69, pattern = 01110000011011110110111001100111
-- ======================================================
entity pattern_matcher_69 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_69 is
  signal shreg : std_logic_vector(31 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(23 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01110000011011110110111001100111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 70, pattern = 001011110110001101100001011011000110010101101110011001000110010101110010010111110110000101100100011011010110100101101110001011100111000001101100
-- ======================================================
entity pattern_matcher_70 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_70 is
  signal shreg : std_logic_vector(143 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(135 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110001101100001011011000110010101101110011001000110010101110010010111110110000101100100011011010110100101101110001011100111000001101100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 71, pattern = 011101010111001101100101011100100101111101110100011000010110001001101100011001010111001101110000011000010110001101100101
-- ======================================================
entity pattern_matcher_71 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_71 is
  signal shreg : std_logic_vector(119 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(111 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "011101010111001101100101011100100101111101110100011000010110001001101100011001010111001101110000011000010110001101100101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 72, pattern = 001011100111000001101000011100000011111101101101011001010111010001101000011011110110010000111101
-- ======================================================
entity pattern_matcher_72 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_72 is
  signal shreg : std_logic_vector(95 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(87 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011100111000001101000011100000011111101101101011001010111010001101000011011110110010000111101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 73, pattern = 111111100101001101001101010000100100000000000000
-- ======================================================
entity pattern_matcher_73 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_73 is
  signal shreg : std_logic_vector(47 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(39 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "111111100101001101001101010000100100000000000000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 74, pattern = 1111111101010011010011010100001001110011
-- ======================================================
entity pattern_matcher_74 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_74 is
  signal shreg : std_logic_vector(39 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(31 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "1111111101010011010011010100001001110011" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 75, pattern = 001011110110111101110010011001000110010101110010011100110010111101100011011010000110010101100011011010110111001100101110011101000111100001110100
-- ======================================================
entity pattern_matcher_75 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_75 is
  signal shreg : std_logic_vector(143 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(135 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110111101110010011001000110010101110010011100110010111101100011011010000110010101100011011010110111001100101110011101000111100001110100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 76, pattern = 000101100000001100000000
-- ======================================================
entity pattern_matcher_76 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_76 is
  signal shreg : std_logic_vector(23 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(15 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "000101100000001100000000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 77, pattern = 001011110110001101100001011101000110000101101100011011110110011100101110011011100111001101100110
-- ======================================================
entity pattern_matcher_77 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_77 is
  signal shreg : std_logic_vector(95 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(87 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110001101100001011101000110000101101100011011110110011100101110011011100111001101100110" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 78, pattern = 010100110111010001101111011011110110011101010010
-- ======================================================
entity pattern_matcher_78 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_78 is
  signal shreg : std_logic_vector(47 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(39 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "010100110111010001101111011011110110011101010010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 79, pattern = 001011110110001101100110011000110110000101100011011010000110010100101110011011010110000101110000
-- ======================================================
entity pattern_matcher_79 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_79 is
  signal shreg : std_logic_vector(95 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(87 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110001101100110011000110110000101100011011010000110010100101110011011010110000101110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 80, pattern = 001011110110100101101110011100110111010000111111
-- ======================================================
entity pattern_matcher_80 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_80 is
  signal shreg : std_logic_vector(47 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(39 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110100101101110011100110111010000111111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 81, pattern = 0010111101100100011010010111001001100101011000110111010001101111011100100111100100101110011100000110100001110000
-- ======================================================
entity pattern_matcher_81 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_81 is
  signal shreg : std_logic_vector(111 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(103 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101100100011010010111001001100101011000110111010001101111011100100111100100101110011100000110100001110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 82, pattern = 00101111011010000110100100101110011000110110011101101001
-- ======================================================
entity pattern_matcher_82 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_82 is
  signal shreg : std_logic_vector(55 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(47 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011010000110100100101110011000110110011101101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 83, pattern = 001011110110110001101111011000110110101101111001011000110111001001111001011100000111010000101110011100100110000101110010
-- ======================================================
entity pattern_matcher_83 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_83 is
  signal shreg : std_logic_vector(119 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(111 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110110001101111011000110110101101111001011000110111001001111001011100000111010000101110011100100110000101110010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 84, pattern = 001011110111001101101000011011110111000000101110011000110110011101101001
-- ======================================================
entity pattern_matcher_84 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_84 is
  signal shreg : std_logic_vector(71 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(63 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110111001101101000011011110111000000101110011000110110011101101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 85, pattern = 00101111011101110110010101100010001011110110011101101111011011110110011101101100011001010101111101100001011011100110000101101100011110010111010001101001011000110111001100101110011100000110100001110000
-- ======================================================
entity pattern_matcher_85 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_85 is
  signal shreg : std_logic_vector(199 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(191 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011101110110010101100010001011110110011101101111011011110110011101101100011001010101111101100001011011100110000101101100011110010111010001101001011000110111001100101110011100000110100001110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 86, pattern = 010000010110001101110101011011100110010101110100011010010111100000101101
-- ======================================================
entity pattern_matcher_86 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_86 is
  signal shreg : std_logic_vector(71 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(63 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "010000010110001101110101011011100110010101110100011010010111100000101101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 87, pattern = 01001000011011110111001101110100001110100010000000110010001100000011100100101110001101010011001100101110001100010011000100110011001011100011001000110010001100110000110100001010
-- ======================================================
entity pattern_matcher_87 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_87 is
  signal shreg : std_logic_vector(175 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(167 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01001000011011110111001101110100001110100010000000110010001100000011100100101110001101010011001100101110001100010011000100110011001011100011001000110010001100110000110100001010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 88, pattern = 000101110000001100000011
-- ======================================================
entity pattern_matcher_88 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_88 is
  signal shreg : std_logic_vector(23 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(15 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "000101110000001100000011" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 89, pattern = 01110011011100000110111101101111011001100111011101101111011100100110101101110011
-- ======================================================
entity pattern_matcher_89 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_89 is
  signal shreg : std_logic_vector(79 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(71 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01110011011100000110111101101111011001100111011101101111011100100110101101110011" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 90, pattern = 0010111101100001011110000111001100101110011000110110011101101001
-- ======================================================
entity pattern_matcher_90 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_90 is
  signal shreg : std_logic_vector(63 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(55 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101100001011110000111001100101110011000110110011101101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 91, pattern = 0010111100101110001011100010111000101110
-- ======================================================
entity pattern_matcher_91 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_91 is
  signal shreg : std_logic_vector(39 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(31 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111100101110001011100010111000101110" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 92, pattern = 0100001101101111011011010110110101100001011011100110010000100000011000110110111101101101011100000110110001100101011101000110010101100100
-- ======================================================
entity pattern_matcher_92 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_92 is
  signal shreg : std_logic_vector(135 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(127 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0100001101101111011011010110110101100001011011100110010000100000011000110110111101101101011100000110110001100101011101000110010101100100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 93, pattern = 00110010001100100011000100100000010001110110111101101111011001000110001001111001011001010010000001101000011000010111000001110000011110010010000001110010001100000011000001110100011010010110111001100111
-- ======================================================
entity pattern_matcher_93 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_93 is
  signal shreg : std_logic_vector(199 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(191 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00110010001100100011000100100000010001110110111101101111011001000110001001111001011001010010000001101000011000010111000001110000011110010010000001110010001100000011000001110100011010010110111001100111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 94, pattern = 0010111101100100011101100111011101110011011100110111001000101110011001000110110001101100
-- ======================================================
entity pattern_matcher_94 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_94 is
  signal shreg : std_logic_vector(87 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(79 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101100100011101100111011101110011011100110111001000101110011001000110110001101100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 95, pattern = 0010111101100111011101010110010101110011011101000110001001101111011011110110101100101110011000110110011101101001
-- ======================================================
entity pattern_matcher_95 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_95 is
  signal shreg : std_logic_vector(111 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(103 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101100111011101010110010101110011011101000110001001101111011011110110101100101110011000110110011101101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 96, pattern = 001011110110110101100001011010010110110001101100011010010111001101110100001011100111000001101100
-- ======================================================
entity pattern_matcher_96 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_96 is
  signal shreg : std_logic_vector(95 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(87 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110110101100001011010010110110001101100011010010111001101110100001011100111000001101100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 97, pattern = 0010111101110110011011100110001101110110011010010110010101110111011001010111001000101110011010100110000101110010
-- ======================================================
entity pattern_matcher_97 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_97 is
  signal shreg : std_logic_vector(111 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(103 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101110110011011100110001101110110011010010110010101110111011001010111001000101110011010100110000101110010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 98, pattern = 001011110110001001100010001011010110100001101111011100110111010001110011011101100110001100101110011100110110100000111111
-- ======================================================
entity pattern_matcher_98 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_98 is
  signal shreg : std_logic_vector(119 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(111 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110001001100010001011010110100001101111011100110111010001110011011101100110001100101110011100110110100000111111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 99, pattern = 0101001001000011010100000101010000100000010101000100111100111010
-- ======================================================
entity pattern_matcher_99 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_99 is
  signal shreg : std_logic_vector(63 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(55 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0101001001000011010100000101010000100000010101000100111100111010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 100, pattern = 0111001001100011011100000111010000100000011101000110111100111010
-- ======================================================
entity pattern_matcher_100 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_100 is
  signal shreg : std_logic_vector(63 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(55 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0111001001100011011100000111010000100000011101000110111100111010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 101, pattern = 0010111101100101011011100111011001101001011100100110111101101110001011100111000001101100
-- ======================================================
entity pattern_matcher_101 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_101 is
  signal shreg : std_logic_vector(87 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(79 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101100101011011100111011001101001011100100110111101101110001011100111000001101100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 102, pattern = 011100000110010001100110010111110110010101100110011000010111100001011111
-- ======================================================
entity pattern_matcher_102 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_102 is
  signal shreg : std_logic_vector(71 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(63 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "011100000110010001100110010111110110010101100110011000010111100001011111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 103, pattern = 0010111101011001011000010100001001000010
-- ======================================================
entity pattern_matcher_103 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_103 is
  signal shreg : std_logic_vector(39 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(31 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101011001011000010100001001000010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 104, pattern = 0110000101100011011101000110100101110110011000010111010001100101
-- ======================================================
entity pattern_matcher_104 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_104 is
  signal shreg : std_logic_vector(63 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(55 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0110000101100011011101000110100101110110011000010111010001100101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 105, pattern = 0010111100110000001100000011000000101110011010100111000001100111
-- ======================================================
entity pattern_matcher_105 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_105 is
  signal shreg : std_logic_vector(63 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(55 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111100110000001100000011000000101110011010100111000001100111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 106, pattern = 01010101010100000100010001000001010101000100010101111100
-- ======================================================
entity pattern_matcher_106 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_106 is
  signal shreg : std_logic_vector(55 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(47 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01010101010100000100010001000001010101000100010101111100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 107, pattern = 001011110110000100110001011100110111010001100001011101000111001100101111
-- ======================================================
entity pattern_matcher_107 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_107 is
  signal shreg : std_logic_vector(71 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(63 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110000100110001011100110111010001100001011101000111001100101111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 108, pattern = 00101111010101100111001101010011011001010111010001000011011011110110111101101011011010010110010100101110011001010111100001100101
-- ======================================================
entity pattern_matcher_108 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_108 is
  signal shreg : std_logic_vector(127 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(119 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111010101100111001101010011011001010111010001000011011011110110111101101011011010010110010100101110011001010111100001100101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 109, pattern = 001011110100110101110011011011010100110101100001011100110110101100101110011001010111100001100101
-- ======================================================
entity pattern_matcher_109 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_109 is
  signal shreg : std_logic_vector(95 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(87 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110100110101110011011011010100110101100001011100110110101100101110011001010111100001100101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 110, pattern = 00101111011101000110100001101001011011100110111001100101011100100010111101110100011010000111010101101101011000100011111101101001011011010110011100111101
-- ======================================================
entity pattern_matcher_110 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_110 is
  signal shreg : std_logic_vector(151 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(143 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011101000110100001101001011011100110111001100101011100100010111101110100011010000111010101101101011000100011111101101001011011010110011100111101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 111, pattern = 0010111101110101011100000110110001101111011000010110010000101111011011010110111101100100011101010110110001100101
-- ======================================================
entity pattern_matcher_111 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_111 is
  signal shreg : std_logic_vector(111 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(103 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101110101011100000110110001101111011000010110010000101111011011010110111101100100011101010110110001100101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 112, pattern = 01111010100011011001101111011100
-- ======================================================
entity pattern_matcher_112 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_112 is
  signal shreg : std_logic_vector(31 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(23 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01111010100011011001101111011100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 113, pattern = 00101111011000110110011001100100011011110110001101110011001011110111001101101110011010010111000001110000011001010111010001110011001011110110011001101001011011000110010101100101011110000110100101110011011101000111001100101110011000110110011001101101
-- ======================================================
entity pattern_matcher_113 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_113 is
  signal shreg : std_logic_vector(247 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(239 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011000110110011001100100011011110110001101110011001011110111001101101110011010010111000001110000011001010111010001110011001011110110011001101001011011000110010101100101011110000110100101110011011101000111001100101110011000110110011001101101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 114, pattern = 010111110101000001001000010100000100110001001001010000100101101101101100011010010110001001100100011010010111001001011101
-- ======================================================
entity pattern_matcher_114 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_114 is
  signal shreg : std_logic_vector(119 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(111 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "010111110101000001001000010100000100110001001001010000100101101101101100011010010110001001100100011010010111001001011101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 115, pattern = 00101111011000110110111101101101011011010110010101110010011000110110010100101110011000110110011101101001
-- ======================================================
entity pattern_matcher_115 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_115 is
  signal shreg : std_logic_vector(103 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(95 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011000110110111101101101011011010110010101110010011000110110010100101110011000110110011101101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 116, pattern = 0010111101000001011001000110110101101001011011100110100001110100011011010110110001011111
-- ======================================================
entity pattern_matcher_116 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_116 is
  signal shreg : std_logic_vector(87 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(79 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101000001011001000110110101101001011011100110100001110100011011010110110001011111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 117, pattern = 0101010101110011011001010111001000101101010000010110011101100101011011100111010000111010
-- ======================================================
entity pattern_matcher_117 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_117 is
  signal shreg : std_logic_vector(87 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(79 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0101010101110011011001010111001000101101010000010110011101100101011011100111010000111010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 118, pattern = 00101111011001000110111001110011011101000110111101101111011011000111001100101110011100000110100001110000
-- ======================================================
entity pattern_matcher_118 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_118 is
  signal shreg : std_logic_vector(103 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(95 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011001000110111001110011011101000110111101101111011011000111001100101110011100000110100001110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 119, pattern = 0010111101110111011010010110111001100100011011110111011101110011001011110111010101110000011001000110000101110100011001010010111101110011011001010110000101110010011000110110100000111111011010000110110000111101
-- ======================================================
entity pattern_matcher_119 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_119 is
  signal shreg : std_logic_vector(207 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(199 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101110111011010010110111001100100011011110111011101110011001011110111010101110000011001000110000101110100011001010010111101110011011001010110000101110010011000110110100000111111011010000110110000111101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 120, pattern = 00101111011001100110100101101110011001110110010101110010
-- ======================================================
entity pattern_matcher_120 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_120 is
  signal shreg : std_logic_vector(55 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(47 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011001100110100101101110011001110110010101110010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 121, pattern = 0010111101100011011001110110100100101101011000100110100101101110001011110110101001101010
-- ======================================================
entity pattern_matcher_121 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_121 is
  signal shreg : std_logic_vector(87 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(79 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101100011011001110110100100101101011000100110100101101110001011110110101001101010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 122, pattern = 001011110110001101101000011001010110001101101011011101010111000001100100011000010111010001100101
-- ======================================================
entity pattern_matcher_122 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_122 is
  signal shreg : std_logic_vector(95 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(87 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110001101101000011001010110001101101011011101010111000001100100011000010111010001100101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 123, pattern = 001011110110000101100100011011010110100101110011011000010111000001101001001011110110011001110000011000010110010001101101011010010110111000101110011010000111010001101101
-- ======================================================
entity pattern_matcher_123 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_123 is
  signal shreg : std_logic_vector(167 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(159 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110000101100100011011010110100101110011011000010111000001101001001011110110011001110000011000010110010001101101011010010110111000101110011010000111010001101101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 124, pattern = 01100100011000100110110101110011010111110111001001100101011100000110001101100001011101000010111001100100011001010110011001101001011011100110010101011111011000110110111101101100011101010110110101101110010111110110011101110010011011110111010101110000
-- ======================================================
entity pattern_matcher_124 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_124 is
  signal shreg : std_logic_vector(247 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(239 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01100100011000100110110101110011010111110111001001100101011100000110001101100001011101000010111001100100011001010110011001101001011011100110010101011111011000110110111101101100011101010110110101101110010111110110011101110010011011110111010101110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 125, pattern = 01101001011011100111001101110100011000010110110001101100001011110111010101110000011001110111001001100001011001000110010100101110011100000110100001110000
-- ======================================================
entity pattern_matcher_125 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_125 is
  signal shreg : std_logic_vector(151 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(143 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01101001011011100111001101110100011000010110110001101100001011110111010101110000011001110111001001100001011001000110010100101110011100000110100001110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 126, pattern = 0010111101110111011010000110010101110010011001010110000101101101011010010010111001100011011001110110100100111111
-- ======================================================
entity pattern_matcher_126 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_126 is
  signal shreg : std_logic_vector(111 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(103 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101110111011010000110010101110010011001010110000101101101011010010010111001100011011001110110100100111111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 127, pattern = 00101111011000100110000101100011011010110111010101110000
-- ======================================================
entity pattern_matcher_127 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_127 is
  signal shreg : std_logic_vector(55 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(47 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011000100110000101100011011010110111010101110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 128, pattern = 001011110111000001100001011001110110010101101100011011110110011100101110011000110110011101101001
-- ======================================================
entity pattern_matcher_128 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_128 is
  signal shreg : std_logic_vector(95 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(87 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110111000001100001011001110110010101101100011011110110011100101110011000110110011101101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 129, pattern = 001011110110110101110010011101000110011100101110011000110110011101101001
-- ======================================================
entity pattern_matcher_129 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_129 is
  signal shreg : std_logic_vector(71 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(63 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110110101110010011101000110011100101110011000110110011101101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 130, pattern = 00101111011001100111001001101101010000110110111101101101011100000110111101110011011001010010111001100001011100110111000001111000
-- ======================================================
entity pattern_matcher_130 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_130 is
  signal shreg : std_logic_vector(127 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(119 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011001100111001001101101010000110110111101101101011100000110111101110011011001010010111001100001011100110111000001111000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 131, pattern = 01000001010100000101000001000101
-- ======================================================
entity pattern_matcher_131 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_131 is
  signal shreg : std_logic_vector(31 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(23 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01000001010100000101000001000101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 132, pattern = 01010010011001010110011001100101011100100110010101110010001110100010000001001000010101000101010001010000001011110011000100101110001100000000110100001010
-- ======================================================
entity pattern_matcher_132 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_132 is
  signal shreg : std_logic_vector(151 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(143 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01010010011001010110011001100101011100100110010101110010001110100010000001001000010101000101010001010000001011110011000100101110001100000000110100001010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 133, pattern = 00101111011100000110111101110000011101010111000000101110011100000110100001110000
-- ======================================================
entity pattern_matcher_133 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_133 is
  signal shreg : std_logic_vector(79 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(71 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011100000110111101110000011101010111000000101110011100000110100001110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 134, pattern = 0010111101100001011001000110110101101001011011100010111001110000011010000111000000110011
-- ======================================================
entity pattern_matcher_134 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_134 is
  signal shreg : std_logic_vector(87 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(79 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101100001011001000110110101101001011011100010111001110000011010000111000000110011" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 135, pattern = 00101110011100000110000101110101011100110110010101000001011011100110100101101101011000010111010001101001011011110110111001110011
-- ======================================================
entity pattern_matcher_135 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_135 is
  signal shreg : std_logic_vector(127 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(119 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101110011100000110000101110101011100110110010101000001011011100110100101101101011000010111010001101001011011110110111001110011" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 136, pattern = 0010111101100001011001000110110101101001011011100101111101101100011011110110011101101111011101010111010000101110011100000110100001110000
-- ======================================================
entity pattern_matcher_136 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_136 is
  signal shreg : std_logic_vector(135 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(127 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101100001011001000110110101101001011011100101111101101100011011110110011101101111011101010111010000101110011100000110100001110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 137, pattern = 00101111011101010110110000101110011010000111010001101101
-- ======================================================
entity pattern_matcher_137 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_137 is
  signal shreg : std_logic_vector(55 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(47 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011101010110110000101110011010000111010001101101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 138, pattern = 010100000101010101010100
-- ======================================================
entity pattern_matcher_138 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_138 is
  signal shreg : std_logic_vector(23 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(15 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "010100000101010101010100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 139, pattern = 00001000011011110110100001110100011010000110010101101001011001110110100000000010011000110110001100000000
-- ======================================================
entity pattern_matcher_139 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_139 is
  signal shreg : std_logic_vector(103 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(95 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00001000011011110110100001110100011010000110010101101001011001110110100000000010011000110110001100000000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 140, pattern = 111111110101001101001101010000100111001100000000000000000000000000000000
-- ======================================================
entity pattern_matcher_140 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_140 is
  signal shreg : std_logic_vector(71 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(63 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "111111110101001101001101010000100111001100000000000000000000000000000000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 141, pattern = 01001000010001010100110001010000
-- ======================================================
entity pattern_matcher_141 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_141 is
  signal shreg : std_logic_vector(31 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(23 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01001000010001010100110001010000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 142, pattern = 00101111011001000110111101100101011001000110100101110100011101100110111101110100011001010111001100101110011000110110011101101001
-- ======================================================
entity pattern_matcher_142 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_142 is
  signal shreg : std_logic_vector(127 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(119 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011001000110111101100101011001000110100101110100011101100110111101110100011001010111001100101110011000110110011101101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 143, pattern = 01110000011000010111001101110011001000000111011101101000001100000011000001110100
-- ======================================================
entity pattern_matcher_143 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_143 is
  signal shreg : std_logic_vector(79 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(71 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01110000011000010111001101110011001000000111011101101000001100000011000001110100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 144, pattern = 0001100000000011000000100000000000000011000000010100000000000000
-- ======================================================
entity pattern_matcher_144 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_144 is
  signal shreg : std_logic_vector(63 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(55 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0001100000000011000000100000000000000011000000010100000000000000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 145, pattern = 01010111011000010111001101101000011010010110111001100111010101000110111101101110
-- ======================================================
entity pattern_matcher_145 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_145 is
  signal shreg : std_logic_vector(79 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(71 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01010111011000010111001101101000011010010110111001100111010101000110111101101110" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 146, pattern = 00101111011010010110111001110100011100100110000101101110011001010111010000101111
-- ======================================================
entity pattern_matcher_146 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_146 is
  signal shreg : std_logic_vector(79 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(71 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011010010110111001110100011100100110000101101110011001010111010000101111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 147, pattern = 00101111011001010110010001101001011101000101111101100001011000110111010001101001011011110110111000101110011000110110011101101001
-- ======================================================
entity pattern_matcher_147 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_147 is
  signal shreg : std_logic_vector(127 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(119 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011001010110010001101001011101000101111101100001011000110111010001101001011011110110111000101110011000110110011101101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 148, pattern = 001011110101001101100001011011010111000001101100011001010101111101110011011010000110111101110111011000110110111101100100011001010010111001101000011101000110110101101100
-- ======================================================
entity pattern_matcher_148 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_148 is
  signal shreg : std_logic_vector(167 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(159 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110101001101100001011011010111000001101100011001010101111101110011011010000110111101110111011000110110111101100100011001010010111001101000011101000110110101101100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 149, pattern = 010101110100100101001110010001000100100101010010
-- ======================================================
entity pattern_matcher_149 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_149 is
  signal shreg : std_logic_vector(47 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(39 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "010101110100100101001110010001000100100101010010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 150, pattern = 001011110111001101100101011000010111001001100011011010000010111001100011011001110110100100111111
-- ======================================================
entity pattern_matcher_150 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_150 is
  signal shreg : std_logic_vector(95 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(87 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110111001101100101011000010111001001100011011010000010111001100011011001110110100100111111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 151, pattern = 00101111011000010110011001110010001011100111000001101000011100000011111101111010011011110110111001100101011010010110010000111101
-- ======================================================
entity pattern_matcher_151 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_151 is
  signal shreg : std_logic_vector(127 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(119 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011000010110011001110010001011100111000001101000011100000011111101111010011011110110111001100101011010010110010000111101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 152, pattern = 0111001101111001011100110010111001100100011000100110110101110011010111110111001001100101011100000110001101100001011101000101111101110010011100010010111001100001011001000110010001011111011000110110111101101100011101010110110101101110
-- ======================================================
entity pattern_matcher_152 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_152 is
  signal shreg : std_logic_vector(231 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(223 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0111001101111001011100110010111001100100011000100110110101110011010111110111001001100101011100000110001101100001011101000101111101110010011100010010111001100001011001000110010001011111011000110110111101101100011101010110110101101110" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 153, pattern = 001011110111000001101001011011100110011100101110011000010111001101101000011110000011111101100001011000110111010001101001011011110110111000111101
-- ======================================================
entity pattern_matcher_153 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_153 is
  signal shreg : std_logic_vector(143 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(135 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110111000001101001011011100110011100101110011000010111001101101000011110000011111101100001011000110111010001101001011011110110111000111101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 154, pattern = 0010111101000111011011000110111101100010011000010110110001000110011101010110111001100011011101000110100101101111011011100111001100101110011100000110100001110000
-- ======================================================
entity pattern_matcher_154 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_154 is
  signal shreg : std_logic_vector(159 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(151 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101000111011011000110111101100010011000010110110001000110011101010110111001100011011101000110100101101111011011100111001100101110011100000110100001110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 155, pattern = 001011110110010001100011011001100110111101110010011101010110110100101110011000110110011101101001
-- ======================================================
entity pattern_matcher_155 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_155 is
  signal shreg : std_logic_vector(95 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(87 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110010001100011011001100110111101110010011101010110110100101110011000110110011101101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 156, pattern = 00100110011010010110111001110100011010010111000000111101
-- ======================================================
entity pattern_matcher_156 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_156 is
  signal shreg : std_logic_vector(55 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(47 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00100110011010010110111001110100011010010111000000111101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 157, pattern = 00101111011100110110100101110100011001010010111101100101011001110010111101110011011011110111010101110010011000110110010100101110011000010111001101110000
-- ======================================================
entity pattern_matcher_157 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_157 is
  signal shreg : std_logic_vector(151 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(143 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011100110110100101110100011001010010111101100101011001110010111101110011011011110111010101110010011000110110010100101110011000010111001101110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 158, pattern = 0110111001100101011101110111001101101100011001010111010001110100011001010111001000101110011100000110100001110000
-- ======================================================
entity pattern_matcher_158 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_158 is
  signal shreg : std_logic_vector(111 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(103 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0110111001100101011101110111001101101100011001010111010001110100011001010111001000101110011100000110100001110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 159, pattern = 011011000110111101100111011010010110111000111010
-- ======================================================
entity pattern_matcher_159 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_159 is
  signal shreg : std_logic_vector(47 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(39 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "011011000110111101100111011010010110111000111010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 160, pattern = 0010111101000011011011110110111001100110011010010110011100101110011101000111100001110100
-- ======================================================
entity pattern_matcher_160 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_160 is
  signal shreg : std_logic_vector(87 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(79 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101000011011011110110111001100110011010010110011100101110011101000111100001110100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 161, pattern = 0011000000110001001100100011001100110100001101010011011000110111001110000011100101100001011000100110001101100100011001010110011001100111011010000110100101101010011010110110110001101101011011100110111101110000011100010111001001110011011101000111010101110110
-- ======================================================
entity pattern_matcher_161 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_161 is
  signal shreg : std_logic_vector(255 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(247 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0011000000110001001100100011001100110100001101010011011000110111001110000011100101100001011000100110001101100100011001010110011001100111011010000110100101101010011010110110110001101101011011100110111101110000011100010111001001110011011101000111010101110110" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 162, pattern = 010010100100111101001001010011100010000000100011011000100110100101111010001000000110000101100010011000110000110100001010
-- ======================================================
entity pattern_matcher_162 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_162 is
  signal shreg : std_logic_vector(119 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(111 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "010010100100111101001001010011100010000000100011011000100110100101111010001000000110000101100010011000110000110100001010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 163, pattern = 010101000111001001100001011011100111001101101100011000010111010001100101001110100010000001000110
-- ======================================================
entity pattern_matcher_163 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_163 is
  signal shreg : std_logic_vector(95 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(87 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "010101000111001001100001011011100111001101101100011000010111010001100101001110100010000001000110" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 164, pattern = 010101110111010001111010011101010111000000100000010101010111001101100101
-- ======================================================
entity pattern_matcher_164 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_164 is
  signal shreg : std_logic_vector(71 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(63 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "010101110111010001111010011101010111000000100000010101010111001101100101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 165, pattern = 00101110011101110110110101111010
-- ======================================================
entity pattern_matcher_165 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_165 is
  signal shreg : std_logic_vector(31 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(23 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101110011101110110110101111010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 166, pattern = 0110010001100010011011010111001101011111011100100110010101110000011000110110000101110100001011100110000101101100011101000110010101110010010111110111000001110010011010010110111101110010011010010111010001111001010111110110111001100011011010000110000101110010
-- ======================================================
entity pattern_matcher_166 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_166 is
  signal shreg : std_logic_vector(255 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(247 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0110010001100010011011010111001101011111011100100110010101110000011000110110000101110100001011100110000101101100011101000110010101110010010111110111000001110010011010010110111101110010011010010111010001111001010111110110111001100011011010000110000101110010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 167, pattern = 0010111101100111011000110111001100111111011000010110110001110000011010000110000100111101
-- ======================================================
entity pattern_matcher_167 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_167 is
  signal shreg : std_logic_vector(87 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(79 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101100111011000110111001100111111011000010110110001110000011010000110000100111101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 168, pattern = 0100011001010100010100000100111101001110
-- ======================================================
entity pattern_matcher_168 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_168 is
  signal shreg : std_logic_vector(39 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(31 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0100011001010100010100000100111101001110" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 169, pattern = 00000000000000011000011110011001
-- ======================================================
entity pattern_matcher_169 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_169 is
  signal shreg : std_logic_vector(31 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(23 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00000000000000011000011110011001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 170, pattern = 01001110010011000101001101010100
-- ======================================================
entity pattern_matcher_170 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_170 is
  signal shreg : std_logic_vector(31 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(23 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01001110010011000101001101010100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 171, pattern = 00101111011000110110011101101001001011010110001001101001011011100010111101100011011001110110100100101110011000110110011101101001
-- ======================================================
entity pattern_matcher_171 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_171 is
  signal shreg : std_logic_vector(127 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(119 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011000110110011101101001001011010110001001101001011011100010111101100011011001110110100100101110011000110110011101101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 172, pattern = 001011110111001101101000011011110111000001110011011001010110000101110010011000110110100000101110011000010111001101110000
-- ======================================================
entity pattern_matcher_172 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_172 is
  signal shreg : std_logic_vector(119 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(111 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110111001101101000011011110111000001110011011001010110000101110010011000110110100000101110011000010111001101110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 173, pattern = 01100011011000010111010000100000
-- ======================================================
entity pattern_matcher_173 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_173 is
  signal shreg : std_logic_vector(31 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(23 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01100011011000010111010000100000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 174, pattern = 0010111101001110011001010111011101110011001011110110011101100001011101000110010100101110011100000110100001110000
-- ======================================================
entity pattern_matcher_174 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_174 is
  signal shreg : std_logic_vector(111 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(103 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101001110011001010111011101110011001011110110011101100001011101000110010100101110011100000110100001110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 175, pattern = 0010111101100001011001000111001101100001011011010111000001101100011001010111001100101111011000110110111101101110011001100110100101100111001011110111001101101001011101000110010100101110011000110111001101100011
-- ======================================================
entity pattern_matcher_175 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_175 is
  signal shreg : std_logic_vector(207 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(199 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101100001011001000111001101100001011011010111000001101100011001010111001100101111011000110110111101101110011001100110100101100111001011110111001101101001011101000110010100101110011000110111001101100011" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 176, pattern = 011010010111000000101101011101110110100001101111001011010110100101110011001011100110001101101111011011010000110100001010
-- ======================================================
entity pattern_matcher_176 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_176 is
  signal shreg : std_logic_vector(119 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(111 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "011010010111000000101101011101110110100001101111001011010110100101110011001011100110001101101111011011010000110100001010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 177, pattern = 0101011001101111011011000111010101101101011001010010000001010011011001010111001001101001011000010110110000100000010011100111010101101101011000100110010101110010
-- ======================================================
entity pattern_matcher_177 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_177 is
  signal shreg : std_logic_vector(159 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(151 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0101011001101111011011000111010101101101011001010010000001010011011001010111001001101001011000010110110000100000010011100111010101101101011000100110010101110010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 178, pattern = 0010111001100010011000010111010000111111
-- ======================================================
entity pattern_matcher_178 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_178 is
  signal shreg : std_logic_vector(39 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(31 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111001100010011000010111010000111111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 179, pattern = 0010111100110001001011110011011001100010001011010011010100110101001110000011011000111001001101000011011100110000001101010011000100110010001110010110001000110000001100010110001100110000
-- ======================================================
entity pattern_matcher_179 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_179 is
  signal shreg : std_logic_vector(183 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(175 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111100110001001011110011011001100010001011010011010100110101001110000011011000111001001101000011011100110000001101010011000100110010001110010110001000110000001100010110001100110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 180, pattern = 010000110100110101000100
-- ======================================================
entity pattern_matcher_180 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_180 is
  signal shreg : std_logic_vector(23 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(15 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "010000110100110101000100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 181, pattern = 0110011001110101011011000110110001111100
-- ======================================================
entity pattern_matcher_181 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_181 is
  signal shreg : std_logic_vector(39 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(31 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0110011001110101011011000110110001111100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 182, pattern = 0010111101101101011010010110111001100101011100100110010000101110011001010111100001100101
-- ======================================================
entity pattern_matcher_182 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_182 is
  signal shreg : std_logic_vector(87 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(79 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101101101011010010110111001100101011100100110010000101110011001010111100001100101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 183, pattern = 001011100010111000101111
-- ======================================================
entity pattern_matcher_183 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_183 is
  signal shreg : std_logic_vector(23 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(15 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011100010111000101111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 184, pattern = 001001010101001101111001011100110111010001100101011011010101001001101111011011110111010000100101
-- ======================================================
entity pattern_matcher_184 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_184 is
  signal shreg : std_logic_vector(95 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(87 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001001010101001101111001011100110111010001100101011011010101001001101111011011110111010000100101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 185, pattern = 001101010011010100110000001000000011010100101110001101110010111000110001
-- ======================================================
entity pattern_matcher_185 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_185 is
  signal shreg : std_logic_vector(71 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(63 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001101010011010100110000001000000011010100101110001101110010111000110001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 186, pattern = 0010111101101001011010010111001101100001011001000110110101110000011101110110010000101111011000010110010101111000011100000011001000101110011010000111010001110010
-- ======================================================
entity pattern_matcher_186 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_186 is
  signal shreg : std_logic_vector(159 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(151 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101101001011010010111001101100001011001000110110101110000011101110110010000101111011000010110010101111000011100000011001000101110011010000111010001110010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 187, pattern = 001011110100001101010110010100110010111101000101011011100111010001110010011010010110010101110011
-- ======================================================
entity pattern_matcher_187 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_187 is
  signal shreg : std_logic_vector(95 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(87 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110100001101010110010100110010111101000101011011100111010001110010011010010110010101110011" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 188, pattern = 00101111011101110110010101100010011100000110110001110101011100110010111001100101011110000110010100111111
-- ======================================================
entity pattern_matcher_188 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_188 is
  signal shreg : std_logic_vector(103 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(95 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011101110110010101100010011100000110110001110101011100110010111001100101011110000110010100111111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 189, pattern = 001011110110100101101111011011100010110101110000
-- ======================================================
entity pattern_matcher_189 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_189 is
  signal shreg : std_logic_vector(47 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(39 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110100101101111011011100010110101110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 190, pattern = 0010010101000011010011110100110101001101010011110100111001010000010100100100111101000111010100100100000101001101010001100100100101001100010001010101001100100101
-- ======================================================
entity pattern_matcher_190 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_190 is
  signal shreg : std_logic_vector(159 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(151 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010010101000011010011110100110101001101010011110100111001010000010100100100111101000111010100100100000101001101010001100100100101001100010001010101001100100101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 191, pattern = 001011110110100101101110011100110110010101110010011101000010111001101001011011100110001100101110011100000110100001110000
-- ======================================================
entity pattern_matcher_191 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_191 is
  signal shreg : std_logic_vector(119 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(111 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110100101101110011100110110010101110010011101000010111001101001011011100110001100101110011100000110100001110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 192, pattern = 01100100011000100110110101110011010111110111001001100101011100000110001101100001011101000010111001110000011101010111001001100111011001010101111101110011011101000110000101110100011010010111001101110100011010010110001101110011
-- ======================================================
entity pattern_matcher_192 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_192 is
  signal shreg : std_logic_vector(223 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(215 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01100100011000100110110101110011010111110111001001100101011100000110001101100001011101000010111001110000011101010111001001100111011001010101111101110011011101000110000101110100011010010111001101110100011010010110001101110011" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 193, pattern = 000101110000001100000000
-- ======================================================
entity pattern_matcher_193 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_193 is
  signal shreg : std_logic_vector(23 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(15 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "000101110000001100000000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 194, pattern = 011000110111001001100101011000010111010001100101
-- ======================================================
entity pattern_matcher_194 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_194 is
  signal shreg : std_logic_vector(47 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(39 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "011000110111001001100101011000010111010001100101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 195, pattern = 01100100011000100110110101110011010111110111001001100101011100000110001101100001011101000010111001110011011001010111010001011111011011000110111101100011011000010110110001011111011001100110110001100001011101100110111101110010
-- ======================================================
entity pattern_matcher_195 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_195 is
  signal shreg : std_logic_vector(223 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(215 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01100100011000100110110101110011010111110111001001100101011100000110001101100001011101000010111001110011011001010111010001011111011011000110111101100011011000010110110001011111011001100110110001100001011101100110111101110010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 196, pattern = 01110010011011010110011101110010011011110111010101110000
-- ======================================================
entity pattern_matcher_196 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_196 is
  signal shreg : std_logic_vector(55 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(47 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01110010011011010110011101110010011011110111010101110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 197, pattern = 00101110011000110110111001100110
-- ======================================================
entity pattern_matcher_197 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_197 is
  signal shreg : std_logic_vector(31 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(23 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101110011000110110111001100110" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 198, pattern = 001011110100011001110100011100000101001101100001011101100110010101000011010101100101000000101110011001000110110001101100
-- ======================================================
entity pattern_matcher_198 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_198 is
  signal shreg : std_logic_vector(119 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(111 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110100011001110100011100000101001101100001011101100110010101000011010101100101000000101110011001000110110001101100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 199, pattern = 001011110110010101101110011101100110111101110101011101000010111001100010011000010111010001111100
-- ======================================================
entity pattern_matcher_199 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_199 is
  signal shreg : std_logic_vector(95 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(87 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110010101101110011101100110111101110101011101000010111001100010011000010111010001111100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 200, pattern = 00101111011000010111100000101101011000010110010001101101011010010110111000101110011000110110011101101001
-- ======================================================
entity pattern_matcher_200 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_200 is
  signal shreg : std_logic_vector(103 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(95 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011000010111100000101101011000010110010001101101011010010110111000101110011000110110011101101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 201, pattern = 01011000010011010100101101000100
-- ======================================================
entity pattern_matcher_201 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_201 is
  signal shreg : std_logic_vector(31 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(23 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01011000010011010100101101000100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 202, pattern = 001011100111000001101100
-- ======================================================
entity pattern_matcher_202 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_202 is
  signal shreg : std_logic_vector(23 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(15 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011100111000001101100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 203, pattern = 0110000101101100011101000110010101110010
-- ======================================================
entity pattern_matcher_203 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_203 is
  signal shreg : std_logic_vector(39 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(31 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0110000101101100011101000110010101110010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 204, pattern = 0011110001010011010011100100000101010000010100010101010101001111010101000100010100111110
-- ======================================================
entity pattern_matcher_204 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_204 is
  signal shreg : std_logic_vector(87 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(79 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0011110001010011010011100100000101010000010100010101010101001111010101000100010100111110" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 205, pattern = 010100100100010101001110010000010100110101000101
-- ======================================================
entity pattern_matcher_205 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_205 is
  signal shreg : std_logic_vector(47 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(39 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "010100100100010101001110010000010100110101000101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 206, pattern = 001011110110101001110011011100000010111101110011011011100111000000101111
-- ======================================================
entity pattern_matcher_206 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_206 is
  signal shreg : std_logic_vector(71 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(63 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110101001110011011100000010111101110011011011100111000000101111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 207, pattern = 0100001101000110010111110101001101000101010101000100010001000001010101000100000101010011010011110101010101010010010000110100010101010101010100110100010101010010010011100100000101001101010001010010100000101001
-- ======================================================
entity pattern_matcher_207 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_207 is
  signal shreg : std_logic_vector(207 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(199 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0100001101000110010111110101001101000101010101000100010001000001010101000100000101010011010011110101010101010010010000110100010101010101010100110100010101010010010011100100000101001101010001010010100000101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 208, pattern = 011001000110000101110100011000010111000001101111011100110111010001111100
-- ======================================================
entity pattern_matcher_208 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_208 is
  signal shreg : std_logic_vector(71 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(63 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "011001000110000101110100011000010111000001101111011100110111010001111100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 209, pattern = 01100011011001000010111000101110
-- ======================================================
entity pattern_matcher_209 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_209 is
  signal shreg : std_logic_vector(31 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(23 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01100011011001000010111000101110" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 210, pattern = 01101110011001010111010000101110011001010111100001100101
-- ======================================================
entity pattern_matcher_210 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_210 is
  signal shreg : std_logic_vector(55 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(47 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01101110011001010111010000101110011001010111100001100101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 211, pattern = 011100000110000101110011011100110111011101101111011100100110010000111101011001110011000000110000011001000101000001100001001001000010010001110111001100000111001001000100
-- ======================================================
entity pattern_matcher_211 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_211 is
  signal shreg : std_logic_vector(167 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(159 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "011100000110000101110011011100110111011101101111011100100110010000111101011001110011000000110000011001000101000001100001001001000010010001110111001100000111001001000100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 212, pattern = 01111011000010000010101000101010
-- ======================================================
entity pattern_matcher_212 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_212 is
  signal shreg : std_logic_vector(31 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(23 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01111011000010000010101000101010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 213, pattern = 0100010101011000010001010100001101010101010101000100010101011111010100110101100101010011010101000100010101001101
-- ======================================================
entity pattern_matcher_213 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_213 is
  signal shreg : std_logic_vector(111 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(103 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0100010101011000010001010100001101010101010101000100010101011111010100110101100101010011010101000100010101001101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 214, pattern = 00101111011101000111001001100001011000110110010100101110011000010111100001100100
-- ======================================================
entity pattern_matcher_214 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_214 is
  signal shreg : std_logic_vector(79 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(71 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011101000111001001100001011000110110010100101110011000010111100001100100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 215, pattern = 0010111101101101011000010110001000101110011011100111001101100110
-- ======================================================
entity pattern_matcher_215 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_215 is
  signal shreg : std_logic_vector(63 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(55 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101101101011000010110001000101110011011100111001101100110" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 216, pattern = 00100000001011100111000001101100
-- ======================================================
entity pattern_matcher_216 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_216 is
  signal shreg : std_logic_vector(31 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(23 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00100000001011100111000001101100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 217, pattern = 0010111101110011011001000110001001110011011001010110000101110010011000110110100000101110011000110110011101101001
-- ======================================================
entity pattern_matcher_217 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_217 is
  signal shreg : std_logic_vector(111 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(103 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101110011011001000110001001110011011001010110000101110010011000110110100000101110011000110110011101101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 218, pattern = 0000001101110001011011110111011000000010011010000111010100000011011000110110111101101101
-- ======================================================
entity pattern_matcher_218 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_218 is
  signal shreg : std_logic_vector(87 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(79 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0000001101110001011011110111011000000010011010000111010100000011011000110110111101101101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 219, pattern = 00101111011100100110010101100111011010010111001101110100011001010111001000101110011001000110110001101100
-- ======================================================
entity pattern_matcher_219 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_219 is
  signal shreg : std_logic_vector(103 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(95 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011100100110010101100111011010010111001101110100011001010111001000101110011001000110110001101100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 220, pattern = 01010000010000010101010000100000
-- ======================================================
entity pattern_matcher_220 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_220 is
  signal shreg : std_logic_vector(31 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(23 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01010000010000010101010000100000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 221, pattern = 00101111011101010111000001101100011011110110000101100100011010010110110101100001011001110110010100101110011100000110100001110000
-- ======================================================
entity pattern_matcher_221 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_221 is
  signal shreg : std_logic_vector(127 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(119 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011101010111000001101100011011110110000101100100011010010110110101100001011001110110010100101110011100000110100001110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 222, pattern = 00101110011100000110100001110000
-- ======================================================
entity pattern_matcher_222 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_222 is
  signal shreg : std_logic_vector(31 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(23 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101110011100000110100001110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 223, pattern = 001001010101000001000001010101000100100001000101010110000101010000100101
-- ======================================================
entity pattern_matcher_223 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_223 is
  signal shreg : std_logic_vector(71 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(63 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001001010101000001000001010101000100100001000101010110000101010000100101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 224, pattern = 0011100000000000000000000000000011110101000100111000100101010011
-- ======================================================
entity pattern_matcher_224 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_224 is
  signal shreg : std_logic_vector(63 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(55 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0011100000000000000000000000000011110101000100111000100101010011" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 225, pattern = 0010111101011111011000010110010001101101011010010110111000101111
-- ======================================================
entity pattern_matcher_225 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_225 is
  signal shreg : std_logic_vector(63 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(55 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101011111011000010110010001101101011010010110111000101111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 226, pattern = 00100101010101010101001101000101010100100101000001010010010011110100011001001001010011000100010100100101
-- ======================================================
entity pattern_matcher_226 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_226 is
  signal shreg : std_logic_vector(103 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(95 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00100101010101010101001101000101010100100101000001010010010011110100011001001001010011000100010100100101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 227, pattern = 0010111101011111011100000111001001101001011101100110000101110100011001010010111101101111011100100110010001100101011100100111001100101110011010000111010001101101
-- ======================================================
entity pattern_matcher_227 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_227 is
  signal shreg : std_logic_vector(159 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(151 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101011111011100000111001001101001011101100110000101110100011001010010111101101111011100100110010001100101011100100111001100101110011010000111010001101101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 228, pattern = 0111001001101111011101000110100101101110011000010011110101110000011011000110111101100111011010010110111000100110011011000110111101100111011010010110111000111101
-- ======================================================
entity pattern_matcher_228 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_228 is
  signal shreg : std_logic_vector(159 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(151 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0111001001101111011101000110100101101110011000010011110101110000011011000110111101100111011010010110111000100110011011000110111101100111011010010110111000111101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 229, pattern = 0010111101110000011010000111000000101110011000110110011101101001
-- ======================================================
entity pattern_matcher_229 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_229 is
  signal shreg : std_logic_vector(63 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(55 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101110000011010000111000000101110011000110110011101101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 230, pattern = 01000001010100000100111101010000
-- ======================================================
entity pattern_matcher_230 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_230 is
  signal shreg : std_logic_vector(31 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(23 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01000001010100000100111101010000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 231, pattern = 00101111001011100010111000101111001011100010111000101111
-- ======================================================
entity pattern_matcher_231 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_231 is
  signal shreg : std_logic_vector(55 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(47 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111001011100010111000101111001011100010111000101111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 232, pattern = 0010111101110110011010010111000000101110011010100111000001100111
-- ======================================================
entity pattern_matcher_232 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_232 is
  signal shreg : std_logic_vector(63 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(55 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101110110011010010111000000101110011010100111000001100111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 233, pattern = 001011110110111001100101011101110010111101100001011011000110110001011111011001100110100101101100011001010101111101101001011011100110011001101111001100010010111001110000011010000111000000111111
-- ======================================================
entity pattern_matcher_233 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_233 is
  signal shreg : std_logic_vector(191 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(183 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110111001100101011101110010111101100001011011000110110001011111011001100110100101101100011001010101111101101001011011100110011001101111001100010010111001110000011010000111000000111111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 234, pattern = 00000101011001100110000101110011011101000011100000000111011010000110111101101101011001010110011001110100011100000000001101101111011100100110011100000000
-- ======================================================
entity pattern_matcher_234 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_234 is
  signal shreg : std_logic_vector(151 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(143 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00000101011001100110000101110011011101000011100000000111011010000110111101101101011001010110011001110100011100000000001101101111011100100110011100000000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 235, pattern = 0100011101000101010101000010000000101111001000000100100001010100010101000101000000101111001100010010111000110001
-- ======================================================
entity pattern_matcher_235 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_235 is
  signal shreg : std_logic_vector(111 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(103 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0100011101000101010101000010000000101111001000000100100001010100010101000101000000101111001100010010111000110001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 236, pattern = 001011110101111101110110011101000110100101011111011100100111000001100011
-- ======================================================
entity pattern_matcher_236 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_236 is
  signal shreg : std_logic_vector(71 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(63 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110101111101110110011101000110100101011111011100100111000001100011" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 237, pattern = 001011110111001101110100011011110111001001111001001011100111000001101100
-- ======================================================
entity pattern_matcher_237 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_237 is
  signal shreg : std_logic_vector(71 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(63 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110111001101110100011011110111001001111001001011100111000001101100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 238, pattern = 01100100011000100110110101110011010111110111001001100101011100000110001101100001011101000010111001100011011011110110110101101101011001010110111001110100010111110110111101101110010111110111001001100101011100000111001101101001011101000110010101110011
-- ======================================================
entity pattern_matcher_238 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_238 is
  signal shreg : std_logic_vector(247 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(239 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01100100011000100110110101110011010111110111001001100101011100000110001101100001011101000010111001100011011011110110110101101101011001010110111001110100010111110110111101101110010111110111001001100101011100000111001101101001011101000110010101110011" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 239, pattern = 001011100111101001101111011011000110110001100001011100100110010000101111
-- ======================================================
entity pattern_matcher_239 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_239 is
  signal shreg : std_logic_vector(71 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(63 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011100111101001101111011011000110110001100001011100100110010000101111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 240, pattern = 1111111101010011010011010100001010100000
-- ======================================================
entity pattern_matcher_240 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_240 is
  signal shreg : std_logic_vector(39 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(31 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "1111111101010011010011010100001010100000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 241, pattern = 001011110110001101100111011001100110111101110010011101010110110100101110011000110110011101101001
-- ======================================================
entity pattern_matcher_241 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_241 is
  signal shreg : std_logic_vector(95 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(87 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110110001101100111011001100110111101110010011101010110110100101110011000110110011101101001" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 242, pattern = 011001000110001001101101011100110101111101110010011001010111000001100011011000010111010000101110011000010110010001100100010111110110011101110010011011110111010101110000011001010110010001011111011000110110111101101100011101010110110101101110
-- ======================================================
entity pattern_matcher_242 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_242 is
  signal shreg : std_logic_vector(239 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(231 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "011001000110001001101101011100110101111101110010011001010111000001100011011000010111010000101110011000010110010001100100010111110110011101110010011011110111010101110000011001010110010001011111011000110110111101101100011101010110110101101110" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 243, pattern = 00101111011000010110010001101101011010010110111001011111011100000110000101110011011100110111011101101111011100100110010000101110011100000110100001110000
-- ======================================================
entity pattern_matcher_243 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_243 is
  signal shreg : std_logic_vector(151 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(143 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011000010110010001101101011010010110111001011111011100000110000101110011011100110111011101101111011100100110010000101110011100000110100001110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 244, pattern = 0010111101110010011001010110000101100100011011010110010100101110011001010110110101101100
-- ======================================================
entity pattern_matcher_244 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_244 is
  signal shreg : std_logic_vector(87 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(79 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101110010011001010110000101100100011011010110010100101110011001010110110101101100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 245, pattern = 0010111101101000011000010110111001100100011011000110010101110010
-- ======================================================
entity pattern_matcher_245 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_245 is
  signal shreg : std_logic_vector(63 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(55 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101101000011000010110111001100100011011000110010101110010" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 246, pattern = 001011110101001001100101011000110110111101110110011001010111001001101001011001010111001100101111010011110101001101001011011001010111100100101110011101000111100001110100
-- ======================================================
entity pattern_matcher_246 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_246 is
  signal shreg : std_logic_vector(167 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(159 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110101001001100101011000110110111101110110011001010111001001101001011001010111001100101111010011110101001101001011011001010111100100101110011101000111100001110100" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 247, pattern = 01100110011101000111000000101110011001010111100001100101
-- ======================================================
entity pattern_matcher_247 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_247 is
  signal shreg : std_logic_vector(55 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(47 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01100110011101000111000000101110011001010111100001100101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 248, pattern = 00000011011101110111011101110111000001010110011101101000011010100110011101100110000001000110100101101110011001100110111100000000
-- ======================================================
entity pattern_matcher_248 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_248 is
  signal shreg : std_logic_vector(127 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(119 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00000011011101110111011101110111000001010110011101101000011010100110011101100110000001000110100101101110011001100110111100000000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 249, pattern = 01001101011011110110010001100101001111010110010001100101011000100111010101100111
-- ======================================================
entity pattern_matcher_249 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_249 is
  signal shreg : std_logic_vector(79 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(71 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "01001101011011110110010001100101001111010110010001100101011000100111010101100111" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 250, pattern = 0110011001101111011100100111010101101101010111110110010001100101011101000110000101101001011011000111001100101110011100000110100001110000
-- ======================================================
entity pattern_matcher_250 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_250 is
  signal shreg : std_logic_vector(135 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(127 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0110011001101111011100100111010101101101010111110110010001100101011101000110000101101001011011000111001100101110011100000110100001110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 251, pattern = 001011110111001001100001011011100110010001101111011011010011011100110101001100000111100000110111001101010011000000101110011010100111000001100111001111110111100000111101
-- ======================================================
entity pattern_matcher_251 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_251 is
  signal shreg : std_logic_vector(167 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(159 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001011110111001001100001011011100110010001101111011011010011011100110101001100000111100000110111001101010011000000101110011010100111000001100111001111110111100000111101" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 252, pattern = 0100000001000000
-- ======================================================
entity pattern_matcher_252 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_252 is
  signal shreg : std_logic_vector(15 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(7 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0100000001000000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 253, pattern = 0010111101100100011011010111001100110000
-- ======================================================
entity pattern_matcher_253 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_253 is
  signal shreg : std_logic_vector(39 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(31 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "0010111101100100011011010111001100110000" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 254, pattern = 001110000011010100110110
-- ======================================================
entity pattern_matcher_254 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_254 is
  signal shreg : std_logic_vector(23 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(15 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "001110000011010100110110" else '0';
end architecture;

-- ======================================================
-- Pattern matcher 255, pattern = 00101111011010000111010001110100011100000110111101100100011000100110001100101110011001000110110001101100
-- ======================================================
entity pattern_matcher_255 is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match    : out std_logic
  );
end entity;

architecture rtl of pattern_matcher_255 is
  signal shreg : std_logic_vector(103 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst='1' then
        shreg <= (others => '0');
      else
        shreg <= shreg(95 downto 0) & new_byte;
      end if;
    end if;
  end process;

  match <= '1' when shreg = "00101111011010000111010001110100011100000110111101100100011000100110001100101110011001000110110001101100" else '0';
end architecture;

