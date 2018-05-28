EESchema Schematic File Version 2
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
LIBS:switches
LIBS:leds
LIBS:z80ctrl-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "z80ctrl board"
Date "2018-05-10"
Rev "REV2"
Comp "J.B. Langston"
Comment1 "https://github.com/jblang/z80ctrl"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X39 J1
U 1 1 57B2D86C
P 1800 4150
F 0 "J1" H 1800 6200 50  0000 C CNN
F 1 "BUS" V 1900 4150 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x39_Pitch2.54mm" H 1800 4150 50  0001 C CNN
F 3 "" H 1800 4150 50  0001 C CNN
F 4 "A-638" H 1800 4150 60  0001 C CNN "TaydaPN"
F 5 "s1012ec-39-nd" H 1800 4150 60  0001 C CNN "DigikeyPN"
	1    1800 4150
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x23 J2
U 1 1 57B2E338
P 3050 4950
F 0 "J2" H 3050 5500 50  0000 C CNN
F 1 "BUSEXT" V 3150 4950 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x23_Pitch2.54mm" H 3050 4950 50  0001 C CNN
F 3 "" H 3050 4950 50  0001 C CNN
F 4 "A-638" H 3050 4950 60  0001 C CNN "TaydaPN"
F 5 "s1012ec-39-nd" H 3050 4950 60  0001 C CNN "DigikeyPN"
	1    3050 4950
	1    0    0    -1  
$EndComp
Text GLabel 1600 2250 0    60   BiDi ~ 0
A15
Text GLabel 1600 2350 0    60   BiDi ~ 0
A14
Text GLabel 1600 2450 0    60   BiDi ~ 0
A13
Text GLabel 1600 2550 0    60   BiDi ~ 0
A12
Text GLabel 1600 2650 0    60   BiDi ~ 0
A11
Text GLabel 1600 2750 0    60   BiDi ~ 0
A10
Text GLabel 1600 2850 0    60   3State ~ 0
A9
Text GLabel 1600 2950 0    60   3State ~ 0
A8
Text GLabel 1600 3050 0    60   3State ~ 0
A7
Text GLabel 1600 3150 0    60   3State ~ 0
A6
Text GLabel 1600 3250 0    60   3State ~ 0
A5
Text GLabel 1600 3350 0    60   3State ~ 0
A4
Text GLabel 1600 3450 0    60   3State ~ 0
A3
Text GLabel 1600 3550 0    60   3State ~ 0
A2
Text GLabel 1600 3650 0    60   3State ~ 0
A1
Text GLabel 1600 3750 0    60   3State ~ 0
A0
Text GLabel 1600 4050 0    60   Input ~ 0
/M1
Text GLabel 1600 4150 0    60   BiDi ~ 0
/RST
Text GLabel 1600 4250 0    60   Input ~ 0
CLK
Text GLabel 1600 4350 0    60   Input ~ 0
/INT
Text GLabel 1600 4450 0    60   3State ~ 0
/MREQ
Text GLabel 1600 4550 0    60   3State ~ 0
/WR
Text GLabel 1600 4650 0    60   3State ~ 0
/RD
Text GLabel 1600 4750 0    60   3State ~ 0
/IORQ
Text GLabel 1600 4850 0    60   3State ~ 0
D0
Text GLabel 1600 4950 0    60   3State ~ 0
D1
Text GLabel 1600 5050 0    60   3State ~ 0
D2
Text GLabel 1600 5150 0    60   3State ~ 0
D3
Text GLabel 1600 5250 0    60   3State ~ 0
D4
Text GLabel 1600 5350 0    60   3State ~ 0
D5
Text GLabel 1600 5450 0    60   3State ~ 0
D6
Text GLabel 1600 5550 0    60   3State ~ 0
D7
Text GLabel 1600 5650 0    60   Input ~ 0
TX
Text GLabel 1600 5750 0    60   Output ~ 0
RX
Text GLabel 1600 5850 0    60   Input ~ 0
SCK
Text GLabel 1600 5950 0    60   Output ~ 0
MISO
Text GLabel 1600 6050 0    60   Input ~ 0
MOSI
Text GLabel 2850 4050 0    60   Input ~ 0
/RFSH
Text GLabel 2850 4350 0    60   Input ~ 0
/BUSACK
Text GLabel 2850 4550 0    60   Input ~ 0
/BUSREQ
Text GLabel 2850 4450 0    60   Input ~ 0
/HALT
Text GLabel 2850 4650 0    60   Input ~ 0
/WAIT
Text GLabel 2850 4750 0    60   Input ~ 0
/NMI
$Comp
L ATMEGA1284P-PU U2
U 1 1 5A660EE7
P 4950 3800
F 0 "U2" H 4100 5680 50  0000 L BNN
F 1 "ATMEGA1284P-PU" H 5350 1850 50  0000 L BNN
F 2 "Housings_DIP:DIP-40_W15.24mm_Socket" H 4950 3800 50  0001 C CIN
F 3 "" H 4950 3800 50  0001 C CNN
F 4 "ATMEGA1284P-PU-ND" H 4950 3800 60  0001 C CNN "DigikeyPN"
F 5 "556-ATMEGA1284P-PU" H 4950 3800 60  0001 C CNN "MouserPN"
	1    4950 3800
	1    0    0    -1  
