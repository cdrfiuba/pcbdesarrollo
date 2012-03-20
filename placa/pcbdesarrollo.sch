EESchema Schematic File Version 2  date Tue 20 Mar 2012 01:14:58 ART
LIBS:HT7133
LIBS:7805fix
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:avr_atmega88
LIBS:pcbdesarrollo-cache
EELAYER 25  0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Placa de desarrollo para AVR"
Date ""
Rev "1.0"
Comp "Club de Robótica - Facultad de Ingeniería - UBA"
Comment1 "Patricio Tula - Ernesto Corbellini - Ariel Burman"
Comment2 "Tomás Gonzalez - Lucas Chiesa"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 7805FIX U3
U 1 1 4F656A29
P 1850 1100
F 0 "U3" H 1950 1050 60  0000 C CNN
F 1 "7805FIX" H 1850 1250 60  0000 C CNN
	1    1850 1100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR01
U 1 1 4F6568F4
P 1800 1950
F 0 "#PWR01" H 1800 1910 30  0001 C CNN
F 1 "+3.3V" H 1800 2060 30  0000 C CNN
	1    1800 1950
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR02
U 1 1 4F6568E0
P 1350 2350
F 0 "#PWR02" H 1350 2450 30  0001 C CNN
F 1 "VDD" H 1350 2460 30  0000 C CNN
	1    1350 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 4F65686D
P 800 2550
F 0 "#PWR03" H 800 2550 30  0001 C CNN
F 1 "GND" H 800 2480 30  0001 C CNN
	1    800  2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 4F656865
P 1650 2500
F 0 "#PWR04" H 1650 2500 30  0001 C CNN
F 1 "GND" H 1650 2430 30  0001 C CNN
	1    1650 2500
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C10
U 1 1 4F656846
P 1650 2250
F 0 "C10" H 1700 2350 50  0000 L CNN
F 1 "10uF" H 1700 2150 50  0000 L CNN
	1    1650 2250
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C11
U 1 1 4F656832
P 1000 2350
F 0 "C11" H 1050 2450 50  0000 L CNN
F 1 "10uF" H 1050 2250 50  0000 L CNN
	1    1000 2350
	0    1    1    0   
$EndComp
$Comp
L 7133 U4
U 1 1 4F6567CE
P 1250 2000
F 0 "U4" H 1100 1850 60  0000 C CNN
F 1 "7133" H 1250 2250 60  0000 C CNN
	1    1250 2000
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 4F63D71F
P 2450 2550
F 0 "R6" V 2530 2550 50  0000 C CNN
F 1 "220" V 2450 2550 50  0000 C CNN
	1    2450 2550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 4F63D718
P 3250 2650
F 0 "#PWR05" H 3250 2650 30  0001 C CNN
F 1 "GND" H 3250 2580 30  0001 C CNN
	1    3250 2650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR06
U 1 1 4F63D70C
P 2150 2550
F 0 "#PWR06" H 2150 2650 30  0001 C CNN
F 1 "VCC" H 2150 2650 30  0000 C CNN
	1    2150 2550
	1    0    0    -1  
$EndComp
$Comp
L LED D5
U 1 1 4F63D6FD
P 2950 2550
F 0 "D5" H 2950 2650 50  0000 C CNN
F 1 "LED" H 2950 2450 50  0000 C CNN
	1    2950 2550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 4F63D215
P 2700 2150
F 0 "#PWR07" H 2700 2250 30  0001 C CNN
F 1 "VCC" H 2700 2250 30  0000 C CNN
	1    2700 2150
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR08
U 1 1 4F63D14D
P 1350 1000
F 0 "#PWR08" H 1350 1100 30  0001 C CNN
F 1 "VDD" H 1350 1110 30  0000 C CNN
	1    1350 1000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR09
U 1 1 4F63CD61
P 2600 1000
F 0 "#PWR09" H 2600 1090 20  0001 C CNN
F 1 "+5V" H 2600 1090 30  0000 C CNN
	1    2600 1000
	1    0    0    -1  
