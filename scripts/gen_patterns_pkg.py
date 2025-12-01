import os

INPUT_FILE = "../sim/inputs/patterns_bits.txt"
OUTPUT_FILE = "../rtl/generated/patterns_pkg.vhd"
TOP_FILE = "../rtl/generated/patterns_top.vhd"

shift_size = 8

# --- Delete old outputs ---
for file in [OUTPUT_FILE, TOP_FILE]:
    if os.path.exists(file):
        os.remove(file)

# --- Load patterns ---
with open(INPUT_FILE) as f:
    patterns = [line.strip() for line in f if line.strip()]

if not patterns:
    raise ValueError("patterns_bits.txt is empty!")


# ============================================================
#   Generate pattern_matcher_i entities
# ============================================================

with open(OUTPUT_FILE, "w") as f:
    for i, p in enumerate(patterns):
        f.write("library ieee;\n")
        f.write("use ieee.std_logic_1164.all;\n")
        f.write("use ieee.numeric_std.all;\n\n")

        width = len(p)
        entity_name = f"pattern_matcher_{i}"

        f.write(f"-- ======================================================\n")
        f.write(f"-- Pattern matcher {i}, pattern = {p}\n")
        f.write(f"-- ======================================================\n")

        # ENTITY
        f.write(f"entity {entity_name} is\n")
        f.write("  port(\n")
        f.write("    clk      : in std_logic;\n")
        f.write("    rst      : in std_logic;\n")
        f.write("    new_byte : in std_logic_vector(7 downto 0);\n")
        f.write("    match    : out std_logic\n")
        f.write("  );\n")
        f.write(f"end {entity_name};\n\n")

        # ARCHITECTURE
        f.write(f"architecture rtl of {entity_name} is\n")
        f.write(f"  signal shreg : std_logic_vector({width-1} downto 0);\n")
        f.write("begin\n")
        f.write("  process(clk)\n")
        f.write("  begin\n")
        f.write("    if rising_edge(clk) then\n")
        f.write("      if rst='1' then\n")
        f.write("        shreg <= (others => '0');\n")
        f.write("      else\n")
        f.write(f"        shreg <= shreg({width-shift_size-1} downto 0) & new_byte;\n")
        f.write("      end if;\n")
        f.write("    end if;\n")
        f.write("  end process;\n\n")

        f.write(f"  match <= '1' when shreg = \"{p}\" else '0';\n")
        f.write("end rtl;\n\n")


print(f"Generated {len(patterns)} pattern matcher entities in {OUTPUT_FILE}")


# ============================================================
#   Generate top-level VHDL that instantiates all matchers
# ============================================================

with open(TOP_FILE, "w") as f:
    f.write("library ieee;\n")
    f.write("use ieee.std_logic_1164.all;\n\n")

    f.write("entity patterns_top is\n")
    f.write("  port(\n")
    f.write("    clk      : in std_logic;\n")
    f.write("    rst      : in std_logic;\n")
    f.write("    new_byte : in std_logic_vector(7 downto 0);\n")
    f.write(f"    match_out : out std_logic_vector({len(patterns)-1} downto 0)\n")
    f.write("  );\n")
    f.write("end patterns_top;\n\n")

    f.write("architecture rtl of patterns_top is\n")

    # Internal signals
    f.write(f"  signal matches : std_logic_vector({len(patterns)-1} downto 0);\n")
    f.write("begin\n\n")

    # Instantiate all pattern matchers
    for i, p in enumerate(patterns):
        entity_name = f"pattern_matcher_{i}"
        f.write(f"  pm_{i} : entity work.{entity_name}\n")
        f.write("    port map(\n")
        f.write("      clk      => clk,\n")
        f.write("      rst      => rst,\n")
        f.write("      new_byte => new_byte,\n")
        f.write(f"      match    => matches({i})\n")
        f.write("    );\n\n")

    # Connect output
    f.write("  match_out <= matches;\n\n")
    f.write("end rtl;\n")


print(f"Generated top-level instantiations in {TOP_FILE}")
