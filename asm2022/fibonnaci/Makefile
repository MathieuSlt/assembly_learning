all: fibonnacci

fibonnacci: fibonnacci.S
	nasm -f elf64 fibonnacci.S
	gcc -no-pie fibonnacci.o fibonnacci.c -o fibonnacci

clean:
	rm *.o 
