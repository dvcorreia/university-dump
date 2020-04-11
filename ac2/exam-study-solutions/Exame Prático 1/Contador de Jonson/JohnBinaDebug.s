# Diogo Vala Correia - 76608
# dv.correia@ua.pt

# Contador de Johnson e Binário (assembley)
# $t0 -> codigo dos leds

			.equ	SFR_BASE_HI,	0xBF88		# 16 MSbits of SFR
			.equ	TRISE, 			0x6100 		# TRISE address is 0xBF886100
			.equ	PORTE,			0x6110 		# PORTE address is 0xBF886110
			.equ	LATE, 			0x6120 		# LATE address is 0xBF886120

			.equ	allON,			0x000F		# all leds ON

			.text
			.globl main

main:		# CONFIGURAÇÃO DO DO PORTAS O/I 
			lui		$t1, SFR_BASE_HI
			lw		$t2, TRISE($t1)
			andi	$t2, $t2, 0xFFF0			# RE0 - RE3 (output)
			ori		$t2, $t2, 0x0010			# RE4 (input)
			sw		$t2, TRISE($t1)				# write in TRISE

readPORTE:	lui		$t1, SFR_BASE_HI
			lw		$v0, PORTE($t1)				# read PORTE register
			srl 	$v0, $v0, 4					# shift right de 4
			andi 	$v0, $v0, 0x0001 			# clear

writeLATE:	lui		$t1, SFR_BASE_HI
			lw		$t2, LATE($t1)				# read LATE register

			beqz	$v0, OFF
ON:
			or		$t2, $t2, allON				# Meter ON leds de interesse
			#and		$t2, $t2, allON				# desligar os leds sem interesse
			j write
OFF:		and 	$t2, $t2, 0xFFF0			# Off todos os LEDS	
write:

			sw		$t2, LATE($t1)				# write to LATE 

			li 		$v0, 3						# putChar()
			syscall								#

			j readPORTE

			li 		$v0,0						# return 0



