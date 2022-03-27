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
U 1 1 622E6075
P 5050 3350
F 0 "A1" H 5550 2300 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 5600 2200 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5050 3350 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5050 3350 50  0001 C CNN
	1    5050 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 622E7314
P 2550 2350
F 0 "J1" H 2522 2282 50  0000 R CNN
F 1 "servo" H 2522 2373 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2550 2350 50  0001 C CNN
F 3 "~" H 2550 2350 50  0001 C CNN
	1    2550 2350
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 622E8435
P 3200 2350
F 0 "#PWR0101" H 3200 2200 50  0001 C CNN
F 1 "+5V" H 3215 2523 50  0000 C CNN
F 2 "" H 3200 2350 50  0001 C CNN
F 3 "" H 3200 2350 50  0001 C CNN
	1    3200 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 622E8CF5
P 3200 2450
F 0 "#PWR0102" H 3200 2200 50  0001 C CNN
F 1 "GND" H 3205 2277 50  0000 C CNN
F 2 "" H 3200 2450 50  0001 C CNN
F 3 "" H 3200 2450 50  0001 C CNN
	1    3200 2450
	1    0    0    -1  
$EndComp
Text Label 3050 2250 2    50   ~ 0
mot1
Wire Wire Line
	2750 2350 3200 2350
Wire Wire Line
	2750 2450 3200 2450
Wire Wire Line
	2750 2250 3050 2250
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 622EA1A1
P 2550 2950
F 0 "J2" H 2522 2882 50  0000 R CNN
F 1 "servo" H 2522 2973 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2550 2950 50  0001 C CNN
F 3 "~" H 2550 2950 50  0001 C CNN
	1    2550 2950
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 622EA1A7
P 3200 2950
F 0 "#PWR0103" H 3200 2800 50  0001 C CNN
F 1 "+5V" H 3215 3123 50  0000 C CNN
F 2 "" H 3200 2950 50  0001 C CNN
F 3 "" H 3200 2950 50  0001 C CNN
	1    3200 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 622EA1AD
P 3200 3050
F 0 "#PWR0104" H 3200 2800 50  0001 C CNN
F 1 "GND" H 3205 2877 50  0000 C CNN
F 2 "" H 3200 3050 50  0001 C CNN
F 3 "" H 3200 3050 50  0001 C CNN
	1    3200 3050
	1    0    0    -1  
$EndComp
Text Label 3050 2850 2    50   ~ 0
mot2
Wire Wire Line
	2750 2950 3200 2950
Wire Wire Line
	2750 3050 3200 3050
Wire Wire Line
	2750 2850 3050 2850
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 622F7954
P 2550 3650
F 0 "J3" H 2522 3582 50  0000 R CNN
F 1 "servo" H 2522 3673 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2550 3650 50  0001 C CNN
F 3 "~" H 2550 3650 50  0001 C CNN
	1    2550 3650
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 622F795A
P 3200 3650
F 0 "#PWR0105" H 3200 3500 50  0001 C CNN
F 1 "+5V" H 3215 3823 50  0000 C CNN
F 2 "" H 3200 3650 50  0001 C CNN
F 3 "" H 3200 3650 50  0001 C CNN
	1    3200 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 622F7960
P 3200 3750
F 0 "#PWR0106" H 3200 3500 50  0001 C CNN
F 1 "GND" H 3205 3577 50  0000 C CNN
F 2 "" H 3200 3750 50  0001 C CNN
F 3 "" H 3200 3750 50  0001 C CNN
	1    3200 3750
	1    0    0    -1  
$EndComp
Text Label 3050 3550 2    50   ~ 0
mot3
Wire Wire Line
	2750 3650 3200 3650
Wire Wire Line
	2750 3750 3200 3750
Wire Wire Line
	2750 3550 3050 3550
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 622F796A
P 2550 4250
F 0 "J4" H 2522 4182 50  0000 R CNN
F 1 "servo" H 2522 4273 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2550 4250 50  0001 C CNN
F 3 "~" H 2550 4250 50  0001 C CNN
	1    2550 4250
	1    0    0    1   
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 622F7970
P 3200 4250
F 0 "#PWR0107" H 3200 4100 50  0001 C CNN
F 1 "+5V" H 3215 4423 50  0000 C CNN
F 2 "" H 3200 4250 50  0001 C CNN
F 3 "" H 3200 4250 50  0001 C CNN
	1    3200 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 622F7976
