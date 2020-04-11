// Diogo Correia - 76608
// dv.correia@ua.pt

// FREQ 2Hz por polling

#include <detpic32.h>;

void main(void){

	// Configure Timer T3 (2Hz, interrupts disabled)

	T3CONbits.TCKPS = 0b111 ;		// Prescaler (111 = 7 --> 2⁷ = 256)
	TMR3 = 0 ;						// registo de contagem
	PR3 = 39061 ;					// constante de divisão

	IEC0bits.T3IE = 0;				// Interrupt enable control (disable)

	T3CONbits.TON = 1;				// enable timer


	while(1){

		while(IFS0bits.T3IF == 0);		// Wait until T3IF == 1
		IFS0bits.T3IF = 0 ;				// Reset : T3IF = 0;

		putChar('.');
	}
}