$EndComp
NoConn ~ 9950 4050
NoConn ~ 9950 3850
NoConn ~ 9950 3650
NoConn ~ 10750 3850
NoConn ~ 10750 4050
NoConn ~ 10750 6350
NoConn ~ 10750 6250
NoConn ~ 10750 6150
NoConn ~ 10750 6050
NoConn ~ 10750 5950
NoConn ~ 10750 5850
NoConn ~ 10750 5750
NoConn ~ 10750 5650
NoConn ~ 10750 5550
NoConn ~ 10750 5450
NoConn ~ 10750 5350
NoConn ~ 10750 5250
NoConn ~ 10750 5150
NoConn ~ 10750 4850
NoConn ~ 10750 4750
NoConn ~ 10750 4650
NoConn ~ 10750 4550
NoConn ~ 10750 4450
NoConn ~ 10750 4350
NoConn ~ 10750 4250
NoConn ~ 10750 4150
NoConn ~ 9950 4150
NoConn ~ 9950 4250
NoConn ~ 9950 4350
NoConn ~ 9950 4450
NoConn ~ 9950 4550
NoConn ~ 9950 4650
NoConn ~ 9950 4750
NoConn ~ 9950 4850
NoConn ~ 9950 5150
NoConn ~ 9950 5250
NoConn ~ 9950 5350
NoConn ~ 9950 5450
NoConn ~ 9950 5550
NoConn ~ 9950 5650
NoConn ~ 9950 5750
NoConn ~ 9950 5850
NoConn ~ 9950 5950
NoConn ~ 9950 6050
NoConn ~ 9950 6150
NoConn ~ 9950 6250
NoConn ~ 9950 6350
NoConn ~ 9850 6350
NoConn ~ 9850 6250
NoConn ~ 9850 6150
NoConn ~ 9850 6050
NoConn ~ 9850 5950
NoConn ~ 9850 5850
NoConn ~ 9850 5750
NoConn ~ 9850 5650
NoConn ~ 9850 5550
NoConn ~ 9850 5450
NoConn ~ 9850 5350
NoConn ~ 9850 5250
NoConn ~ 9850 5150
NoConn ~ 9850 4850
NoConn ~ 9850 4750
NoConn ~ 9850 4650
NoConn ~ 9850 4550
NoConn ~ 9850 4450
NoConn ~ 9850 4350
NoConn ~ 9850 4250
NoConn ~ 9850 4150
NoConn ~ 9850 4050
NoConn ~ 9850 3850
NoConn ~ 9850 3650
NoConn ~ 9050 4550
NoConn ~ 9050 4450
NoConn ~ 9050 4350
NoConn ~ 9050 4250
NoConn ~ 9050 4150
NoConn ~ 9050 4050
NoConn ~ 9050 3850
NoConn ~ 9050 3650
NoConn ~ 8950 3650
NoConn ~ 8950 3850
NoConn ~ 8950 4050
NoConn ~ 8950 4150
NoConn ~ 8950 4250
NoConn ~ 8950 4350
NoConn ~ 8950 4450
NoConn ~ 8950 4550
NoConn ~ 8150 4550
NoConn ~ 8150 4450
NoConn ~ 8150 4350
NoConn ~ 8150 4250
NoConn ~ 8150 4150
NoConn ~ 8150 4050
NoConn ~ 8150 3850
NoConn ~ 8150 3650
NoConn ~ 7200 3650
NoConn ~ 7200 3850
NoConn ~ 7200 4050
NoConn ~ 7200 4150
NoConn ~ 7200 4250
NoConn ~ 7200 4350
NoConn ~ 7200 4450
NoConn ~ 7200 4550
NoConn ~ 7200 4650
NoConn ~ 7200 4750
NoConn ~ 7200 4850
NoConn ~ 7200 5150
NoConn ~ 7200 5250
NoConn ~ 7200 5350
NoConn ~ 7200 5450
NoConn ~ 7200 5550
NoConn ~ 7200 5650
NoConn ~ 7200 5750
NoConn ~ 7200 5850
NoConn ~ 7200 5950
NoConn ~ 7200 6050
NoConn ~ 7200 6150
NoConn ~ 7200 6250
NoConn ~ 7200 6350
NoConn ~ 9050 4650
NoConn ~ 9050 4750
NoConn ~ 9050 4850
NoConn ~ 9050 5150
NoConn ~ 9050 5250
NoConn ~ 9050 5350
NoConn ~ 9050 5450
NoConn ~ 9050 5550
NoConn ~ 9050 5650
NoConn ~ 9050 5750
NoConn ~ 9050 5850
NoConn ~ 9050 5950
NoConn ~ 9050 6050
NoConn ~ 9050 6150
NoConn ~ 9050 6250
NoConn ~ 9050 6350
NoConn ~ 8950 6350
NoConn ~ 8950 6250
NoConn ~ 8950 6150
NoConn ~ 8950 6050
NoConn ~ 8950 5950
NoConn ~ 8950 5850
NoConn ~ 8950 5750
NoConn ~ 8950 5650
NoConn ~ 8950 5550
NoConn ~ 8950 5450
NoConn ~ 8950 5350
NoConn ~ 8950 5250
NoConn ~ 8950 5150
NoConn ~ 8950 4850
NoConn ~ 8950 4750
NoConn ~ 8950 4650
NoConn ~ 8150 4650
NoConn ~ 8150 4750
NoConn ~ 8150 4850
NoConn ~ 8150 5150
NoConn ~ 8150 5250
NoConn ~ 8150 5350
NoConn ~ 8150 5450
NoConn ~ 8150 5550
NoConn ~ 8150 5650
NoConn ~ 8150 5750
NoConn ~ 8150 5850
NoConn ~ 8150 5950
NoConn ~ 8150 6050
NoConn ~ 8150 6150
NoConn ~ 8150 6250
NoConn ~ 8150 6350
NoConn ~ 8000 6350
NoConn ~ 8000 6250
NoConn ~ 8000 6150
NoConn ~ 8000 6050
NoConn ~ 8000 5950
NoConn ~ 8000 5850
NoConn ~ 8000 5750
NoConn ~ 8000 5650
NoConn ~ 8000 5550
NoConn ~ 8000 5450
NoConn ~ 8000 5350
NoConn ~ 8000 5250
NoConn ~ 8000 5150
NoConn ~ 8000 4150
NoConn ~ 8000 4050
NoConn ~ 8000 3850
NoConn ~ 8000 3650
NoConn ~ 8000 4250
NoConn ~ 8000 4350
NoConn ~ 8000 4450
NoConn ~ 8000 4550
NoConn ~ 8000 4650
NoConn ~ 8000 4750
NoConn ~ 8000 4850
NoConn ~ 8200 2100
NoConn ~ 8300 2100
NoConn ~ 10900 3050
NoConn ~ 10700 3050
NoConn ~ 10500 3050
NoConn ~ 10400 3050
NoConn ~ 10300 3050
NoConn ~ 10200 3050
NoConn ~ 10100 3050
NoConn ~ 10000 3050
NoConn ~ 9900 3050
NoConn ~ 9800 3050
NoConn ~ 9700 3050
NoConn ~ 9400 3050
NoConn ~ 9300 3050
NoConn ~ 9200 3050
NoConn ~ 9100 3050
NoConn ~ 9000 3050
NoConn ~ 8900 3050
NoConn ~ 8800 3050
NoConn ~ 8700 3050
NoConn ~ 8600 3050
NoConn ~ 8500 3050
NoConn ~ 8400 3050
NoConn ~ 8300 3050
NoConn ~ 8200 3050
NoConn ~ 8300 2250
NoConn ~ 8200 2250
NoConn ~ 10900 2250
NoConn ~ 10700 2250
NoConn ~ 10500 2250
NoConn ~ 10400 2250
NoConn ~ 10300 2250
NoConn ~ 10200 2250
NoConn ~ 10100 2250
NoConn ~ 10000 2250
NoConn ~ 9900 2250
NoConn ~ 9800 2250
NoConn ~ 9700 2250
NoConn ~ 9400 2250
NoConn ~ 9300 2250
NoConn ~ 9200 2250
NoConn ~ 9100 2250
NoConn ~ 9000 2250
NoConn ~ 8900 2250
NoConn ~ 8800 2250
NoConn ~ 8700 2250
NoConn ~ 8600 2250
NoConn ~ 8500 2250
NoConn ~ 8400 2250
NoConn ~ 8400 2100
NoConn ~ 8500 2100
NoConn ~ 8600 2100
NoConn ~ 8700 2100
NoConn ~ 8800 2100
NoConn ~ 8900 2100
NoConn ~ 9000 2100
NoConn ~ 9100 2100
NoConn ~ 9200 2100
NoConn ~ 9300 2100
NoConn ~ 9400 2100
NoConn ~ 9700 2100
NoConn ~ 9800 2100
NoConn ~ 9900 2100
NoConn ~ 10000 2100
NoConn ~ 10100 2100
NoConn ~ 10200 2100
NoConn ~ 10300 2100
NoConn ~ 10400 2100
NoConn ~ 10500 2100
NoConn ~ 10700 2100
NoConn ~ 10900 2100
NoConn ~ 10700 1300
NoConn ~ 10500 1300
NoConn ~ 10400 1300
NoConn ~ 10300 1300
NoConn ~ 10200 1300
NoConn ~ 10100 1300
NoConn ~ 10000 1300
NoConn ~ 9900 1300
NoConn ~ 9800 1300
NoConn ~ 9700 1300
NoConn ~ 9400 1300
NoConn ~ 9300 1300
NoConn ~ 9200 1300
NoConn ~ 8300 1300
NoConn ~ 8400 1300
NoConn ~ 8500 1300
NoConn ~ 8600 1300
NoConn ~ 8700 1300
NoConn ~ 8800 1300
NoConn ~ 8900 1300
NoConn ~ 9000 1300
NoConn ~ 9100 1300
$Comp
L CONN_30X2 PC6
U 1 1 4F315066
P 9550 1700
F 0 "PC6" H 9550 3250 60  0000 C CNN
F 1 "CONN_30X2" V 9550 1700 50  0000 C CNN
	1    9550 1700
	0    1    1    0   
