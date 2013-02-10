# Makefile simple para compilar sin usar la bilbioteca cdr

# TARGET es el nombre del proyecto y es el nombre que se usa para generar el
# binario
TARGET = blinky

SRC = blinky.c
INC = 

LIBCDR = ../library

# MMCU es el microcontralador para el target para el avr-gcc
# Para ver el listado de posibles opciones ir a:
#      http://avr-libc.nongnu.org/user-manual/index.html
# atmega8/88/88a/88p/88pa
MMCU = atmega88a

# TARGET_P es el microcontrolador para el target del programador
# Para ver el listado de posibles opciones hacer:
# Para el Atemga8: m8
# Para el Atemga88/88a/88p/88pa: m88
#      avrdude -p ?
TARGET_P = m88

# HFUSE 
# Para el Atmega8 0xD9 es el default  (pagina 223)
# Para el Atmega88 0xDF es el default  (pagina 299)
# ojo con el bit 5, siempre debe ser 0 -> XX0XXXXX
HFUSE = 0xDF

# LFUSE
# Para el Atemega8:  (pagina 224)
# 	0xE1 es el default (oscilador interno de 1 Mhz)
# 	0xE2 (oscilador interno de 2 Mhz)
# 	0xE3 (oscilador interno de 4 Mhz)
# 	0xE4 (oscilador interno de 8 Mhz)
# Para el Atemega88:  (pagina 301)
# 	0x62 es el default, con oscilador interno de 1Mhz
# 	0xE2 oscilador interno de 8Mhz
# 	0x6F cristal externo con DIV8
# 	0xEF cristal externo sin prescaler
LFUSE = 0xEF

# F_CPU es la frecuencia de trabajo del microcontrolador.
# Es la base a partir de la cual se calculan los delays.

#CLK = 8000000UL   # 8 Mhz interno
#CLK = 1000000UL   # 1 Mhz interno
CLK = 18432000UL  # cristal externo
#CLK = 2304000UL   # cristal externo / 8

OPTIMIZATION = 2

CDEFINES =
CDEFINES += -DF_CPU=$(CLK)
CDEFINES += -mmcu=$(MMCU)
CDEFINES += -DMMCUN=$(MMCU_N)

# Flags de compilacion
CFLAGS =
# Optimizacion '-Os' tamaño '-O3' velocidad. Con -O vacio el compilador elige '-01'
CFLAGS += -O$(OPTIMIZATION)
# Agrega informacion de debug al lst
CFLAGS += -g
# All warnings
CFLAGS += -Wall

AVROBJFLAGS =
AVROBJFLAGS += -j .text
AVROBJFLAGS += -j .data


INCLUDES = $(LIBCDR)

# Reglas
########

# Reglas para compilar y generar el binario para subir al target
all: hex

elf: $(SRSC) $(INC)
	@echo "Clock = $(CLK) | Lfuse = $(LFUSE) | Hfuse = $(HFUSE)"
	avr-gcc $(CFLAGS) $(CDEFINES) -o $(TARGET).elf $(SRC) -I$(INCLUDES)
	avr-objdump -h -S $(TARGET).elf > $(TARGET).lst
	avr-size -d $(TARGET).elf

hex: elf
	avr-objcopy $(AVROBJFLAGS) -O ihex $(TARGET).elf $(TARGET).hex

# Reglas para programar el target
program: hex
	avrdude -c usbtiny -p $(TARGET_P) -U f:w:$(TARGET).hex

program_dw: bin
	avarice -w -j usb --erase --program --file $(TARGET).bin

fuse:
	avrdude -c usbtiny -p $(TARGET_P) -U lfuse:w:$(LFUSE):m -U hfuse:w:$(HFUSE):m

fuses_read:
	@ avrdude -c usbtiny -p $(TARGET_P) -U hfuse:r:hfuse.hex:h -U lfuse:r:lfuse.hex:h
#	@ avrdude -c usbtiny -p $(TARGET_P) -U efuse:r:efuse.hex:h
	@ echo "HFuse = "
	@ cat hfuse.hex
	@ echo "LFuse = " 
	@ cat lfuse.hex
#	@ echo "EFuse = "
#	@ cat efuse.hex

eeprom_read:
	avrdude -c usbtiny -p $(TARGET_P) -U eeprom:r:eeprom.hex:r

eeprom_write:
	avrdude -c usbtiny -p $(TARGET_P) -U eeprom:w:eeprom.hex:r

clean:
	rm -rf $(TARGET).lst 
	rm -rf $(TARGET).hex
	rm -rf $(TARGET).elf
	rm -rf *.o 
	rm -rf hfuse.hex lfuse.hex 

.PHONY: clean eeprom_read eeprom_write fuse fuses_read program program_dw
