global mydiv

mydiv:
    cmp rsi, 0
    je if
    push rdx
    mov rdx, 0
    mov rax, rdi
    mov rcx, rsi
    div rcx
    mov r8, rdx ; rest
    mov r9, rax ; quotient
    pop rdx
    mov qword [rdx], r9
    mov qword [rdx+8], r8
    mov rax, 1
    ret

if:
    mov qword [rdx], 0 ; res
    mov qword [rdx+8], 0 ; rest
    mov rax, 0 ; r
    ret