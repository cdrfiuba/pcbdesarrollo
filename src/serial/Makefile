CLK = 8000000UL

# TARGET es el nombre del proyecto
TARGET = serial

# MMCU es el microcontralador para el target para el avr-gcc
# Para ver el listado de posibles opciones hacer:
#      avrdude -p ?
MMCU = atmega88pa

# TARGET_P es el microcontrolador para el target del programador
# Para el Atemga8: m8
# Para ver el listado de posibles opciones ir a:
#      http://avr-libc.nongnu.org/user-manual/index.html
TARGET_P = m88pa

# HFUSE 
# Para el Atmega8 0xD9 es el default  (pagina 223)
HFUSE = 0xDF

# LFUSE
# Para el Atemega8:  (pagina 224)
# 0xE1 es el default, con oscilador interno de 1Mhz
# 0xE4 es el default + oscilador interno de 8Mhz
LFUSE = 0xE2

# Flags de optimizacion '-Os' tamaño '-O3' velocidad '-O0
# Si se deja -O vacio ¿elije el compilador?
CFLAGS = -O -Wall

CDEFINES = -DF_CPU=$(CLK)

CLDFLAGS = 

AVROBJFLAGS = -j .text -j .data

all: hex


hex: main.o usart.o
	avr-gcc $(CFLAGS) $(CDEFINES) $(CLDFLAGS) -mmcu=$(MMCU) -o $(TARGET).bin main.o usart.o
	avr-objcopy $(AVROBJFLAGS) -O ihex  $(TARGET).bin $(TARGET).hex

main.o: main.c
	avr-gcc $(CFLAGS) $(CDEFINES) $(CLDFLAGS) -mmcu=$(MMCU) -c -o main.o main.c  

usart.o: usart.c usart.h
	avr-gcc $(CFLAGS) $(CDEFINES) $(CLDFLAGS) -mmcu=$(MMCU) -c -o usart.o usart.c

program: hex
	avrdude -c usbtiny -p $(TARGET_P) -U flash:w:$(TARGET).hex:i

fuses:
	avrdude -c usbtiny -p $(TARGET_P) -U hfuse:w:$(HFUSE):m -U lfuse:w:$(LFUSE):m

clean:
	rm -rf $(TARGET).hex $(TARGET).bin $(TARGET).s *.o
