all: mydiv

mydiv: mydiv.S
	nasm -f elf64 mydiv.S
	gcc -no-pie mydiv.o mydiv.c -o mydiv

clean:
	rm *.o 