$EndComp
$Comp
L MCP23S17 U4
U 1 1 5A66100C
P 8200 3500
F 0 "U4" H 8100 4525 50  0000 R CNN
F 1 "MCP23S17" H 8100 4450 50  0000 R CNN
F 2 "Housings_DIP:DIP-28_W7.62mm_Socket" H 8250 2550 50  0001 L CNN
F 3 "" H 8450 4500 50  0001 C CNN
F 4 "MCP23S17-E/SP-ND" H 8200 3500 60  0001 C CNN "DigikeyPN"
F 5 "579-MCP23S17-E/SP" H 8200 3500 60  0001 C CNN "MouserPN"
	1    8200 3500
	1    0    0    -1  
$EndComp
$Comp
L 74HC74 U3
U 1 1 5A6610B3
P 5350 6750
F 0 "U3" H 5500 7050 50  0000 C CNN
F 1 "74HCT74" H 5650 6455 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 5350 6750 50  0001 C CNN
F 3 "" H 5350 6750 50  0001 C CNN
F 4 "296-1625-5-ND" H 5350 6750 60  0001 C CNN "DigikeyPN"
F 5 "595-SN74HCT74N" H 5350 6750 60  0001 C CNN "MouserPN"
	1    5350 6750
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y1
U 1 1 5A66115E
P 3400 2900
F 0 "Y1" H 3400 3050 50  0000 C CNN
F 1 "20MHz" H 3400 2750 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-4H_Vertical" H 3400 2900 50  0001 C CNN
F 3 "" H 3400 2900 50  0001 C CNN
F 4 "A-236" H 3400 2900 60  0001 C CNN "TaydaPN"
F 5 "535-9046-ND" H 3400 2900 60  0001 C CNN "DigikeyPN"
F 6 "815-ABL-20-B2" H 3400 2900 60  0001 C CNN "MouserPN"
	1    3400 2900
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5A6617B0
P 9400 2600
F 0 "C6" H 9425 2700 50  0000 L CNN
F 1 ".1uf" H 9425 2500 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 9438 2450 50  0001 C CNN
F 3 "" H 9400 2600 50  0001 C CNN
	1    9400 2600
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5A6618AD
P 9400 1450
F 0 "C7" H 9425 1550 50  0000 L CNN
F 1 ".1uf" H 9425 1350 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 9438 1300 50  0001 C CNN
F 3 "" H 9400 1450 50  0001 C CNN
	1    9400 1450
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5A6619CE
P 4550 1450
F 0 "C4" H 4575 1550 50  0000 L CNN
F 1 ".1uf" H 4575 1350 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4588 1300 50  0001 C CNN
F 3 "" H 4550 1450 50  0001 C CNN
	1    4550 1450
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5A661A4D
P 3050 3050
F 0 "C2" H 3075 3150 50  0000 L CNN
F 1 "18pf" H 3075 2950 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3088 2900 50  0001 C CNN
F 3 "" H 3050 3050 50  0001 C CNN
F 4 "594-K180J15C0GF5TL2" H 3050 3050 60  0001 C CNN "MouserPN"
F 5 "BC1004CT-ND" H 3050 3050 60  0001 C CNN "DigikeyPN"
F 6 "A-522" H 3050 3050 60  0001 C CNN "TaydaPN"
	1    3050 3050
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5A661B38
P 3700 3050
F 0 "C3" H 3725 3150 50  0000 L CNN
F 1 "18pf" H 3725 2950 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3738 2900 50  0001 C CNN
F 3 "" H 3700 3050 50  0001 C CNN
	1    3700 3050
	1    0    0    -1  
$EndComp
Text GLabel 5950 2100 2    60   BiDi ~ 0
A0
Text GLabel 5950 2200 2    60   BiDi ~ 0
A1
Text GLabel 5950 2300 2    60   BiDi ~ 0
A2
Text GLabel 5950 2400 2    60   BiDi ~ 0
A3
Text GLabel 5950 2500 2    60   BiDi ~ 0
A4
Text GLabel 5950 2600 2    60   BiDi ~ 0
A5
Text GLabel 5950 2700 2    60   BiDi ~ 0
A6
Text GLabel 5950 2800 2    60   BiDi ~ 0
A7
Text GLabel 5950 3900 2    60   BiDi ~ 0
D0
Text GLabel 5950 4000 2    60   BiDi ~ 0
D1
Text GLabel 5950 4100 2    60   BiDi ~ 0
D2
Text GLabel 5950 4200 2    60   BiDi ~ 0
D3
Text GLabel 5950 4300 2    60   BiDi ~ 0
D4
Text GLabel 5950 4400 2    60   BiDi ~ 0
D5
Text GLabel 5950 4500 2    60   BiDi ~ 0
D6
Text GLabel 5950 4600 2    60   BiDi ~ 0
D7
$Comp
L GND #PWR01
U 1 1 5A664559
P 4950 5800
F 0 "#PWR01" H 4950 5550 50  0001 C CNN
F 1 "GND" H 4950 5650 50  0000 C CNN
F 2 "" H 4950 5800 50  0001 C CNN
F 3 "" H 4950 5800 50  0001 C CNN
	1    4950 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5A66459A
P 4750 5800
F 0 "#PWR02" H 4750 5550 50  0001 C CNN
F 1 "GND" H 4750 5650 50  0000 C CNN
F 2 "" H 4750 5800 50  0001 C CNN
F 3 "" H 4750 5800 50  0001 C CNN
	1    4750 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5A66487E
P 8200 4650
F 0 "#PWR03" H 8200 4400 50  0001 C CNN
F 1 "GND" H 8200 4500 50  0000 C CNN
F 2 "" H 8200 4650 50  0001 C CNN
F 3 "" H 8200 4650 50  0001 C CNN
	1    8200 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5A664A0F
