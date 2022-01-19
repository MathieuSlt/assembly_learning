all: movzx movsx

movzx: movzx.S
	nasm -f elf64 movzx.S
	gcc -no-pie movzx.o movzx.c -o movzx

movsx: movsx.S
	nasm -f elf64 movsx.S
	gcc -no-pie movsx.o movsx.c -o movsx

clean:
	rm *.o movzx movsx
