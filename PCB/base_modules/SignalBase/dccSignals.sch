EESchema Schematic File Version 4
EELAYER 30 0
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
Wire Wire Line
	3150 3200 3150 3400
$Comp
L power:+5V #PWR0101
U 1 1 61773D4A
P 3150 3200
F 0 "#PWR0101" H 3150 3050 50  0001 C CNN
F 1 "+5V" H 3165 3373 50  0000 C CNN
F 2 "" H 3150 3200 50  0001 C CNN
F 3 "" H 3150 3200 50  0001 C CNN
	1    3150 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x04 J3
U 1 1 617A2760
P 9900 1350
F 0 "J3" H 9980 1342 50  0000 L CNN
F 1 "leds" H 9980 1251 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-4-5.08_1x04_P5.08mm_Horizontal" H 9900 1350 50  0001 C CNN
F 3 "~" H 9900 1350 50  0001 C CNN
	1    9900 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1250 9600 1250
Wire Wire Line
	9600 1250 9600 1150
Wire Wire Line
	9700 1350 9600 1350
Wire Wire Line
	9700 1450 9600 1450
Wire Wire Line
	9700 1550 9600 1550
Text Label 9600 1350 2    50   ~ 0
S1G
Text Label 9600 1450 2    50   ~ 0
S1Y
Text Label 9600 1550 2    50   ~ 0
S1R
$Comp
L Connector:Screw_Terminal_01x04 J4
U 1 1 617AF4A7
P 9900 2000
F 0 "J4" H 9980 1992 50  0000 L CNN
F 1 "leds" H 9980 1901 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-4-5.08_1x04_P5.08mm_Horizontal" H 9900 2000 50  0001 C CNN
F 3 "~" H 9900 2000 50  0001 C CNN
	1    9900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1900 9600 1900
Wire Wire Line
	9600 1900 9600 1800
Wire Wire Line
	9700 2000 9600 2000
Wire Wire Line
	9700 2100 9600 2100
Wire Wire Line
	9700 2200 9600 2200
Text Label 9600 2000 2    50   ~ 0
S2G
Text Label 9600 2100 2    50   ~ 0
S2Y
Text Label 9600 2200 2    50   ~ 0
S2R
$Comp
L Connector:Screw_Terminal_01x04 J5
U 1 1 617B0C83
P 9900 2650
F 0 "J5" H 9980 2642 50  0000 L CNN
F 1 "leds" H 9980 2551 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-4-5.08_1x04_P5.08mm_Horizontal" H 9900 2650 50  0001 C CNN
F 3 "~" H 9900 2650 50  0001 C CNN
	1    9900 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 2550 9600 2550
Wire Wire Line
	9600 2550 9600 2450
Wire Wire Line
	9700 2650 9600 2650
Wire Wire Line
	9700 2750 9600 2750
Wire Wire Line
	9700 2850 9600 2850
Text Label 9600 2650 2    50   ~ 0
S3G
Text Label 9600 2750 2    50   ~ 0
S3Y
Text Label 9600 2850 2    50   ~ 0
S3R
$Comp
L Connector:Screw_Terminal_01x04 J6
U 1 1 617B1C23
P 9900 3300
F 0 "J6" H 9980 3292 50  0000 L CNN
F 1 "leds" H 9980 3201 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-4-5.08_1x04_P5.08mm_Horizontal" H 9900 3300 50  0001 C CNN
F 3 "~" H 9900 3300 50  0001 C CNN
	1    9900 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3200 9600 3200
Wire Wire Line
	9600 3200 9600 3100
Wire Wire Line
	9700 3300 9600 3300
Wire Wire Line
	9700 3400 9600 3400
Wire Wire Line
	9700 3500 9600 3500
