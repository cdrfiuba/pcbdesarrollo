#include <avr/io.h>
#include <util/delay.h>
#include "board.h"
#include "adc.h"


void ADCSelectChannel(char channel){
	//Seteamos el pin de ADC que se va a usar, como entrada	
	ClearBit(PORT_LDR, LDR_NUMBER); 

	ADMUX = ((ADMUX & 0xF0) | channel);

}


void ADCSetup(char prescaler, char channel){

	//Usamos la resolucion de 8 bits(datasheet ATMega 8: pagina 208).
    //ClearBit(ADMUX, ADLAR); 

	//Seleccionamos el ADC, donde tenemos conectado nuestro dispositivo (hay que pasarlo como argumento a ADC_setup())
	ADCSelectChannel(channel); 
	
	//Utilizamos el modo "Single Conversion"
	#ifdef _ADC_MODO_INT_
		// Seleccionamos la menor velocidad de muestreo. CK/4 (hay que pasarla como argumento a ADC_setup())
		ADCSelectPrescaler(prescaler);

		// Habilitamos la interrupcion de finalizacion de conversion AD
		SetBit(ADCSRA, ADIE);
		
	//Utilizamos el modo "Free Run"
	#else
		// Seleccionamos la mayor velocidad de muestreo. CK/2 (hay que pasarla como argumento a ADC_setup())
		//ADC_selectPrescaler(prescaler);

		//Deshabilitamos la interrupcion de finalizacion de conversion AD
		//ClearBit(ADCSRA, ADIE);
	#endif

	ADCOn();
}


