// exercício 1 do teste de terça-feira (24/05/2016)
// Diogo Correia 76608
// dv.correia@ua.pt

/* 	exercício de preparação para o Teste2 : 
	1. Ler dos switches --> escrever nos leds - done
	2. Ler dos switches --> escrever nos displays - done
	3. Fout = (1 + x) * 100 (Hz) ; x --> switches e DC 50% - done
	4. Fout = 1 Khz e DC = 10 + x/2 * 10 - done
	5. UART BR = 2400 . Quando recebe 'r' imprime "Diogo Correia" no ecrã - not done, not yet
*/

	# include <detpic32.h>

	char readSwitches();
	void initAll();
	void send2Leds(unsigned char);
	void delay(unsigned int);
	void send2Displays(unsigned char);
	void updateTimerPWM(unsigned char);

	static volatile unsigned char switches; 

	void main(void){
		initAll();
		while(1);
	}

	void initAll(){
		TRISE &= 0xFFF0;		// configure LEDS as output
		TRISE |= 0x00F0; 		// configure Switches as input 
		TRISB &= 0xFC00;		// configure diplays and gates as outputs

		// Timer configuration
		T2CONbits.TCKPS = 0x3 ;			// Prescaler (2³ = 8)
		TMR2 = 0 ;						// registo de contagem
		PR2 = 24999 ;					// constante de divisão
		IEC0bits.T2IE = 1;				// Interrupt enable control (enable)
		T2CONbits.TON = 1;				// enable timer

		// Interruption Configuration
		IPC2bits.T2IP = 2 ;				
		IEC0bits.T2IE = 1 ;				// Autorize Timer interruption
		IFS0bits.T2IF = 0;				// Reset Ad1IF flag
		EnableInterrupts();				// Global Interrupt enable

		// PWM Configuration
		OC1CONbits.OCM = 6;				// PWM mode on . fault pin disabled
		OC1CONbits.OCTSEL = 0;			// Use timer 2 as time base for PWM generator
		OC1RS = 7500;					// Ton constant
		OC1CONbits.ON =1;				// Enable OC1 module
	}

	char readSwitches(){
		return ((PORTE >> 4) & 0x000F);
	}

	void send2Leds(unsigned char info){
		LATE &= info;
		LATE |= info;
	}

	void delay(unsigned int timer){
		resetCoreTimer();
		while(readCoreTimer() > timer * (PBCLK / 1000));
	}

	void send2Displays(unsigned char info){
		static const unsigned char codes[] = {	0x77, 0x41, 0x3B, 0x6B, 0x4D, 0x6E, 0x7E, 
										  		0x43, 0x7F,0x4F, 0x5F, 0x7C, 0x36, 0x79, 
										  		0x3E, 0x1E	};
		static volatile flag = 0;

		if(flag){
			LATB &= codes[info];
			LATB |= codes[info];
			LATBbits.LATB8 = !flag;
			LATBbits.LATB9 = flag;
		}else{
			LATB &= codes[info >> 4];
			LATB |= codes[info >> 4];
			LATBbits.LATB8 = !flag;
			LATBbits.LATB9 = flag;
		}

		flag = !flag;
		delay(10);
	}

	void updateTimerPWM(unsigned char info){
		PR2 = ((PBCLK / 8) / ((1 + info) * 100)) - 1;
		OC1RS = (PR2 + 1) * 0.3;
	}

	void _int_(8) timerInterrupt (void){
		switches = readSwitches();
		printInt10(switches);			// print stuff
		printStr("\n");					//

		send2Leds(switches);			// send to hardware stuff
		send2Displays(switches);		//

		updateTimerPWM(switches);			// update Timer freq

		IFS0bits.T2IF = 0;				// reset timer flag
		IFS1bits.AD1IF = 0;				// reset interruption flag
	}