P 4550 1700
F 0 "#PWR04" H 4550 1450 50  0001 C CNN
F 1 "GND" H 4550 1550 50  0000 C CNN
F 2 "" H 4550 1700 50  0001 C CNN
F 3 "" H 4550 1700 50  0001 C CNN
	1    4550 1700
	1    0    0    -1  
$EndComp
Text GLabel 5950 5400 2    60   Output ~ 0
CLK
Text GLabel 5950 5200 2    60   BiDi ~ 0
/RD
Text GLabel 5950 5300 2    60   BiDi ~ 0
/WR
Text GLabel 7700 3200 0    60   BiDi ~ 0
/MREQ
Text GLabel 5950 3000 2    60   Output ~ 0
/IOACK
$Comp
L D D1
U 1 1 5A665457
P 6750 5500
F 0 "D1" H 6750 5600 50  0000 C CNN
F 1 "1N4148" H 6750 5400 50  0000 C CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6750 5500 50  0001 C CNN
F 3 "" H 6750 5500 50  0001 C CNN
F 4 "A-157" H 6750 5500 60  0001 C CNN "TaydaPN"
F 5 "1N4148FS-ND" H 6750 5500 60  0001 C CNN "DigikeyPN"
F 6 "512-1N4148" H 6750 5500 60  0001 C CNN "MouserPN"
	1    6750 5500
	-1   0    0    -1  
$EndComp
Text GLabel 6900 5500 2    60   Input ~ 0
/HALT
Text GLabel 5950 3300 2    60   Output ~ 0
SPIA0
Text GLabel 7700 2800 0    60   Input ~ 0
/M1
Text GLabel 5950 3700 2    60   Output ~ 0
SCK
Text GLabel 5950 3600 2    60   Input ~ 0
MISO
Text GLabel 5950 3500 2    60   Output ~ 0
MOSI
Text GLabel 5950 3400 2    60   Output ~ 0
SPIA1
Text GLabel 7700 4300 0    60   BiDi ~ 0
A15
Text GLabel 7700 4200 0    60   BiDi ~ 0
A14
Text GLabel 7700 4100 0    60   BiDi ~ 0
A13
Text GLabel 7700 4000 0    60   BiDi ~ 0
A12
Text GLabel 7700 3900 0    60   BiDi ~ 0
A11
Text GLabel 7700 3800 0    60   BiDi ~ 0
A10
Text GLabel 7700 3700 0    60   3State ~ 0
A9
Text GLabel 7700 3600 0    60   3State ~ 0
A8
Text GLabel 8700 3600 2    60   Input ~ 0
/IOXCS
Text GLabel 7700 3000 0    60   Output ~ 0
/INT
Text GLabel 7700 3400 0    60   Output ~ 0
/NMI
Text GLabel 6900 2900 0    60   Output ~ 0
/RST
Text GLabel 5950 3200 2    60   Output ~ 0
/BUSREQ
Text GLabel 7700 3100 0    60   Input ~ 0
/BUSACK
Text GLabel 5950 6950 2    60   Output ~ 0
/WAIT
Text GLabel 1350 7100 0    60   Input ~ 0
/IORQ
Text GLabel 5350 7300 3    60   Input ~ 0
/IOACK
$Comp
L GND #PWR05
U 1 1 5A668722
P 4650 7100
F 0 "#PWR05" H 4650 6850 50  0001 C CNN
F 1 "GND" H 4650 6950 50  0000 C CNN
F 2 "" H 4650 7100 50  0001 C CNN
F 3 "" H 4650 7100 50  0001 C CNN
	1    4650 7100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5A66A903
P 9400 2750
F 0 "#PWR06" H 9400 2500 50  0001 C CNN
F 1 "GND" H 9400 2600 50  0000 C CNN
F 2 "" H 9400 2750 50  0001 C CNN
F 3 "" H 9400 2750 50  0001 C CNN
	1    9400 2750
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 5A66A9CD
P 3050 2100
F 0 "SW1" H 3100 2200 50  0000 L CNN
F 1 "RESET" H 3050 2040 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_Tactile_Straight_KSA0Axx1LFTR" H 3050 2300 50  0001 C CNN
F 3 "" H 3050 2300 50  0001 C CNN
F 4 "A-5127" H 3050 2100 60  0001 C CNN "TaydaPN"
F 5 "401-1814-ND" H 3050 2100 60  0001 C CNN "DigikeyPN"
F 6 "611-KSA0M412LFT" H 3050 2100 60  0001 C CNN "MouserPN"
	1    3050 2100
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A66B05E
P 3350 1900
F 0 "R1" V 3430 1900 50  0000 C CNN
F 1 "10K" V 3350 1900 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3280 1900 50  0001 C CNN
F 3 "" H 3350 1900 50  0001 C CNN
F 4 "A-2115" V 3350 1900 60  0001 C CNN "TaydaPN"
F 5 "10KQBK-ND" V 3350 1900 60  0001 C CNN "DigikeyPN"
F 6 "CFR-25JB-52-10K" V 3350 1900 60  0001 C CNN "MouserPN"
	1    3350 1900
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 5A66B637
P 7050 5850
F 0 "SW2" H 7100 5950 50  0000 L CNN
F 1 "HALT" H 7050 5790 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_Tactile_Straight_KSA0Axx1LFTR" H 7050 6050 50  0001 C CNN
F 3 "" H 7050 6050 50  0001 C CNN
F 4 "A-197" H 7050 5850 60  0001 C CNN "TaydaPN"
	1    7050 5850
	1    0    0    -1  
