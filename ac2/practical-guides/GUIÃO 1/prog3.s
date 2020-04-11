# // *************************************************************************
# // Programa 3 – teste dos system calls "getChar()" e "putChar()"
# // *************************************************************************
# int main(void)
#	{
#		char c;
#	}
#	while (1)
#	{
#		c = getChar();
#		if (c == '\n')
#		break;
#		putChar(c);
#	}	
#	return 1;


	# EM ASSEMBLEY
			.data
			.text
			.globl main
	main:	bne		$0, 0, breakpoint			# while(1)

			li 		$v0, 2						# syscall getChar()
			syscall								# call da Syscall

			beq		$v0, '\n', breakpoint		# if char = '\n' --> breakpoint

			move	$a0, $v0					# $a0 = $v0
			li		$v0, 3						# syscall putChar()
			syscall

			j 		main						# while (true)
breakpoint:	li		$v0, 1						# return 1
			jr		$ra							# end