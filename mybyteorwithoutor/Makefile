all: mybyteorwithoutor

mybyteorwithoutor: mybyteorwithoutor.S
	nasm -f elf64 mybyteorwithoutor.S
	gcc -no-pie mybyteorwithoutor.o mybyteorwithoutor.c -o mybyteorwithoutor

clean:
	rm *.o mybyteorwithoutor 
