#ifndef __COMM_H__
#define __COMM_H__

// Constantes de tiempo
#define CPU_CLOCK           F_CPU
#define USART_BAUDRATE      9600

// Constante para la USART
#ifdef USART_DOUBLE_RATE
#define UBRR_USART          (CPU_CLOCK/8/USART_BAUDRATE)-1
#else
#define UBRR_USART          (CPU_CLOCK/16/USART_BAUDRATE)-1
#endif

#define PORT_URX_NAME       D
#define URX_NUMBER          0
#define PORT_UTX_NAME       D
#define UTX_NUMBER          1

#define PORT_URX        def_port_reg(PORT_URX_NAME)
#define PIN_URX         def_pin_reg(PORT_URX_NAME)
#define DDR_URX         def_ddr_reg(PORT_URX_NAME)
#define PORT_UTX        def_port_reg(PORT_UTX_NAME)
#define PIN_UTX         def_pin_reg(PORT_UTX_NAME)
#define DDR_UTX         def_ddr_reg(PORT_UTX_NAME)

//-------- Prototipos --------
void usart_init (void);
void usart_pin_init (void);
inline void timeout_timer_usart_start(void);
inline void timeout_timer_usart_stop(void);
void usart_putchar( uint8_t data );
void usart_send_buffer(uint8_t length, uint8_t buffer[]);
unsigned char usart_getchar (void);

#endif