$EndComp
Text GLabel 5950 4800 2    60   Input ~ 0
RX
Text GLabel 5950 4900 2    60   Output ~ 0
TX
$Comp
L GND #PWR07
U 1 1 5A675580
P 10600 1800
F 0 "#PWR07" H 10600 1550 50  0001 C CNN
F 1 "GND" H 10600 1650 50  0000 C CNN
F 2 "" H 10600 1800 50  0001 C CNN
F 3 "" H 10600 1800 50  0001 C CNN
	1    10600 1800
	1    0    0    -1  
$EndComp
Text GLabel 10650 1400 0    60   Input ~ 0
TX
Text GLabel 10650 1500 0    60   Output ~ 0
RX
$Comp
L Conn_01x09 J7
U 1 1 5A675AC4
P 10550 3850
F 0 "J7" H 10550 4350 50  0000 C CNN
F 1 "Pololu SD" H 10550 3350 50  0000 C CNN
F 2 "custom:microSD_Breakout_VR_LS" H 10550 3850 50  0001 C CNN
F 3 "https://www.pololu.com/product/2587" H 10550 3850 50  0001 C CNN
F 4 "2587" H 10550 3850 60  0001 C CNN "PololuPN"
	1    10550 3850
	1    0    0    1   
$EndComp
Text GLabel 9600 3650 0    60   Input ~ 0
/SDCS
Text GLabel 10300 3750 0    60   Input ~ 0
SCK
Text GLabel 10300 3850 0    60   Output ~ 0
MISO
Text GLabel 10300 3950 0    60   Input ~ 0
MOSI
NoConn ~ 8700 3100
Text GLabel 3900 1900 1    60   Input ~ 0
/AVRRST
NoConn ~ 10350 4050
NoConn ~ 10650 1700
$Comp
L VCC #PWR08
U 1 1 5A676606
P 4750 1100
F 0 "#PWR08" H 4750 950 50  0001 C CNN
F 1 "VCC" H 4750 1250 50  0000 C CNN
F 2 "" H 4750 1100 50  0001 C CNN
F 3 "" H 4750 1100 50  0001 C CNN
	1    4750 1100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR09
U 1 1 5A67663E
P 3950 3200
F 0 "#PWR09" H 3950 3050 50  0001 C CNN
F 1 "VCC" H 3950 3350 50  0000 C CNN
F 2 "" H 3950 3200 50  0001 C CNN
F 3 "" H 3950 3200 50  0001 C CNN
	1    3950 3200
	1    0    0    -1  
$EndComp
NoConn ~ 5950 6550
Text GLabel 8700 2700 2    60   Input ~ 0
/AVRRST
$Comp
L VCC #PWR010
U 1 1 5A676B87
P 8200 2400
F 0 "#PWR010" H 8200 2250 50  0001 C CNN
F 1 "VCC" H 8200 2550 50  0000 C CNN
F 2 "" H 8200 2400 50  0001 C CNN
F 3 "" H 8200 2400 50  0001 C CNN
	1    8200 2400
	1    0    0    -1  
$EndComp
Text GLabel 9400 1600 3    60   Output ~ 0
/AVRRST
Text GLabel 8700 3700 2    60   Input ~ 0
SCK
Text GLabel 8700 3800 2    60   Input ~ 0
MOSI
Text GLabel 8700 3900 2    60   Output ~ 0
MISO
$Comp
L VCC #PWR011
U 1 1 5A677432
P 9950 4150
F 0 "#PWR011" H 9950 4000 50  0001 C CNN
F 1 "VCC" H 9950 4300 50  0000 C CNN
F 2 "" H 9950 4150 50  0001 C CNN
F 3 "" H 9950 4150 50  0001 C CNN
	1    9950 4150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR012
U 1 1 5A677A85
P 9800 1600
F 0 "#PWR012" H 9800 1450 50  0001 C CNN
F 1 "VCC" H 9800 1750 50  0000 C CNN
F 2 "" H 9800 1600 50  0001 C CNN
F 3 "" H 9800 1600 50  0001 C CNN
	1    9800 1600
	1    0    0    -1  
$EndComp
Text GLabel 5950 5100 2    60   Output ~ 0
TX2
Text GLabel 5950 5000 2    60   Input ~ 0
RX2
$Comp
L Conn_01x06 J6
U 1 1 5A68BE78
P 10850 2700
F 0 "J6" H 10850 3000 50  0000 C CNN
F 1 "SERIAL2" H 10850 2300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x06_Pitch2.54mm" H 10850 2700 50  0001 C CNN
F 3 "" H 10850 2700 50  0001 C CNN
F 4 "A-199" H 10850 2700 60  0001 C CNN "TaydaPN"
F 5 "952-2372-ND" H 10850 2700 60  0001 C CNN "DigikeyPN"
	1    10850 2700
	1    0    0    1   
$EndComp
$Comp
L GND #PWR013
U 1 1 5A68BE84
P 10600 2900
F 0 "#PWR013" H 10600 2650 50  0001 C CNN
F 1 "GND" H 10600 2750 50  0000 C CNN
F 2 "" H 10600 2900 50  0001 C CNN
F 3 "" H 10600 2900 50  0001 C CNN
	1    10600 2900
	1    0    0    -1  
$EndComp
Text GLabel 10650 2500 0    60   Input ~ 0
TX2
Text GLabel 10650 2600 0    60   Output ~ 0
RX2
NoConn ~ 10650 2800
$Comp
L VCC #PWR014
U 1 1 5A68BE8E
P 9800 2700
F 0 "#PWR014" H 9800 2550 50  0001 C CNN
F 1 "VCC" H 9800 2850 50  0000 C CNN
F 2 "" H 9800 2700 50  0001 C CNN
F 3 "" H 9800 2700 50  0001 C CNN
	1    9800 2700
	1    0    0    -1  
