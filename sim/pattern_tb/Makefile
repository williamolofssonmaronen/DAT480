TOPLEVEL_LANG = vhdl
SIM = ghdl

# top-level VHDL module
TOPLEVEL = pattern_matcher

# name of the Python test (without .py)
MODULE = pattern_tb

# list all VHDL sources
VHDL_SOURCES = $(shell pwd)/pattern.vhd

# enable wave output
WAVES = 1

SIM_ARGS=--vcd=waves.vcd

include $(shell cocotb-config --makefiles)/Makefile.sim

