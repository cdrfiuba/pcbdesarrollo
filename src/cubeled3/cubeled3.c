#include <avr/io.h>
#include <util/delay.h>
#include "board.h"
#include "cubeled3.h"
#include <avr/interrupt.h>
#include <stdbool.h>
#define DELAY1 150

void ColumnAllOn() {
  ColumnOn(1);
  ColumnOn(2);
  ColumnOn(3);
  ColumnOn(4);
  ColumnOn(5);
  ColumnOn(6);
  ColumnOn(7);
  ColumnOn(8);
  ColumnOn(9);
  return;
}

void ColumnAllOff() {
  ColumnOff(1);
  ColumnOff(2);
  ColumnOff(3);
  ColumnOff(4);
  ColumnOff(5);
  ColumnOff(6);
  ColumnOff(7);
  ColumnOff(8);
  ColumnOff(9);
  return;
}

void setup (void) {
  SetBit(DDR_C1,C1_NUM);
  SetBit(DDR_C2,C2_NUM);
  SetBit(DDR_C3,C3_NUM);
  SetBit(DDR_C4,C4_NUM);
  SetBit(DDR_C5,C5_NUM);
  SetBit(DDR_C6,C6_NUM);
  SetBit(DDR_C7,C7_NUM);
  SetBit(DDR_C8,C8_NUM);
  SetBit(DDR_C9,C9_NUM);
  SetBit(DDR_R1,R1_NUM);
  SetBit(DDR_R2,R2_NUM);
  SetBit(DDR_R3,R3_NUM);
  ColumnAllOff();
  RowOff(1);
  RowOff(2);
  RowOff(3);

//  TCCR0A = (1<<WGM01) | (0<<WGM00);
//  OCR0A = 100;
//  TIMSK0 = (1<<OCIE0A);
//  TCCR0B = (1<<CS02) | (0<<CS01) | (1<<CS00);

  //sei();
}

int main(void) {
  setup();
  
  while(1){
    ColumnOn(1);
    RowOff(1);
    RowOff(2);
    RowOff(3);

    RowOn(1);
_delay_ms(DELAY1);
    ColumnOff(1);
    ColumnOn(2);
    _delay_ms(DELAY1);

    ColumnOff(2);
    ColumnOn(3);
    _delay_ms(DELAY1);


    ColumnOff(3);
    ColumnOn(6);
    _delay_ms(DELAY1);


    ColumnOff(6);
    ColumnOn(5);
    _delay_ms(DELAY1);


    ColumnOff(5);
    ColumnOn(4);
    _delay_ms(DELAY1);


    ColumnOff(4);
    ColumnOn(7);
    _delay_ms(DELAY1);


    ColumnOff(7);
    ColumnOn(8);
    _delay_ms(DELAY1);


    ColumnOff(8);
    ColumnOn(9);
    _delay_ms(DELAY1);

RowOff(1);
RowOn(2);
_delay_ms(DELAY1);

ColumnOff(9);
    ColumnOn(8);
    _delay_ms(DELAY1);


ColumnOff(8);
    ColumnOn(7);
    _delay_ms(DELAY1);


ColumnOff(7);
    ColumnOn(4);
    _delay_ms(DELAY1);


ColumnOff(4);
    ColumnOn(5);
    _delay_ms(DELAY1);


ColumnOff(5);
    ColumnOn(6);
    _delay_ms(DELAY1);


ColumnOff(6);
    ColumnOn(3);
    _delay_ms(DELAY1);


ColumnOff(3);
    ColumnOn(2);
    _delay_ms(DELAY1);

ColumnOff(2);
    ColumnOn(1);
    _delay_ms(DELAY1);

RowOff(2);
RowOn(3);
_delay_ms(DELAY1);
    ColumnOff(1);
    ColumnOn(2);
    _delay_ms(DELAY1);

   ColumnOff(2);
    ColumnOn(3);
    _delay_ms(DELAY1);

   ColumnOff(3);
    ColumnOn(6);
    _delay_ms(DELAY1);

   ColumnOff(6);
    ColumnOn(5);
    _delay_ms(DELAY1);

   ColumnOff(5);
    ColumnOn(4);
    _delay_ms(DELAY1);

   ColumnOff(4);
    ColumnOn(7);
    _delay_ms(DELAY1);

   ColumnOff(7);
    ColumnOn(8);
    _delay_ms(DELAY1);

   ColumnOff(8);
    ColumnOn(9);
    _delay_ms(DELAY1);

RowOff(3);
   ColumnOff(9);
RowOn(2);

    ColumnOn(5);
    _delay_ms(DELAY1);

ColumnOff(5);

//RowOff(2);
//RowOn(1);

}
/*    RowOff(1);
    _delay_ms(2*250);
    RowOn(3);
    RowOff(2);
    _delay_ms(2*250);
    RowOff(3);
    _delay_ms(2*250);

    ColumnAllOff();
    RowOn(1);
    RowOn(2);
    RowOn(3);
    ColumnOn(1);
    _delay_ms(2*250);
    ColumnOff(1);
    ColumnOn(2);
    _delay_ms(2*250);
    ColumnOff(2);
    ColumnOn(3);
    _delay_ms(2*250);
    ColumnOff(3);
    ColumnOn(4);
    _delay_ms(2*250);
    ColumnOff(4);
    ColumnOn(5);
    _delay_ms(2*250);
    ColumnOff(5);
    ColumnOn(6);
    _delay_ms(2*250);
    ColumnOff(6);
    ColumnOn(7);
    _delay_ms(2*250);
    ColumnOff(7);
    ColumnOn(8);
    _delay_ms(2*250);
    ColumnOff(8);
    ColumnOn(9);
    _delay_ms(2*250);
    ColumnOff(9);
    _delay_ms(2*250);
  }*/


}

RoWOff(uint8_t r){
  if (r==0) RowOff(1);
  else if (r==1) RowOff(2);
  else if (r==2) RowOff(3);
}
RoWOn(uint8_t r){
  if (r==0) RowOn(1);
  else if (r==1) RowOn(2);
  else if (r==2) RowOn(3);
}


ISR(TIMER0_COMPA_vect){

  static uint8_t row = 0;

  RoWOff(row);
  row++;
  row = row % 3;
  RoWOn(row);
}

ISR(TIMER0_OVF_vect){
  Led2Toggle();
/*
  static bool test2 = false;

  if (test2) {
    ColumnAllOn();
    test2 = false;
  }
  else {
    ColumnAllOff();
    test2 = true;
  }
*/
}
