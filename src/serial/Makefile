#CLK = 8000000UL
CLK = 18432000UL
#CLK = 2304000UL

# TARGET es el nombre del proyecto
TARGET = serial

# MMCU es el microcontralador para el target para el avr-gcc
# Para ver el listado de posibles opciones hacer:
#      avrdude -p ?
TARGET_P = m88

# TARGET_P es el microcontrolador para el target del programador
# Para el Atemga8: m8
# Para ver el listado de posibles opciones ir a:
#      http://avr-libc.nongnu.org/user-manual/index.html
MMCU = atmega88a

# HFUSE 
# Para el Atmega8 0xD9 es el default  (pagina 223)
# Para el Atmega88 0xDF es el default  (pagina 299)
# ojo con el bit 5, siempre debe ser 0 -> XX0XXXXX
HFUSE = 0xDF

# LFUSE
# Para el Atemega8:  (pagina 224)
# 	0xE1 es el default, con oscilador interno de 1Mhz
# 	0xE4 es el default + oscilador interno de 8Mhz
# Para el Atemega88:  (pagina 301)
# 	0x62 es el default, con oscilador interno de 1Mhz
# 	0xE2 es el default + oscilador interno de 8Mhz
# 	0x6F cristal externo con DIV8
# 	0xEF cristal externo sin prescaler
LFUSE = 0xEF

SRC = main.c usart.c
INC = usart.h

# Flags de optimizacion '-Os' tamaño '-O3' velocidad '-O0
# Si se deja -O vacio ¿elije el compilador?
CFLAGS = -O2 -Wall

CDEFINES = -DF_CPU=$(CLK)

CLDFLAGS = 

AVROBJFLAGS = -j .text -j .data

all: hex


hex: main.c usart.c
	avr-gcc $(CFLAGS) $(CDEFINES) $(CLDFLAGS) -mmcu=$(MMCU) -o $(TARGET).bin $(SRC)
	avr-objcopy $(AVROBJFLAGS) -O ihex $(TARGET).bin $(TARGET).hex
	avr-objdump -h -S $(TARGET).bin > "$(TARGET).lst"
	avr-size -d $(TARGET).bin

program: hex
	avrdude -c usbtiny -p $(TARGET_P) -U flash:w:$(TARGET).hex:i

fuses:
	avrdude -c usbtiny -p $(TARGET_P) -U hfuse:w:$(HFUSE):m -U lfuse:w:$(LFUSE):m

clean:
	rm -rf $(TARGET).hex $(TARGET).bin $(TARGET).s $(TARGET).lst *.o
