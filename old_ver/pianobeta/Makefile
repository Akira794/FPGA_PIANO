NETLIST   = pianoalpha.vhd scale.vhd beep.vhd oneshot.vhd
TESTBENCH = beep_tb.vhd
NAME	  = beep_tb
COPYRIGHT = --ieee=synopsys

all: clean lint analyze elab run

lint: $(wildcard *.vhd)
	  ghdl -s -fexplicit $(COPYRIGHT) $(NETLIST) $(TESTBENCH)
analyze: $(wildcard *.vhd)
	  ghdl -a -fexplicit $(COPYRIGHT) $(NETLIST) $(TESTBENCH)
elab: $(wildcard *.vhd)
	  ghdl -e -fexplicit $(COPYRIGHT) $(NAME)
run:  $(wildcard *.vhd)
	  ghdl -r $(NAME) --vcd=$(NAME).vcd
clean:
	rm -f *.cf *.vcd *.o
