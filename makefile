main:

	@nasm -f elf DES.asm
	@gcc DES.o -o DES
	@rm DES.o
