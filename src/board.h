#ifndef _BOARD_H_
#define _BOARD_H_

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "defs.h"

/* Definiciones de Pines */

/*LED1 = LED 1 (Rojo)*/
#define PORT_LED1_NAME      C
#define LED1_NUMBER         0
/*LED2 = LED 2 (Rojo)*/
#define PORT_LED2_NAME      C
#define LED2_NUMBER         1
/*LED3 = LED 3 (Verde)*/
#define PORT_LED3_NAME      C
#define LED3_NUMBER         2
/*LED4 = LED 4 (Verde)*/
#define PORT_LED4_NAME      C
#define LED4_NUMBER         3

/* Definiciones de Puertos */

/*LED1 = LED 1*/
#define PORT_LED1       def_port_reg(PORT_LED1_NAME)
#define PIN_LED1        def_pin_reg(PORT_LED1_NAME)
#define DDR_LED1        def_ddr_reg(PORT_LED1_NAME)
/*LED1 = LED 2*/
#define PORT_LED2       def_port_reg(PORT_LED2_NAME)
#define PIN_LED2        def_pin_reg(PORT_LED2_NAME)
#define DDR_LED2        def_ddr_reg(PORT_LED2_NAME)
/*LED1 = LED 3*/
#define PORT_LED3       def_port_reg(PORT_LED3_NAME)
#define PIN_LED3        def_pin_reg(PORT_LED3_NAME)
#define DDR_LED3        def_ddr_reg(PORT_LED3_NAME)
/*LED1 = LED 4*/
#define PORT_LED4       def_port_reg(PORT_LED4_NAME)
#define PIN_LED4        def_pin_reg(PORT_LED4_NAME)
#define DDR_LED4        def_ddr_reg(PORT_LED4_NAME)

/* Definiciones de Funciones */

/*LED1 = LED 1*/
#define Led1Init()      SetBit(DDR_LED1, LED1_NUMBER)
#define Led1On()        ClearBit(PORT_LED1, LED1_NUMBER)
#define Led1Off()       SetBit(PORT_LED1, LED1_NUMBER)
#define IsLed1On()      IsBitClear(PORT_LED1, LED1_NUMBER)
#define Led1Toggle()    {if ( IsLed1On() ) Led1Off(); else Led1On();}
/*LED2 = LED 2*/
#define Led2Init()      SetBit(DDR_LED2, LED2_NUMBER)
#define Led2On()        ClearBit(PORT_LED2, LED2_NUMBER)
#define Led2Off()       SetBit(PORT_LED2, LED2_NUMBER)
#define IsLed2On()      IsBitClear(PORT_LED2, LED2_NUMBER)
#define Led2Toggle()    {if ( IsLed2On() ) Led2Off(); else Led2On();}
/*LED3 = LED 3*/
#define Led3Init()      SetBit(DDR_LED3, LED3_NUMBER)
#define Led3On()        ClearBit(PORT_LED3, LED3_NUMBER)
#define Led3Off()       SetBit(PORT_LED3, LED3_NUMBER)
#define IsLed3On()      IsBitClear(PORT_LED3, LED3_NUMBER)
#define Led3Toggle()    {if ( IsLed3On() ) Led3Off(); else Led3On();}
/*LED4 = LED 4*/
#define Led4Init()      SetBit(DDR_LED4, LED4_NUMBER)
#define Led4On()        ClearBit(PORT_LED4, LED4_NUMBER)
#define Led4Off()       SetBit(PORT_LED4, LED4_NUMBER)
#define IsLed4On()      IsBitClear(PORT_LED4, LED4_NUMBER)
#define Led4Toggle()    {if ( IsLed4On() ) Led4Off(); else Led4On();}

#endif