$EndComp
$Comp
L 74LS139 U1
U 1 1 5A68C215
P 2300 6850
F 0 "U1" H 2300 6950 50  0000 C CNN
F 1 "74HCT139" H 2300 6750 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket" H 2300 6850 50  0001 C CNN
F 3 "" H 2300 6850 50  0001 C CNN
F 4 "296-8390-5-ND" H 2300 6850 60  0001 C CNN "DigikeyPN"
F 5 "595-SN74HCT139N" H 2300 6850 60  0001 C CNN "MouserPN"
	1    2300 6850
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x06_Odd_Even J4
U 1 1 5A68C306
P 3900 6950
F 0 "J4" H 3950 7250 50  0000 C CNN
F 1 "IOADDR" H 3950 6550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x06_Pitch2.54mm" H 3900 6950 50  0001 C CNN
F 3 "" H 3900 6950 50  0001 C CNN
F 4 "A-197" H 3900 6950 60  0001 C CNN "TaydaPN"
F 5 "952-2121-ND" H 3900 6950 60  0001 C CNN "DigikeyPN"
	1    3900 6950
	-1   0    0    -1  
$EndComp
Text GLabel 1450 6600 0    60   BiDi ~ 0
A7
Text GLabel 1450 6750 0    60   BiDi ~ 0
A6
$Comp
L VCC #PWR015
U 1 1 5A68CDFC
P 3450 6750
F 0 "#PWR015" H 3450 6600 50  0001 C CNN
F 1 "VCC" H 3450 6900 50  0000 C CNN
F 2 "" H 3450 6750 50  0001 C CNN
F 3 "" H 3450 6750 50  0001 C CNN
	1    3450 6750
	1    0    0    -1  
$EndComp
$Comp
L 74LS139 U1
U 2 1 5A68E3E2
P 7550 1350
F 0 "U1" H 7550 1450 50  0000 C CNN
F 1 "74HCT139" H 7550 1250 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket" H 7550 1350 50  0001 C CNN
F 3 "" H 7550 1350 50  0001 C CNN
	2    7550 1350
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5A68E866
P 850 6900
F 0 "C1" H 875 7000 50  0000 L CNN
F 1 ".1uf" H 875 6800 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 888 6750 50  0001 C CNN
F 3 "" H 850 6900 50  0001 C CNN
F 4 "A-4008" H 850 6900 60  0001 C CNN "TaydaPN"
F 5 "BC5228TB-ND" H 850 6900 60  0001 C CNN "DigikeyPN"
F 6 "594-K104K10X7RF5UL2" H 850 6900 60  0001 C CNN "MouserPN"
	1    850  6900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5A68E86C
P 850 7050
F 0 "#PWR016" H 850 6800 50  0001 C CNN
F 1 "GND" H 850 6900 50  0000 C CNN
F 2 "" H 850 7050 50  0001 C CNN
F 3 "" H 850 7050 50  0001 C CNN
	1    850  7050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR017
U 1 1 5A68E872
P 850 6750
F 0 "#PWR017" H 850 6600 50  0001 C CNN
F 1 "VCC" H 850 6900 50  0000 C CNN
F 2 "" H 850 6750 50  0001 C CNN
F 3 "" H 850 6750 50  0001 C CNN
	1    850  6750
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5A68EBE6
P 6650 6900
F 0 "C5" H 6675 7000 50  0000 L CNN
F 1 ".1uf" H 6675 6800 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6688 6750 50  0001 C CNN
F 3 "" H 6650 6900 50  0001 C CNN
	1    6650 6900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 5A68EBEC
P 6650 7050
F 0 "#PWR018" H 6650 6800 50  0001 C CNN
F 1 "GND" H 6650 6900 50  0000 C CNN
F 2 "" H 6650 7050 50  0001 C CNN
F 3 "" H 6650 7050 50  0001 C CNN
	1    6650 7050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR019
U 1 1 5A68EBF2
P 6650 6750
F 0 "#PWR019" H 6650 6600 50  0001 C CNN
F 1 "VCC" H 6650 6900 50  0000 C CNN
F 2 "" H 6650 6750 50  0001 C CNN
F 3 "" H 6650 6750 50  0001 C CNN
	1    6650 6750
	1    0    0    -1  
$EndComp
$Comp
L 74HC74 U3
U 2 1 5A68ED90
P 10500 5500
F 0 "U3" H 10650 5800 50  0000 C CNN
F 1 "74HCT74" H 10800 5205 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 10500 5500 50  0001 C CNN
F 3 "" H 10500 5500 50  0001 C CNN
	2    10500 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 5A68EF86
P 10200 6150
F 0 "#PWR020" H 10200 5900 50  0001 C CNN
F 1 "GND" H 10200 6000 50  0000 C CNN
F 2 "" H 10200 6150 50  0001 C CNN
F 3 "" H 10200 6150 50  0001 C CNN
	1    10200 6150
	1    0    0    -1  
$EndComp
Text GLabel 6700 1100 0    60   Input ~ 0
SPIA0
Text GLabel 6700 1250 0    60   Input ~ 0
SPIA1
$Comp
L GND #PWR021
U 1 1 5A68F52A
P 6700 1600
F 0 "#PWR021" H 6700 1350 50  0001 C CNN
F 1 "GND" H 6700 1450 50  0000 C CNN
F 2 "" H 6700 1600 50  0001 C CNN
F 3 "" H 6700 1600 50  0001 C CNN
	1    6700 1600
	1    0    0    -1  
