#continue asking for numbers while input is larger than 10

.data
  prompt: .asciiz "Enter number: "
  exit: .asciiz "Return"

.text
	main:
    li $s0, 10
    ask_number:
      li $v0, 4
      la $a0, prompt
      syscall
      li $v0, 5
      syscall
    bgt $v0, $s0, ask_number
    li $v0, 4
    la $a0, exit
    syscall
  jr $ra
