#include <avr/io.h>
#include <util/delay.h>
#include "usart.h"


int main(void){
    DDRC |= (1<<PC3);

    USART0Setup();

    while(1){
        USART0PutsP(PSTR("Hello PC!!!!\n"));
        _delay_ms(500);
        PORTC |= (1<<PC3);
        _delay_ms(500);
        PORTC &= ~(1<<PC3);
    }
}
