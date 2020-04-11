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
count_cicle:
			# PORTE
			lw			$t2, PORTE($t1)			# read PORTE register
			andi		$t2, $t2, 0xFF10 		# mete tudo a 0 excepto E4
			srl			$t2, $t2, 4				# shift right >> 4

			beqz		$t2, johnson_c			# switch 0 -> johnson , 1 --> counter

			# CONTADOR BINÁRIO	
counter:	addi		$s0, $s0, 1				# contador++
			j 			late_count

johnson_c:	# CONTADOR DE JOHNSON
			srl			$t1, $s0, 3				# shift right 3 bits
			andi		$t1, $t1, 0xFFFE		# colocar a zero todos os bit menos o ultimo
			andi		$t3, $s0, 1				# contador++
			sll 		$t3, $t3, 1 			# shift left de 1 bit
			add 		$t3, $t3, $t1			# adicionar algarismo + significativo ao menos significativo
			andi		$s0, $t3, 0xFFF0		# colocar todos os n bits n > 4 = 0

late_count:	# LATE
			bne			$s0, 16, counter		# se for = 16 reset contador
			li 			$s0, 0					# counter = 0

			sw 			$s0, PORTE($t0)			# save counter na saída
			
			j 			clock

			jr 			$ra 					# end