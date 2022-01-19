all: xor

xor: xor.S
	nasm -f elf64 xor.S
	gcc -no-pie xor.o xor.c -o xor

clean:
	rm *.o xor 
