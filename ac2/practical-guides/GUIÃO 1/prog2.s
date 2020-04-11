# *************************************************************************
# Programa 2 – teste do system call "inkey()"
# *************************************************************************
#int main(void){
#	char c;
#	while (1){
#		while ((c = inkey()) == 0);
#			if (c == '\n')
#				break;
#		printStr("Key pressed\n");
#	}
#	return 0;
#}

		.data
str:	.asciiz		"Key pressed\n"

		.text
		.globl main

main:	li 		$v0, 1		# inkey syscall 
		syscall	
	
		beq		$v0, '\n', breakpoint
		beqz	$v0, main	# branch to main if key = 0

		li		$v0, 8		# printString syscall
		la		$a0, str  	# load de str para o atributo da printString
		syscall

		j	main
breakpoint: 
		jr 	$ra


