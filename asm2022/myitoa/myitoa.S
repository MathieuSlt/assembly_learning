global myitoa    
    
myitoa:
    mov rax, 0              ; Set initial total to 0
    mov r9, 0
     
convert:
    movzx rsi, byte [rdi]   ; Get the current character
    test rsi, rsi           ; Check for \0
    je done
    
    cmp rsi, 48             ; Anything less than 0 is invalid
    jl negt
    ;jl error
    
    cmp rsi, 57             ; Anything greater than 9 is invalid
    jg error
     
    sub rsi, 48             ; Convert from ASCII to decimal 
    imul rax, 10            ; Multiply total by 10
    add rax, rsi            ; Add current digit to total
    
    inc rdi                 ; Get the address of the next character
    jmp convert

negt:
    mov r9, 1
    inc rdi
    jmp convert

error:
    mov rax, -1             ; Return -1 on error
 
done:
    cmp r9, 1
    je done_neg
    ret                     ; Return total or error code

done_neg:
    mov r8, -1
    mul r8
    ret