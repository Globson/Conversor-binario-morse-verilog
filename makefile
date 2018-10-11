all:
	iverilog testbench.v -o testbench_compilado

run:
	./testbench_compilado

gtk:
	gtkwave testdump.vcd

rm:
	rm EXEC && rm testdump.vcd
