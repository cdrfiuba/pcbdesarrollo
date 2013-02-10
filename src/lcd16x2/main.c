#include <avr/io.h>
#include <util/delay.h>
#include "lcd16x2.h"
#include "board.h"

char txt1[16]="HELLO WORLD !;";
char txt2[16]="Fuck You !!! ";

int main(void) {
  lcdInit();
  Led1Init();

  lcdWriteDataLine(1,txt1);
  lcdWriteDataLine(0,txt2);
  
  while(1){
    Led1Toggle();
    _delay_ms(1000);
  }
}

