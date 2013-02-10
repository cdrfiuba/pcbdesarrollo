#include <avr/io.h>
#include <util/delay.h>
#include "board.h"


// Si se quieren utilizar los conversores en el modo de Interrupcion
// dejar el siguiente define. En caso de que se quiera trabajar con la
// funcion capturarADC comentar el siguiente define:
//#define ADC_MODO_INT_

// El conversor trabaja con 10 bits por default. Si se quiere utilizar 8 bits
// descomentar la siguiente linea
#define ADC_MODO_8BITS

#define ADCPS2    1
#define ADCPS4    2
#define ADCPS8    3
#define ADCPS16   4
#define ADCPS32   5
#define ADCPS64   6
#define ADCPS128  7

// utilizar siempre ADCDR como registro de lectura
//#ifdef ADC_MODO_8BITS
//  #define ADCDR ADCH
//#else
//  #define ADCDR ADC
//#endif


void ADCSetup(char, char);
void ADCSelectChannel(char);
#ifdef ADC_MODO_8BITS
  char ADCSingleConvertion();
#else
  short ADCSingleConvertion();
#endif

// Seteamos los tres bits ADPS1-2-3 para definir el prescaler
#define ADCSelectPrescaler(PN) (ADCSRA = (ADCSRA & 0xF8) | (0x07 & PN))


// Modos de funcionamiento (datasheet ATMega8 pag 198)
// Modo Single Conversion: Para empezar la conversion se debe poner en alto 
// el bit ADSC (ADC Start Conversion) en el Reg: ADCSRA
// Modo Free Runing: En este modo el ADC toma datos todo el tiempo, 
// se debe setear el bit ADFR en el Reg: ADCSRA
// Cuando una conversion termina, se escribe en el ADC Register, y se pone 
// en alto el bit ADIF. Si se trabaja en Single Conversion, el bit ADSC se
// clarea automaticamente.

#define ADCInitConvertion()      SetBit(ADCSRA, ADSC)

#define ADCGetChannel()		(ADMUX & 0x07)
