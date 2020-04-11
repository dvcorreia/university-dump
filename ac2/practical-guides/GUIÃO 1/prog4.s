# // *************************************************************************
# // Programa 4 – teste dos system calls de leitura e impressão de inteiros
# // *************************************************************************
# void main(void)
# {
#	int value;
#	while (1)
#	{
#		printStr("\nIntroduza um numero (sinal e módulo): ");
#		value = readInt10();
#		printStr("\nValor lido em base 2: ");
#		printInt(value, 2);
#		printStr("\nValor lido em base 16: ");
#		printInt(value, 16);
#		printStr("\nValor lido em base 10 (unsigned): ");
#		printInt(value, 10);
#		printStr("\nValor lido em base 10 (signed): ");
#		printInt10(value);
#	}
# }

	# EM ASSEMBLEY

			.equ 	printStr, 8
			.equ 	printInt, 6

			.data
Int_num:	.asciiz		"\nIntroduza um numero (sinal e módulo): "
valor_b2:	.asciiz		"\nValor lido em base 2: "
valor_b16:	.asciiz		"\nValor lido em base 16: "
valor_b10_u:.asciiz		"\nValor lido em base 10 (unsigned): "
valor_b10_s:.asciiz		"\nValor lido em base 10 (signed): "

			.text
			.globl main

main:		bne 	$0, 0, end

			li 		$v0, printStr			# printStr(Int_num)
			la 		$a0, Int_num			# load da string Int_num
			syscall							# syscall call

			li 		$v0, 5					# readInt10()
			syscall							# syscall call
			move	$s0, $v0 				# value = $s0 = readInt10()

#----------------------------------------------------------------------------------------

			li 		$v0, printStr			# printStr(valor_b2)
			la 		$a0, valor_b2			
			syscall							
			li 		$v0, printInt 			# printInt()
			move	$a0, $s0				# a0 = value
			li 		$a1, 2					# base = 2
			syscall


			li 		$v0, printStr			# printStr(valor_b16)
			la 		$a0, valor_b16			
			syscall							
			li 		$v0, printInt 			# printInt()
			move	$a0, $s0				# a0 = value
			li 		$a1, 16					# base = 16
			syscall


			li 		$v0, printStr			# printStr(valor_b10_u)
			la 		$a0, valor_b10_u			
			syscall							
			li 		$v0, printInt 			# printInt()
			move	$a0, $s0				# a0 = value
			li 		$a1, 10					# base = 10
			syscall


			li 		$v0, printStr			# printStr(valor_b10_s)
			la 		$a0, valor_b10_s			
			syscall							
			li 		$v0, 7		 			# printInt(base_10_signed) 
			move	$a0, $s0				# a0 = value
			syscall

#---------------------------------------------------------------------------------------
			j 		main					# while true condition
end:		jr		$ra  					# end


