# Makefile general para uso de la bilioteca.
# Copiar este Makefile dentro de cada proyecto y editar las opciones
# correspondientes

# TARGET es el nombre del proyecto y es el nombre que se usa para generar el
# binario
TARGET = lcd16x2

# PATH de la biblioteca
LIBCDR = ../library

# El archivo principal del proyecto suele llamarse main.c o target.c
# (donde target es el nombre del proyecto). Entonces debemos agregar el
# archivo objeto main.o (o target.o)a
OBJECTS = main.o
# Ademas, todos los archivos *.c que deban compilarse deben incluirse 
# como *.o. Por ejemplo un archivo func.c que tiene funciones encapsuladas,
# debe incluirse como:
# OBJECTS += func.o
OBJECTS += lcd16x2.o

##############################################################################
# Los siguientes parametros puede definirse en forma particular para este
# proyecto o pueden definirse en forma general el archivo config.mk
# La definicion particular para cada proyecto solo predomina frente a la 
# general, cuando se compila ese proyecto en particular

# MMCU es el microcontralador para el target para el avr-gcc
# Para ver el listado de posibles opciones ir a:
#      http://avr-libc.nongnu.org/user-manual/index.html
# atmega8/88/88a/88p/88pa
#MMCU = atmega88a

# Nivel de aptimizacion
#OPTIMIZATION = 2

# Modificacion de las frecuencias de los cristales
#CLK_EXT = 18432000UL #cristal externo
#CLK_INT =  8243700UL #si se conoce con mayor precision el oscilador interno

# Opciones generales
#FUSE_DIV8 = 0 # 1 si usamos el prescaler de clock en 8. 0 sin prescaler
#FUSE_CLKEXT = 1 # 1 si usamos el clock externo. 0 si usamos el clock interno
##############################################################################
include $(LIBCDR)/setup.mk