$EndComp
$Comp
L CONN_30X2 PC5
U 1 1 4F315043
P 9550 2650
F 0 "PC5" H 9550 4200 60  0000 C CNN
F 1 "CONN_30X2" V 9550 2650 50  0000 C CNN
	1    9550 2650
	0    1    1    0   
$EndComp
$Comp
L CONN_30X2 PC2
U 1 1 4F315013
P 8550 5000
F 0 "PC2" H 8550 6550 60  0000 C CNN
F 1 "CONN_30X2" V 8550 5000 50  0000 C CNN
	1    8550 5000
	1    0    0    -1  
$EndComp
$Comp
L CONN_30X2 PC1
U 1 1 4F301F92
P 7600 5000
F 0 "PC1" H 7600 6550 60  0000 C CNN
F 1 "CONN_30X2" V 7600 5000 50  0000 C CNN
	1    7600 5000
	1    0    0    -1  
$EndComp
Text Label 4750 7400 0    60   ~ 0
AT_15
Text Label 4750 7300 0    60   ~ 0
AT_16
Text Label 4750 7200 0    60   ~ 0
MOSI
Text Label 3150 7300 2    60   ~ 0
LED3
Text Label 3150 7200 2    60   ~ 0
AT_12
Text Label 3150 7100 2    60   ~ 0
AT_11
Text Label 3150 7000 2    60   ~ 0
AT_10
Text Label 3150 6900 2    60   ~ 0
AT_9
Text Label 3150 6600 2    60   ~ 0
LED4
Text Label 3150 6500 2    60   ~ 0
AT_5
Text Label 3150 6300 2    60   ~ 0
TXD
Text Label 3150 6200 2    60   ~ 0
RXD
Text Label 3150 6100 2    60   ~ 0
RESET
Text Label 4750 7100 0    60   ~ 0
MISO
Text Label 4750 7000 0    60   ~ 0
SCK
Text Label 4750 6800 0    60   ~ 0
AREF
Text Label 4750 6500 0    60   ~ 0
AT_24
Text Label 4750 6600 0    60   ~ 0
LDR
Text Label 4750 6400 0    60   ~ 0
LED2
Text Label 4750 6300 0    60   ~ 0
LED1
Text Label 4750 6200 0    60   ~ 0
SDA
Text Label 4750 6100 0    60   ~ 0
SCL
$Comp
L CONN_14 CONN2
U 1 1 4F2BEAD3
P 4400 6750
F 0 "CONN2" V 4370 6750 60  0000 C CNN
F 1 "CONN_14" V 4480 6750 60  0000 C CNN
	1    4400 6750
	-1   0    0    -1  
$EndComp
$Comp
L CONN_14 CONN1
U 1 1 4F2BEAC4
P 3500 6750
F 0 "CONN1" V 3470 6750 60  0000 C CNN
F 1 "CONN_14" V 3580 6750 60  0000 C CNN
	1    3500 6750
	1    0    0    -1  
$EndComp
Text Label 5550 4350 0    60   ~ 0
AREF
Text Label 2150 5650 2    60   ~ 0
LED3
Text Label 5550 5050 0    60   ~ 0
AT_15
Text Label 5550 5150 0    60   ~ 0
AT_16
Text Label 5550 5550 0    60   ~ 0
AT_9
Text Label 5550 5650 0    60   ~ 0
AT_10
Text Label 2150 5550 2    60   ~ 0
AT_12
Text Label 2150 5450 2    60   ~ 0
AT_11
Text Label 2150 5350 2    60   ~ 0
LED4
Text Label 2150 5250 2    60   ~ 0
AT_5
Text Label 2150 4450 2    60   ~ 0
LED1
Text Label 2150 4350 2    60   ~ 0
LED2
Text Label 2150 4250 2    60   ~ 0
AT_24
Text Label 5700 2200 0    60   ~ 0
CONN_RX
$Comp
L GND #PWR010
U 1 1 4EE54658
P 3850 2300
F 0 "#PWR010" H 3850 2300 30  0001 C CNN
F 1 "GND" H 3850 2230 30  0001 C CNN
	1    3850 2300
	1    0    0    -1  
$EndComp
NoConn ~ 5700 2300
$Comp
L MAX232 U1
U 1 1 4DC478DF
P 4900 1800
F 0 "U1" H 4900 2650 70  0000 C CNN
F 1 "MAX232" H 4900 950 70  0000 C CNN
	1    4900 1800
	1    0    0    -1  
$EndComp
Text Label 2150 4150 2    60   ~ 0
LDR
Text Label 700  6650 0    60   ~ 0
LDR
$Comp
L R R5
U 1 1 4EAB4910
P 1100 7000
F 0 "R5" V 1050 6800 50  0000 C CNN
F 1 "1K" V 1100 7000 50  0000 C CNN
	1    1100 7000
	1    0    0    1   
$EndComp
$Comp
L VCC #PWR011
U 1 1 4EAB490B
P 1100 6100
F 0 "#PWR011" H 1100 6200 30  0001 C CNN
F 1 "VCC" H 1100 6200 30  0000 C CNN
	1    1100 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 4EAB4907
P 1100 7300
F 0 "#PWR012" H 1100 7300 30  0001 C CNN
F 1 "GND" H 1100 7230 30  0001 C CNN
	1    1100 7300
	1    0    0    -1  
