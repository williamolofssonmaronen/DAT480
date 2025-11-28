import re

def text_to_bits(text):
    """Convert ASCII characters to 8-bit binary."""
    return ''.join(f'{ord(c):08b}' for c in text)

def hexblock_to_bits(hexblock):
    """Convert 'FF 01 00' into binary."""
    bytes_hex = hexblock.strip().split()
    return ''.join(f'{int(b, 16):08b}' for b in bytes_hex)

def convert_pattern(pattern):
    """
    Convert mixed patterns such as:
        'Hello|FF 00|World'
    into a continuous bitstring.
    """
    parts = re.split(r'(\|[0-9A-Fa-f ]+\|)', pattern)

    bitstring = ""

    for part in parts:
        if re.fullmatch(r'\|[0-9A-Fa-f ]+\|', part):
            # Strip pipes and convert hex
            hex_inside = part[1:-1]
            bitstring += hexblock_to_bits(hex_inside)
        else:
            # Convert ASCII normally
            bitstring += text_to_bits(part)

    return bitstring


# -------- MAIN EXAMPLE USING THE UPLOADED FILE -------- #

input_file = "../config/MINI_pattern_match_snort3_content.txt"
output_file = "../sim/inputs/patterns_bits.txt"

with open(input_file, "r", encoding="utf-8", errors="ignore") as f:
    patterns = [line.rstrip("\n") for line in f]

with open(output_file, "w") as out:
    for p in patterns:
        bitstring = convert_pattern(p)
        out.write(bitstring + "\n")

print(f"Done. Output written to: {output_file}")
