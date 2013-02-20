#ifndef _CUBE3_H_
#define _CUBE3_H_


/* Definicion de pines */

#define PORT_C1_NAME  D
#define C1_NUM        3

#define PORT_C1       def_port_reg(PORT_C1_NAME)
#define PIN_C1        def_pin_reg(PORT_C1_NAME)
#define DDR_C1        def_ddr_reg(PORT_C1_NAME)

#define PORT_C2_NAME  C
#define C2_NUM        5

#define PORT_C2       def_port_reg(PORT_C2_NAME)
#define PIN_C2        def_pin_reg(PORT_C2_NAME)
#define DDR_C2        def_ddr_reg(PORT_C2_NAME)

#define PORT_C3_NAME  C
#define C3_NUM        4

#define PORT_C3       def_port_reg(PORT_C3_NAME)
#define PIN_C3        def_pin_reg(PORT_C3_NAME)
#define DDR_C3        def_ddr_reg(PORT_C3_NAME)

#define PORT_C4_NAME  B
#define C4_NUM        0

#define PORT_C4       def_port_reg(PORT_C4_NAME)
#define PIN_C4        def_pin_reg(PORT_C4_NAME)
#define DDR_C4        def_ddr_reg(PORT_C4_NAME)

#define PORT_C5_NAME  B
#define C5_NUM        3

#define PORT_C5       def_port_reg(PORT_C5_NAME)
#define PIN_C5        def_pin_reg(PORT_C5_NAME)
#define DDR_C5        def_ddr_reg(PORT_C5_NAME)

#define PORT_C6_NAME  C
#define C6_NUM        1

#define PORT_C6       def_port_reg(PORT_C6_NAME)
#define PIN_C6        def_pin_reg(PORT_C6_NAME)
#define DDR_C6        def_ddr_reg(PORT_C6_NAME)

#define PORT_C7_NAME  D
#define C7_NUM        5

#define PORT_C7       def_port_reg(PORT_C7_NAME)
#define PIN_C7        def_pin_reg(PORT_C7_NAME)
#define DDR_C7        def_ddr_reg(PORT_C7_NAME)

#define PORT_C8_NAME  B
#define C8_NUM        1

#define PORT_C8       def_port_reg(PORT_C8_NAME)
#define PIN_C8        def_pin_reg(PORT_C8_NAME)
#define DDR_C8        def_ddr_reg(PORT_C8_NAME)

#define PORT_C9_NAME  B
#define C9_NUM        4

#define PORT_C9       def_port_reg(PORT_C9_NAME)
#define PIN_C9        def_pin_reg(PORT_C9_NAME)
#define DDR_C9        def_ddr_reg(PORT_C9_NAME)

#define PORT_R1_NAME  D
#define R1_NUM        6

#define PORT_R1       def_port_reg(PORT_R1_NAME)
#define PIN_R1        def_pin_reg(PORT_R1_NAME)
#define DDR_R1        def_ddr_reg(PORT_R1_NAME)

#define PORT_R2_NAME  B
#define R2_NUM        2

#define PORT_R2       def_port_reg(PORT_R2_NAME)
#define PIN_R2        def_pin_reg(PORT_R2_NAME)
#define DDR_R2        def_ddr_reg(PORT_R2_NAME)

#define PORT_R3_NAME  C
#define R3_NUM        0

#define PORT_R3       def_port_reg(PORT_R3_NAME)
#define PIN_R3        def_pin_reg(PORT_R3_NAME)
#define DDR_R3        def_ddr_reg(PORT_R3_NAME)

/**********************************************/

/* Macros */

#define ColumnOn(N) ClearBit(PORT_C##N,C##N##_NUM)
#define ColumnOff(N) SetBit(PORT_C##N,C##N##_NUM)
#define RowOn(N) ClearBit(PORT_R##N,R##N##_NUM)
#define RowOff(N) SetBit(PORT_R##N,R##N##_NUM)

#endif