P 3200 4350
F 0 "#PWR0108" H 3200 4100 50  0001 C CNN
F 1 "GND" H 3205 4177 50  0000 C CNN
F 2 "" H 3200 4350 50  0001 C CNN
F 3 "" H 3200 4350 50  0001 C CNN
	1    3200 4350
	1    0    0    -1  
$EndComp
Text Label 3050 4150 2    50   ~ 0
mot4
Wire Wire Line
	2750 4250 3200 4250
Wire Wire Line
	2750 4350 3200 4350
Wire Wire Line
	2750 4150 3050 4150
Text Label 4250 3050 0    50   ~ 0
mot1
Wire Wire Line
	4550 3050 4250 3050
Text Label 4250 3150 0    50   ~ 0
mot2
Wire Wire Line
	4550 3150 4250 3150
Text Label 4250 3250 0    50   ~ 0
mot3
Wire Wire Line
	4550 3250 4250 3250
Text Label 4250 3350 0    50   ~ 0
mot4
Wire Wire Line
	4550 3350 4250 3350
$Comp
L Regulator_Linear:LM7805_TO220 U1
U 1 1 622F8F72
P 4250 950
F 0 "U1" H 4250 1192 50  0000 C CNN
F 1 "LM7805_TO220" H 4250 1101 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4250 1175 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 4250 900 50  0001 C CNN
	1    4250 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 622F9D1F
P 3650 1100
F 0 "C2" H 3768 1146 50  0000 L CNN
F 1 "CP" H 3768 1055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D7.5mm_P2.50mm" H 3688 950 50  0001 C CNN
F 3 "~" H 3650 1100 50  0001 C CNN
	1    3650 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 622FA14B
P 4750 1100
F 0 "C3" H 4868 1146 50  0000 L CNN
F 1 "CP" H 4868 1055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D7.5mm_P2.50mm" H 4788 950 50  0001 C CNN
F 3 "~" H 4750 1100 50  0001 C CNN
	1    4750 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 622FA686
P 5100 1100
F 0 "C4" H 5215 1146 50  0000 L CNN
F 1 "C" H 5215 1055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5138 950 50  0001 C CNN
F 3 "~" H 5100 1100 50  0001 C CNN
	1    5100 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 622FAA42
P 3250 1100
F 0 "C1" H 3365 1146 50  0000 L CNN
F 1 "C" H 3365 1055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3288 950 50  0001 C CNN
F 3 "~" H 3250 1100 50  0001 C CNN
	1    3250 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 950  4750 950 
Connection ~ 4750 950 
Wire Wire Line
	4750 950  5100 950 
Connection ~ 5100 950 
Wire Wire Line
	5100 950  5450 950 
Wire Wire Line
	3950 950  3650 950 
Connection ~ 3650 950 
Wire Wire Line
	3650 950  3250 950 
Wire Wire Line
	3250 1250 3250 1350
$Comp
L power:GND #PWR0109
U 1 1 622FC07B
P 3250 1350
F 0 "#PWR0109" H 3250 1100 50  0001 C CNN
F 1 "GND" H 3255 1177 50  0000 C CNN
F 2 "" H 3250 1350 50  0001 C CNN
F 3 "" H 3250 1350 50  0001 C CNN
	1    3250 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1250 3650 1350
$Comp
L power:GND #PWR0110
U 1 1 622FC6BC
P 3650 1350
F 0 "#PWR0110" H 3650 1100 50  0001 C CNN
F 1 "GND" H 3655 1177 50  0000 C CNN
F 2 "" H 3650 1350 50  0001 C CNN
F 3 "" H 3650 1350 50  0001 C CNN
	1    3650 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1250 4250 1350
$Comp
L power:GND #PWR0111
U 1 1 622FCDA0
P 4250 1350
F 0 "#PWR0111" H 4250 1100 50  0001 C CNN
F 1 "GND" H 4255 1177 50  0000 C CNN
F 2 "" H 4250 1350 50  0001 C CNN
F 3 "" H 4250 1350 50  0001 C CNN
	1    4250 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1250 4750 1350
