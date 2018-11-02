EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
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
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic_symbols
LIBS:hc11
LIBS:infineon
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:logic_programmable
LIBS:maxim
LIBS:mechanical
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:modules
LIBS:motor_drivers
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:transf
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:zetex
LIBS:Zilog
LIBS:Clock-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATTINY13A-PU U1
U 1 1 5AC3F7ED
P 2850 4750
F 0 "U1" H 2050 5150 50  0000 C CNN
F 1 "ATTINY13A-PU" H 3500 4350 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 3500 4750 50  0001 C CIN
F 3 "" H 2050 5100 50  0001 C CNN
	1    2850 4750
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 5AC3F8EB
P 3350 2750
F 0 "R1" V 3430 2750 50  0000 C CNN
F 1 "200" V 3350 2750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3280 2750 50  0001 C CNN
F 3 "" H 3350 2750 50  0001 C CNN
	1    3350 2750
	0    1    1    0   
$EndComp
$Comp
L LED D3
U 1 1 5AC3F96E
P 4400 2550
F 0 "D3" H 4400 2650 50  0000 C CNN
F 1 "LED" H 4400 2450 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 4400 2550 50  0001 C CNN
F 3 "" H 4400 2550 50  0001 C CNN
	1    4400 2550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR01
U 1 1 5AC3FAFE
P 1750 4500
F 0 "#PWR01" H 1750 4250 50  0001 C CNN
F 1 "GND" H 1750 4350 50  0000 C CNN
F 2 "" H 1750 4500 50  0001 C CNN
F 3 "" H 1750 4500 50  0001 C CNN
	1    1750 4500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 5AC3FB35
P 1750 5000
F 0 "#PWR02" H 1750 4850 50  0001 C CNN
F 1 "+5V" H 1750 5140 50  0000 C CNN
F 2 "" H 1750 5000 50  0001 C CNN
F 3 "" H 1750 5000 50  0001 C CNN
	1    1750 5000
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5AC3FB9D
P 2500 6650
F 0 "C1" H 2525 6750 50  0000 L CNN
F 1 "100n" H 2525 6550 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_Tantal_D5.0mm_P5.00mm" H 2538 6500 50  0001 C CNN
F 3 "" H 2500 6650 50  0001 C CNN
	1    2500 6650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 5AC3FBF9
P 2850 6500
F 0 "#PWR03" H 2850 6350 50  0001 C CNN
F 1 "+5V" H 2850 6640 50  0000 C CNN
F 2 "" H 2850 6500 50  0001 C CNN
F 3 "" H 2850 6500 50  0001 C CNN
	1    2850 6500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5AC3FC32
P 2850 6800
F 0 "#PWR04" H 2850 6550 50  0001 C CNN
F 1 "GND" H 2850 6650 50  0000 C CNN
F 2 "" H 2850 6800 50  0001 C CNN
F 3 "" H 2850 6800 50  0001 C CNN
	1    2850 6800
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5AC3FD09
P 5050 6350
F 0 "R2" V 5130 6350 50  0000 C CNN
F 1 "10K" V 5050 6350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4980 6350 50  0001 C CNN
F 3 "" H 5050 6350 50  0001 C CNN
	1    5050 6350
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 5AC3FD69
P 4600 6500
F 0 "SW1" H 4650 6600 50  0000 L CNN
F 1 "SW_Push" H 4600 6440 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 4600 6700 50  0001 C CNN
F 3 "" H 4600 6700 50  0001 C CNN
	1    4600 6500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 5AC40015
P 3700 6200
F 0 "#PWR05" H 3700 6050 50  0001 C CNN
F 1 "+5V" H 3700 6340 50  0000 C CNN
F 2 "" H 3700 6200 50  0001 C CNN
F 3 "" H 3700 6200 50  0001 C CNN
	1    3700 6200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5AC4003B
P 3700 6500
F 0 "#PWR06" H 3700 6250 50  0001 C CNN
F 1 "GND" H 3700 6350 50  0000 C CNN
F 2 "" H 3700 6500 50  0001 C CNN
F 3 "" H 3700 6500 50  0001 C CNN
	1    3700 6500
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5AC40061
P 4000 6350
F 0 "C2" H 4025 6450 50  0000 L CNN
F 1 "100n" H 4025 6250 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_Tantal_D5.0mm_P5.00mm" H 4038 6200 50  0001 C CNN
F 3 "" H 4000 6350 50  0001 C CNN
	1    4000 6350
	1    0    0    -1  
