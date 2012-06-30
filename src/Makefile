# TARGET es el nombre del proyecto
TARGET = test

MMCU = atmega88

# Esta es la frecuencia de trabajo del microcontrolador. Es la base a partir 
# de la cual se calculan los delays
F_CPU = 8000000UL

CC = avr-gcc

# Flags de optimizacion '-Os' tamaño '-O3' velocidad
# Si se deja -O vacio el compilador elige '-01'
CFLAGS = -O2 -g

# Las siguiente dos lineas agregan todos los archivos que se encuentran en el
# directorio local, de extension .c y .h, en las correspondientes variables.
# Utilizarlas si se desea compilar todos los archivos fuentes.
SRC = $(shell ls *.c)
INC = $(shell ls *.h)
# Como segunda opcion, se pueden agregar a mano solo los archivos que se desean
# compilar
#SRC = test.c adc.c comm.c
#INC = defs.h board.h adc.h comm.h

ifeq ($(MMCU), atmega8)
	TARGET_P = m8
	HFUSE = 0xd9
	LFUSE = 0xe4
	MMCU_N = 0
else
ifeq ($(MMCU), atmega88)
	TARGET_P = m88 -F
	HFUSE = 0xDF
	LFUSE = 0xE2
	MMCU_N = 1
else
	$(error Target no soportado)
endif
endif

CDEFINES = -DMMCU=$(MMCU_N) -DF_CPU=$(F_CPU)

# Reglas
########

# Reglas para compilar y generar el binario para subir al target
all: hex

bin: $(SRC) $(INC)
	$(CC) $(CDEFINES) -mmcu=$(MMCU) $(CFLAGS) -o $(TARGET).bin $(SRC)
	avr-objdump -h -S $(TARGET).bin > "$(TARGET).lst"
	avr-size -d $(TARGET).bin

hex: bin
	avr-objcopy -j .text -j .data -O ihex $(TARGET).bin $(TARGET).hex

asm: $(SRC) $(INC)
	$(CC) $(CDEFINES) -mmcu=$(MMCU) $(CFLAGS) -S -o $(TARGET).s $<

# Reglas para programar el target
program: hex
	avrdude -c usbtiny -p $(TARGET_P) -U f:w:$(TARGET).hex

program_dw: bin
	avarice -w -j usb --erase --program --file $(TARGET).bin

fuse:
	avrdude -c usbtiny -p $(TARGET_P) -U lfuse:w:$(LFUSE):m -U hfuse:w:$(HFUSE):m

clean:
	rm -rf $(TARGET).hex $(TARGET).bin $(TARGET).s $(TARGET).lst