$EndComp
$Comp
L VR 5-10K1
U 1 1 4EAB48FD
P 1100 6400
F 0 "5-10K1" V 1180 6400 50  0000 C CNN
F 1 "VR_LDR" V 1100 6400 50  0000 C CNN
	1    1100 6400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR013
U 1 1 4EAB47D4
P 1200 4850
F 0 "#PWR013" H 1200 4950 30  0001 C CNN
F 1 "VCC" H 1200 4950 30  0000 C CNN
	1    1200 4850
	1    0    0    -1  
$EndComp
Text Notes 1750 750  2    60   ~ 0
Alimentación\n
$Comp
L GND #PWR014
U 1 1 4EAB4172
P 2600 1750
F 0 "#PWR014" H 2600 1750 30  0001 C CNN
F 1 "GND" H 2600 1680 30  0001 C CNN
	1    2600 1750
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 4EAB40FD
P 2600 1350
F 0 "C9" H 2650 1450 50  0000 L CNN
F 1 "100nF" H 2650 1250 50  0000 L CNN
	1    2600 1350
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 4EAB40FA
P 1350 1350
F 0 "C7" H 1400 1450 50  0000 L CNN
F 1 "100nF" H 1400 1250 50  0000 L CNN
	1    1350 1350
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C8
U 1 1 4EAB40F5
P 2300 1350
F 0 "C8" H 2350 1450 50  0000 L CNN
F 1 "10uF" H 2350 1250 50  0000 L CNN
	1    2300 1350
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P2
U 1 1 4EAB402B
P 800 1200
F 0 "P2" V 750 1200 40  0000 C CNN
F 1 "CONN_2" V 850 1200 40  0000 C CNN
	1    800  1200
	-1   0    0    1   
$EndComp
Text Notes 2100 7250 2    60   ~ 0
I2C\n
$Comp
L GND #PWR015
U 1 1 4EAB3F63
P 2300 6700
F 0 "#PWR015" H 2300 6700 30  0001 C CNN
F 1 "GND" H 2300 6630 30  0001 C CNN
	1    2300 6700
	1    0    0    -1  
$EndComp
Text Label 2050 6650 1    60   ~ 0
SCL
Text Label 1950 6650 1    60   ~ 0
SDA
Text Label 2150 4650 2    60   ~ 0
SCL
Text Label 2150 4550 2    60   ~ 0
SDA
$Comp
L CONN_3 K1
U 1 1 4EAB3F14
P 2050 7000
F 0 "K1" V 2000 7000 50  0000 C CNN
F 1 "CONN_3" V 2100 7000 40  0000 C CNN
	1    2050 7000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR016
U 1 1 4DC48F78
P 4350 3850
F 0 "#PWR016" H 4350 3850 30  0001 C CNN
F 1 "GND" H 4350 3780 30  0001 C CNN
	1    4350 3850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR017
U 1 1 4DC48F52
P 1050 3650
F 0 "#PWR017" H 1050 3750 30  0001 C CNN
F 1 "VCC" H 1050 3750 30  0000 C CNN
	1    1050 3650
	1    0    0    -1  
$EndComp
Text Label 2150 4750 2    60   ~ 0
RESET
NoConn ~ 6850 1350
NoConn ~ 6850 1450
NoConn ~ 6850 1550
NoConn ~ 6850 1750
NoConn ~ 6850 1950
NoConn ~ 6850 2050
NoConn ~ 4100 2500
$Comp
L GND #PWR018
U 1 1 4DC482E9
P 1550 6200
F 0 "#PWR018" H 1550 6200 30  0001 C CNN
F 1 "GND" H 1550 6130 30  0001 C CNN
	1    1550 6200
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 4DC482B6
P 1850 6100
F 0 "SW1" H 2000 6210 50  0000 C CNN
F 1 "SW_PUSH" H 1850 6020 50  0000 C CNN
	1    1850 6100
	1    0    0    -1  
$EndComp
Text Notes 6000 800  2    60   ~ 0
Interfaz RS232
Text Notes 4250 3450 2    60   ~ 0
Conector para el programador
$Comp
L VCC #PWR019
U 1 1 4DC4814D
P 6150 4350
F 0 "#PWR019" H 6150 4450 30  0001 C CNN
F 1 "VCC" H 6150 4450 30  0000 C CNN
	1    6150 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 4DC4813D
P 5900 2550
F 0 "#PWR020" H 5900 2550 30  0001 C CNN
F 1 "GND" H 5900 2480 30  0001 C CNN
	1    5900 2550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR021
U 1 1 4DC48110
P 6250 1100
F 0 "#PWR021" H 6250 1200 30  0001 C CNN
F 1 "VCC" H 6250 1200 30  0000 C CNN
	1    6250 1100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR022
U 1 1 4DC480DF
P 4350 3500
F 0 "#PWR022" H 4350 3600 30  0001 C CNN
F 1 "VCC" H 4350 3600 30  0000 C CNN
	1    4350 3500
	1    0    0    -1  
$EndComp
Text Label 5550 5250 0    60   ~ 0
MOSI
Text Label 5550 5450 0    60   ~ 0
SCK
Text Label 5550 5350 0    60   ~ 0
MISO
Text Label 3400 3800 2    60   ~ 0
RESET
Text Label 4200 3700 0    60   ~ 0
MOSI
Text Label 3400 3700 2    60   ~ 0
SCK
Text Label 3400 3600 2    60   ~ 0
MISO
$Comp
L CONN_3X2 P1
U 1 1 4DC47FA6
P 3800 3750
F 0 "P1" H 3800 4000 50  0000 C CNN
F 1 "CONN_3X2" V 3800 3800 40  0000 C CNN
	1    3800 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 4DC47F03
P 6650 1300
F 0 "#PWR023" H 6650 1300 30  0001 C CNN
F 1 "GND" H 6650 1230 30  0001 C CNN
	1    6650 1300
	1    0    0    -1  
$EndComp
Text Label 6850 1650 2    60   ~ 0
CONN_TX
Text Label 6850 1850 2    60   ~ 0
CONN_RX
$Comp
L DB9 J1
U 1 1 4DC47ED4
P 7300 1650
F 0 "J1" H 7300 2200 70  0000 C CNN
F 1 "DB9" H 7300 1100 70  0000 C CNN
	1    7300 1650
	1    0    0    -1  
