#include "board.h"
#include <avr/pgmspace.h>
//#include "usart.h"
#include "adc.h"
//#include "comm.h"

//char hola[] PROGMEM = "hola mundo!\n";

void startup (void) {

//# ================== Prueba serie ================== #

// Cambio la frecuencia del micro a 8MHz
    //CLKPR = (1<<CLKPCE);    // Necesario para poder cambiar el prescaler.
    //CLKPR = 0;              // 8 MHZ
    //_delay_ms(10);          // espero para que se estabilice el clock.

    // USART
    //usart_init();
    //usart_pin_init();

//# ================================================== #

    //Variables del ADC
    char prescaler = 6;
    char channel = 0;
    
    ADCSetup(prescaler, channel);

    // Iniciamos y apagamos los LEDs
    Led1Init();
    Led1Off();
    Led2Init();
    Led2Off();
    Led3Init();
    Led3Off();
    Led4Init();
    Led4Off();

    ADCInitConvertion();
    _delay_ms(2);
    
 //   USART0Setup(USART_BAUDRATE, USART0_CHARSIZE_8BIT, USART0_STOP_1BIT, USART0_PARITY_DIS, USART0_MODE_ASYNC);

    sei();

}

volatile uint8_t light_level;

int main (void) {

// Prueba puerto serie:
   
/*  uint8_t i;
    char buffer[12];

    // Levanto de memoria el mensaje
    for (i=0; i<12; i++) {
        buffer[i] = pgm_read_byte( &hola[i] );
    }
*/
// ===================== //

 
    light_level = 0; 

   

    // Iniciamos los periféricos
    startup();
    
  
    
    // Bucle infinito
    while(1) {

        //USART0Puts("Hola Mundo\n");

        
 /*       Led1Toggle();
        Led3Toggle();
        _delay_ms(250);
        Led2Toggle();
        Led4Toggle();
        _delay_ms(250);*/
 
       // DEBUG 1: un caracter
        //usart_putchar(0xA5);
        // DEBUG 2: mando lo que recibo
        //i = usart_getchar();
        //usart_putchar(i);
        // DEBUG 3: mando un mensaje de bienvenida
        //usart_send_buffer(12, buffer);
    }
}

//# ====== INTERRUPCIONES ====== #

ISR(ADC_vect)
{
    //ADC es el registro que guarda automaticamente la nueva lectura:
    light_level = ADC;
    ADCInitConvertion();  
    


}

