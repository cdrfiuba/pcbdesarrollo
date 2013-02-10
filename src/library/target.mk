# TARGET_P es el microcontrolador para el target del programador
# Para ver el listado de posibles opciones hacer:
#      avrdude -p ?
STRIPMMCU = $(strip $(MMCU))
ifeq ($(STRIPMMCU), atmega8)
	MMCU_N = 0
	TARGET_P = m8
else ifeq ($(findstring atmega88,$(STRIPMMCU)), atmega88)
 	MMCU_N = 1
	ifeq ($(STRIPMMCU), atmega88) 
 		TARGET_P = m88
	else ifeq ($(STRIPMMCU), atmega88a) 
 		TARGET_P = m88
	else ifeq ($(STRIPMMCU), atmega88p) 
 		TARGET_P = m88
	else ifeq ($(STRIPMMCU), atmega88pa)
		TARGET_P = m88pa
	else
$(error Target $(MMCU) no soportado)
 	endif
else
$(error Target $(MMCU) no soportado)
endif

