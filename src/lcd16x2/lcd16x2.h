#include "defs.h"

/* Definiciones de Pines */

/*
    LCD_DATA
    PORT D
*/
#define PORT_LCD_DATA_NAME  D

#define PORT_LCD_DATA   def_port_reg(PORT_LCD_DATA_NAME)
#define PIN_LCD_DATA    def_pin_reg(PORT_LCD_DATA_NAME)
#define DDR_LCD_DATA    def_ddr_reg(PORT_LCD_DATA_NAME)

/*
    LCD_RW
    PORT C.1
*/
#define PORT_LCD_RW_NAME  C
#define LCD_RW_NUMBER     1

#define PORT_LCD_RW   def_port_reg(PORT_LCD_RW_NAME)
#define PIN_LCD_RW    def_pin_reg(PORT_LCD_RW_NAME)
#define DDR_LCD_RW    def_ddr_reg(PORT_LCD_RW_NAME)

/*
    LCD_RS
    PORT C.2
*/
#define PORT_LCD_RS_NAME  C
#define LCD_RS_NUMBER     5

#define PORT_LCD_RS   def_port_reg(PORT_LCD_RS_NAME)
#define PIN_LCD_RS    def_pin_reg(PORT_LCD_RS_NAME)
#define DDR_LCD_RS    def_ddr_reg(PORT_LCD_RS_NAME)

/*
    LCD_E
    PORT C.3
*/
#define PORT_LCD_E_NAME   C
#define LCD_E_NUMBER      4

#define PORT_LCD_E    def_port_reg(PORT_LCD_E_NAME)
#define PIN_LCD_E     def_pin_reg(PORT_LCD_E_NAME)
#define DDR_LCD_E     def_ddr_reg(PORT_LCD_E_NAME)





/* copiado de la biblioteca de arduino */
#define LCD_CLEARDISPLAY    0x01
#define LCD_RETURNHOME      0x02
#define LCD_ENTRYMODESET    0x04  //tabla 1
#define LCD_DISPLAYCONTROL  0x08  //tabla 2
#define LCD_CURSORSHIFT     0x10  //tabla 3
#define LCD_FUNCTIONSET     0x20  //tabla 4
#define LCD_SETCGRAMADDR    0x40
#define LCD_SETDDRAMADDR    0x80  //tabla 5

// tabla 1: flags for display entry mode
#define LCD_ENTRYLEFT       0x00
#define LCD_ENTRYRIGHT      0x02
#define LCD_ENTRYSHIFT_ON   0x01
#define LCD_ENTRYSHIFT_OFF  0x00

// tabla 2: flags for display on/off control
#define LCD_DISPLAYON 0x04
#define LCD_DISPLAYOFF 0x00
#define LCD_CURSORON 0x02
#define LCD_CURSOROFF 0x00
#define LCD_BLINKON 0x01
#define LCD_BLINKOFF 0x00

// tabla 3: flags for display/cursor shift
#define LCD_DISPLAYMOVE 0x08
#define LCD_CURSORMOVE 0x00
#define LCD_MOVERIGHT 0x04
#define LCD_MOVELEFT 0x00

// tabla 4: flags for function set
#define LCD_8BITMODE 0x10
#define LCD_4BITMODE 0x00
#define LCD_2LINE 0x08
#define LCD_1LINE 0x00
#define LCD_5x10DOTS 0x04
#define LCD_5x8DOTS 0x00

// tabla 4: lines start address
#define LCD_LINE0START 0x00
#define LCD_LINE1START 0x40


/* Prototipos de funciones */
void lcdInit(void);
void lcdClear(void);
void lcdWriteDataLine(unsigned char lnum,char * lstring);