$EndComp
Text GLabel 8400 1050 2    60   Output ~ 0
/IOXCS
Text GLabel 8400 1250 2    60   Output ~ 0
/SDCS
Text GLabel 8400 1450 2    60   Output ~ 0
/AUXCS1
Text GLabel 8400 1650 2    60   Output ~ 0
/AUXCS2
Text GLabel 10300 3550 0    60   Output ~ 0
/SDCD
Text GLabel 7700 3300 0    60   Input ~ 0
/SDCD
$Comp
L LED D2
U 1 1 5A68FBFB
P 9700 3400
F 0 "D2" H 9700 3500 50  0000 C CNN
F 1 "LED" H 9700 3300 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 9700 3400 50  0001 C CNN
F 3 "" H 9700 3400 50  0001 C CNN
F 4 "A-1554" H 9700 3400 60  0001 C CNN "TaydaPN"
	1    9700 3400
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR022
U 1 1 5A690069
P 9250 3400
F 0 "#PWR022" H 9250 3250 50  0001 C CNN
F 1 "VCC" H 9250 3550 50  0000 C CNN
F 2 "" H 9250 3400 50  0001 C CNN
F 3 "" H 9250 3400 50  0001 C CNN
	1    9250 3400
	1    0    0    -1  
$EndComp
Text GLabel 2850 5850 0    60   Input ~ 0
/IOXCS
Text GLabel 2850 5950 0    60   Input ~ 0
/AUXCS1
Text GLabel 2850 6050 0    60   Input ~ 0
/AUXCS2
Text GLabel 2850 5650 0    60   Input ~ 0
TX2
Text GLabel 2850 5750 0    60   Output ~ 0
RX2
$Comp
L R R2
U 1 1 5A694FC1
P 9400 3400
F 0 "R2" V 9480 3400 50  0000 C CNN
F 1 "1K" V 9400 3400 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9330 3400 50  0001 C CNN
F 3 "" H 9400 3400 50  0001 C CNN
F 4 "A-2123" V 9400 3400 60  0001 C CNN "TaydaPN"
F 5 "603-CFR-25JB-1K0" V 9400 3400 60  0001 C CNN "MouserPN"
F 6 "1.0KQBK-ND" V 9400 3400 60  0001 C CNN "DigikeyPN"
	1    9400 3400
	0    1    1    0   
$EndComp
Text GLabel 5400 6200 2    60   Output ~ 0
/IORQ2
NoConn ~ 8700 3200
$Comp
L Jumper JP2
U 1 1 5A7FBCFA
P 10150 2700
F 0 "JP2" H 10150 2850 50  0000 C CNN
F 1 "Jumper" H 10150 2620 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 10150 2700 50  0001 C CNN
F 3 "" H 10150 2700 50  0001 C CNN
F 4 "952-2262-nd" H 10150 2700 60  0001 C CNN "DigikeyPN"
	1    10150 2700
	1    0    0    -1  
$EndComp
$Comp
L Jumper JP1
U 1 1 5A7FBE29
P 10150 1600
F 0 "JP1" H 10150 1750 50  0000 C CNN
F 1 "Jumper" H 10150 1520 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 10150 1600 50  0001 C CNN
F 3 "" H 10150 1600 50  0001 C CNN
F 4 "A-197" H 10150 1600 60  0001 C CNN "TaydaPN"
F 5 "952-2262-nd" H 10150 1600 60  0001 C CNN "DigikeyPN"
	1    10150 1600
	1    0    0    -1  
$EndComp
$Comp
L D D3
U 1 1 5A84D4A4
P 7050 2900
F 0 "D3" H 7050 3000 50  0000 C CNN
F 1 "1N4148" H 7050 2800 50  0000 C CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7050 2900 50  0001 C CNN
F 3 "" H 7050 2900 50  0001 C CNN
	1    7050 2900
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR023
U 1 1 592836F7
P 1600 3850
F 0 "#PWR023" H 1600 3600 50  0001 C CNN
F 1 "GND" H 1600 3700 50  0000 C CNN
F 2 "" H 1600 3850 50  0001 C CNN
F 3 "" H 1600 3850 50  0001 C CNN
	1    1600 3850
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR024
U 1 1 59283729
P 1600 3950
F 0 "#PWR024" H 1600 3800 50  0001 C CNN
F 1 "VCC" H 1600 4100 50  0000 C CNN
F 2 "" H 1600 3950 50  0001 C CNN
F 3 "" H 1600 3950 50  0001 C CNN
	1    1600 3950
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR025
U 1 1 5A675C70
P 9950 4250
F 0 "#PWR025" H 9950 4000 50  0001 C CNN
F 1 "GND" H 9950 4100 50  0000 C CNN
F 2 "" H 9950 4250 50  0001 C CNN
F 3 "" H 9950 4250 50  0001 C CNN
	1    9950 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 5A66B6E0
P 7300 5950
F 0 "#PWR026" H 7300 5700 50  0001 C CNN
F 1 "GND" H 7300 5800 50  0000 C CNN
F 2 "" H 7300 5950 50  0001 C CNN
F 3 "" H 7300 5950 50  0001 C CNN
	1    7300 5950
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR027
U 1 1 5A6772D9
P 3350 1700
F 0 "#PWR027" H 3350 1550 50  0001 C CNN
F 1 "VCC" H 3350 1850 50  0000 C CNN
F 2 "" H 3350 1700 50  0001 C CNN
F 3 "" H 3350 1700 50  0001 C CNN
	1    3350 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 5A66AB7D
