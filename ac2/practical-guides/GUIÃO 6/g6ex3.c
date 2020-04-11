// Diogo Correia - 76608
// dv.correia@ua.pt

// FREQ 1Hz por Interrupções

#include <detpic32.h>;
void isr_T3(void);

int flag = 0; 			// globl flag

void main(void){

	// Configure Timer T3 (2Hz, interrupts disabled)

	T3CONbits.TCKPS = 0b111 ;		// Prescaler (111 = 7 --> 2⁷ = 256)
	TMR3 = 0 ;						// registo de contagem
	PR3 = 39061 ;					// constante de divisão

	IEC0bits.T3IE = 1;				// Interrupt enable control (enable)

	T3CONbits.TON = 1;				// enable timer

	// Interrupts Configuration

	IPC3bits.T3IP = 2 ;				
	IEC0bits.T3IE = 1 ;	
	IFS0bits.T3IF = 0;				// Reset Interruption flag
	EnableInterrupts();				// Global Interrupt enable

	while(1);
	
}

void _int_(12) isr_T3(void){
	if(flag == 0)
	putChar('.');

	flag = !flag;					// flag change
	IFS0bits.T3IF = 0;				// reset timer flag
}

