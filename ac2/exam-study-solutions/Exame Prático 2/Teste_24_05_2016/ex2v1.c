	//ADC e Timer
	//Vel de 0-70 para os displays
#include <detpic32.h>;

volatile unsigned char velocity;
volatile unsigned char vel;

unsigned char toBcd(unsigned char value);
void configTimer2();
void configTimer3();
void send2Displays(unsigned char word);
unsigned char disp1=0;

void delay(unsigned int t_ms)
{
	resetCoreTimer();
	while(readCoreTimer() < t_ms*(PBCLK/1000));	
}

void configAll()
{
	//Configuração dos LEDS e DOS SW
	TRISE &= 0x0000;
	TRISE |= 0x00F0;
	//Configuração dos Displays de 7 segmentos
	TRISB &= 0xFC00;

	//Configuração da ADC
	TRISBbits.TRISB14 = 1;
	AD1PCFGbits.PCFG14 = 0;
	//RB4 digital output disconnected
	AD1CON1bits.SSRC = 7;

	AD1CON1bits.CLRASAM = 1; //

	AD1CON3bits.SAMC = 16;

	AD1CON2bits.SMPI = 0; //N samples

	AD1CHSbits.CH0SA = 14;

	AD1CON1bits.ON = 1;

	//IFS1bits.AD1IF = 0;	//reset Flag

	//Configuração para Interrupt
	IPC6bits.AD1IP=3;

	IEC1bits.AD1IE=1;

	IFS1bits.AD1IF = 0;

	AD1CON1bits.ASAM=1;
	//configTimer2();
	configTimer3();
	
	EnableInterrupts();	//Sempre

}
//Timer do Refresh Displays
void configTimer3()
{
///
	T3CONbits.TCKPS = 5;	//1:32 prescaler (i.e. fin = 625 KHz)
	PR3 = 1562;			// Fout = 20MHz / (32 * (62499 + 1)) = 10 Hz
	TMR3 = 0;				//Reset timer T2 count register
	IEC0bits.T3IE = 1;		// Interrupt enable control (enable)
	T3CONbits.TON = 1;   	//Enable timer T2 (must be the las


	IFS0bits.T3IF = 0;			// Reset timer T2 interrupt flag
	IPC3bits.T3IP = 2;			// Interrupt priority (must be in range [1..6])
	IEC0bits.T3IE = 1;			// Enable timer T2 interrupts

}

void send2Displays(unsigned char word)
{
		static const unsigned char codes[] = {0x77, 0x41, 0x3B, 0x6B, 0x4D, 0x6E, 0x7E, 
											  0x43, 0x7F,0x4F, 0x5F, 0x7C, 0x36, 0x79, 
											  0x3E, 0x1E};
	unsigned char word_low = word & 0x000F;
	unsigned char word_high = word >> 4;

	if(disp1)
	{
		LATB = LATB & 0xFFC0;
		LATB = LATB | codes[word_low];
		LATBbits.LATB8=0;
		LATBbits.LATB9=1;
	}
	else
	{
		LATB = LATB & 0xFFC0;
		LATB = LATB | codes[word_high];
		LATBbits.LATB9=0;
		LATBbits.LATB8=1;
	}	
	disp1 = !disp1;							  
}
unsigned char readADCvalue()
{
	/*
	unsigned char media=0, i;
	static int *p = (int *)(&ADC1BUF0);

	for(i=0;i<4;i++)
	{
		media += p[i*4];

	}
	media = media/4;
	*/
	return (ADC1BUF0*70)/1023;
}
void _int_(27) isr_adc(void)
{
	
	velocity = readADCvalue();
	IFS1bits.AD1IF = 0;
	AD1CON1bits.ASAM = 1;
}

//Timer 3
void _int_(12) isr_T3(void)
{
	send2Displays(toBcd(vel));	
	IFS0bits.T3IF = 0;
}

unsigned char toBcd(unsigned char value)
{
	return ((value / 10) << 4) + (value % 10);
}

int main(void)
{
	configAll(); //Fzaer a configuração dos displays e da ADC
	printStr("Config done\n");
	AD1CON1bits.ASAM = 1;
	while(1)
	{
		vel = velocity;
		printInt(vel,10);
		printStr("\n");
		delay(20);
	}
	return 0;
}
