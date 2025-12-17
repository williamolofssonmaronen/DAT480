library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity patterns_history is
  generic (
    MATCH_WIDTH : natural := 256;   -- width of match_out bus
    DEPTH       : natural := 1024   -- number of history entries
  );
  port (
    clk         : in  std_logic;
    rst         : in  std_logic;  -- synchronous reset
    -- capture interface (captures match_in each clock when capture_en = '1')
    capture_en  : in  std_logic;
    match_in    : in  std_logic_vector(MATCH_WIDTH-1 downto 0);

    -- external write interface (host can write arbitrary address)
    wr_en_ext   : in  std_logic;
    wr_addr     : in  unsigned(ceil_log2(DEPTH)-1 downto 0);
    wr_data     : in  std_logic_vector(MATCH_WIDTH-1 downto 0);

    -- external read interface (synchronous read)
    rd_addr     : in  unsigned(ceil_log2(DEPTH)-1 downto 0);
    rd_en       : in  std_logic;
    rd_data_out : out std_logic_vector(MATCH_WIDTH-1 downto 0);

    -- status outputs
    write_pointer : out unsigned(ceil_log2(DEPTH)-1 downto 0)
  );
end entity patterns_history;

architecture rtl of patterns_history is

  -- helper function for calculating address width at elaboration
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

  constant ADDR_WIDTH : natural := ceil_log2(DEPTH);

  -- memory type
  type mem_t is array (0 to DEPTH-1) of std_logic_vector(MATCH_WIDTH-1 downto 0);
  signal mem : mem_t := (others => (others => '0'));

  signal write_ptr : unsigned(ADDR_WIDTH-1 downto 0) := (others => '0');
  signal rd_reg    : std_logic_vector(MATCH_WIDTH-1 downto 0) := (others => '0');

begin

  -- Expose pointer
  write_pointer <= write_ptr;

  process(clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        write_ptr <= (others => '0');
        rd_reg <= (others => '0');
        -- Optionally clear mem on reset. Commented out to avoid heavy reset cost.
        -- for i in 0 to DEPTH-1 loop
        --   mem(i) <= (others => '0');
        -- end loop;
      else
        -- External write has priority (host-controlled write)
        if wr_en_ext = '1' then
          mem(to_integer(wr_addr)) <= wr_data;
        end if;

        -- Capture current match_in into memory if enabled.
        -- We capture to the current write_ptr and then increment pointer.
        if capture_en = '1' then
          -- If external write targeted same address, external write already took precedence.
          mem(to_integer(write_ptr)) <= match_in;
          write_ptr <= write_ptr + 1;
        end if;

        -- Synchronous read: read-on-request, data available next cycle
        if rd_en = '1' then
          rd_reg <= mem(to_integer(rd_addr));
        end if;

      end if;
    end if;
  end process;

  rd_data_out <= rd_reg;

end architecture rtl;
