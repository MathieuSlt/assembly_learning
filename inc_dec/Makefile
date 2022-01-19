all: inc dec

inc: inc.S
	nasm -f elf64 inc.S
	gcc -no-pie inc.o inc.c -o inc

dec: dec.S
	nasm -f elf64 dec.S
	gcc -no-pie dec.o dec.c -o dec

clean:
	rm *.o inc dec
