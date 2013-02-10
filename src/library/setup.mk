CC = avr-gcc
LD = avr-g++
AR = avr-ar
OBJDUMP = avr-objdump
OBJCOPY = avr-objcopy
SIZE = avr-size

include $(LIBCDR)/clkdef.mk
include $(LIBCDR)/target.mk

CDEFINES =
CDEFINES += -DF_CPU=$(CLK)
CDEFINES += -mmcu=$(MMCU)
CDEFINES += -DMMCUN=$(MMCU_N)

OPTIMIZATION ?= 2
# Flags de compilacion
CFLAGS =
# Optimizacion '-Os' tamaño '-O3' velocidad. Con -O vacio el compilador elige '-01'
CFLAGS += -O$(OPTIMIZATION)
# Agrega informacion de debug al lst
CFLAGS += -g
# All warnings
CFLAGS += -Wall

#CFLAGS += -MD -MP -MT $(*F).o -MF dep/$(@F).d 

CLDFLAGS =

AVROBJFLAGS =
AVROBJFLAGS += -O binary
AVROBJFLAGS += -j .text
AVROBJFLAGS += -j .data

LIBINCLUDE = $(LIBCDR)

COMMON_OBJECTS = usart.o adc.o
COMMON_OBJECTS := $(addprefix $(LIBCDR)/, $(COMMON_OBJECTS))

HEXFLASHFLAGS = -R .eeprom -R .fuse -R .lock -R .signature

# Reglas
########

# Reglas para compilar y generar el binario para subir al target
all: hex

elf: $(OBJECTS) libcdr.a
	@echo "Clock = $(CLK) | Lfuse = $(LFUSE) | Hfuse = $(HFUSE)"
	$(CC) $(CLDFLAGS) $(OBJECTS) -o $(TARGET).elf -L$(LIBINCLUDE) -lcdr 
	$(OBJDUMP) -h -S $(TARGET).elf > $(TARGET).lst
	$(SIZE) -d $(TARGET).elf

bin: elf
	$(OBJCOPY) $(AVROBJFLAGS) $(TARGET).elf $(TARGET).bin
	#$(SIZE) -d $(TARGET).bin

hex: bin
	$(OBJCOPY) $(HEXFLASHFLAGS) -O ihex $(TARGET).elf $(TARGET).hex

libcdr.a: $(COMMON_OBJECTS)
	$(AR) -rcs $(LIBCDR)/libcdr.a $(COMMON_OBJECTS)
	$(OBJDUMP) -h -S $(LIBCDR)/libcdr.a >$(LIBCDR)/libcdr.lss

#########################################################################
#  Default rules to compile .c and .cpp file to .o
#  assemble .s files to .o
#  .c or .cpp files to .s

.c.o:
	$(CC) $(CFLAGS) $(CDEFINES) -I$(LIBINCLUDE) -c $< -o $(<:.c=.o)

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
	rm -rf $(TARGET).bin 
	rm -rf $(TARGET).lst 
	rm -rf $(TARGET).hex
	rm -rf $(TARGET).elf
	rm -rf *.o 
	rm -rf hfuse.hex lfuse.hex 
	rm -rf $(COMMON_OBJECTS)
	rm -rf $(OBJECTS)
	rm -rf $(LIBCDR)/libcdr.a
	rm -rf $(LIBCDR)/libcdr.lss

.PHONY: clean eeprom_read eeprom_write fuse fuses_read program program_dw

