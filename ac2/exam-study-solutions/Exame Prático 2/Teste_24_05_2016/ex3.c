// exercício 3 do teste de terça-feira (24/05/2016)
// Diogo Correia 76608
// dv.correia@ua.pt

// a) UART2. Parâmetros: 57600 bps, 8 databits, 'O' parity, 1 stop bits
// b) quando 'L', le o valor nos dip-switches DS1-DS3 e imprime valor de 0-7
// 	  quando 'S', envia string c/ nome para pterm
// 	  quando 'Q', termina o programa
// recepção por interrupção
// não se pode usar system calls

#include <detpic32.h>

void uartConfig();
void uartInterruptConfig();
unsigned char to_Bcd(unsigned char);
void initAll();
unsigned char readDip();
void send2DisplaysLeds(unsigned char);
void putc(char);
void puts(char *);


void main(void){
	initAll();
	printStr("\ninitAll Done\n\n");

	while(1);
} 

void initAll(){
	uartConfig();
	uartInterruptConfig();

	// leds and switchs config
	TRISE &= 0xF0;
	TRISE |= 0xF0;

	// displays and gates config
	TRISB &= 0xFC00;
	TRISB |= 0xFC00;
}

void uartConfig(){
	// baud config
	static unsigned int baud = 115200; 		// 57600
	U1BRG = ((PBCLK + 8 * baud) / (16 * baud)) - 1;		// contant calculation
	U1MODEbits.BRGH = 0;								//  divisão % 16

	// configuração da palavra
	U1MODEbits.PDSEL = 00; 			// numero de data bits + paridade 
									//(8 bits ; O parityu)
	U1MODEbits.STSEL = 0; 			// 1 stop bits

	// activar TX e RX
	U1STAbits.UTXEN = 1;			// TX on
	U1STAbits.URXEN = 1;			// RX on

	// uart on
	U1MODEbits.ON = 1;
}

void uartInterruptConfig(){

	// configuração da interrupção da UART (recepção)
	
	IEC0bits.U1RXIE = 1;		// autorizar interrupçãoes da UART
	IEC0bits.U1EIE = 1;			// autorização de deteção de erros de 
									// .. paridade farming e overrrun
	IFS0bits.U1RXIF = 0;		// reset da flag da interrupçao
	IPC6bits.U1IP = 1;			// nivel de prioridade = 1

	EnableInterrupts(); 
}

void _int_(_UART1_VECTOR) isr_uartInterrupt(void){
	switch(U1RXREG){
		case('L'):	send2DisplaysLeds(readDip()); break;
		case('S'):	puts("\nDiogo Correia"); break;
		case('Q'): 	return 0; break;
		default: break;
	}
	IFS0bits.U1RXIF = 0;		// reset da flag da interrupçao
}

unsigned char readDip(){
	return (PORTE >> 4) & 0x000F;
}

unsigned char to_Bcd(unsigned char value){
	return ((value / 10) << 4) + (value % 10);
}

void send2DisplaysLeds(unsigned char info){
	// send to displays
	static const unsigned char codes[] = {	0x77, 0x41, 0x3B, 0x6B, 0x4D, 0x6E, 0x7E, 
										  	0x43, 0x7F,0x4F, 0x5F, 0x7C, 0x36, 0x79, 
										  	0x3E, 0x1E	};
	LATB = (LATB & codes[info]);
	LATB = (LATB | codes[info]);
	LATBbits.LATB8 = 1;
	LATBbits.LATB9 = 0;

	// send to leds
	LATE &= info;
	LATE |= info;
}

void putc(char c){
	while(U1STAbits.URXDA);
	U1TXREG = c;		 			// Copy byte2send to the UxTXREG register
}

void puts(char *str){
	while(*str != '\0'){
		putc(*str);
		str++;
	}
}