$Comp
L power:GND #PWR0112
U 1 1 622FD318
P 4750 1350
F 0 "#PWR0112" H 4750 1100 50  0001 C CNN
F 1 "GND" H 4755 1177 50  0000 C CNN
F 2 "" H 4750 1350 50  0001 C CNN
F 3 "" H 4750 1350 50  0001 C CNN
	1    4750 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1250 5100 1350
$Comp
L power:GND #PWR0113
U 1 1 622FD775
P 5100 1350
F 0 "#PWR0113" H 5100 1100 50  0001 C CNN
F 1 "GND" H 5105 1177 50  0000 C CNN
F 2 "" H 5100 1350 50  0001 C CNN
F 3 "" H 5100 1350 50  0001 C CNN
	1    5100 1350
	1    0    0    -1  
$EndComp
NoConn ~ 4950 2350
NoConn ~ 5150 2350
NoConn ~ 5250 2350
NoConn ~ 5550 2750
NoConn ~ 5550 2850
NoConn ~ 4550 2950
NoConn ~ 4550 2850
NoConn ~ 4550 2750
NoConn ~ 5550 3150
$Comp
L Transistor_Array:ULN2003A U2
U 1 1 62300148
P 7200 3800
F 0 "U2" H 7200 4467 50  0000 C CNN
F 1 "ULN2003A" H 7200 4376 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7250 3250 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 7300 3600 50  0001 C CNN
	1    7200 3800
	1    0    0    -1  
$EndComp
Text Label 4250 3450 0    50   ~ 0
rel1
Wire Wire Line
	4550 3450 4250 3450
Text Label 4250 3550 0    50   ~ 0
rel2
Wire Wire Line
	4550 3550 4250 3550
Text Label 4250 3650 0    50   ~ 0
rel3
Wire Wire Line
	4550 3650 4250 3650
Text Label 4250 3750 0    50   ~ 0
rel4
Wire Wire Line
	4550 3750 4250 3750
Text Label 6500 3600 0    50   ~ 0
rel1
Wire Wire Line
	6800 3600 6500 3600
Text Label 6500 3700 0    50   ~ 0
rel2
Wire Wire Line
	6800 3700 6500 3700
Text Label 6500 3800 0    50   ~ 0
rel3
Wire Wire Line
	6800 3800 6500 3800
Text Label 6500 3900 0    50   ~ 0
rel4
Wire Wire Line
	6800 3900 6500 3900
$Comp
L power:+5V #PWR0114
U 1 1 6230AD4D
P 7750 3400
F 0 "#PWR0114" H 7750 3250 50  0001 C CNN
F 1 "+5V" H 7765 3573 50  0000 C CNN
F 2 "" H 7750 3400 50  0001 C CNN
F 3 "" H 7750 3400 50  0001 C CNN
	1    7750 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 6230E946
P 11000 900
F 0 "#PWR0115" H 11000 750 50  0001 C CNN
F 1 "+5V" H 11015 1073 50  0000 C CNN
F 2 "" H 11000 900 50  0001 C CNN
F 3 "" H 11000 900 50  0001 C CNN
	1    11000 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 900  10800 900 
Wire Wire Line
	10200 1300 9900 1300
Text Label 9900 1300 0    50   ~ 0
frog1
Wire Wire Line
	10200 900  9900 900 
Text Label 9900 900  0    50   ~ 0
coil1
Text Label 11050 1200 2    50   ~ 0
DCC+
Wire Wire Line
	10800 1200 11050 1200
Text Label 11050 1400 2    50   ~ 0
DCC-
Wire Wire Line
	10800 1400 11050 1400
$Comp
L power:+5V #PWR0116
U 1 1 6231889B
P 11000 2350
F 0 "#PWR0116" H 11000 2200 50  0001 C CNN
F 1 "+5V" H 11015 2523 50  0000 C CNN
F 2 "" H 11000 2350 50  0001 C CNN
F 3 "" H 11000 2350 50  0001 C CNN
	1    11000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 2350 10800 2350
Wire Wire Line
	10200 2750 9900 2750
Text Label 9900 2750 0    50   ~ 0
frog2
Wire Wire Line
	10200 2350 9900 2350
Text Label 9900 2350 0    50   ~ 0
coil2
Text Label 11050 2650 2    50   ~ 0
DCC+
Wire Wire Line
	10800 2650 11050 2650