$EndComp
Text GLabel 4100 4500 2    60   Input ~ 0
Reset-Pin
Text GLabel 5300 6500 2    60   Input ~ 0
Reset-Pin
Text GLabel 4750 4600 2    60   Input ~ 0
ADC_Pin
Text GLabel 9750 4550 1    60   Input ~ 0
ADC_Pin
$Comp
L GND #PWR07
U 1 1 5AC40B81
P 10650 4550
F 0 "#PWR07" H 10650 4300 50  0001 C CNN
F 1 "GND" H 10650 4400 50  0000 C CNN
F 2 "" H 10650 4550 50  0001 C CNN
F 3 "" H 10650 4550 50  0001 C CNN
	1    10650 4550
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5AC40BA4
P 10200 4550
F 0 "R10" V 10280 4550 50  0000 C CNN
F 1 "1K" V 10200 4550 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10130 4550 50  0001 C CNN
F 3 "" H 10200 4550 50  0001 C CNN
	1    10200 4550
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 5AC40D74
P 9050 5150
F 0 "R9" V 9130 5150 50  0000 C CNN
F 1 "200" V 9050 5150 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8980 5150 50  0001 C CNN
F 3 "" H 9050 5150 50  0001 C CNN
	1    9050 5150
	0    1    1    0   
$EndComp
$Comp
L SW_Push SW5
U 1 1 5AC41185
P 9400 4950
F 0 "SW5" H 9450 5050 50  0000 L CNN
F 1 "SW_Push" H 9400 4890 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 9400 5150 50  0001 C CNN
F 3 "" H 9400 5150 50  0001 C CNN
	1    9400 4950
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 5AC41493
P 8350 5150
F 0 "R8" V 8430 5150 50  0000 C CNN
F 1 "200" V 8350 5150 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8280 5150 50  0001 C CNN
F 3 "" H 8350 5150 50  0001 C CNN
	1    8350 5150
	0    1    1    0   
$EndComp
$Comp
L SW_Push SW4
U 1 1 5AC41499
P 8700 4950
F 0 "SW4" H 8750 5050 50  0000 L CNN
F 1 "SW_Push" H 8700 4890 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 8700 5150 50  0001 C CNN
F 3 "" H 8700 5150 50  0001 C CNN
	1    8700 4950
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 5AC4164B
P 7650 5150
F 0 "R4" V 7730 5150 50  0000 C CNN
F 1 "200" V 7650 5150 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7580 5150 50  0001 C CNN
F 3 "" H 7650 5150 50  0001 C CNN
	1    7650 5150
	0    1    1    0   
$EndComp
$Comp
L SW_Push SW3
U 1 1 5AC41651
P 8000 4950
F 0 "SW3" H 8050 5050 50  0000 L CNN
F 1 "SW_Push" H 8000 4890 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 8000 5150 50  0001 C CNN
F 3 "" H 8000 5150 50  0001 C CNN
	1    8000 4950
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 5AC41659
P 6950 5150
F 0 "R3" V 7030 5150 50  0000 C CNN
F 1 "200" V 6950 5150 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6880 5150 50  0001 C CNN
F 3 "" H 6950 5150 50  0001 C CNN
	1    6950 5150
	0    1    1    0   
$EndComp
$Comp
L SW_Push SW2
U 1 1 5AC4165F
P 7300 4950
F 0 "SW2" H 7350 5050 50  0000 L CNN
F 1 "SW_Push" H 7300 4890 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 7300 5150 50  0001 C CNN
F 3 "" H 7300 5150 50  0001 C CNN
	1    7300 4950
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR08
U 1 1 5AC41DB8
P 6600 5150
F 0 "#PWR08" H 6600 5000 50  0001 C CNN
F 1 "+5V" H 6600 5290 50  0000 C CNN
F 2 "" H 6600 5150 50  0001 C CNN
F 3 "" H 6600 5150 50  0001 C CNN
	1    6600 5150
	1    0    0    -1  
