#include <avr/io.h>
#include <util/delay.h>
#include "usart.h"
#include "adc.h"
#include "board.h"


#define UMBRAL 8

void chartostring(uint8_t numero, char * cadena);

int main(void){
//  char numeroascii[5];
  unsigned char medicionactual=0, medicionanterior=0;
  unsigned int vector[10];

  DDR_LED4 = (1<<LED4_NUMBER);
  DDR_LED1 = (1<<LED1_NUMBER);
  TCCR1A = (0<<WGM11)|(0<<WGM11);
  TIMSK1 = (1<<OCIE1A);
  TCCR1B = (0<<CS12)|(1<<CS11)|(1<<CS10)|(1<<WGM12)|(0<<WGM13);

  USART0Setup();

  ADCSetup(ADCPS4,LDRADCCH);
  OCR1A = 0xF000;

  while(1){
    medicionanterior = medicionactual;
    medicionactual = ADCSingleConvertion();

    if ( (medicionactual > (medicionanterior + UMBRAL)) || (medicionactual < (medicionanterior - UMBRAL)) ) {
        PIN_LED4 |= (1<<LED4_NUMBER);
    }
//    chartostring(medicionactual,numeroascii);
//    USART0PutsP(PSTR("Medicion "));
//    USART0Puts(numeroascii);
    _delay_ms(4);
  }
}

ISR (TIMER1_COMPA_vect){
  PIN_LED1 |= (1<<LED1_NUMBER);
}

void chartostring(uint8_t numero, char * cadena) {
  cadena[0] = numero / 100 + 0x30;
  numero = numero % 100;
  cadena[1] = numero / 10 + 0x30;
  numero = numero % 10;
  cadena[2] = numero + 0x30;
  cadena[3] = '\n';
  cadena[4] = 0;
}

