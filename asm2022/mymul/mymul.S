global mymul

section .text

; rdi 1st arg, rsi 2nd, rdx 3rd
mymul:

    mov rax, rdi
    mul rsi

    push rdx

    mov [rdx], rax ;rdx represent the struct

    pop rdx
    ret