$EndComp
$Comp
L LED D4
U 1 1 5AC4284F
P 4400 2950
F 0 "D4" H 4400 3050 50  0000 C CNN
F 1 "LED" H 4400 2850 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 4400 2950 50  0001 C CNN
F 3 "" H 4400 2950 50  0001 C CNN
	1    4400 2950
	1    0    0    -1  
$EndComp
$Comp
L LED D7
U 1 1 5AC42AC8
P 5500 2550
F 0 "D7" H 5500 2650 50  0000 C CNN
F 1 "LED" H 5500 2450 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 5500 2550 50  0001 C CNN
F 3 "" H 5500 2550 50  0001 C CNN
	1    5500 2550
	-1   0    0    1   
$EndComp
$Comp
L LED D8
U 1 1 5AC42ACE
P 5500 2950
F 0 "D8" H 5500 3050 50  0000 C CNN
F 1 "LED" H 5500 2850 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 5500 2950 50  0001 C CNN
F 3 "" H 5500 2950 50  0001 C CNN
	1    5500 2950
	1    0    0    -1  
$EndComp
$Comp
L LED D11
U 1 1 5AC42BE8
P 6600 2550
F 0 "D11" H 6600 2650 50  0000 C CNN
F 1 "LED" H 6600 2450 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 6600 2550 50  0001 C CNN
F 3 "" H 6600 2550 50  0001 C CNN
	1    6600 2550
	-1   0    0    1   
$EndComp
$Comp
L LED D12
U 1 1 5AC42BEE
P 6600 2950
F 0 "D12" H 6600 3050 50  0000 C CNN
F 1 "LED" H 6600 2850 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 6600 2950 50  0001 C CNN
F 3 "" H 6600 2950 50  0001 C CNN
	1    6600 2950
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 5AC42E2F
P 4400 1450
F 0 "D1" H 4400 1550 50  0000 C CNN
F 1 "LED" H 4400 1350 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 4400 1450 50  0001 C CNN
F 3 "" H 4400 1450 50  0001 C CNN
	1    4400 1450
	-1   0    0    1   
$EndComp
$Comp
L LED D2
U 1 1 5AC42E35
P 4400 1850
F 0 "D2" H 4400 1950 50  0000 C CNN
F 1 "LED" H 4400 1750 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 4400 1850 50  0001 C CNN
F 3 "" H 4400 1850 50  0001 C CNN
	1    4400 1850
	1    0    0    -1  
$EndComp
$Comp
L LED D5
U 1 1 5AC42E3D
P 5500 1450
F 0 "D5" H 5500 1550 50  0000 C CNN
F 1 "LED" H 5500 1350 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 5500 1450 50  0001 C CNN
F 3 "" H 5500 1450 50  0001 C CNN
	1    5500 1450
	-1   0    0    1   
$EndComp
$Comp
L LED D6
U 1 1 5AC42E43
P 5500 1850
F 0 "D6" H 5500 1950 50  0000 C CNN
F 1 "LED" H 5500 1750 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 5500 1850 50  0001 C CNN
F 3 "" H 5500 1850 50  0001 C CNN
	1    5500 1850
	1    0    0    -1  
$EndComp
$Comp
L LED D9
U 1 1 5AC42E4B
P 6600 1450
F 0 "D9" H 6600 1550 50  0000 C CNN
F 1 "LED" H 6600 1350 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 6600 1450 50  0001 C CNN
F 3 "" H 6600 1450 50  0001 C CNN
	1    6600 1450
	-1   0    0    1   
$EndComp
$Comp
L LED D10
U 1 1 5AC42E51
P 6600 1850
F 0 "D10" H 6600 1950 50  0000 C CNN
F 1 "LED" H 6600 1750 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 6600 1850 50  0001 C CNN
F 3 "" H 6600 1850 50  0001 C CNN
	1    6600 1850
	1    0    0    -1  