Text Label 9600 3300 2    50   ~ 0
S4G
Text Label 9600 3400 2    50   ~ 0
S4Y
Text Label 9600 3500 2    50   ~ 0
S4R
Text Label 8650 1200 0    50   ~ 0
S1G
Text Label 8650 1300 0    50   ~ 0
S1Y
Text Label 8650 1400 0    50   ~ 0
S1R
Text Label 8650 1500 0    50   ~ 0
S2G
Text Label 8650 1600 0    50   ~ 0
S2Y
Text Label 8650 1700 0    50   ~ 0
S2R
NoConn ~ 7300 1800
NoConn ~ 7300 3450
$Comp
L power:GND #PWR0108
U 1 1 617DABAF
P 6900 2050
F 0 "#PWR0108" H 6900 1800 50  0001 C CNN
F 1 "GND" H 6905 1877 50  0000 C CNN
F 2 "" H 6900 2050 50  0001 C CNN
F 3 "" H 6900 2050 50  0001 C CNN
	1    6900 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2050 6900 2000
$Comp
L power:GND #PWR0109
U 1 1 617DF287
P 6900 3700
F 0 "#PWR0109" H 6900 3450 50  0001 C CNN
F 1 "GND" H 6905 3527 50  0000 C CNN
F 2 "" H 6900 3700 50  0001 C CNN
F 3 "" H 6900 3700 50  0001 C CNN
	1    6900 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3700 6900 3650
Wire Wire Line
	6500 1700 6300 1700
Wire Wire Line
	6500 1600 6300 1600
Wire Wire Line
	6500 1500 6300 1500
Wire Wire Line
	6500 1400 6300 1400
Wire Wire Line
	6500 1300 6300 1300
Wire Wire Line
	6500 1200 6300 1200
Wire Wire Line
	6500 3350 6300 3350
Wire Wire Line
	6500 3250 6300 3250
Wire Wire Line
	6500 3150 6300 3150
Wire Wire Line
	6500 3050 6300 3050
Wire Wire Line
	6500 2950 6300 2950
Wire Wire Line
	6500 2850 6300 2850
NoConn ~ 6500 3450
NoConn ~ 6500 1800
Text Label 6300 1200 2    50   ~ 0
S1G_IN
Text Label 6300 1300 2    50   ~ 0
S1Y_IN
Text Label 6300 1400 2    50   ~ 0
S1R_IN
Text Label 6300 1500 2    50   ~ 0
S2G_IN
Text Label 6300 1600 2    50   ~ 0
S2Y_IN
Text Label 6300 1700 2    50   ~ 0
S2R_IN
Text Label 6300 3350 2    50   ~ 0
S3G_IN
Text Label 6300 3250 2    50   ~ 0
S3Y_IN
Text Label 6300 3150 2    50   ~ 0
S3R_IN
Text Label 6300 2850 2    50   ~ 0
S4G_IN
Text Label 6300 2950 2    50   ~ 0
S4Y_IN
Text Label 6300 3050 2    50   ~ 0
S4R_IN
Text Label 2200 4100 2    50   ~ 0
S1G_IN
Text Label 2200 4200 2    50   ~ 0
S1Y_IN
Text Label 2200 4400 2    50   ~ 0
S2G_IN
Text Label 2200 4500 2    50   ~ 0
S2Y_IN
Text Label 2200 4600 2    50   ~ 0
S2R_IN
Wire Wire Line
	2450 4600 2200 4600
Wire Wire Line
	2450 4500 2200 4500
Wire Wire Line
	2450 4400 2200 4400
Wire Wire Line
	2450 4300 2200 4300
Text Label 2200 5100 2    50   ~ 0
S3G_IN
Text Label 3700 4900 0    50   ~ 0
S3Y_IN
Text Label 2200 5000 2    50   ~ 0
S3R_IN
Text Label 2200 4900 2    50   ~ 0
S4R_IN
Text Label 2200 4800 2    50   ~ 0
S4Y_IN
Text Label 2200 4700 2    50   ~ 0
S4G_IN
Wire Wire Line
	2450 4700 2200 4700
Wire Wire Line
	2450 4800 2200 4800
