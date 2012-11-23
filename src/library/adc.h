#include <avr/io.h>
#include <util/delay.h>
#include "board.h"


// Si se quieren utilizar los conversores en el modo de Interrupcion
// dejar el siguiente define. En caso de que se quiera trabajar con la
// funcion capturarADC comentar el siguiente define:
#define _ADC_MODO_INT_


void ADCSetup(char, char);
void ADCSelectChannel(char);

/****** Configuracion ADC ******/

// Para elegir la referencia se usan los bits REFS1 y REFS0. Pero como 
// por default vienen en cero y ese es el modo AREF (que vamos a usar),
// no hacemos nada con ellos.

//	ADMUX |= (0<<REFS1) | (0<<REFS0); 	

// Prende los conversores seteando bit en el ADCSRA
#define ADCOn() SetBit(ADCSRA, ADEN)

// Seteamos los tres bits ADPS1-2-3 para definir el prescaler
#define ADCSelectPrescaler(PN) (ADCSRA = (ADCSRA & 0xF8) | PN)


// Modos de funcionamiento (datasheet ATMega8 pag 198)

// Modo Single Conversion: Para empezar la conversion se debe poner en alto 
// el bit ADSC (ADC Start Conversion) en el Reg: ADCSRA
// Modo Free Runing: En este modo el ADC toma datos todo el tiempo, 
// se debe setear el bit ADFR en el Reg: ADCSRA
// Cuando una conversion termina, se escribe en el ADC Register, y se pone 
// en alto el bit ADIF. Si se trabaja en Single Conversion, el bit ADSC se
// clarea automaticamente.

#define ADCInitConvertion()      SetBit(ADCSRA, ADSC)

// La siguiente funcion setea los 4 bits menos significativos del registro
// ADMUX. Con esos bits se selecciona el canal de muestreo (NUM va de 0 a 7).
// ATENCION! Utilizar estafuncion con NUM > 7 puede ocasionar 
// malfuncionamiento de los AD
// ANALIZAR LA DIFERENCIA ENTRE MACRO y static inline function

#define getChannel()		(ADMUX & 0x07)

