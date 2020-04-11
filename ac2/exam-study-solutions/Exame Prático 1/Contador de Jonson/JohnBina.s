# Diogo Vala Correia - 76608
# dv.correia@ua.pt

# Contador de Johnson e Binário (assembley)
# $t0 -> codigo dos leds

			.equ	SFR_BASE_HI,	0xBF88		# 16 MSbits of SFR
			.equ	TRISE, 			0x6100 		# TRISE address is 0xBF886100
			.equ	PORTE,			0x6110 		# PORTE address is 0xBF886110
			.equ	LATE, 			0x6120 		# LATE address is 0xBF886120

			.text
			.globl main

main:		# CONFIGURAÇÃO DO DO PORTAS O/I 
			lui		$t1, SFR_BASE_HI
			lw		$t2, TRISE($t1)
			andi	$t2, $t2, 0xFFF0			# RE0 - RE3 (output)
			ori		$t2, $t2, 0x0010			# RE4 (input)
			sw		$t2, TRISE($t1)				# write in TRISE

while1:		addi	$sp, $sp, -4				# alocate space in stack
			sw 		$ra, 0($sp)					# save $ra
			move	$a0, $t0 					# give code to leds
			jal		writeLATE					# read PORTE
			lw		$ra, 0($sp)					# load $ra

			j 		delay

delayEnd:	sw 		$ra, 0($sp)					# save $ra
			jal		readPORTE					# read PORTE
			lw		$ra, 0($sp)					# load $ra
			addi 	$sp, $sp, 4					# free stack space

			beqz	$v0, Binario				# switch = 0 conta Binário 
			j 		Johnson						# switch = 1 conta Johnson

# Contadores
Johnson:	beq		$t0, 0xF, elseJ_down		# se o contador for igual a F conta para baixo
												# se o contador for igual a 0 conta para cima
			ifJ_up:		sll		$t0, $t0, 1 				# contador << 1
						addi	$t0, $t0, 1					# contador ++
						j 		endifJ
			elseJ_down:	sll		$t0, $t0, 1 				# contador << 1
						addi	$t0, $t0, 0x000F			# clear de R04 - ...
			endifJ:		j 		while1

Binario:	bne		$t0, 0xF, NOreset			# se não for F conta não reseta
						li 		$t0, 1						# contador = 0  
			NOreset:	addi 	$t0, $t0, 1 				# contador ++
						j 		while1

# função que envia info para os leds (void)
writeLATE:	lui		$t1, SFR_BASE_HI
			lw		$t2, LATE($t1)				# read LATE register
			or		$t2, $t2, $a0				# Meter ON leds de interesse
			and		$t2, $t2, $a0				# desligar os leds sem interesse
			sw		$t2, LATE($t1)				# write to LATE 

			li 		$v0, 3						# putChar()
			syscall								#
			jr		$ra 						# return to main

# função que lê dos switches
readPORTE:	lui		$t1, SFR_BASE_HI
			lw		$v0, PORTE($t1)				# read PORTE register
			srl 	$v0, 4						# shift rigth de 4
			and 	$v0, 0x0001 				# clear

			jr		$ra 						# return to main
			
delay:		li 		$v0, 12						# reset CoreTimer
			syscall								#
whiled:		li 		$v0, 11						# read CoreTimer
			syscall								#
			beq 	$v0, 80000000, breakd		# 4Hz acaba o delay
			j 		whiled
breakd:		j delayEnd