$EndComp
Text Label 5700 2400 0    60   ~ 0
CONN_TX
Text Label 4100 2400 2    60   ~ 0
RXD
Text Label 4100 2200 2    60   ~ 0
TXD
$Comp
L GND #PWR024
U 1 1 4DC47C9C
P 5700 1750
F 0 "#PWR024" H 5700 1750 30  0001 C CNN
F 1 "GND" H 5700 1680 30  0001 C CNN
	1    5700 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 4DC47C86
P 6250 2400
F 0 "#PWR025" H 6250 2400 30  0001 C CNN
F 1 "GND" H 6250 2330 30  0001 C CNN
	1    6250 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 4DC47C70
P 6250 1500
F 0 "#PWR026" H 6250 1500 30  0001 C CNN
F 1 "GND" H 6250 1430 30  0001 C CNN
	1    6250 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 4DC47C63
P 6000 1900
F 0 "#PWR027" H 6000 1900 30  0001 C CNN
F 1 "GND" H 6000 1830 30  0001 C CNN
	1    6000 1900
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C4
U 1 1 4DC47C36
P 6250 1300
F 0 "C4" H 6300 1400 50  0000 L CNN
F 1 "1uF" H 6300 1200 50  0000 L CNN
	1    6250 1300
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C5
U 1 1 4DC47C22
P 6250 2200
F 0 "C5" H 6300 2300 50  0000 L CNN
F 1 "1uF" H 6300 2100 50  0000 L CNN
	1    6250 2200
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C2
U 1 1 4DC47C0A
P 4000 1800
F 0 "C2" H 4050 1900 50  0000 L CNN
F 1 "1uF" H 4050 1700 50  0000 L CNN
	1    4000 1800
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C1
U 1 1 4DC47BFA
P 4000 1300
F 0 "C1" H 4050 1400 50  0000 L CNN
F 1 "1uF" H 4050 1200 50  0000 L CNN
	1    4000 1300
	1    0    0    -1  
$EndComp
Text Label 2150 5050 2    60   ~ 0
TXD
Text Label 2150 4950 2    60   ~ 0
RXD
$Comp
L GND #PWR028
U 1 1 4DC47803
P 5850 4300
F 0 "#PWR028" H 5850 4300 30  0001 C CNN
F 1 "GND" H 5850 4230 30  0001 C CNN
	1    5850 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 4DC477EC
P 6150 4950
F 0 "#PWR029" H 6150 4950 30  0001 C CNN
F 1 "GND" H 6150 4880 30  0001 C CNN
	1    6150 4950
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 4DC477D7
P 6150 4700
F 0 "C6" H 6200 4800 50  0000 L CNN
F 1 "100nF" H 6200 4600 50  0000 L CNN
	1    6150 4700
	1    0    0    -1  
$EndComp
$Comp
L LED D4
U 1 1 4DC47715
P 1200 5150
F 0 "D4" H 1050 5050 50  0000 C CNN
F 1 "LED" H 1200 5050 50  0000 C CNN
	1    1200 5150
	0    -1   1    0   
$EndComp
$Comp
L LED D3
U 1 1 4DC47713
P 1000 5400
F 0 "D3" H 850 5300 50  0000 C CNN
F 1 "LED" H 1000 5300 50  0000 C CNN
	1    1000 5400
	0    1    1    0   
$EndComp
$Comp
L LED D2
U 1 1 4DC4770D
P 1150 4150
F 0 "D2" H 1000 4050 50  0000 C CNN
F 1 "LED" H 1150 4050 50  0000 C CNN
	1    1150 4150
	0    -1   1    0   
$EndComp
$Comp
L LED D1
U 1 1 4DC4770A
P 950 4250
F 0 "D1" H 800 4150 50  0000 C CNN
F 1 "LED" H 950 4150 50  0000 C CNN
	1    950  4250
	0    -1   1    0   
$EndComp
$Comp
L R R4
U 1 1 4DC476AB
P 1550 5350
F 0 "R4" V 1500 5150 50  0000 C CNN
F 1 "220" V 1550 5350 50  0000 C CNN
	1    1550 5350
	0    1    -1   0   
$EndComp
$Comp
L R R3
U 1 1 4DC476A7
P 1550 5650
F 0 "R3" V 1500 5450 50  0000 C CNN
F 1 "220" V 1550 5650 50  0000 C CNN
	1    1550 5650
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 4DC476A1
P 1550 4350
F 0 "R2" V 1500 4150 50  0000 C CNN
F 1 "220" V 1550 4350 50  0000 C CNN
	1    1550 4350
	0    1    -1   0   
$EndComp
$Comp
L R R1
U 1 1 4DC47664
P 1550 4450
F 0 "R1" V 1500 4250 50  0000 C CNN
F 1 "220" V 1550 4450 50  0000 C CNN
	1    1550 4450
	0    1    -1   0   
$EndComp
$Comp
L CAPAPOL C3
U 1 1 4DC475FC
P 6000 1700
F 0 "C3" H 6050 1800 50  0000 L CNN
F 1 "1uF" H 6050 1600 50  0000 L CNN
	1    6000 1700
	1    0    0    -1  
$EndComp
$Comp
L AVR_ATMEGA88 U2
U 1 1 4DC473D3
P 3900 4850
F 0 "U2" H 4200 5450 60  0000 C CNN
F 1 "AVR_ATMEGA88" H 4200 5300 60  0000 C CNN
	1    3900 4850
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X1
U 1 1 4F67AD5D
P 6250 5950
F 0 "X1" H 6250 6100 60  0000 C CNN
F 1 "12Mhz" H 6250 5800 60  0000 C CNN
	1    6250 5950
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 4F67AD6C
P 5800 6200
F 0 "C12" H 5850 6300 50  0000 L CNN
F 1 "15p" H 5850 6100 50  0000 L CNN
	1    5800 6200
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 4F67AD79
P 6700 6200
F 0 "C13" H 6750 6300 50  0000 L CNN
F 1 "15p" H 6750 6100 50  0000 L CNN
	1    6700 6200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 4F67B08B
P 6250 6500
F 0 "#PWR030" H 6250 6500 30  0001 C CNN
F 1 "GND" H 6250 6430 30  0001 C CNN
	1    6250 6500
	1    0    0    -1  
$EndComp
NoConn ~ 8200 1300
Text Notes 2950 1850 0    60   ~ 0
jumper
$Comp
L CONN_30X2 PC3
U 1 1 4F31501A
P 9450 5000
F 0 "PC3" H 9450 6550 60  0000 C CNN
F 1 "CONN_30X2" V 9450 5000 50  0000 C CNN
	1    9450 5000
	1    0    0    -1  
