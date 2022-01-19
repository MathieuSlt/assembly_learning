all: push

push: push.S
	nasm -f elf64 push.S
	gcc -no-pie push.o push.c -o push

clean:
	rm *.o push 
