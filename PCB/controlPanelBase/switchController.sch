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
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 6195BAE8
P 6800 3050
F 0 "A1" H 7150 2050 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 7900 2250 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 6800 3050 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 6800 3050 50  0001 C CNN
	1    6800 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 6196685D
P 6800 4700
F 0 "#PWR0107" H 6800 4450 50  0001 C CNN
F 1 "GND" H 6805 4527 50  0000 C CNN
F 2 "" H 6800 4700 50  0001 C CNN
F 3 "" H 6800 4700 50  0001 C CNN
	1    6800 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 61966B91
P 7000 1950
F 0 "#PWR0108" H 7000 1800 50  0001 C CNN
F 1 "+5V" H 7015 2123 50  0000 C CNN
F 2 "" H 7000 1950 50  0001 C CNN
F 3 "" H 7000 1950 50  0001 C CNN
	1    7000 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3250 6300 3250
Wire Wire Line
	5750 3150 6300 3150
Wire Wire Line
	5750 3050 6300 3050
Wire Wire Line
	5750 2950 6300 2950
Wire Wire Line
	5750 2850 6300 2850
Wire Wire Line
	5750 2750 6300 2750
Wire Wire Line
	5750 3750 6050 3750
Wire Wire Line
	7300 3550 7450 3550
Wire Wire Line
	7450 3550 7450 4600
Wire Wire Line
	7450 4600 6000 4600
Wire Wire Line
	6000 4600 6000 3850
Wire Wire Line
	6000 3850 5750 3850
Wire Wire Line
	7500 3050 7300 3050
Wire Wire Line
	7500 3150 7300 3150
Wire Wire Line
	7300 3250 7500 3250
Wire Wire Line
	7500 3350 7300 3350
Wire Wire Line
	6800 4050 6800 4150
Wire Wire Line
	6900 4050 6900 4150
Wire Wire Line
	6900 4150 6800 4150
Connection ~ 6800 4150
NoConn ~ 7300 2850
NoConn ~ 7300 2550
NoConn ~ 7300 2450
NoConn ~ 6900 2050
Wire Wire Line
	7000 2050 7000 1950
NoConn ~ 7300 3750
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 619C8A26
P 5550 2750
F 0 "J1" H 5468 2425 50  0000 C CNN
F 1 "i" H 5468 2516 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 5550 2750 50  0001 C CNN
F 3 "~" H 5550 2750 50  0001 C CNN
	1    5550 2750
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 619C9976
P 5550 2950
F 0 "J2" H 5468 2625 50  0000 C CNN
F 1 "i" H 5468 2716 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 5550 2950 50  0001 C CNN
F 3 "~" H 5550 2950 50  0001 C CNN
	1    5550 2950
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 619C9D68
P 5550 3150
F 0 "J3" H 5468 2825 50  0000 C CNN
F 1 "i" H 5468 2916 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 5550 3150 50  0001 C CNN
F 3 "~" H 5550 3150 50  0001 C CNN
	1    5550 3150
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J4
U 1 1 619CA365
P 4800 3350
F 0 "J4" H 4718 3025 50  0000 C CNN
F 1 "i" H 4718 3116 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-3-5.08_1x03_P5.08mm_Horizontal" H 4800 3350 50  0001 C CNN
F 3 "~" H 4800 3350 50  0001 C CNN
	1    4800 3350
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J7
U 1 1 619CA7E4
P 4800 3650
F 0 "J7" H 4718 3325 50  0000 C CNN
F 1 "i" H 4718 3416 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-3-5.08_1x03_P5.08mm_Horizontal" H 4800 3650 50  0001 C CNN
F 3 "~" H 4800 3650 50  0001 C CNN
	1    4800 3650
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J8
U 1 1 619CAB58
P 5550 3750
F 0 "J8" H 5468 3425 50  0000 C CNN
F 1 "i" H 5468 3516 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 5550 3750 50  0001 C CNN
F 3 "~" H 5550 3750 50  0001 C CNN
	1    5550 3750
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J9
U 1 1 619CCEBE
P 7700 3050
F 0 "J9" H 7618 2725 50  0000 C CNN
F 1 "i" H 7618 2816 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 7700 3050 50  0001 C CNN
F 3 "~" H 7700 3050 50  0001 C CNN
	1    7700 3050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J10
U 1 1 619CE6AD
P 7700 3250
F 0 "J10" H 7618 2925 50  0000 C CNN
F 1 "i" H 7618 3016 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 7700 3250 50  0001 C CNN
F 3 "~" H 7700 3250 50  0001 C CNN
	1    7700 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 61958676
P 5100 4100
F 0 "#PWR0111" H 5100 3850 50  0001 C CNN
F 1 "GND" H 5105 3927 50  0000 C CNN
F 2 "" H 5100 4100 50  0001 C CNN
F 3 "" H 5100 4100 50  0001 C CNN
	1    5100 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3750 5100 4100
Wire Wire Line
	6050 3750 6050 4550
Wire Wire Line
	6050 4550 7500 4550
Wire Wire Line
	7500 4550 7500 3450
Wire Wire Line
	7500 3450 7300 3450
Wire Wire Line
	6800 4150 6800 4700
Wire Wire Line
	5000 3750 5100 3750
Wire Wire Line
	5000 3650 6300 3650
Wire Wire Line
	5000 3550 6300 3550
Wire Wire Line
	5000 3450 5100 3450
Wire Wire Line
	5100 3750 5100 3450
Connection ~ 5100 3750
Wire Wire Line
	5000 3350 5150 3350
Wire Wire Line
	5150 3350 5150 3450
Wire Wire Line
	5150 3450 6300 3450
Wire Wire Line
	6300 3350 5200 3350
Wire Wire Line
	5200 3350 5200 3250
Wire Wire Line
	5200 3250 5000 3250
NoConn ~ 6300 2650
NoConn ~ 6300 2550
NoConn ~ 6300 2450
NoConn ~ 6700 2050
NoConn ~ 6300 3750
$Comp
L Switch:SW_SPST SW1
U 1 1 62319E87
P 9050 4000
F 0 "SW1" H 9050 4235 50  0000 C CNN
F 1 "SW_SPST" H 9050 4144 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 9050 4000 50  0001 C CNN
F 3 "~" H 9050 4000 50  0001 C CNN
	1    9050 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 6231A6C2
P 9050 3550
F 0 "R1" H 9120 3596 50  0000 L CNN
F 1 "R" H 9120 3505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8980 3550 50  0001 C CNN
F 3 "~" H 9050 3550 50  0001 C CNN
	1    9050 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 6231C1D5
P 9050 3300
F 0 "#PWR0101" H 9050 3150 50  0001 C CNN
F 1 "+5V" H 9065 3473 50  0000 C CNN
F 2 "" H 9050 3300 50  0001 C CNN
F 3 "" H 9050 3300 50  0001 C CNN
	1    9050 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6231C629
P 9050 4300
F 0 "#PWR0102" H 9050 4050 50  0001 C CNN
F 1 "GND" H 9055 4127 50  0000 C CNN
F 2 "" H 9050 4300 50  0001 C CNN
F 3 "" H 9050 4300 50  0001 C CNN
	1    9050 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 4300 9050 4200
Wire Wire Line
	9050 3800 9050 3750
Wire Wire Line
	9050 3400 9050 3300
Wire Wire Line
	9050 3750 8650 3750
Connection ~ 9050 3750
Wire Wire Line
	9050 3750 9050 3700
Wire Wire Line
	7300 3650 8650 3650
Wire Wire Line
	8650 3650 8650 3750
$EndSCHEMATC
