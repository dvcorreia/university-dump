# DIOGO VALA CORREIA - 76608
# dv.correia@ua.pt

			.equ	SFR_BASE_HI,	0xBF88		# 16 MSbits of SFR
			.equ	TRISE, 			0x6100 		# TRISE address is 0xBF886100
			.equ	PORTE,			0x6110 		# PORTE address is 0xBF886110
			.equ	LATE, 			0x6120 		# LATE address is 0xBF886120

			.text
			.globl main
main:		
			# TRISE CONFIGURATION
			lui			$t0, SFR_BASE_HI		#
			lw			$t1, TRISE($t0)			# Mem_addr = 0xBF880000 + 0x6100
			andi		$t1, $t1, 0xFFFE		# dont care excepto do bit menos significativo
			ori			$t1, $t1, 0x0040		# 0x0040 = 0010 0000 = 6 --> RE6 (bit 6) = 1	
			sw 			$t1, TRISE($t0) 		# Write TRISE register
		
while:		
			# PORTE
			lui			$t0, SFR_BASE_HI		#
			lw			$t2, PORTE($t0)			# read PORTE register
			andi		$t3, $t2, 0x0040 		# mete tudo a 0 excepto o bit 6
			srl			$t3, $t3, 6				# shift right >> 6

			# LATE
			andi		$t2, $t2, 0xFFFE 		#
			or			$t2, $t2, $t3			# 
			sw			$t2, LATE($t0)			# Write LATE register
end:		j 			while
			jr 			$ra

