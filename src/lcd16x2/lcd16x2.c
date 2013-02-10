#include <avr/io.h>
#include <util/delay.h>
#include "lcd16x2.h"

#define lcdSetDataBusOutput() (DDR_LCD_DATA = 0xFF)
#define lcdSetDataBusInput() (DDR_LCD_DATA = 0x00)

void lcdClk(void) {
  SetBit(PORT_LCD_E,LCD_E_NUMBER);
  _delay_us(2); // 300ns
  ClearBit(PORT_LCD_E,LCD_E_NUMBER);
  _delay_us(2); // 200ns
}

void lcdWriteCommand(unsigned char command){
  lcdSetDataBusOutput();
  PORT_LCD_DATA = command;
  lcdClk();

  // esperar a que termine el comando
  _delay_us(45); // 37 o 41 us
}

void lcdInit(void) {
  lcdSetDataBusOutput();//Todo el Bus de datos se define al inicio como salida
  SetBit(DDR_LCD_RW,LCD_RW_NUMBER);
  SetBit(DDR_LCD_RS,LCD_RS_NUMBER);
  SetBit(DDR_LCD_E,LCD_E_NUMBER);

  ClearBit(PORT_LCD_RW,LCD_RW_NUMBER);
  ClearBit(PORT_LCD_RS,LCD_RS_NUMBER);
  ClearBit(PORT_LCD_E,LCD_E_NUMBER);

  _delay_ms(40); // 40 ms

  lcdWriteCommand(LCD_FUNCTIONSET | LCD_8BITMODE);
  _delay_us(4100); // 4.1 ms

  lcdWriteCommand(LCD_FUNCTIONSET | LCD_8BITMODE);
  _delay_us(100); // 100 us

  lcdWriteCommand(LCD_FUNCTIONSET | LCD_8BITMODE);
  _delay_us(100); // 100 us

  lcdWriteCommand(LCD_FUNCTIONSET | LCD_8BITMODE | LCD_2LINE);

  lcdWriteCommand(LCD_DISPLAYCONTROL | LCD_DISPLAYOFF);

  lcdClear();

  lcdWriteCommand(LCD_ENTRYMODESET | LCD_ENTRYRIGHT);

  lcdWriteCommand(LCD_DISPLAYCONTROL | LCD_DISPLAYON);
}


void lcdClear(void) {
  lcdWriteCommand(LCD_CLEARDISPLAY);
  //agrego 1 ms mas de delay para llegar a 1.5 ms
  _delay_us(1500); 

}

void lcdHome(void) {
  lcdWriteCommand(LCD_CLEARDISPLAY);
  //agrego 1 ms mas de delay para llegar a 1.5 ms
  _delay_us(1500); 

}
void lcdWriteDataLine(unsigned char lnum,char * lstring){
  unsigned char i;
  lcdSetDataBusOutput();

  // ubicarme en la linea correspondiente
  if (lnum==0) lcdWriteCommand(LCD_SETDDRAMADDR | LCD_LINE0START);
  else lcdWriteCommand(LCD_SETDDRAMADDR | LCD_LINE1START);

  SetBit(PORT_LCD_RS,LCD_RS_NUMBER);

  for (i=0;i<20;i++){
    if(lstring[i]==0) break;
    // else
    PORT_LCD_DATA = lstring[i];
    lcdClk();
    _delay_us(45); // 43 us
  }

  ClearBit(PORT_LCD_RS,LCD_RS_NUMBER);

}
