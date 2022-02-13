global mymul

mymul:
    push rdx
    mov rax, rdi
    mov rcx, rsi
    mul rcx
    mov r8, rdx ; higher
    mov r9, rax ; lower
    pop rdx
    mov qword [rdx], r8
    mov qword [rdx+8], r9
    ret