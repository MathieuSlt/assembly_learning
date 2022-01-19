global mybyteor

mybyteor:
  or rdi, 0xFF
  and rdi, 0xABFF
  mov rax, rdi
  ret