Text Label 11050 2850 2    50   ~ 0
DCC-
Wire Wire Line
	10800 2850 11050 2850
$Comp
L power:+5V #PWR0117
U 1 1 6231993C
P 11000 3800
F 0 "#PWR0117" H 11000 3650 50  0001 C CNN
F 1 "+5V" H 11015 3973 50  0000 C CNN
F 2 "" H 11000 3800 50  0001 C CNN
F 3 "" H 11000 3800 50  0001 C CNN
	1    11000 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 3800 10800 3800
Wire Wire Line
	10200 4200 9900 4200
Text Label 9900 4200 0    50   ~ 0
frog3
Wire Wire Line
	10200 3800 9900 3800
Text Label 9900 3800 0    50   ~ 0
coil3
Text Label 11050 4100 2    50   ~ 0
DCC+
Wire Wire Line
	10800 4100 11050 4100
Text Label 11050 4300 2    50   ~ 0
DCC-
Wire Wire Line
	10800 4300 11050 4300
$Comp
L power:+5V #PWR0118
U 1 1 6231B38A
P 11000 5250
F 0 "#PWR0118" H 11000 5100 50  0001 C CNN
F 1 "+5V" H 11015 5423 50  0000 C CNN
F 2 "" H 11000 5250 50  0001 C CNN
F 3 "" H 11000 5250 50  0001 C CNN
	1    11000 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 5250 10800 5250
Wire Wire Line
	10200 5650 9900 5650
Text Label 9900 5650 0    50   ~ 0
frog4
Wire Wire Line
	10200 5250 9900 5250
Text Label 9900 5250 0    50   ~ 0
coil4
Text Label 11050 5550 2    50   ~ 0
DCC+
Wire Wire Line
	10800 5550 11050 5550
Text Label 11050 5750 2    50   ~ 0
DCC-
Wire Wire Line
	10800 5750 11050 5750
Wire Wire Line
	7600 3600 7900 3600
Text Label 7900 3600 2    50   ~ 0
coil1
Wire Wire Line
	7600 3700 7900 3700
Text Label 7900 3700 2    50   ~ 0
coil2
Wire Wire Line
	7600 3800 7900 3800
Text Label 7900 3800 2    50   ~ 0
coil3
Wire Wire Line
	7600 3900 7900 3900
Text Label 7900 3900 2    50   ~ 0
coil4
$Comp
L power:GND #PWR0119
U 1 1 6232D7F0
P 7200 4450
F 0 "#PWR0119" H 7200 4200 50  0001 C CNN
F 1 "GND" H 7205 4277 50  0000 C CNN
F 2 "" H 7200 4450 50  0001 C CNN
F 3 "" H 7200 4450 50  0001 C CNN
	1    7200 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4450 7200 4400
NoConn ~ 7600 4000
NoConn ~ 7600 4100
NoConn ~ 7600 4200
NoConn ~ 6800 4000
NoConn ~ 6800 4100
NoConn ~ 6800 4200
$Comp
L power:GND #PWR0120
U 1 1 6233F7BB
P 2950 1350
F 0 "#PWR0120" H 2950 1100 50  0001 C CNN
F 1 "GND" H 2955 1177 50  0000 C CNN
F 2 "" H 2950 1350 50  0001 C CNN
F 3 "" H 2950 1350 50  0001 C CNN
	1    2950 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3400 7600 3400
$Comp
L power:GND #PWR0121
U 1 1 6234B792
P 5100 4500
F 0 "#PWR0121" H 5100 4250 50  0001 C CNN
F 1 "GND" H 5105 4327 50  0000 C CNN
F 2 "" H 5100 4500 50  0001 C CNN
F 3 "" H 5100 4500 50  0001 C CNN
	1    5100 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4350 5150 4400
Wire Wire Line
	5150 4400 5100 4400
Wire Wire Line
	5050 4400 5050 4350
Wire Wire Line
	5100 4500 5100 4400
Connection ~ 5100 4400
Wire Wire Line
	5100 4400 5050 4400
$Comp
L Connector:Screw_Terminal_01x02 J8
U 1 1 623524A9
P 9350 1450
F 0 "J8" H 9268 1125 50  0000 C CNN
F 1 "frog" H 9268 1216 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 9350 1450 50  0001 C CNN
F 3 "~" H 9350 1450 50  0001 C CNN
	1    9350 1450
	1    0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J6
