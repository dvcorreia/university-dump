# DIOGO VALA CORREIA - 76608
# dv.correia@ua.pt

			# counter -> $s0

			.equ	SFR_BASE_HI,	0xBF88		# 16 MSbits of SFR
			.equ	TRISE, 			0x6100 		# TRISE address is 0xBF886100
			.equ	PORTE,			0x6110 		# PORTE address is 0xBF886110
			.equ	LATE, 			0x6120 		# LATE address is 0xBF886120

			.text
			.globl main
main:		# TRISE CONFIGURATION
			lui			$t0, SFR_BASE_HI		#
			lw			$t1, TRISE($t0)			# Mem_addr = 0xBF880000 + 0x6100
			andi		$t1, $t1, 0xFFF0		# E0 , E1 , E2 , E3 = 0 (output)
			ori			$t1, $t1, 0x0030		# E4 e E5  = 1 (input)	
			sw 			$t1, TRISE($t0) 		# Write TRISE register

			li 			$s0, 0 					# cont = 0 (inicialização)

clock:		# CICLE COUNTER 
			li 			$v0, 11
			syscall
			beq			$v0, 10000000, count	# if clock = 20M / 4 -->
			j			clock

count:		# #t0 = registo com a contagem
			li 			$v0, 12					# reset clock
			syscall								#

			# CONTADOR BINÁRIO	
counter:	addi		$s0, $s0, 1				# contador++
			j 			late_count

late_count:	# LATE
			bne			$s0, 16, counter		# se for = 16 reset contador
			li 			$s0, 0					# counter = 0

			sw 			$s0, PORTE($t0)			# save counter na saída
			
			j 			clock

			jr 			$ra 					# end