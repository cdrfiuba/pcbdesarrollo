#ifndef _BOARD_H_
#define _BOARD_H_

#include <avr/io.h>
#include "defs.h"

/* Definiciones de Pines */

/*
    LED1
    PORT C.3
*/
#define PORT_LED1_NAME      C
#define LED1_NUMBER         3

#define PORT_LED1       def_port_reg(PORT_LED1_NAME)
#define PIN_LED1        def_pin_reg(PORT_LED1_NAME)
#define DDR_LED1        def_ddr_reg(PORT_LED1_NAME)

/*
    LED2
    PORT C.2
*/
#define PORT_LED2_NAME      C
#define LED2_NUMBER         2

#define PORT_LED2       def_port_reg(PORT_LED2_NAME)
#define PIN_LED2        def_pin_reg(PORT_LED2_NAME)
#define DDR_LED2        def_ddr_reg(PORT_LED2_NAME)

/*
    LED3
    PORT D.7
*/
#define PORT_LED3_NAME      D
#define LED3_NUMBER         7

#define PORT_LED3       def_port_reg(PORT_LED3_NAME)
#define PIN_LED3        def_pin_reg(PORT_LED3_NAME)
#define DDR_LED3        def_ddr_reg(PORT_LED3_NAME)

/*
    LED4
    PORT D.4
*/
#define PORT_LED4_NAME      D
#define LED4_NUMBER         4

#define PORT_LED4       def_port_reg(PORT_LED4_NAME)
#define PIN_LED4        def_pin_reg(PORT_LED4_NAME)
#define DDR_LED4        def_ddr_reg(PORT_LED4_NAME)

/*
    INTERRUPCION 0 (BOTON DE USUARIO)
    PORT D.2

*/
#define PORT_USER_BUTTON_NAME      D
#define USER_BUTTON_NUMBER         2

#define PORT_USER_BUTTON       def_port_reg(PORT_USER_BUTTON_NAME)
#define PIN_USER_BUTTON        def_pin_reg(PORT_USER_BUTTON_NAME)
#define DDR_USER_BUTTON        def_ddr_reg(PORT_USER_BUTTON_NAME)


/*
    LDR
    PORT C.0

*/
#define PORT_LDR_NAME   C
#define LDR_NUMBER      0
#define LDRADCCH        0

#define PORT_LDR       def_port_reg(PORT_LDR_NAME)
#define PIN_LDR        def_pin_reg(PORT_LDR_NAME)
#define DDR_LDR        def_ddr_reg(PORT_LDR_NAME)


/* Definiciones de Funciones */

// LED1
#define Led1Init()      SetBit(DDR_LED1, LED1_NUMBER)
#define Led1On()        ClearBit(PORT_LED1, LED1_NUMBER)
#define Led1Off()       SetBit(PORT_LED1, LED1_NUMBER)
#define IsLed1On()      IsBitClear(PORT_LED1, LED1_NUMBER)
#define Led1Toggle()    {if ( IsLed1On() ) Led1Off(); else Led1On();}
//#define Led1Toggle()    SetBit(PIN_LED1, LED1_NUMBER)

// LED2
#define Led2Init()      SetBit(DDR_LED2, LED2_NUMBER)
#define Led2On()        ClearBit(PORT_LED2, LED2_NUMBER)
#define Led2Off()       SetBit(PORT_LED2, LED2_NUMBER)
#define IsLed2On()      IsBitClear(PORT_LED2, LED2_NUMBER)
#define Led2Toggle()    {if ( IsLed2On() ) Led2Off(); else Led2On();}
//#define Led2Toggle()    SetBit(PIN_LED2, LED2_NUMBER)

// LED3
#define Led3Init()      SetBit(DDR_LED3, LED3_NUMBER)
#define Led3On()        ClearBit(PORT_LED3, LED3_NUMBER)
#define Led3Off()       SetBit(PORT_LED3, LED3_NUMBER)
#define IsLed3On()      IsBitClear(PORT_LED3, LED3_NUMBER)
#define Led3Toggle()    {if ( IsLed3On() ) Led3Off(); else Led3On();}
//#define Led3Toggle()    SetBit(PIN_LED3, LED3_NUMBER)

// LED4
#define Led4Init()      SetBit(DDR_LED4, LED4_NUMBER)
#define Led4On()        ClearBit(PORT_LED4, LED4_NUMBER)
#define Led4Off()       SetBit(PORT_LED4, LED4_NUMBER)
#define IsLed4On()      IsBitClear(PORT_LED4, LED4_NUMBER)
#define Led4Toggle()    {if ( IsLed4On() ) Led4Off(); else Led4On();}
//#define Led4Toggle()    SetBit(PIN_LED4, LED4_NUMBER)

// BOTON
#define BotonPullUp()   SetBit(PORT_USER_BUTTON, USER_BUTTON_NUMBER)
#define BotonInit()     ClearBit(DDR_USER_BUTTON, USER_BUTTON_NUMBER)
#define IsBotonPush()   IsBitClear(PORT_USER_BUTTON, USER_BUTTON_NUMBER)

#endif
