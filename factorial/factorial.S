global factorial

factorial:
  cmp rdi, 0
  je end_factorial_1

  cmp rdi, 1
  je end_factorial_1

  mov r8, rdi
  mov rax, rdi
  jmp factorial_loop

factorial_loop:
	dec r8
	mul r8

	cmp r8, 0
  je end_factorial

  cmp r8, 1
	ja factorial_loop

end_factorial:
  ret

end_factorial_1:
  mov rax, 1
  ret