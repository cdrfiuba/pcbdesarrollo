# TARGET es el nombre del proyecto
TARGET = test

# MMCU es el microcontralador para el target para el avr-gcc
# Para ver el listado de posibles opciones ir a:
#      http://avr-libc.nongnu.org/user-manual/index.html
# atmega8/88/88a/88p/88pa
MMCU = atmega88a

CLK_EXT = 18432000UL #cristal externo
CLK_INT =  8000000UL #oscilador interno cercano a 8 Mhz
# F_CPU es la frecuencia de trabajo del microcontrolador. Es la base a partir 
# de la cual se calculan los delays
# En caso de modificar los valores de los fuses, borrar la variable F_CPU y 
# descomentar las siguientes lineas
# F_CPU = 8000000UL

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
	
	# 0xD9 es el default  (pagina 223)
	# ojo con el bit 5, siempre debe ser 0 -> XX0XXXXX
	HFUSE = 0xd9
	
	# 0xE1 es el default (pagina 224) (oscilador interno de 1 Mhz) CLK = CLK_INT/8 
	# 0xE2 (oscilador interno de 2 Mhz) CLK = CLK_INT/4
	# 0xE3 (oscilador interno de 4 Mhz) CLK = CLK_INT/2
	# 0xE4 (oscilador interno de 8 Mhz) CLK = CLK_INT
	LFUSE = 0xe4

	MMCU_N = 0
else
	ifeq ($(findstring atmega88,$(MMCU)), atmega88)
		TARGET_P = m88 -F
		HFUSE = 0xDF

	 	# 0x62 es el default (oscilador interno de 1Mhz con DIV8) (pagina 301) -> FCPU = $(CLK_INT)/8
		# 0xE2 oscilador interno sin DIV8 (8 Mhz) -> FCPU = $(CLK_INT)
	 	# 0x6F cristal externo con DIV8 -> FCPU = $(CLK_EXT)
		# 0xEF cristal externo sin DIV8 -> FCPU = $(CLK_EXT)/8
		LFUSE = 0xE2
		ifndef F_CPU
			F_CPU = $(CLK_INT)
		endif
			MMCU_N = 1
	else
$(error Target no soportado)
	endif
endif

CDEFINES = -DMMCU=$(MMCU_N) -DF_CPU=$(F_CPU)

AVROBJFLAGS = -j .text -j .data

# Reglas
########

# Reglas para compilar y generar el binario para subir al target
all: hex

bin: $(SRC) $(INC)
	$(CC) $(CDEFINES) -mmcu=$(MMCU) $(CFLAGS) -o $(TARGET).bin $(SRC)
	avr-objdump -h -S $(TARGET).bin > "$(TARGET).lst"
	avr-size -d $(TARGET).bin

hex: bin
	avr-objcopy $(AVROBJFLAGS) -O ihex $(TARGET).bin $(TARGET).hex

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
	rm -rf $(TARGET).hex $(TARGET).bin $(TARGET).s $(TARGET).lst *.o
