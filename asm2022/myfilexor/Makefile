all: myfilexor

myfilexor: myfilexor.S
	nasm -f elf64 myfilexor.S
	gcc -no-pie myfilexor.o myfilexor.c -o myfilexor

clean:
	rm *.o 