$EndComp
Text GLabel 8250 1250 2    60   Input ~ 0
PIN_A
Text GLabel 4750 5000 2    60   Input ~ 0
PIN_A
Text GLabel 8250 2050 2    60   Input ~ 0
PIN_B
Text GLabel 4100 4900 2    60   Input ~ 0
PIN_B
Text GLabel 3100 2750 0    60   Input ~ 0
PIN_C
Text GLabel 4750 4800 2    60   Input ~ 0
PIN_C
Text GLabel 8250 3250 2    60   Input ~ 0
PIN_D
Text GLabel 4100 4700 2    60   Input ~ 0
PIN_D
Wire Wire Line
	1750 4500 1850 4500
Wire Wire Line
	1750 5000 1850 5000
Wire Wire Line
	4800 6500 5300 6500
Connection ~ 5050 6500
Wire Wire Line
	3700 6500 4400 6500
Connection ~ 4000 6500
Wire Wire Line
	3700 6200 5050 6200
Connection ~ 4000 6200
Wire Wire Line
	3850 4500 4100 4500
Wire Wire Line
	4750 4600 3850 4600
Wire Wire Line
	7300 4550 10050 4550
Wire Wire Line
	10350 4550 10650 4550
Wire Wire Line
	9400 5150 9200 5150
Wire Wire Line
	9400 4750 9400 4550
Wire Wire Line
	8500 5150 8900 5150
Wire Wire Line
	8700 4750 8700 4550
Connection ~ 9400 4550
Connection ~ 8700 5150
Wire Wire Line
	7800 5150 8200 5150
Wire Wire Line
	8000 4750 8000 4550
Wire Wire Line
	7100 5150 7500 5150
Wire Wire Line
	7300 4750 7300 4550
Connection ~ 8000 4550
Connection ~ 7300 5150
Connection ~ 8000 5150
Connection ~ 8700 4550
Wire Wire Line
	6600 5150 6800 5150
Wire Wire Line
	4250 2950 4250 2550
Wire Wire Line
	4550 2550 4550 2950
Wire Wire Line
	5350 2950 5350 2550
Wire Wire Line
	5650 2550 5650 2950
Wire Wire Line
	6450 2950 6450 2550
Wire Wire Line
	6750 2550 6750 2950
Wire Wire Line
	4250 1850 4250 1450
Wire Wire Line
	4550 1450 4550 1850
Wire Wire Line
	5350 1850 5350 1450
Wire Wire Line
	5650 1450 5650 1850
Wire Wire Line
	6450 1850 6450 1450
Wire Wire Line
	6750 1450 6750 1850
Wire Wire Line
	7850 1250 4750 1250
Wire Wire Line
	4750 1250 4750 1650
Wire Wire Line
	4750 1650 4550 1650
Connection ~ 4550 1650
Wire Wire Line
	5650 1650 5850 1650
Wire Wire Line
	5850 1650 5850 1250
Connection ~ 5850 1250
Connection ~ 5650 1650
Wire Wire Line
	6750 1650 6950 1650
Wire Wire Line
	6950 1650 6950 1250
Connection ~ 6950 1250
Connection ~ 6750 1650
Wire Wire Line
	4750 5000 3850 5000
Wire Wire Line
	4100 4900 3850 4900
Wire Wire Line
	4750 4800 3850 4800
Wire Wire Line
	4100 4700 3850 4700
Connection ~ 6450 1650
Wire Wire Line
	6450 1650 6250 1650
Wire Wire Line
	6250 1650 6250 2050
Wire Wire Line
	4750 2050 7850 2050
Wire Wire Line
	4550 2750 4750 2750
Wire Wire Line
	4750 2750 4750 2050
Connection ~ 6250 2050
Connection ~ 4550 2750
Wire Wire Line
	5650 2750 5850 2750
Wire Wire Line
	5850 2750 5850 2050
Connection ~ 5850 2050
Connection ~ 5650 2750
Wire Wire Line
	5350 2750 5150 2750
Wire Wire Line
	5150 2750 5150 3250
Wire Wire Line
	4050 3250 7850 3250
Connection ~ 5350 2750
Wire Wire Line
	6750 2750 6950 2750
Wire Wire Line
	6950 2750 6950 3250
Connection ~ 6950 3250
Connection ~ 6750 2750
Wire Wire Line
	4050 3250 4050 1650
Wire Wire Line
	4050 1650 4250 1650
