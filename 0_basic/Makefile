

all: myhello_asm myret3 hello_c

myhello_asm: myhello.S
	nasm -f elf64 myhello.S
	gcc -no-pie myhello.o -o myhello

myret3: myret3.S mainret3.c
	nasm -f elf64 myret3.S
	gcc -no-pie myret3.o mainret3.c -o myret3

hello_c: hello.c
	gcc -o hello hello.c

clean:
	rm hello *.o myret3 myhello
