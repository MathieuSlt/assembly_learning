all: mybyte

mybyte: mybyte.S
	nasm -f elf64 mybyte.S
	gcc -no-pie mybyte.o mybyte.c -o mybyte

clean:
	rm *.o mybyte 
