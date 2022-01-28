all: myadd

myadd: myadd.S
	nasm -f elf64 myadd.S
	gcc -no-pie myadd.o myadd.c -o myadd

clean:
	rm *.o myadd