$EndComp
NoConn ~ 10750 3650
NoConn ~ 10900 1300
$Comp
L C C15
U 1 1 4F67E9AC
P 1950 2250
F 0 "C15" H 2000 2350 50  0000 L CNN
F 1 "100nF" H 2000 2150 50  0000 L CNN
	1    1950 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR031
U 1 1 4F67EC1E
P 1950 2500
F 0 "#PWR031" H 1950 2500 30  0001 C CNN
F 1 "GND" H 1950 2430 30  0001 C CNN
	1    1950 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 4F6804FF
P 9650 2200
F 0 "#PWR032" H 9650 2200 30  0001 C CNN
F 1 "GND" H 9650 2130 30  0001 C CNN
	1    9650 2200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR033
U 1 1 4F680505
P 9600 1200
F 0 "#PWR033" H 9600 1200 30  0001 C CNN
F 1 "GND" H 9600 1130 30  0001 C CNN
	1    9600 1200
	-1   0    0    1   
$EndComp
NoConn ~ 10800 2100
NoConn ~ 10800 2250
NoConn ~ 10600 2250
NoConn ~ 10600 2100
NoConn ~ 10600 1300
NoConn ~ 10800 1300
NoConn ~ 10600 3050
NoConn ~ 10800 3050
NoConn ~ 7200 3750
NoConn ~ 7200 3950
NoConn ~ 8000 3950
NoConn ~ 8000 3750
NoConn ~ 8150 3750
NoConn ~ 8150 3950
NoConn ~ 8950 3950
NoConn ~ 9050 3950
NoConn ~ 9050 3750
NoConn ~ 8950 3750
NoConn ~ 9850 3750
NoConn ~ 9950 3750
NoConn ~ 9950 3950
NoConn ~ 9850 3950
NoConn ~ 10750 3750
NoConn ~ 10750 3950
$Comp
L +3.3V #PWR034
U 1 1 4F6822A7
P 11050 1200
F 0 "#PWR034" H 11050 1160 30  0001 C CNN
F 1 "+3.3V" H 11050 1310 30  0000 C CNN
	1    11050 1200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR035
U 1 1 4F6822AD
P 8050 1200
F 0 "#PWR035" H 8050 1290 20  0001 C CNN
F 1 "+5V" H 8050 1290 30  0000 C CNN
	1    8050 1200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR036
U 1 1 4F6822B3
P 7100 6450
F 0 "#PWR036" H 7100 6540 20  0001 C CNN
F 1 "+5V" H 7100 6540 30  0000 C CNN
	1    7100 6450
	1    0    0    -1  
$EndComp
Text Label 3150 7400 2    60   ~ 0
AT_14
Text Label 2150 5150 2    60   ~ 0
BOTON
Text Label 2500 6100 2    60   ~ 0
BOTON
Text Label 3150 6400 2    60   ~ 0
BOTON
$Comp
L GND #PWR037
U 1 1 4F682476
P 1550 3600
F 0 "#PWR037" H 1550 3600 30  0001 C CNN
F 1 "GND" H 1550 3530 30  0001 C CNN
	1    1550 3600
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 4F68247C
P 1850 3500
F 0 "SW2" H 2000 3610 50  0000 C CNN
F 1 "SW_PUSH" H 1850 3420 50  0000 C CNN
	1    1850 3500
	1    0    0    -1  
$EndComp
Text Label 2600 3500 2    60   ~ 0
RESET
$Comp
L R R7
U 1 1 4F682485
P 2450 3250
F 0 "R7" V 2400 3050 50  0000 C CNN
F 1 "10k" V 2450 3250 50  0000 C CNN
	1    2450 3250
	0    -1   1    0   
$EndComp
$Comp
L VCC #PWR038
U 1 1 4F682604
P 2750 3200
F 0 "#PWR038" H 2750 3300 30  0001 C CNN
F 1 "VCC" H 2750 3300 30  0000 C CNN
	1    2750 3200
	1    0    0    -1  
$EndComp
Text Label 6400 4450 2    60   ~ 0
VCC
Text Label 4750 6900 0    60   ~ 0
VCC
Text Label 3150 6700 2    60   ~ 0
VCC
Text Label 5700 4250 0    60   ~ 0
GND
Text Label 4750 6700 0    60   ~ 0
GND
Text Label 3150 6800 2    60   ~ 0
GND
$Comp
L C C14
U 1 1 4F6827C3
P 2400 3700
F 0 "C14" H 2450 3800 50  0000 L CNN
F 1 "100nF" H 2450 3600 50  0000 L CNN
	1    2400 3700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR039
U 1 1 4F6827C9
P 2650 3750
F 0 "#PWR039" H 2650 3750 30  0001 C CNN
F 1 "GND" H 2650 3680 30  0001 C CNN
	1    2650 3750
	1    0    0    -1  
$EndComp
Text Label 5550 4950 0    60   ~ 0
AT_14
$Comp
L CONN_30X2 PC4
U 1 1 4F315026
P 10350 5000
F 0 "PC4" H 10350 6550 60  0000 C CNN
F 1 "CONN_30X2" V 10350 5000 50  0000 C CNN
	1    10350 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 4F685126
P 10900 5100
F 0 "#PWR040" H 10900 5100 30  0001 C CNN
F 1 "GND" H 10900 5030 30  0001 C CNN
	1    10900 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 4F685133
P 9900 5100
F 0 "#PWR041" H 9900 5100 30  0001 C CNN
F 1 "GND" H 9900 5030 30  0001 C CNN
	1    9900 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 4F685139
P 9000 5100
F 0 "#PWR042" H 9000 5100 30  0001 C CNN
F 1 "GND" H 9000 5030 30  0001 C CNN
	1    9000 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 4F68513F
P 8100 5100
F 0 "#PWR043" H 8100 5100 30  0001 C CNN
F 1 "GND" H 8100 5030 30  0001 C CNN
	1    8100 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR044
U 1 1 4F685145
P 7150 5100
F 0 "#PWR044" H 7150 5100 30  0001 C CNN
F 1 "GND" H 7150 5030 30  0001 C CNN
	1    7150 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR045
U 1 1 4F67C664
P 9550 3150
F 0 "#PWR045" H 9550 3150 30  0001 C CNN
F 1 "GND" H 9550 3080 30  0001 C CNN
	1    9550 3150
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 P3
U 1 1 4F67DD5A
P 3200 2150
F 0 "P3" V 3150 2150 50  0000 C CNN
F 1 "CONN_3" V 3250 2150 40  0000 C CNN
	1    3200 2150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR046
