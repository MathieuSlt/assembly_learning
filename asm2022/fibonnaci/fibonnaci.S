global fibonnaci

fibonnaci:
    cmp rdi, 0
    jl end_fibo_neg

    jmp fib

fib:
    push    rbp
    mov     rbp, rsp

    cmp     rdi, 0      ; n == 0
    jz      .end_fibo_zero
    cmp     rdi, 1      ; n == 1
    jz      .end_fibo_one

    sub     rsp, 0x20   ; space for local variables

    mov     [rbp-0x8], rdi ; save n

    sub     rdi, 1      ; n-1
    call    fib         ; fib(n-1)

    mov     [rbp-0x10], rax ; t = fib(n-1)
    mov     rdi, [rbp-0x8] ; restore n
    
    sub     rdi, 2      ; n-2 
    call    fib         ; fib(n-2)

    mov     rsi, [rbp - 0x10] ; fib(n-1) to rsi
    add     rax, rsi    ; fib(n-2) + fib(n-1)

    leave
    ret

.end_fibo_zero:
    mov     rax, 0
    pop     rbp
    ret

.end_fibo_one:
    mov     rax, 1
    pop     rbp
    ret

end_fibo_neg:
    mov rax, -1
    ret

end_no_error:
    ret