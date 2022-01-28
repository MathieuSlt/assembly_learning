all: myorderlist

myorderlist: myorderlist.S
	nasm -f elf64 myorderlist.S
	gcc -no-pie myorderlist.o myorderlist.c -o myorderlist

clean:
	rm *.o 
