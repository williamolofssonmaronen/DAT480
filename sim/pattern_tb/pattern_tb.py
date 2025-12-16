import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge
from cocotb.types import LogicArray

async def check_match(dut, pattern_index, wait_count):
    for _ in range(wait_count):
        await RisingEdge(dut.clk)
    assert dut.match_out.value[pattern_index] == 1, f"Pattern {pattern_index} did not match"
    #print(f"Pattern {pattern_index} matched!")

@cocotb.test()
async def feed_patterns(dut):

    clock = Clock(dut.clk, 10, "ns")
    clock.start()

    dut.rst.value = 1
    for _ in range(3):
        await RisingEdge(dut.clk)
    dut.rst.value = 0

    patterns = []
    with open("../inputs/patterns_bits.txt") as f:
        for line in f:
            bits = line.strip()
            patterns.append(bits)

    index = 0
    for bits in patterns:
        assert len(bits) % 8 == 0, f"Pattern length {len(bits)} is not divisible by 8"
        wait_count = int(len(bits)/8)
        cocotb.start_soon(check_match(dut, index, wait_count+1))
        for i in range(0, len(bits), 8):
            byte = int(bits[i:i+8], 2)
            dut.new_byte.value = byte
            await RisingEdge(dut.clk)
        index = index + 1