$Comp
L power:GND #PWR0118
U 1 1 61A02CA3
P 3000 5650
F 0 "#PWR0118" H 3000 5400 50  0001 C CNN
F 1 "GND" H 3005 5477 50  0000 C CNN
F 2 "" H 3000 5650 50  0001 C CNN
F 3 "" H 3000 5650 50  0001 C CNN
	1    3000 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5650 3000 5500
Text Label 2200 4300 2    50   ~ 0
S1R_IN
$Comp
L MCU_Module:Arduino_Nano_v2.x A1
U 1 1 62322348
P 2950 4400
F 0 "A1" H 2400 3400 50  0000 C CNN
F 1 "Arduino_Nano_v2.x" H 2350 3300 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 2950 4400 50  0001 C CIN
F 3 "https://www.arduino.cc/en/uploads/Main/ArduinoNanoManual23.pdf" H 2950 4400 50  0001 C CNN
	1    2950 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4200 2200 4200
Wire Wire Line
	2450 4100 2200 4100
Wire Wire Line
	2450 4900 2200 4900
Wire Wire Line
	2450 5000 2200 5000
Wire Wire Line
	2450 5100 2200 5100
$Comp
L Switch:SW_SPST SW1
U 1 1 624B0D84
P 4350 5200
F 0 "SW1" V 4304 5298 50  0000 L CNN
F 1 "SW_SPST" V 4395 5298 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 4350 5200 50  0001 C CNN
F 3 "~" H 4350 5200 50  0001 C CNN
	1    4350 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 624B1DC6
P 4350 4750
F 0 "R1" H 4420 4796 50  0000 L CNN
F 1 "R" H 4420 4705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4280 4750 50  0001 C CNN
F 3 "~" H 4350 4750 50  0001 C CNN
	1    4350 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 624B2692
P 4350 4550
F 0 "#PWR0102" H 4350 4400 50  0001 C CNN
F 1 "+5V" H 4365 4723 50  0000 C CNN
F 2 "" H 4350 4550 50  0001 C CNN
F 3 "" H 4350 4550 50  0001 C CNN
	1    4350 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 624B2E7F
P 4350 5500
F 0 "#PWR0103" H 4350 5250 50  0001 C CNN
F 1 "GND" H 4355 5327 50  0000 C CNN
F 2 "" H 4350 5500 50  0001 C CNN
F 3 "" H 4350 5500 50  0001 C CNN
	1    4350 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5500 4350 5400
Wire Wire Line
	4350 5000 4350 4900
Wire Wire Line
	4350 4600 4350 4550
NoConn ~ 3050 3400
NoConn ~ 2850 3400
NoConn ~ 2450 3800
NoConn ~ 2450 3900
NoConn ~ 3450 3800
NoConn ~ 3450 3900
NoConn ~ 2450 4000
NoConn ~ 3450 4200
Wire Wire Line
	3050 5400 3050 5500
Wire Wire Line
	3050 5500 3000 5500
Wire Wire Line
	3000 5500 2950 5500
Wire Wire Line
	2950 5500 2950 5400
Connection ~ 3000 5500
$Comp
L power:VCC #PWR0104
U 1 1 6251791C
P 9600 1150
F 0 "#PWR0104" H 9600 1000 50  0001 C CNN
F 1 "VCC" H 9615 1323 50  0000 C CNN
F 2 "" H 9600 1150 50  0001 C CNN
F 3 "" H 9600 1150 50  0001 C CNN
	1    9600 1150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0105
U 1 1 62517E34
P 9600 1800
F 0 "#PWR0105" H 9600 1650 50  0001 C CNN
F 1 "VCC" H 9615 1973 50  0000 C CNN
F 2 "" H 9600 1800 50  0001 C CNN
F 3 "" H 9600 1800 50  0001 C CNN
	1    9600 1800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0106
U 1 1 625182DE
P 9600 2450
F 0 "#PWR0106" H 9600 2300 50  0001 C CNN
F 1 "VCC" H 9615 2623 50  0000 C CNN
F 2 "" H 9600 2450 50  0001 C CNN
F 3 "" H 9600 2450 50  0001 C CNN
	1    9600 2450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 62518566
