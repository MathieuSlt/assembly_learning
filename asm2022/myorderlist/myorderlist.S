global orderlist

section .text

orderlist:
    mov r10, 10
    mov r14, rdi
    mov r15, rsi
    mov r11, 0

first_loop_start:
    cmp r11, rsi
    je write_start
    mov r12, rsi
    sub r12, r11
    sub r12, 1
    mov r13, 0

second_loop_start:
    cmp r13, r12
    je second_loop_end
    mov r8, [rdi + 8 * r13]
    mov r9, [rdi + 8 * (r13 + 1)]
    cmp r8, r9
    jg swap
    inc r13
    jmp second_loop_start

swap:
    mov [rdi + 8 * r13], r9
    mov [rdi + 8 * (r13 + 1)], r8
    inc r13
    jmp second_loop_start

second_loop_end:
    inc r11
    jmp first_loop_start

write_start:
    mov r13, 1
    mov rax, qword [r14]
    mov r8, 0

itoa1:
    cmp rax, 10
    jge itoa1_loop
    mov rdx, 0
    div r10
    add rdx, 48
    push rdx
    inc r8
    jmp print_stack1

itoa1_loop:
    mov rdx, 0
    div r10
    add rdx, 48
    push rdx
    inc r8
    jmp itoa1

print_stack1:
    cmp r8, 0
    je write_loop
    pop rax
    mov qword [buffer], rax
    call print
    dec r8
    jmp print_stack1

write_loop:
    cmp r13, r15
    je end
    call print_coma_space
    mov rax, qword [r14+r13*8]
    mov r8, 0

itoa2:
    cmp rax, 10
    jge itoa2_loop
    mov rdx, 0
    div r10
    add rdx, 48
    push rdx
    inc r8
    jmp print_stack2

itoa2_loop:
    mov rdx, 0
    div r10
    add rdx, 48
    push rdx
    inc r8
    jmp itoa2

print_stack2:
    cmp r8, 0
    je print_stack2_end
    pop rax
    mov qword [buffer], rax
    call print
    dec r8
    jmp print_stack2

print_stack2_end:
    inc r13
    jmp write_loop

print_coma_space:
    mov qword [buffer], 44
    call print
    mov qword [buffer], 32
    call print
    ret

print:
    mov rax, 1
    mov rdi, 1
    mov rsi, buffer
    mov rdx, 10
    syscall
    ret

end:
    mov qword [buffer], 10
    call print
    ret

section .bss

buffer resq 1