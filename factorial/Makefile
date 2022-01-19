all: factorial

factorial: factorial.S
	nasm -f elf64 factorial.S
	gcc -no-pie factorial.o factorial.c -o factorial

clean:
	rm *.o factorial 
