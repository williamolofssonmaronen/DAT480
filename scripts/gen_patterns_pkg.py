# scripts/gen_patterns_pkg.py
import os

INPUT_FILE = "../sim/inputs/patterns_bits.txt"
OUTPUT_FILE = "../rtl/generated/patterns_pkg.vhd"

with open(INPUT_FILE) as f:
    patterns = [line.strip() for line in f if line.strip()]

if not patterns:
    raise ValueError("patterns.txt is empty!")

# Determine width from first line
width = max(len(p) for p in patterns)

with open(OUTPUT_FILE, "w") as f:
    f.write("library ieee;\nuse ieee.std_logic_1164.all;\n\n")
    f.write("package patterns_pkg is\n")
    f.write(f"  type pattern_array_t is array (0 to {len(patterns)-1}) of std_logic_vector({width-1} downto 0);\n")
    f.write("  constant PATTERN_ARRAY : pattern_array_t := (\n")
    
    for i, p in enumerate(patterns):
        comma = "," if i < len(patterns)-1 else ""
        f.write(f'    {i} => "{p}"{comma}\n')
    
    f.write("  );\n")
    f.write("end package patterns_pkg;\n")
