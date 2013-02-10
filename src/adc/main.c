#include <avr/io.h>
#include <util/delay.h>
#include "usart.h"
#include "adc.h"
#include "board.h"

void chartostring(uint8_t numero, char * cadena);

int main(void){
  char numeroascii[5];
  char medicion;

  DDR_LED4 = (1<<LED4_NUMBER);

  USART0Setup();
  ADCSetup(ADCPS4,LDRADCCH);

  while(1){
    _delay_ms(500);
    PORT_LED4 |= (1<<LED4_NUMBER);
    _delay_ms(500);
    PORT_LED4 &= ~(1<<LED4_NUMBER);
    medicion = ADCSingleConvertion();
    chartostring(medicion,numeroascii);
    USART0PutsP(PSTR("Medicion "));
    USART0Puts(numeroascii);
  }
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

