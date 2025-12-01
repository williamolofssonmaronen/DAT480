import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge

@cocotb.test()
async def feed_patterns(dut):

    # Start clock
    clock = Clock(dut.clk, 10, "ns")
    clock.start()

    # Reset
    dut.rst.value = 1
    for _ in range(3):
        await RisingEdge(dut.clk)
    dut.rst.value = 0

    # Load patterns
    patterns = []
    with open("../inputs/patterns_bits.txt") as f:
        for line in f:
            bits = line.strip()
            patterns.append(bits)

    # Feed patterns
    for bits in patterns:
        # Convert bitstring to bytes (8-bit chunks)
        for i in range(0, len(bits), 8):
            byte = int(bits[i:i+8], 2)
            dut.new_byte.value = byte
            await RisingEdge(dut.clk)
