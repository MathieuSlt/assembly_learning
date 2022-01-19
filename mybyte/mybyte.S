global mybyte

mybyte:
  and rdi, 0xFF
  mov rax, rdi
  ret