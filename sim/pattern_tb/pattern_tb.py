import cocotb
from cocotb.triggers import RisingEdge, Timer, FallingEdge
from cocotb.clock import Clock
from cocotb.binary import BinaryRepresentation, BinaryValue

pattern = int("0xDEAD",16)

@cocotb.test()
async def test_pattern_match(dut):
    Clock(dut.clk,10,"ns").start()
    dut.rst.value = 1
    await RisingEdge(dut.clk)
    print("Rising edge!")
    await RisingEdge(dut.clk)
    print("Rising edge!")
    await FallingEdge(dut.clk)