U 1 1 62357026
P 8150 1350
F 0 "J6" H 8068 1567 50  0000 C CNN
F 1 "frog" H 8068 1476 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 8150 1350 50  0001 C CNN
F 3 "~" H 8150 1350 50  0001 C CNN
	1    8150 1350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8350 1450 8650 1450
Text Label 8650 1350 2    50   ~ 0
frog1
Wire Wire Line
	8350 1350 8650 1350
Text Label 8650 1450 2    50   ~ 0
frog2
Wire Wire Line
	9150 1350 8850 1350
Text Label 8850 1450 0    50   ~ 0
frog3
Wire Wire Line
	9150 1450 8850 1450
Text Label 8850 1350 0    50   ~ 0
frog4
$Comp
L Connector:Screw_Terminal_01x02 J7
U 1 1 623619B3
P 8700 650
F 0 "J7" V 8664 462 50  0000 R CNN
F 1 "DCC" V 8573 462 50  0000 R CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 8700 650 50  0001 C CNN
F 3 "~" H 8700 650 50  0001 C CNN
	1    8700 650 
	0    -1   -1   0   
$EndComp
Text Label 8800 1100 1    50   ~ 0
DCC+
Wire Wire Line
	8800 850  8800 1100
Text Label 8700 1100 1    50   ~ 0
DCC-
Wire Wire Line
	8700 850  8700 1100
$Comp
L power:+5V #PWR0122
U 1 1 62368095
P 5450 950
F 0 "#PWR0122" H 5450 800 50  0001 C CNN
F 1 "+5V" H 5465 1123 50  0000 C CNN
F 2 "" H 5450 950 50  0001 C CNN
F 3 "" H 5450 950 50  0001 C CNN
	1    5450 950 
	1    0    0    -1  
$EndComp
NoConn ~ 4550 3950
$Comp
L Connector:Screw_Terminal_01x05 J5
U 1 1 62381D20
P 7600 650
F 0 "J5" V 7564 930 50  0000 L CNN
F 1 "Btn" V 7473 930 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-5-5.08_1x05_P5.08mm_Horizontal" H 7600 650 50  0001 C CNN
F 3 "~" H 7600 650 50  0001 C CNN
	1    7600 650 
	0    1    -1   0   
$EndComp
Wire Wire Line
	7800 850  7800 1100
Wire Wire Line
	7700 850  7700 1100
Wire Wire Line
	7600 850  7600 1100
Wire Wire Line
	7500 850  7500 1100
Wire Wire Line
	7400 850  7400 1100
$Comp
L power:GND #PWR0123
U 1 1 6238D9A8
P 7600 1100
F 0 "#PWR0123" H 7600 850 50  0001 C CNN
F 1 "GND" H 7605 927 50  0000 C CNN
F 2 "" H 7600 1100 50  0001 C CNN
F 3 "" H 7600 1100 50  0001 C CNN
	1    7600 1100
	1    0    0    -1  
$EndComp
Text Label 7800 1100 1    50   ~ 0
sw1
Text Label 7700 1100 1    50   ~ 0
sw2
Text Label 7500 1100 1    50   ~ 0
sw3
Text Label 7400 1100 1    50   ~ 0
sw4
Wire Wire Line
	5550 3350 5800 3350
Wire Wire Line
	5550 3450 5800 3450
Wire Wire Line
	5550 3550 5800 3550
Wire Wire Line
	5550 3650 5800 3650
Text Label 5800 3350 2    50   ~ 0
sw1
Text Label 5800 3450 2    50   ~ 0
sw2
Text Label 5800 3550 2    50   ~ 0
sw3
Text Label 5800 3650 2    50   ~ 0
sw4
$Comp
L Switch:SW_SPST SW1
U 1 1 6239B121
P 2950 4950
F 0 "SW1" H 2950 5185 50  0000 C CNN
F 1 "conf" H 2950 5094 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 2950 4950 50  0001 C CNN
F 3 "~" H 2950 4950 50  0001 C CNN
	1    2950 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 6239E685
P 2700 4950
F 0 "#PWR0124" H 2700 4700 50  0001 C CNN
F 1 "GND" H 2705 4777 50  0000 C CNN
F 2 "" H 2700 4950 50  0001 C CNN
F 3 "" H 2700 4950 50  0001 C CNN
	1    2700 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4950 2750 4950
