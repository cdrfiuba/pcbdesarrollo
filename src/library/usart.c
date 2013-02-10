#include <avr/io.h>
#include <avr/interrupt.h>
#include "usart.h"


#define TX_MASK		(TX_BUFF_SIZE-1)
#define RX_MASK		(RX_BUFF_SIZE-1)


/* =================================================== */
/* Buffers de transmision y recepcion                  */
/* =================================================== */
volatile unsigned char tx_buff[TX_BUFF_SIZE];
volatile unsigned char rx_buff[RX_BUFF_SIZE];
/* =================================================== */

/* =================================================== */
/* Indices de los buffers                              */
/* =================================================== */
volatile unsigned char tx_in;
volatile unsigned char tx_out;		

volatile unsigned char rx_in;
volatile unsigned char rx_out;
/* =================================================== */


void USART0Setup() {

	UCSR0B |= (1<<RXEN0) | (1<<TXEN0); // activamos la recepcion y transmision en el USART0

	UBRR0 = BAUD_PRESCALER(USART0_BAUDRATE); // seteamos el prescaler del baudrate
	
	UCSR0C |= (USART0_MODE<<UMSEL00); // seteamos el modo de operacion syncronico o asyncronico

	UCSR0C |= (USART0_PARITY<<UPM00); // seteamos la cantidad de bits de paridad que vamos a usar

	UCSR0C |= (USART0_STOP_BIT<<USBS0); // seteamos la cantidad de bits de parada que vamos a usar

	UCSR0C |= (USART0_CHARSIZE<<UCSZ00);
#ifdef USART0_INTERRUPT
    UCSR0B |= (1<<RXCIE0) | (1<<UDRIE0);
    sei();
#endif
}

unsigned char USART0Receive(void){
#ifdef USART0_INTERRUPT
    unsigned char c;
    while(USART0RXBuffLen() == 0)
        ;
    c = rx_buff[rx_out & RX_MASK];
    rx_out++; 
    return (c); // si hay info retorno el dato
#else
	while (!(UCSR0A & (1<<RXC0)))
		;
    return UDR0;
#endif
}

void USART0Transmit(char c){
#ifdef USART0_INTERRUPT
    while((TX_BUFF_SIZE - USART0TXBuffLen()) <= 2)
        ;// si el buffer esta lleno espero a que la interrupcion libere espacio
    tx_buff[tx_in & TX_MASK] = c;
    tx_in++;
    UCSR0B |= (1<<UDRIE0); //habilito la interrupcion
#else
	while (!(UCSR0A & (1<<UDRE0)))
        ; 
	UDR0 = c;
#endif
}

void USART0Puts(char *string){
	while (*string)
		USART0Transmit(*string++);
}

void USART0PutsP(char *string){
    char b;

    while ((b = pgm_read_byte(string++)) != 0)
        USART0Transmit(b);
}

#ifdef USART0_INTERRUPT
unsigned char USART0TXBuffLen(void){
    return(tx_in - tx_out);
}

unsigned char USART0RXBuffLen(void){
    return(rx_in - rx_out);
}

ISR(USART_UDRE_vect){ // Vector de interrupcion cuando se vacia el registro de transmision
	if(tx_in != tx_out) { // si el buffer tiene datos los mando por serie
		UDR0 = tx_buff[tx_out & TX_MASK];
		tx_out++; // incremento la salida
	}
	else {
		UCSR0B &= ~(1<<UDRIE0);  // si el buffer esta vacio apago la interrupcion
	}
}

ISR(USART_RX_vect){ // Vector de interrupcion cuando se recibe un dato
	unsigned char c;

	c = UDR0;	// Obtenemos el dato
	rx_buff[rx_in & RX_MASK] = c;	// y lo metemos en el buffer
	rx_in++;	// incrementamos la entrada
}

#endif
