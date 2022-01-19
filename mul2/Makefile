all: mul2

mul2: mul2.S
	nasm -f elf64 mul2.S
	gcc -no-pie mul2.o mul2.c -o mul2

clean:
	rm *.o mul2 
