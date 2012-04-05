#include "board.h"
//#include "comm.h"
#include <avr/pgmspace.h>

char hola[] PROGMEM = "hola mundo!\n";

void startup (void) {
    // Cambio la frecuencia del micro a 8MHz
    //CLKPR = (1<<CLKPCE);    // Necesario para poder cambiar el prescaler.
    //CLKPR = 0;              // 8 MHZ
    //_delay_ms(10);          // espero para que se estabilice el clock.

    // Iniciamos y apagamos los LEDs
    Led1Init();
    Led1Off();
    Led2Init();
    Led2Off();
    Led3Init();
    Led3Off();
    Led4Init();
    Led4Off();

    // USART
    //usart_init();
    //usart_pin_init();
}

int main (void) {
    /*uint8_t i;
    char buffer[12];
    */

    // Iniciamos los periféricos
    startup();
    
    /*
    // Levanto de memoria el mensaje
    for (i=0; i<12; i++) {
        buffer[i] = pgm_read_byte( &hola[i] );
    }
    */
    
    // Bucle infinito
    while(1) {
        Led1Toggle();
        Led3Toggle();
        _delay_ms(250);
        Led2Toggle();
        Led4Toggle();
        _delay_ms(250);
        // DEBUG 1: un caracter
        //usart_putchar(0xA5);
        // DEBUG 2: mando lo que recibo
        //i = usart_getchar();
        //usart_putchar(i);
        // DEBUG 3: mando un mensaje de bienvenida
        //usart_send_buffer(12, buffer);
    }
}