U 1 1 4F67DD67
P 2800 2050
F 0 "#PWR046" H 2800 2140 20  0001 C CNN
F 1 "+5V" H 2800 2140 30  0000 C CNN
	1    2800 2050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR047
U 1 1 4F67DF36
P 2600 2250
F 0 "#PWR047" H 2600 2210 30  0001 C CNN
F 1 "+3.3V" H 2600 2360 30  0000 C CNN
	1    2600 2250
	1    0    0    -1  
$EndComp
Text Notes 9950 900  2    60   ~ 0
Conectores para islas
Text Notes 5450 3400 0    60   ~ 0
Microcontrolador\n4 Leds / LDR\nPulsador / Conector I2C
Wire Wire Line
	1650 2500 1650 2450
Wire Wire Line
	1250 2300 1250 2350
Wire Wire Line
	3250 2650 3250 2550
Wire Wire Line
	3250 2550 3150 2550
Wire Wire Line
	2150 2550 2200 2550
Wire Wire Line
	2850 2150 2700 2150
Connection ~ 2600 1100
Connection ~ 2300 1100
Wire Wire Line
	5850 4450 5850 4750
Connection ~ 5850 4450
Wire Wire Line
	1100 6150 1100 6100
Wire Wire Line
	1100 7250 1100 7300
Wire Wire Line
	1000 5600 1000 5650
Wire Wire Line
	1150 3750 950  3750
Wire Wire Line
	1200 4850 1200 4950
Wire Wire Line
	1200 5350 1300 5350
Connection ~ 2600 1650
Wire Wire Line
	2600 1750 2600 1550
Connection ~ 2300 1650
Wire Wire Line
	2600 1650 1150 1650
Connection ~ 1350 1650
Wire Wire Line
	1350 1550 1350 1650
Wire Wire Line
	1150 1650 1150 1300
Wire Wire Line
	2150 6650 2150 6600
Wire Wire Line
	2150 6600 2300 6600
Wire Wire Line
	2300 6600 2300 6700
Wire Wire Line
	1550 6100 1550 6200
Wire Wire Line
	6650 1300 6650 1250
Wire Wire Line
	6650 1250 6850 1250
Wire Wire Line
	5700 2000 6250 2000
Wire Wire Line
	5700 1500 6000 1500
Wire Wire Line
	4000 1600 4100 1600
Wire Wire Line
	4000 1100 4100 1100
Connection ~ 5700 4650
Wire Wire Line
	5700 4250 5700 4650
Wire Wire Line
	6150 4950 6150 4900
Connection ~ 1050 3750
Wire Wire Line
	1050 3650 1050 3750
Wire Wire Line
	1150 3750 1150 3950
Wire Wire Line
	1300 4350 1150 4350
Wire Wire Line
	1800 4450 2150 4450
Wire Wire Line
	1800 4350 2150 4350
Wire Wire Line
	1300 4450 950  4450
Wire Wire Line
	950  3750 950  4050
Wire Wire Line
	5700 4650 5550 4650
Wire Wire Line
	4000 1500 4100 1500
Wire Wire Line
	4000 2000 4100 2000
Wire Wire Line
	6250 1100 5700 1100
Wire Wire Line
	5700 1700 5700 1750
Wire Wire Line
	4200 3600 4350 3600
Wire Wire Line
	4350 3600 4350 3500
Wire Wire Line
	5900 2550 5900 2500
Wire Wire Line
	5900 2500 5700 2500
Wire Wire Line
	2500 6100 2150 6100
Wire Wire Line
	4200 3800 4350 3800
Wire Wire Line
	4350 3800 4350 3850
Connection ~ 1850 1650
Wire Wire Line
	2600 1000 2600 1150
Wire Wire Line
	1800 5350 2150 5350
Wire Wire Line
	1000 5650 1300 5650
Wire Wire Line
	5850 4750 5550 4750
Wire Wire Line
	1100 6750 1100 6650
Wire Wire Line
	1100 6650 700  6650
Wire Wire Line
	5550 4250 5850 4250
Wire Wire Line
	5850 4250 5850 4300
Connection ~ 5700 4250
Connection ~ 1350 1100
Wire Wire Line
	1350 1000 1350 1150
Wire Wire Line
	2700 2550 2750 2550
Wire Wire Line
	1850 1300 1850 1650
Wire Wire Line
	1500 1100 1150 1100
Wire Wire Line
	800  2550 800  2000
Wire Wire Line
	800  2000 900  2000
Connection ~ 800  2350
Wire Wire Line
	1350 2350 1200 2350
Wire Wire Line
	5800 6400 5800 6450
Wire Wire Line
	5800 6450 6700 6450
Wire Wire Line
	6700 6450 6700 6400
Wire Wire Line
	6700 6000 6700 5950
Wire Wire Line
	6700 5950 6550 5950
Wire Wire Line
	5950 5950 5800 5950
Wire Wire Line
	5800 5950 5800 6000
Wire Wire Line
	6250 6450 6250 6500
Connection ~ 6250 6450
Connection ~ 6250 6450
Wire Wire Line
	5850 5950 5850 5650
Wire Wire Line
	5850 5650 5550 5650
Connection ~ 5850 5950
Wire Wire Line
	5550 5550 6650 5550
Wire Wire Line
	6650 5550 6650 5950
Connection ~ 6650 5950
Connection ~ 1250 2350
Connection ~ 1250 2350
Wire Wire Line
	2300 1550 2300 1650
Wire Wire Line
	2300 1150 2300 1100
Wire Wire Line
	11000 3100 11150 3100
Wire Wire Line
	11150 3100 11150 1250
Wire Wire Line
	11150 2200 11000 2200
Wire Wire Line
	11000 2250 11000 2100
Connection ~ 11000 2200
Wire Wire Line
	11150 1250 11000 1250
Wire Wire Line
	11000 1250 11000 1300
Connection ~ 11150 2200
Wire Wire Line
	10750 3550 11000 3550
Connection ~ 11000 3100
Wire Wire Line
	10800 3550 10800 3400
Wire Wire Line
	10800 3400 7150 3400
Wire Wire Line
	9900 3400 9900 3550
Wire Wire Line
	9950 3550 9850 3550
Connection ~ 10800 3550
Connection ~ 9900 3550
Connection ~ 9900 3550
Wire Wire Line
	9000 3400 9000 3550
Wire Wire Line
	9050 3550 8950 3550
