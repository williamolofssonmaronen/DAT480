# scripts/gen_patterns_pkg.py
import os

INPUT_FILE = "../sim/inputs/patterns_bits.txt"
OUTPUT_FILE = "../rtl/generated/patterns_pkg.vhd"

with open(INPUT_FILE) as f:
    patterns = [line.strip() for line in f if line.strip()]

if not patterns:
    raise ValueError("patterns.txt is empty!")


with open(OUTPUT_FILE, "w") as f:
    f.write("library ieee;\n")
    f.write("use ieee.std_logic_1164.all;\n")
    f.write("use ieee.numeric_std.all;\n\n")
    
    for i, p in enumerate(patterns):
        width = len(p)
        entity_name = f"pattern_matcher_{i}"
        f.write(f"-- Entity for pattern {p}\n")
        f.write(f"entity {entity_name} is\n")
        f.write("  port(\n")
        f.write("    clk   : in std_logic;\n")
        f.write(f"    data  : in std_logic_vector({width-1} downto 0);\n")
        f.write(f"    match : out integer range 0 to {len(patterns)}\n")
        f.write("  );\n")
        f.write("end entity;\n\n")

        f.write(f"architecture rtl of {entity_name} is\n")
        f.write("begin\n")
        f.write(f"  match <= {i} when data = \"{p}\" else 0;\n")
        f.write("end architecture;\n\n")
    
    f.write("  );\n")
    f.write("end package patterns_pkg;\n")

print(f"Generated {len(patterns)} pattern matcher entities in {OUTPUT_FILE}")
