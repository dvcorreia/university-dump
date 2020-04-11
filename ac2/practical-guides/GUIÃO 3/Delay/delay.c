// Geração de um atraso programável:
// - valor mínimo: 1 ms ( para n_intervals = 1)
// - valor máximo: (2³²-1) * lms ( para n_intervals = 0xFFFFFFFF)
// 		(aproximadamente 4294967 s, i.e., 49.7 dias :) )

void delay (unsigned int n_intervals){
	volatile unsigned int i;
	for(; n_intervals != 0 ; n_intervals--)
		for(i = CALIBRATION_VALUE ; i != 0 ; i--);

}