Connection ~ 9900 3400
Connection ~ 9000 3550
Wire Wire Line
	8100 3400 8100 3550
Wire Wire Line
	8150 3550 8000 3550
Connection ~ 9000 3400
Connection ~ 8100 3550
Connection ~ 8100 3550
Wire Wire Line
	7200 3550 7150 3550
Wire Wire Line
	7150 3550 7150 3400
Connection ~ 8100 3400
Wire Wire Line
	1950 2050 1950 2000
Wire Wire Line
	1950 2450 1950 2500
Wire Wire Line
	9600 1300 9600 1200
Wire Wire Line
	9600 2250 9600 2100
Wire Wire Line
	11000 3550 11000 3050
Wire Wire Line
	9500 2100 9500 2250
Wire Wire Line
	9500 2150 9600 2150
Connection ~ 9600 2150
Connection ~ 9500 2150
Wire Wire Line
	9500 3050 9500 3100
Wire Wire Line
	9500 3100 9600 3100
Wire Wire Line
	9600 3100 9600 3050
Wire Wire Line
	9600 1250 9500 1250
Wire Wire Line
	9500 1250 9500 1300
Connection ~ 9600 1250
Wire Wire Line
	9650 2200 9600 2200
Connection ~ 9600 2200
Wire Wire Line
	8100 1300 8100 1250
Wire Wire Line
	8100 1250 8000 1250
Wire Wire Line
	8000 1250 8000 3100
Wire Wire Line
	8000 2150 8100 2150
Wire Wire Line
	8100 2100 8100 2250
Connection ~ 8100 2150
Connection ~ 8100 2150
Wire Wire Line
	8000 3100 8100 3100
Wire Wire Line
	8100 3100 8100 3050
Connection ~ 8000 2150
Wire Wire Line
	10750 6450 10800 6450
Wire Wire Line
	10800 6450 10800 6550
Wire Wire Line
	10800 6550 7100 6550
Wire Wire Line
	9900 6550 9900 6450
Wire Wire Line
	9950 6450 9850 6450
Connection ~ 9900 6450
Connection ~ 9900 6450
Wire Wire Line
	9000 6550 9000 6450
Wire Wire Line
	9050 6450 8950 6450
Connection ~ 9900 6550
Connection ~ 9000 6450
Connection ~ 9000 6450
Wire Wire Line
	8100 6550 8100 6450
Wire Wire Line
	8150 6450 8000 6450
Connection ~ 9000 6550
Connection ~ 8100 6450
Connection ~ 8100 6450
Wire Wire Line
	7100 6550 7100 6450
Wire Wire Line
	7100 6450 7200 6450
Connection ~ 8100 6550
Wire Wire Line
	1550 3500 1550 3600
Wire Wire Line
	2150 3500 2600 3500
Wire Wire Line
	2200 3700 2200 3250
Connection ~ 2200 3500
Wire Wire Line
	2650 3750 2650 3700
Wire Wire Line
	2150 5650 1800 5650
Wire Wire Line
	1000 5200 1000 4900
Wire Wire Line
	1000 4900 1200 4900
Connection ~ 1200 4900
Wire Wire Line
	7200 4950 7150 4950
Wire Wire Line
	7150 4950 7150 5100
Wire Wire Line
	7150 5050 7200 5050
Connection ~ 7150 5050
Connection ~ 7150 5050
Wire Wire Line
	8000 4950 8150 4950
Wire Wire Line
	8150 5050 8000 5050
Wire Wire Line
	8050 4950 8050 5050
Connection ~ 8050 5050
Connection ~ 8050 4950
Wire Wire Line
	8100 5050 8100 5100
Connection ~ 8100 5050
Connection ~ 8100 5050
Wire Wire Line
	8950 4950 9050 4950
Wire Wire Line
	9050 5050 8950 5050
Wire Wire Line
	9000 4950 9000 5100
Connection ~ 9000 5050
Connection ~ 9000 4950
Wire Wire Line
	9950 4950 9850 4950
Wire Wire Line
	9850 5050 9950 5050
Wire Wire Line
	9900 4950 9900 5100
Connection ~ 9900 5050
Connection ~ 9900 4950
Wire Wire Line
	10750 4950 10900 4950
Wire Wire Line
	10900 4950 10900 5100
Wire Wire Line
	10900 5050 10750 5050
Connection ~ 10900 5050
Connection ~ 10900 5050
Wire Wire Line
	8050 1250 8050 1200
Connection ~ 8050 1250
Connection ~ 8050 1250
Wire Wire Line
	9550 3150 9550 3100
Connection ~ 9550 3100
Wire Wire Line
	2850 2050 2800 2050
Wire Wire Line
	2850 2250 2600 2250
Wire Wire Line
	2600 1100 2200 1100
Wire Wire Line
	1950 2000 1600 2000
Wire Notes Line
	3350 800  600  800 
Wire Notes Line
	3350 800  3350 2800
Wire Notes Line
	3350 2800 600  2800
Wire Notes Line
	600  2800 600  800 
Wire Wire Line
	2650 3700 2600 3700
Wire Wire Line
	2700 3250 2750 3250
Wire Wire Line
	2750 3250 2750 3200
Wire Notes Line
	6950 3050 600  3050
Wire Notes Line
	6950 3050 6950 7550
Wire Notes Line
	6950 7550 600  7550
Wire Notes Line
	600  7550 600  3050
Wire Wire Line
	6150 4500 6150 4350
Wire Wire Line
	5550 4450 6400 4450
Connection ~ 6150 4450
Connection ~ 6150 4450
Wire Notes Line
	7900 3200 7050 3200
Wire Notes Line
	7900 3200 7900 950 
Wire Notes Line
	7900 950  11200 950 
Wire Notes Line
	11200 950  11200 6700
Wire Notes Line
	11200 6700 7050 6700
Wire Notes Line
	7050 6700 7050 3200
Wire Notes Line
	7550 850  3700 850 
Wire Notes Line
	7550 850  7550 2750
Wire Notes Line
	7550 2750 3700 2750
Wire Notes Line
	3700 2750 3700 850 
Wire Wire Line
	3850 2350 3850 2300
Wire Wire Line
	3850 2300 4100 2300
Wire Wire Line
	1650 2050 1650 2000
Connection ~ 1650 2000
Wire Wire Line
	1800 2000 1800 1950
Connection ~ 1800 2000
Connection ~ 1800 2000
Wire Wire Line
	11050 1200 11050 1250
Connection ~ 11050 1250
$EndSCHEMATC
