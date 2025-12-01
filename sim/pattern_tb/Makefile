TOPLEVEL_LANG = vhdl
SIM = ghdl

# top-level VHDL module
TOPLEVEL = patterns_top

# name of the Python test (without .py)
MODULE = pattern_tb

# list all VHDL sources

VHDL_SOURCES = $(shell pwd)/../../rtl/generated/patterns_pkg.vhd \
               $(shell pwd)/../../rtl/generated/patterns_top.vhd

# enable wave output
WAVES = 1
SIM_ARGS=--vcd=waves.vcd

include $(shell cocotb-config --makefiles)/Makefile.sim