Connection ~ 4250 1650
Connection ~ 5150 3250
Wire Wire Line
	3500 2750 4250 2750
Connection ~ 4250 2750
Wire Wire Line
	6450 2750 6250 2750
Wire Wire Line
	6250 2750 6250 3450
Wire Wire Line
	6250 3450 3750 3450
Wire Wire Line
	3750 3450 3750 1050
Connection ~ 3750 2750
Connection ~ 6450 2750
Wire Wire Line
	5350 1650 5150 1650
Wire Wire Line
	5150 1650 5150 1050
Wire Wire Line
	5150 1050 3750 1050
Connection ~ 5350 1650
Wire Wire Line
	3200 2750 3100 2750
$Comp
L R R7
U 1 1 5AC43F84
P 8000 3250
F 0 "R7" V 8080 3250 50  0000 C CNN
F 1 "200" V 8000 3250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7930 3250 50  0001 C CNN
F 3 "" H 8000 3250 50  0001 C CNN
	1    8000 3250
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5AC44358
P 8000 2050
F 0 "R6" V 8080 2050 50  0000 C CNN
F 1 "200" V 8000 2050 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7930 2050 50  0001 C CNN
F 3 "" H 8000 2050 50  0001 C CNN
	1    8000 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 2050 8150 2050
$Comp
L R R5
U 1 1 5AC4459B
P 8000 1250
F 0 "R5" V 8080 1250 50  0000 C CNN
F 1 "200" V 8000 1250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7930 1250 50  0001 C CNN
F 3 "" H 8000 1250 50  0001 C CNN
	1    8000 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 1250 8250 1250
Wire Wire Line
	8150 3250 8250 3250
$Comp
L USB_B J1
U 1 1 5AC45098
P 1950 6400
F 0 "J1" H 1750 6850 50  0000 L CNN
F 1 "USB_B" H 1750 6750 50  0000 L CNN
F 2 "Connectors:USB_B" H 2100 6350 50  0001 C CNN
F 3 "" H 2100 6350 50  0001 C CNN
	1    1950 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 6500 2500 6500
Wire Wire Line
	2500 6500 2500 6200
Wire Wire Line
	2500 6200 2250 6200
Wire Wire Line
	1950 6800 2850 6800
Connection ~ 2500 6800
Connection ~ 2500 6500
Wire Notes Line
	2350 3800 9100 3800
Wire Notes Line
	9100 3800 9100 700 
Wire Notes Line
	9100 700  2350 700 
Wire Notes Line
	2350 700  2350 3800
Wire Notes Line
	1250 4700 1250 5450
Wire Notes Line
	1250 5450 5650 5450
Wire Notes Line
	5650 5450 5650 4000
Wire Notes Line
	5650 4000 1250 4000
Wire Notes Line
	1250 4000 1250 4650
Wire Notes Line
	1300 6400 1300 7300
Wire Notes Line
	1300 7300 3200 7300
Wire Notes Line
	3200 7300 3200 5700
Wire Notes Line
	3200 5700 1300 5700
Wire Notes Line
	1300 5700 1300 6450
Wire Notes Line
	3450 5700 3450 7000
Wire Notes Line
	3450 7000 6050 7000
Wire Notes Line
	6050 7000 6050 5700
Wire Notes Line
	6050 5700 3450 5700
Wire Notes Line
	6200 4000 6200 5500
Wire Notes Line
	6200 5500 11000 5500
Wire Notes Line
	11000 5500 11000 4000
Wire Notes Line
	11000 4000 6200 4000
Text Notes 6400 4350 0    79   ~ 0
Enlesen des gedrückten Tasters\nüber einen Spannungsteiler
Text Notes 7350 2650 0    79   ~ 0
Ansteuerung der LEDs
Text Notes 2150 5350 0    79   ~ 0
Anschlüsse am Attiny13A
Text Notes 1350 7200 0    79   ~ 0
Stromversorgung und\nStabilisierung der Spannung
Text Notes 4000 6850 0    79   ~ 0
Reset-Schaltung
NoConn ~ 2250 6400
NoConn ~ 2250 6500
NoConn ~ 1850 6800
$EndSCHEMATC
