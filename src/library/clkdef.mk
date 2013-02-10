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

# F_CPU es la frecuencia de trabajo del microcontrolador.
# Es la base a partir de la cual se calculan los delays.

ifeq ($(MMCU), atmega8)
	# 0xD9 es el default  (pagina 223)
	# ojo con el bit 5, siempre debe ser 0 -> XX0XXXXX
	HFUSE = 0xD9

	# (pagina 224)
	# 0xE1 es el default (oscilador interno de 1 Mhz) CLK = CLK_INT/8
	# 0xE2 (oscilador interno de 2 Mhz) CLK = CLK_INT/4
	# 0xE3 (oscilador interno de 4 Mhz) CLK = CLK_INT/2
	# 0xE4 (oscilador interno de 8 Mhz) CLK = CLK_INT
	LFUSE = 0xE4

	CLK = CLK_INT

else ifeq ($(findstring atmega88,$(MMCU)), atmega88)
 	# 0xDF es el default  (pagina 299)
 	# ojo con el bit 5, siempre debe ser 0 -> XX0XXXXX
 	HFUSE = 0xDF
 
 	# 0x62 es el default (con oscilador interno de 1Mhz) (pagina 301)
 	# 0x6F cristal externo con DIV8
 	# 0xE2 oscilador interno sin DIV8 (8 Mhz)
	# 0xEF cristal externo sin DIV8
	ifeq ($(strip $(FUSE_DIV8)),1)
		ifeq ($(strip $(FUSE_CLKEXT)),0)
 			LFUSE = 0x62
 			CLK = $(CLK_INT_8)
 		else
 			LFUSE = 0x6F
 			CLK = $(CLK_EXT_8)
 		endif
 	else
		ifeq ($(strip $(FUSE_CLKEXT)),0)
 			LFUSE = 0xE2
 			CLK = $(CLK_INT)
 		else
 			LFUSE = 0xEF
 			CLK = $(CLK_EXT)
 		endif
 	endif
else
$(error Target $(MMCU) no soportado)
endif