P 2850 2200
F 0 "#PWR028" H 2850 1950 50  0001 C CNN
F 1 "GND" H 2850 2050 50  0000 C CNN
F 2 "" H 2850 2200 50  0001 C CNN
F 3 "" H 2850 2200 50  0001 C CNN
	1    2850 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 5A66500B
P 3400 3400
F 0 "#PWR029" H 3400 3150 50  0001 C CNN
F 1 "GND" H 3400 3250 50  0000 C CNN
F 2 "" H 3400 3400 50  0001 C CNN
F 3 "" H 3400 3400 50  0001 C CNN
	1    3400 3400
	1    0    0    -1  
$EndComp
NoConn ~ 2850 5550
NoConn ~ 2850 5450
NoConn ~ 2850 5350
NoConn ~ 2850 5250
NoConn ~ 2850 5150
NoConn ~ 2850 5050
NoConn ~ 2850 4950
NoConn ~ 2850 4850
NoConn ~ 11100 5300
NoConn ~ 11100 5700
NoConn ~ 2850 4150
NoConn ~ 2850 4250
$Comp
L VCC #PWR030
U 1 1 5A850097
P 1000 1150
F 0 "#PWR030" H 1000 1000 50  0001 C CNN
F 1 "VCC" H 1000 1300 50  0000 C CNN
F 2 "" H 1000 1150 50  0001 C CNN
F 3 "" H 1000 1150 50  0001 C CNN
	1    1000 1150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR031
U 1 1 5A8500E5
P 1450 1200
F 0 "#PWR031" H 1450 950 50  0001 C CNN
F 1 "GND" H 1450 1050 50  0000 C CNN
F 2 "" H 1450 1200 50  0001 C CNN
F 3 "" H 1450 1200 50  0001 C CNN
	1    1450 1200
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG032
U 1 1 5A850133
P 1450 1150
F 0 "#FLG032" H 1450 1225 50  0001 C CNN
F 1 "PWR_FLAG" H 1450 1300 50  0000 C CNN
F 2 "" H 1450 1150 50  0001 C CNN
F 3 "" H 1450 1150 50  0001 C CNN
	1    1450 1150
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG033
U 1 1 5A8502AA
P 1000 1200
F 0 "#FLG033" H 1000 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 1350 50  0000 C CNN
F 2 "" H 1000 1200 50  0001 C CNN
F 3 "" H 1000 1200 50  0001 C CNN
	1    1000 1200
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x06 J5
U 1 1 5A66143B
P 10850 1600
F 0 "J5" H 10850 1900 50  0000 C CNN
F 1 "SERIAL1" H 10850 1200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x06_Pitch2.54mm" H 10850 1600 50  0001 C CNN
F 3 "" H 10850 1600 50  0001 C CNN
F 4 "A-199" H 10850 1600 60  0001 C CNN "TaydaPN"
F 5 "952-2372-ND" H 10850 1600 60  0001 C CNN "DigikeyPN"
	1    10850 1600
	1    0    0    1   
$EndComp
$Comp
L Conn_02x03_Odd_Even J3
U 1 1 5AF3AD1B
P 8450 5650
F 0 "J3" H 8500 5850 50  0000 C CNN
F 1 "ISP" H 8500 5450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 8450 5650 50  0001 C CNN
F 3 "" H 8450 5650 50  0001 C CNN
F 4 "A-197" H 8450 5650 60  0001 C CNN "TaydaPN"
	1    8450 5650
	1    0    0    -1  
$EndComp
Text GLabel 8250 5550 0    60   Input ~ 0
MISO
Text GLabel 8250 5650 0    60   Output ~ 0
SCK
Text GLabel 8750 5650 2    60   Output ~ 0
MOSI
Text GLabel 8250 5750 0    60   Output ~ 0
/AVRRST
$Comp
L VCC #PWR034
U 1 1 5AF3B0CC
P 8750 5500
F 0 "#PWR034" H 8750 5350 50  0001 C CNN
F 1 "VCC" H 8750 5650 50  0000 C CNN
F 2 "" H 8750 5500 50  0001 C CNN
F 3 "" H 8750 5500 50  0001 C CNN
	1    8750 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 5AF3B1CD
P 8750 5800
F 0 "#PWR035" H 8750 5550 50  0001 C CNN
F 1 "GND" H 8750 5650 50  0000 C CNN
F 2 "" H 8750 5800 50  0001 C CNN
F 3 "" H 8750 5800 50  0001 C CNN
	1    8750 5800
	1    0    0    -1  
$EndComp
NoConn ~ 10650 2400
Text GLabel 10350 3450 0    60   Input ~ 0
SDEN
Text GLabel 7700 2700 0    60   Output ~ 0
SDEN
Text GLabel 5950 3100 2    60   BiDi ~ 0
/IORQ
$Comp
L Conn_01x08 J8
U 1 1 5B0B6F3C
P 11000 3850
F 0 "J8" H 11000 4250 50  0000 C CNN
F 1 "Adafruit SD" H 11000 3350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 11000 3850 50  0001 C CNN
F 3 "" H 11000 3850 50  0001 C CNN
	1    11000 3850
	1    0    0    -1  
$EndComp
Connection ~ 3400 3300
Wire Wire Line
	7200 2900 7700 2900
Wire Wire Line
	9800 2700 9850 2700
Wire Wire Line
	10600 2900 10650 2900
Wire Wire Line
	9800 1600 9850 1600
