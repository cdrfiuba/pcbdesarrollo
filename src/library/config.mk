# MMCU es el microcontralador para el target para el avr-gcc
# Para ver el listado de posibles opciones ir a:
#      http://avr-libc.nongnu.org/user-manual/index.html
# atmega8/88/88a/88p/88pa
MMCU ?= atmega88pa

OPTIMIZATION ?= 2

# Se puede definir los siguientes parametros, quedando bajo la responsabilidad
# del usuario
#CLK = 18432001UL
#HFUSE = 0x95
#LFUSE = 0x54
#TARGET_P = m889

# o dejar que el Makefile haga la magia
# se deben definir todos
CLK_EXT ?= 18432000UL #cristal externo
CLK_EXT_8 ?= 2304000UL #cristal externo
#CLK_EXT = 12288000UL #cristal externo (PCB original)
#CLK_EXT_8 = 1536000UL #cristal externo (PCB original)

#CLK_INT =  8000000UL #oscilador interno cercano a 8 Mhz
#CLK_INT_8 =  1000000UL #oscilador interno cercano a 8 Mhz
CLK_INT ?=  8243700UL #si se conoce con mayor precision el oscilador interno
CLK_INT_8 ?=  1030462UL #si se conoce con mayor precision el oscilador interno

FUSE_DIV8 ?= 0 # 1 si usamos el prescaler de clock en 8. 0 sin prescaler
FUSE_CLKEXT ?= 1 # 1 si usamos el clock externo. 0 si usamos el clock interno
