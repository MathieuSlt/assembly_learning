global mul3

mul3:
  mov rsi, rdi
  shl rdi, 1
  add rdi, rsi
  mov rax, rdi
  ret