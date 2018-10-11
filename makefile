all:
	iverilog testebench.v -o EXEC

run:
	./EXEC

gtk:
	gtkwave testdump.vcd

rm:
	rm EXEC && rm testdump.vcd
