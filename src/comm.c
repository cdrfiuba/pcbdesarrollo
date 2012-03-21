#include "board.h"
#include "comm.h"

/********************************************************************
 * Funciones de comunicacion - USART
********************************************************************/
void usart_init (void) {
	UBRR0H = (uint8_t)(UBRR_USART>>8);
	UBRR0L = (uint8_t)UBRR_USART;
	#ifdef USART_DOUBLE_RATE
	UCSR0A |= (1<<U2X);
	#endif
	/* Enable receiver and transmitter. IRQ Receive Complete. */
	UCSR0B = (1<<RXEN0)|(1<<TXEN0)|(1<<RXCIE0);
	/* Set frame format: 8data, 2stop bit */
	/* Creo que para poner 2 stop bit hay que poner USBS en 1 */
	UCSR0C = (1<<USBS0)|(3<<UCSZ00);
}

void usart_pin_init (void) {
	// PIN PD0 Rx, PIN PD1 Tx 
	DDR_URX &=~ _BV(URX_NUMBER);
	DDR_UTX |= _BV(UTX_NUMBER);
	PORT_URX |= _BV(URX_NUMBER);
	PORT_UTX |= _BV(UTX_NUMBER);
}

void usart_putchar( uint8_t data ) {
    /* Wait for empty transmit buffer */
    while ( !( UCSR0A & (1<<UDRE0)) );
    /* Put data into buffer, sends the data */
    UDR0 = data;
}

void usart_send_buffer(uint8_t length, uint8_t buffer[]) {
	uint8_t i;
	for (i=0; i<length; i++) usart_putchar(buffer[i]);
	while ( !(UCSR0A&(1<<TXC0)));
	// Limpio el TXC0.
	SetBit(UCSR0A, TXC0);
}

unsigned char usart_getchar (void) {
    /* Wait for data to be received */
    while ( !(UCSR0A & (1<<RXC0)) );
    /* Get and return received data from buffer */
    return UDR0;
}
