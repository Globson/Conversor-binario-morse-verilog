all:
	iverilog testebench.v -o codificador

run:
	./codificador

gtk:
	gtkwave testdump.vcd

rm:
	rm codificador && rm testdump.vcd
