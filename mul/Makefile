all: mul

mul: mul.S
	nasm -f elf64 mul.S
	gcc -no-pie mul.o mul.c -o mul

clean:
	rm *.o mul 
