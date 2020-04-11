# BY: DIOGO VALA CORREIA - 76608
# dv.correia@ua.pt - 20/02/2016
# ATENÇÃO! Programa com alterações com vista a debugging, facilitação de
#.visualização de resultados e melhoria no programa base .

# // *************************************************************************
# // Programa 5 – teste do system call "readStr()" e manipulação de strings
# // ************************************************************************


				.equ 	STR_MAX_SIZE, 20
				.data
strIntr:		.asciiz		"Introduza 2 strings:\nPrimeira string: "
strIntr2:		.asciiz		"\nSegunda string: "
resultados:		.asciiz		"\nResultados:\n"

	# Debug strings
spaceStr:		.asciiz		"\n"
length_1:		.asciiz		"length 1ª string: "
length_2:		.asciiz		"length 2ª string: "
strcat_debug:	.asciiz		"strcat(str3 , str2) = "
strcmp_debug:	.asciiz		"strcmp(str1 , str2)) = "

str1: 			.space	STR_MAX_SIZE + 1
str2:			.space	STR_MAX_SIZE + 1
str3: 			.space	2 * STR_MAX_SIZE + 1

				.text
				.globl main

main:			addiu	$sp, $sp, -4		# save $ra
				sw		$ra, 0($sp)			#

				# Read Strings
				la 		$a0, strIntr		# load string from memory
				li 		$v0, 8				# printStr(strIntr)
				syscall

				la 		$a0, str1
				la 		$a1, STR_MAX_SIZE
				li 		$v0, 9				# str1 = readString()
				syscall

				la 		$a0, strIntr2		# load string from memory
				li 		$v0, 8				# printStr(strIntr2)
				syscall

				la 		$a0, str2
				la 		$a1, STR_MAX_SIZE
				li 		$v0, 9				# str2 = readString()
				syscall

				# -------------------------------------------------------

				la 		$a0, resultados 	# load string from memory
				li 		$v0, 8 				# printStr(resultados)
				syscall

				# printInt(strlen(str1), 10)
				
				la 		$a0, length_1		# debug length(str1)
				li 		$v0, 8				# 
				syscall

				la 		$a0, str1
				jal		strlen
				move 	$a0, $v0
				li 		$v0, 7	
				syscall

				la 		$a0, spaceStr		# debug Enter
				li 		$v0, 8				# 
				syscall

				# printInt(strlen(str1), 10)

				la 		$a0, length_2		# debug length(str2)
				li 		$v0, 8				# 
				syscall

				la 		$a0, str2
				jal strlen
				move 	$a0, $v0
				li 		$v0, 7
				syscall

				la 		$a0, spaceStr		# debug Enter
				li 		$v0, 8				# 
				syscall

				# strcpy(str3, str1)
				la 		$a0, str3
				la 		$a1, str1
				jal		strcpy

				# printStr( strcat(str3 , str2))
				
				la 		$a0, strcat_debug	# debug strcat result
				li 		$v0, 8				# 
				syscall

				la 		$a0, str3
				la 		$a1, str2
				jal 	strcat
				move 	$a0, $v0
				li 		$v0, 8
				syscall

				la 		$a0, spaceStr		# debug Enter 
				li 		$v0, 8				# 
				syscall

				# printInt10( strcmp(str1 , str2))
				
				la 		$a0, strcmp_debug	# debug strcmp result
				li 		$v0, 8				# 
				syscall

				la 		$a0, str1
				la 		$a1, str2
				jal		strcmp
				move 	$a0, $v0
				li 		$v0, 7
				syscall

				la 		$a0, spaceStr		# debug Enter
				li 		$v0, 8				# 
				syscall

				li 		$v0, 0 				# return 0

				lw		$ra, 0($sp)			# free space in stack
				addiu	$sp, $sp, 4			# load $ra

				jr		$ra 				# end



# // *************************************************************************
# // String concatenate (char *dst , char *src)
# // *************************************************************************
strcat:			addiu	$sp, $sp, -8		# alocate space in stack
				sw 		$s0, 0($sp) 		# saving registers
				sw		$ra, 4($sp)			#

				move	$s0, $a0			# *rp = dst
				move	$t0, $a0			# mover para temporário para
											#.$a0 poder ser utilizada 

for_strcat:		lb		$t1, 0($t0)			# *t1 = *dst
				beqz	$t1, endfor_strcat	# for conditon	
				addi	$t0, $t0, 1			# dst++
				j 		for_strcat
endfor_strcat: 	
				# *dst ($a0) e *src($a1) n foram alterados  				
				jal		strcpy
				move 	$v0, $s0			# $v0 = *rp (de strcpy

				lw		$s0, 0($sp)			# loading registers	#
				lw		$ra, 4($sp)			#
				addiu	$sp, $sp, 8			# free stack space

				jr		$ra					# end



# // *************************************************************************
# // String length (char *s)
# // *************************************************************************
strlen:			li 		$v0, 0				# len = 0

for_strlen:		lb		$t1, 0($a0)			# t1  = *s
				beqz	$t1, endfor_strlen
				addi	$a0, $a0, 1			# s++
				addi	$v0, $v0, 1			# len++
				j 		for_strlen
endfor_strlen:	j		$ra 				# end



# // *************************************************************************
# // String copy (char *dst , char *src)
# // *************************************************************************
strcpy:			move	$t0, $a0			# *rp = dst
for_strcpy:		lb		$t1, 0($a1)			# *dst = *src
				beqz	$t1, end_strcopy	# *dst = o --> breakpoint
				addi	$a0, $a0, 1			# dst++
				addi	$a1, $a1, 1			# src++
				j 		for_strcpy			
end_strcopy:	move	$v0, $t0			# return(*rp)
				jr		$ra 				# end



# // *************************************************************************
# // String compare (alphabetically) (char *s1 , char *s2)
# // Returned value is:
# //	< 0 string "s1" is less than string "s2"
# //	= 0 string "s1" is equal to string "s2"
# //	> 0 string "s1" is greater than string "s2"
# // *************************************************************************
strcmp:			lb		$t0, 0($a0)			# t0 = *s1
				lb		$t1, 0($a1)			# t1 = *s2
				
				bne		$t0, $t1, end_strcmp	# branch *s1 =! *s2
				beqz 	$t0, end_strcmp			# branch *s1 == 0

				addi 	$a0, $a0, 1			# s1++
				addi 	$a1, $a1, 1 		# s2++

				j 		strcmp
end_strcmp:		sub 	$v0, $t0, $t1		# return(*s1 - *s2)
				jr 		$ra 				# end



