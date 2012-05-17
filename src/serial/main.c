#include <avr/io.h>
#define F_CPU 8000000UL
#include "usart.h"


int main(void){

    USART0Setup(USART_BAUDRATE, USART0_CHARSIZE_8BIT, USART0_STOP_1BIT, USART0_PARITY_DIS, USART0_MODE_ASYNC);

    while(1){
        USART0PutsP(PSTR("Hello PC!!!!\n"));
    }
}
