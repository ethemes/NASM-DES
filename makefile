main:

	@nasm -f elf prog.asm
	@gcc prog.o -o prog
	@rm prog.o