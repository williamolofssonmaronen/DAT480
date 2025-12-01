# scripts/gen_patterns_pkg.py
import os

INPUT_FILE = "../sim/inputs/patterns_bits.txt"
OUTPUT_FILE = "../rtl/generated/patterns_pkg.vhd"
shift_size = 8

if os.path.exists(OUTPUT_FILE):
    os.remove(OUTPUT_FILE)

with open(INPUT_FILE) as f:
    patterns = [line.strip() for line in f if line.strip()]

if not patterns:
    raise ValueError("patterns.txt is empty!")

with open(OUTPUT_FILE, "w") as f:
    f.write("library ieee;\n")
    f.write("use ieee.std_logic_1164.all;\n")
    f.write("use ieee.numeric_std.all;\n\n")

    for i, p in enumerate(patterns):
        width = len(p)        # width in bits
        entity_name = f"pattern_matcher_{i}"

        # Entity
        f.write(f"-- Entity for pattern {p}\n")
        f.write(f"entity {entity_name} is\n")
        f.write("  port(\n")
        f.write("    clk     : in std_logic;\n")
        f.write("    rst     : in std_logic;\n")
        f.write(f"    new_byte : in std_logic_vector(7 downto 0);\n")
        f.write(f"    match   : out integer range 0 to {len(patterns)}\n")
        f.write("  );\n")
        f.write("end entity;\n\n")

        # Architecture
        f.write(f"architecture rtl of {entity_name} is\n")
        f.write(f"  signal shreg : std_logic_vector({width-1} downto 0);\n")
        f.write("begin\n")
        f.write("  process(clk)\n")
        f.write("  begin\n")
        f.write("    if rising_edge(clk) then\n")
        f.write("      if rst='1' then\n")
        f.write(f"        shreg <= (others => '0');\n")
        f.write("      else\n")
        f.write(f"        shreg <= shreg({width}-{shift_size}-1 downto 0) & new_byte;\n")
        f.write("      end if;\n")
        f.write("    end if;\n")
        f.write("  end process;\n\n")

        # Match logic
        f.write(f"  match <= {i+1} when shreg = \"{p}\" else 0;\n")
        f.write("end architecture;\n\n")

print(f"Generated {len(patterns)} pattern matcher entities in {OUTPUT_FILE}")
