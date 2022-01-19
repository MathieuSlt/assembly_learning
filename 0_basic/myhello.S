; This is a comment
; myhello.S

global	main ; global symbol
extern	puts ; not define in this file (same as C)

	section .text ; indicate where to store this

main:                       ; label for our main function
	mov     rdi, message    ; put the @ of message in RDI
	call	puts            ; call puts function
	ret                     ; return from main

message:                    ; name for our string Hello World
	db	'Hello, World', 10, 0