Text Label 3400 4950 2    50   ~ 0
conf
$Comp
L power:GND #PWR0125
U 1 1 623ACE63
P 2600 5450
F 0 "#PWR0125" H 2600 5200 50  0001 C CNN
F 1 "GND" H 2605 5277 50  0000 C CNN
F 2 "" H 2600 5450 50  0001 C CNN
F 3 "" H 2600 5450 50  0001 C CNN
	1    2600 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5450 2600 5450
$Comp
L Device:LED D2
U 1 1 623AC4F5
P 2900 5450
F 0 "D2" H 2893 5667 50  0000 C CNN
F 1 "LED" H 2893 5576 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2900 5450 50  0001 C CNN
F 3 "~" H 2900 5450 50  0001 C CNN
	1    2900 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 623B318E
P 3250 5450
F 0 "R1" V 3457 5450 50  0000 C CNN
F 1 "R" V 3366 5450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3180 5450 50  0001 C CNN
F 3 "~" H 3250 5450 50  0001 C CNN
	1    3250 5450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3100 5450 3050 5450
Wire Wire Line
	3400 5450 3700 5450
Text Label 3700 5450 2    50   ~ 0
status
Wire Wire Line
	4550 4050 4250 4050
Text Label 4250 4050 0    50   ~ 0
status
$Comp
L Device:R_POT RV1
U 1 1 623C7322
P 5550 5600
F 0 "RV1" V 5343 5600 50  0000 C CNN
F 1 "R_POT" V 5434 5600 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 5550 5600 50  0001 C CNN
F 3 "~" H 5550 5600 50  0001 C CNN
	1    5550 5600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 623C7C40
P 5550 6250
F 0 "#PWR0126" H 5550 6000 50  0001 C CNN
F 1 "GND" H 5555 6077 50  0000 C CNN
F 2 "" H 5550 6250 50  0001 C CNN
F 3 "" H 5550 6250 50  0001 C CNN
	1    5550 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 623C9007
P 5400 5900
F 0 "C5" H 5515 5946 50  0000 L CNN
F 1 "C" H 5515 5855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5438 5750 50  0001 C CNN
F 3 "~" H 5400 5900 50  0001 C CNN
	1    5400 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 6250 5550 5900
Connection ~ 5550 5900
Wire Wire Line
	5550 5900 5550 5750
$Comp
L power:+5V #PWR0127
U 1 1 623D8B89
P 5550 5350
F 0 "#PWR0127" H 5550 5200 50  0001 C CNN
F 1 "+5V" H 5565 5523 50  0000 C CNN
F 2 "" H 5550 5350 50  0001 C CNN
F 3 "" H 5550 5350 50  0001 C CNN
	1    5550 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 5450 5550 5350
Wire Wire Line
	5250 5900 5250 5600
Wire Wire Line
	5250 5600 5400 5600
Wire Wire Line
	5250 5600 5050 5600
Connection ~ 5250 5600
Text Label 5050 5600 0    50   ~ 0
pot1
Text Label 5800 3750 2    50   ~ 0
pot1
Wire Wire Line
	5550 3750 5800 3750
NoConn ~ 5550 4050
Text Label 5800 3850 2    50   ~ 0
pot2
Wire Wire Line
	5550 3850 5800 3850
$Comp
L Device:R_POT RV2
U 1 1 6241FDF2
P 6400 5600
F 0 "RV2" V 6193 5600 50  0000 C CNN
F 1 "R_POT" V 6284 5600 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-065_Vertical" H 6400 5600 50  0001 C CNN
F 3 "~" H 6400 5600 50  0001 C CNN
	1    6400 5600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 6241FDF8
P 6400 6250
F 0 "#PWR0128" H 6400 6000 50  0001 C CNN
F 1 "GND" H 6405 6077 50  0000 C CNN
F 2 "" H 6400 6250 50  0001 C CNN
F 3 "" H 6400 6250 50  0001 C CNN
	1    6400 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 6241FDFE
P 6250 5900
F 0 "C6" H 6365 5946 50  0000 L CNN
F 1 "C" H 6365 5855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6288 5750 50  0001 C CNN
F 3 "~" H 6250 5900 50  0001 C CNN
	1    6250 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 6250 6400 5900
