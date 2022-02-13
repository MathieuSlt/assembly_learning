; extern malloc

; section .data
;    bufsize dw 1024
;    fd dw 0

; section .bss
;    buf resb 1024

; section .text
;     global  myfilexor

; ;rdi first rsi second
; myfilexor:
;     ;malloc 1096 bytes
;     mov r13, rdi
;     mov rdi, bufsize
;     call malloc
;     mov rdi, r13

;     ;put the key in r14
;     mov r14, rsi

;     ;need rbx to read the file
;     mov rbx, rdi

;   ; open the file
;     mov  rax,  5           ; open(
;     mov  rcx,  0           ;   read-only mode
;     int  80h               ; );

;     mov [fd], rax

;   ; read the file
;     mov  rax,  3         ; read(
;     mov  rbx,  rax       ;   file_descriptor,
;     mov  rcx,  buf       ;   *buf,
;     mov  rdx,  bufsize   ;   *bufsize
;     int  80h             ; );
;     ;error reading
;     cmp rax, 0
;     je end

;     ; write to STDOUT
;     mov     rax,  4         ; write(
;     mov     rbx,  1         ;   STDOUT,
;     int     80h             ; );


;     ;xor with the key
;     mov r10, buf
;     jmp xor_whole_string

; xor_whole_string:
;     movzx r12, byte [r10]
;     test r12, r12
;     je copy_buffer_init

;     xor [r10], r14
;     inc r10

;     jmp xor_whole_string

; copy_buffer_init:
;     mov r14, 0
;     mov r10, buf

; ; boucle pour copier r12 dans r15
; copy_buffer:
; 	movzx r12, byte [r10]
;     test r12, r12
;     je end

;     mov [r15 + 1 * r14], r12
;     inc r10
;     inc r14
;     jmp copy_buffer
    
; end:
;   ; close the file
;     mov rax, 6
;     mov rbx, 1
;     int  0x80

;     mov rax, r15
;     mov rdi, 0
;     ret

extern malloc

%define SYS_WRITE 1
%define SYS_OPEN 2
%define SYS_CLOSE 3

%define BUFFER_SIZE 4096

section .data
    fd dw 0

section .bss
    file_buffer resb BUFFER_SIZE

section .text
    global  myfilexor

myfilexor:
    mov r14, rsi
    mov r13, rdi

    mov rdi, BUFFER_SIZE
    call malloc

    mov r15, rax
    mov rdi, BUFFER_SIZE

    mov rdi, r13
    mov rax, SYS_OPEN
    mov rsi, 0
    syscall
    mov [fd], rax
    

_read_write:
    mov rax, 0
    mov rdi, [fd]
    mov rsi, file_buffer
    mov rdx, BUFFER_SIZE
    syscall

    cmp rax, 0
    je _exit

    mov r10, file_buffer
    jmp loop_filexor

loop_filexor:
    movzx r12, byte [r10]
    test r12, r12
    je cmp_buffer_init

    xor [r10], r14
    inc r10

    jmp loop_filexor

cmp_buffer_init:
    mov r14, 0
    mov r10, file_buffer

cmp_buffer:
    movzx r12, byte [r10]
    test r12, r12
    je _exit

    mov [r15 + 1 * r14], r12
    inc r10
    inc r14
    jmp cmp_buffer


_exit:

    mov rax, SYS_CLOSE
    mov rdi, fd
    syscall

    mov rax, r15
    mov rdi, 0
    ret