Wire Wire Line
	10600 1800 10650 1800
Connection ~ 1400 7100
Wire Wire Line
	1400 7100 1400 7300
Wire Wire Line
	1350 7100 1450 7100
Wire Wire Line
	7300 5850 7300 5950
Connection ~ 5350 6200
Connection ~ 4100 6750
Connection ~ 4100 6850
Connection ~ 4100 6950
Connection ~ 4100 7050
Connection ~ 4100 7150
Wire Wire Line
	4100 6200 4100 7250
Wire Wire Line
	1400 7300 3600 7300
Wire Wire Line
	3600 7300 3600 7250
Connection ~ 9900 3650
Wire Wire Line
	9900 3400 9900 3650
Wire Wire Line
	9850 3400 9900 3400
Wire Wire Line
	9600 3650 10800 3650
Connection ~ 10200 6050
Wire Wire Line
	10200 6150 10200 6050
Connection ~ 9900 5500
Connection ~ 9900 5300
Wire Wire Line
	9900 6050 10500 6050
Wire Wire Line
	9900 4950 9900 6050
Wire Wire Line
	10500 4950 9900 4950
Wire Wire Line
	4100 6200 5400 6200
Wire Wire Line
	3450 6750 3600 6750
Wire Wire Line
	3300 6850 3600 6850
Wire Wire Line
	3300 6550 3300 6850
Wire Wire Line
	3150 6550 3300 6550
Wire Wire Line
	3200 6950 3600 6950
Wire Wire Line
	3200 6750 3200 6950
Wire Wire Line
	3150 6750 3200 6750
Wire Wire Line
	3150 7050 3600 7050
Wire Wire Line
	3150 6950 3150 7050
Wire Wire Line
	3150 7150 3600 7150
Wire Wire Line
	9400 1300 10650 1300
Wire Wire Line
	9950 4150 10700 4150
Wire Wire Line
	9950 4250 10650 4250
Wire Wire Line
	4750 1100 4750 1800
Wire Wire Line
	4550 1700 4550 1600
Connection ~ 3900 2100
Wire Wire Line
	3900 2100 3900 1900
Connection ~ 6500 5500
Wire Wire Line
	6500 5850 6500 5500
Wire Wire Line
	6850 5850 6500 5850
Wire Wire Line
	5950 5500 6600 5500
Connection ~ 4750 1250
Wire Wire Line
	4950 1250 4950 1800
Wire Wire Line
	4550 1250 4950 1250
Wire Wire Line
	7250 5850 7300 5850
Wire Wire Line
	3350 1750 3350 1700
Connection ~ 3350 2100
Wire Wire Line
	3350 2050 3350 2100
Wire Wire Line
	3250 2100 3950 2100
Wire Wire Line
	2850 2200 2850 2100
Wire Wire Line
	9150 2700 9150 2750
Connection ~ 8200 2450
Wire Wire Line
	8200 2450 9400 2450
Wire Wire Line
	8200 2400 8200 2500
Wire Wire Line
	1600 3850 2850 3850
Wire Wire Line
	1600 3950 2850 3950
Wire Wire Line
	4550 1250 4550 1300
Wire Wire Line
	3550 2900 3950 2900
Wire Wire Line
	3250 2900 3050 2900
Wire Wire Line
	3050 2900 3050 2500
Wire Wire Line
	3050 2500 3950 2500
Wire Wire Line
	3050 3200 3700 3200
Wire Wire Line
	3400 3200 3400 3400
Connection ~ 3400 3200
Connection ~ 3700 2900
Wire Wire Line
	3950 3300 3950 3200
Wire Wire Line
	8200 4500 8200 4650
Wire Wire Line
	8750 4600 8200 4600
Wire Wire Line
	8750 4100 8750 4600
Wire Wire Line
	8750 4300 8700 4300
Connection ~ 8200 4600
Wire Wire Line
	8750 4200 8700 4200
Connection ~ 8750 4300
Wire Wire Line
	8750 4100 8700 4100
Connection ~ 8750 4200
Wire Wire Line
	4750 6550 4650 6550
Wire Wire Line
	4650 6550 4650 7100
Wire Wire Line
	4750 6750 4650 6750
Connection ~ 4650 6750
Wire Wire Line
	1450 1150 1450 1200
Wire Wire Line
	1000 1200 1000 1150
Wire Wire Line
	10450 2700 10650 2700
Wire Wire Line
	10450 1600 10650 1600
Wire Wire Line
	8750 5550 8750 5500
Wire Wire Line
	8750 5800 8750 5750
Wire Wire Line
	10300 3550 10800 3550
Connection ~ 10350 3550
Connection ~ 10350 3650
Wire Wire Line
	10300 3750 10700 3750
Wire Wire Line
	10300 3850 10800 3850
Wire Wire Line
	10300 3950 10650 3950
Connection ~ 10350 3850
Wire Wire Line
	10700 3750 10700 3950
Wire Wire Line
	10700 3950 10800 3950
Connection ~ 10350 3750
Wire Wire Line
	10650 3950 10650 3800
Wire Wire Line
	10650 3800 10800 3800
Wire Wire Line
	10800 3800 10800 3750
Connection ~ 10350 3950
Wire Wire Line
	10700 4150 10700 4250
Wire Wire Line
	10700 4250 10800 4250
Connection ~ 10350 4150
Wire Wire Line
	10650 4250 10650 4050
Wire Wire Line
	10650 4050 10800 4050
Connection ~ 10350 4250
NoConn ~ 10800 4150
$EndSCHEMATC
