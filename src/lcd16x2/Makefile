# Makefile general para uso de la bilioteca.
# Copiar este Makefile dentro de cada proyecto y editar las opciones
# correspondientes

# TARGET es el nombre del proyecto y es el nombre que se usa para generar el
# binario
TARGET = lcd16x2

# PATH de la biblioteca
LIBCDR = ../library/

OBJECTS = $(TARGET).o
# Si hay algun otro archivo que deba compilarse debe agregarse el .o 
# correspondiente. Por ejemplo un archivo func.c que tiene funciones 
# encapsuladas, debe incluirse:
# OBJECTS += func.o
OBJECTS +=

# MMCU es el microcontralador para el target para el avr-gcc
# Para ver el listado de posibles opciones ir a:
#      http://avr-libc.nongnu.org/user-manual/index.html
# atmega8/88/88a/88p/88pa
MMCU = atmega88a

OPTIMIZATION = 2

#CLK_EXT = 18432000UL #cristal externo
#CLK_INT =  8243700UL #si se conoce con mayor precision el oscilador interno

#FUSE_DIV8 = 0 # 1 si usamos el prescaler de clock en 8. 0 sin prescaler
#FUSE_CLKEXT = 1 # 1 si usamos el clock externo. 0 si usamos el clock interno

include $(LIBCDR)/setup.mk
