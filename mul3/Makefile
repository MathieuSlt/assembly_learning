all: mul3

mul3: mul3.S
	nasm -f elf64 mul3.S
	gcc -no-pie mul3.o mul3.c -o mul3

clean:
	rm *.o mul3 
