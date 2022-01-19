global mybyteorwithoutor

;mybyteorwithoutor(0x1122ABCD)
mybyteorwithoutor:
  and rdi, 0xABFF
  mov rax, rdi
  ret