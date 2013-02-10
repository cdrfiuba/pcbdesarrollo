#include <avr/io.h>
#include <util/delay.h>
#include "board.h"

int main (void) {
  // Iniciamos y apagamos los LEDs
  Led1Init();
  Led1Off();
  while(1){
    Led1Toggle();
    _delay_ms(250);
  }
}
