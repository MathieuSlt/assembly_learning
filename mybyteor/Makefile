all: mybyteor

mybyteor: mybyteor.S
	nasm -f elf64 mybyteor.S
	gcc -no-pie mybyteor.o mybyteor.c -o mybyteor

clean:
	rm *.o mybyteor 