Connection ~ 6400 5900
Wire Wire Line
	6400 5900 6400 5750
$Comp
L power:+5V #PWR0129
U 1 1 6241FE07
P 6400 5350
F 0 "#PWR0129" H 6400 5200 50  0001 C CNN
F 1 "+5V" H 6415 5523 50  0000 C CNN
F 2 "" H 6400 5350 50  0001 C CNN
F 3 "" H 6400 5350 50  0001 C CNN
	1    6400 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5450 6400 5350
Wire Wire Line
	6100 5900 6100 5600
Wire Wire Line
	6100 5600 6250 5600
Wire Wire Line
	6100 5600 5900 5600
Connection ~ 6100 5600
Text Label 5900 5600 0    50   ~ 0
pot2
$Comp
L Relay:G5V-1 K1
U 1 1 62438FE6
P 10500 1100
F 0 "K1" H 10930 1146 50  0000 L CNN
F 1 "G5V-1" H 10930 1055 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Omron_G5V-1" H 11630 1070 50  0001 C CNN
F 3 "http://omronfs.omron.com/en_US/ecb/products/pdf/en-g5v_1.pdf" H 10500 1100 50  0001 C CNN
	1    10500 1100
	0    1    1    0   
$EndComp
$Comp
L Relay:G5V-1 K2
U 1 1 6244D00B
P 10500 2550
F 0 "K2" H 10930 2596 50  0000 L CNN
F 1 "G5V-1" H 10930 2505 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Omron_G5V-1" H 11630 2520 50  0001 C CNN
F 3 "http://omronfs.omron.com/en_US/ecb/products/pdf/en-g5v_1.pdf" H 10500 2550 50  0001 C CNN
	1    10500 2550
	0    1    1    0   
$EndComp
$Comp
L Relay:G5V-1 K3
U 1 1 6244DEF3
P 10500 4000
F 0 "K3" H 10930 4046 50  0000 L CNN
F 1 "G5V-1" H 10930 3955 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Omron_G5V-1" H 11630 3970 50  0001 C CNN
F 3 "http://omronfs.omron.com/en_US/ecb/products/pdf/en-g5v_1.pdf" H 10500 4000 50  0001 C CNN
	1    10500 4000
	0    1    1    0   
$EndComp
$Comp
L Relay:G5V-1 K4
U 1 1 6244EC87
P 10500 5450
F 0 "K4" H 10930 5496 50  0000 L CNN
F 1 "G5V-1" H 10930 5405 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Omron_G5V-1" H 11630 5420 50  0001 C CNN
F 3 "http://omronfs.omron.com/en_US/ecb/products/pdf/en-g5v_1.pdf" H 10500 5450 50  0001 C CNN
	1    10500 5450
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J9
U 1 1 625182A9
P 2600 950
F 0 "J9" H 2518 1167 50  0000 C CNN
F 1 "pow" H 2518 1076 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 2600 950 50  0001 C CNN
F 3 "~" H 2600 950 50  0001 C CNN
	1    2600 950 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3250 950  2800 950 
Connection ~ 3250 950 
Wire Wire Line
	2950 1050 2800 1050
Wire Wire Line
	2950 1050 2950 1350
Text Label 5800 3950 2    50   ~ 0
conf
Wire Wire Line
	5550 3950 5800 3950
NoConn ~ 4550 3850
$Comp
L Device:R R2
U 1 1 623B6C99
P 3400 4750
F 0 "R2" V 3193 4750 50  0000 C CNN
F 1 "R" V 3284 4750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3330 4750 50  0001 C CNN
F 3 "~" H 3400 4750 50  0001 C CNN
	1    3400 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 4950 3200 4950
Wire Wire Line
	3250 4750 3200 4750
Wire Wire Line
	3200 4750 3200 4950
Connection ~ 3200 4950
Wire Wire Line
	3200 4950 3400 4950
$Comp
L power:+5V #PWR0130
U 1 1 623BEFA7
P 3650 4750
F 0 "#PWR0130" H 3650 4600 50  0001 C CNN
F 1 "+5V" H 3665 4923 50  0000 C CNN
F 2 "" H 3650 4750 50  0001 C CNN
F 3 "" H 3650 4750 50  0001 C CNN
	1    3650 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4750 3550 4750
$EndSCHEMATC
