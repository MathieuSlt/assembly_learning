all: myitoa

myitoa: myitoa.S
	nasm -f elf64 myitoa.S
	gcc -no-pie myitoa.o myitoa.c -o myitoa

clean:
	rm *.o 
