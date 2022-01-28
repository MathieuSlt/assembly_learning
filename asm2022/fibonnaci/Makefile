all: fibonnaci

fibonnaci: fibonnaci.S
	nasm -f elf64 fibonnaci.S
	gcc -no-pie fibonnaci.o fibonnaci.c -o fibonnaci

clean:
	rm *.o fibonnaci
