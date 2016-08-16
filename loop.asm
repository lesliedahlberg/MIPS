.data

	top: .word 10
	bot: .word 0

.text
	
	main:
		lw $s0, top
		lw $s1, bot
		
		print:
			li $v0, 1
			move $a0, $s0
			syscall

		addi $s0, $s0, -1
		bgt $s0, $s1, print


	jr $ra