P 9600 3100
F 0 "#PWR0107" H 9600 2950 50  0001 C CNN
F 1 "VCC" H 9615 3273 50  0000 C CNN
F 2 "" H 9600 3100 50  0001 C CNN
F 3 "" H 9600 3100 50  0001 C CNN
	1    9600 3100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_Array:ULN2003A U1
U 1 1 62524260
P 6900 1400
F 0 "U1" H 6900 2067 50  0000 C CNN
F 1 "ULN2003A" H 6900 1976 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6950 850 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 7000 1200 50  0001 C CNN
	1    6900 1400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_Array:ULN2003A U2
U 1 1 62536256
P 6900 3050
F 0 "U2" H 6900 3717 50  0000 C CNN
F 1 "ULN2003A" H 6900 3626 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6950 2500 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 7000 2850 50  0001 C CNN
	1    6900 3050
	1    0    0    -1  
$EndComp
NoConn ~ 3450 5100
NoConn ~ 3450 4800
NoConn ~ 3450 4700
Text Label 7900 2850 0    50   ~ 0
S4R
Text Label 7900 2950 0    50   ~ 0
S4Y
Text Label 7900 3050 0    50   ~ 0
S4G
Text Label 7900 3150 0    50   ~ 0
S3R
Text Label 7900 3250 0    50   ~ 0
S3Y
Text Label 7900 3350 0    50   ~ 0
S3G
Wire Wire Line
	7300 1200 8650 1200
Wire Wire Line
	7300 1300 8650 1300
Wire Wire Line
	7300 1400 8650 1400
Wire Wire Line
	7300 1500 8650 1500
Wire Wire Line
	7300 1600 8650 1600
Wire Wire Line
	7300 1700 8650 1700
Wire Wire Line
	7300 2850 7900 2850
Wire Wire Line
	7300 2950 7900 2950
Wire Wire Line
	7300 3050 7900 3050
Wire Wire Line
	7300 3150 7900 3150
Wire Wire Line
	7300 3250 7900 3250
Wire Wire Line
	7300 3350 7900 3350
NoConn ~ 3450 4600
NoConn ~ 3450 4500
NoConn ~ 3450 4400
Wire Wire Line
	3450 4900 3700 4900
Wire Wire Line
	3450 5000 4350 5000
Connection ~ 4350 5000
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 626D8EFD
P 3100 1950
F 0 "J1" V 3064 1762 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 2973 1762 50  0000 R CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 3100 1950 50  0001 C CNN
F 3 "~" H 3100 1950 50  0001 C CNN
	1    3100 1950
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0112
U 1 1 626E05AC
P 2750 2450
F 0 "#PWR0112" H 2750 2300 50  0001 C CNN
F 1 "VCC" H 2765 2623 50  0000 C CNN
F 2 "" H 2750 2450 50  0001 C CNN
F 3 "" H 2750 2450 50  0001 C CNN
	1    2750 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 626E3532
P 3200 2250
F 0 "#PWR0113" H 3200 2000 50  0001 C CNN
F 1 "GND" H 3205 2077 50  0000 C CNN
F 2 "" H 3200 2250 50  0001 C CNN
F 3 "" H 3200 2250 50  0001 C CNN
	1    3200 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2250 3200 2150
$Comp
L Device:D D1
U 1 1 626E5E89
P 2950 2300
F 0 "D1" V 2996 2220 50  0000 R CNN
F 1 "D" V 2905 2220 50  0000 R CNN
F 2 "Diode_THT:D_DO-34_SOD68_P7.62mm_Horizontal" H 2950 2300 50  0001 C CNN
F 3 "~" H 2950 2300 50  0001 C CNN
	1    2950 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 2150 3100 2150
Wire Wire Line
	2750 2450 2950 2450
NoConn ~ 7300 1000
NoConn ~ 7300 2650
$EndSCHEMATC
