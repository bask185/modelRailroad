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
L Isolator:6N137 U1
U 1 1 61CB6BD3
P 4800 3150
F 0 "U1" H 4800 3617 50  0000 C CNN
F 1 "6N137" H 4800 3526 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4800 2650 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-0940EN" H 3950 3700 50  0001 C CNN
	1    4800 3150
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D2
U 1 1 61CB7B8C
P 4050 3250
F 0 "D2" V 4004 3330 50  0000 L CNN
F 1 "1N4148" V 4095 3330 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4050 3075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4050 3250 50  0001 C CNN
	1    4050 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 3350 4500 3400
Wire Wire Line
	4500 3400 4050 3400
Wire Wire Line
	4500 3150 4500 3100
Wire Wire Line
	4500 3100 4050 3100
$Comp
L Device:C C1
U 1 1 61CB9502
P 3750 3250
F 0 "C1" H 3865 3296 50  0000 L CNN
F 1 "C" H 3865 3205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3788 3100 50  0001 C CNN
F 3 "~" H 3750 3250 50  0001 C CNN
	1    3750 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3100 4050 3100
Connection ~ 4050 3100
Wire Wire Line
	4050 3400 3750 3400
Connection ~ 4050 3400
$Comp
L Device:R R1
U 1 1 61CBAED1
P 3550 3100
F 0 "R1" V 3343 3100 50  0000 C CNN
F 1 "1k" V 3434 3100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3480 3100 50  0001 C CNN
F 3 "~" H 3550 3100 50  0001 C CNN
	1    3550 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 3100 3700 3100
Connection ~ 3750 3100
Wire Wire Line
	3400 3100 3150 3100
Connection ~ 3750 3400
Wire Wire Line
	3150 3400 3750 3400
Text Label 3150 3100 0    50   ~ 0
DCC+
Text Label 3150 3400 0    50   ~ 0
DCC-
$Comp
L Regulator_Linear:L78L05_TO92 U2
U 1 1 61CBCEA2
P 4900 1500
F 0 "U2" H 4900 1742 50  0000 C CNN
F 1 "L78L05_TO92" H 4900 1651 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4900 1725 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/15/55/e5/aa/23/5b/43/fd/CD00000446.pdf/files/CD00000446.pdf/jcr:content/translations/en.CD00000446.pdf" H 4900 1450 50  0001 C CNN
	1    4900 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 61CBD6C2
P 4450 1650
F 0 "C3" H 4568 1696 50  0000 L CNN
F 1 "CP" H 4568 1605 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 4488 1500 50  0001 C CNN
F 3 "~" H 4450 1650 50  0001 C CNN
	1    4450 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 61CBDB60
P 5300 1650
F 0 "C4" H 5418 1696 50  0000 L CNN
F 1 "CP" H 5418 1605 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 5338 1500 50  0001 C CNN
F 3 "~" H 5300 1650 50  0001 C CNN
	1    5300 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 61CBE0B1
P 5650 1650
F 0 "C5" H 5765 1696 50  0000 L CNN
F 1 "C" H 5765 1605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5688 1500 50  0001 C CNN
F 3 "~" H 5650 1650 50  0001 C CNN
	1    5650 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 61CBE5B0
P 4150 1650
F 0 "C2" H 4265 1696 50  0000 L CNN
F 1 "C" H 4265 1605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4188 1500 50  0001 C CNN
F 3 "~" H 4150 1650 50  0001 C CNN
	1    4150 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1500 4450 1500
Connection ~ 4450 1500
Wire Wire Line
	4450 1500 4300 1500
Wire Wire Line
	5200 1500 5300 1500
Connection ~ 5300 1500
Wire Wire Line
	5300 1500 5650 1500
Wire Wire Line
	5650 1800 5650 1900
Wire Wire Line
	5300 1800 5300 1900
Wire Wire Line
	4900 1800 4900 1900
Wire Wire Line
	4150 1800 4150 1900
Wire Wire Line
	4450 1800 4450 1900
$Comp
L power:GND #PWR0101
U 1 1 61CC13B9
P 5650 1900
F 0 "#PWR0101" H 5650 1650 50  0001 C CNN
F 1 "GND" H 5655 1727 50  0000 C CNN
F 2 "" H 5650 1900 50  0001 C CNN
F 3 "" H 5650 1900 50  0001 C CNN
	1    5650 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 61CC1879
P 5300 1900
F 0 "#PWR0102" H 5300 1650 50  0001 C CNN
F 1 "GND" H 5305 1727 50  0000 C CNN
F 2 "" H 5300 1900 50  0001 C CNN
F 3 "" H 5300 1900 50  0001 C CNN
	1    5300 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 61CC1A84
P 4900 1900
F 0 "#PWR0103" H 4900 1650 50  0001 C CNN
F 1 "GND" H 4905 1727 50  0000 C CNN
F 2 "" H 4900 1900 50  0001 C CNN
F 3 "" H 4900 1900 50  0001 C CNN
	1    4900 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 61CC1C57
P 4450 1900
F 0 "#PWR0104" H 4450 1650 50  0001 C CNN
F 1 "GND" H 4455 1727 50  0000 C CNN
F 2 "" H 4450 1900 50  0001 C CNN
F 3 "" H 4450 1900 50  0001 C CNN
	1    4450 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 61CC1ED2
P 4150 1900
F 0 "#PWR0105" H 4150 1650 50  0001 C CNN
F 1 "GND" H 4155 1727 50  0000 C CNN
F 2 "" H 4150 1900 50  0001 C CNN
F 3 "" H 4150 1900 50  0001 C CNN
	1    4150 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Bridge_+A-A D1
U 1 1 61CC247E
P 3500 1800
F 0 "D1" H 3844 1846 50  0000 L CNN
F 1 "D" H 3844 1755 50  0000 L CNN
F 2 "Diode_THT:Diode_Bridge_Round_D9.0mm" H 3500 1800 50  0001 C CNN
F 3 "~" H 3500 1800 50  0001 C CNN
	1    3500 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 1500 3500 1500
Connection ~ 4150 1500
Wire Wire Line
	3500 2100 3500 2200
$Comp
L power:GND #PWR0106
U 1 1 61CC43C5
P 3500 2200
F 0 "#PWR0106" H 3500 1950 50  0001 C CNN
F 1 "GND" H 3505 2027 50  0000 C CNN
F 2 "" H 3500 2200 50  0001 C CNN
F 3 "" H 3500 2200 50  0001 C CNN
	1    3500 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 61CCEBEA
P 3550 850
F 0 "J1" V 3514 930 50  0000 L CNN
F 1 "Screw_Terminal_01x02" V 3423 930 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 3550 850 50  0001 C CNN
F 3 "~" H 3550 850 50  0001 C CNN
	1    3550 850 
	0    1    -1   0   
$EndComp
Wire Wire Line
	3550 1050 3800 1050
Wire Wire Line
	3800 1050 3800 1800
Wire Wire Line
	3200 1050 3200 1800
Text Label 3800 1250 0    50   ~ 0
DCC+
Text Label 3200 1250 2    50   ~ 0
DCC-
$Comp
L power:+12V #PWR0107
U 1 1 61CD0AA1
P 4300 1500
F 0 "#PWR0107" H 4300 1350 50  0001 C CNN
F 1 "+12V" H 4315 1673 50  0000 C CNN
F 2 "" H 4300 1500 50  0001 C CNN
F 3 "" H 4300 1500 50  0001 C CNN
	1    4300 1500
	1    0    0    -1  
$EndComp
Connection ~ 4300 1500
Wire Wire Line
	4300 1500 4150 1500
$Comp
L power:+5V #PWR0108
U 1 1 61CD1671
P 5900 1500
F 0 "#PWR0108" H 5900 1350 50  0001 C CNN
F 1 "+5V" H 5915 1673 50  0000 C CNN
F 2 "" H 5900 1500 50  0001 C CNN
F 3 "" H 5900 1500 50  0001 C CNN
	1    5900 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1500 5650 1500
Connection ~ 5650 1500
$Comp
L power:+5V #PWR0109
U 1 1 61CD4965
P 5350 2650
F 0 "#PWR0109" H 5350 2500 50  0001 C CNN
F 1 "+5V" H 5365 2823 50  0000 C CNN
F 2 "" H 5350 2650 50  0001 C CNN
F 3 "" H 5350 2650 50  0001 C CNN
	1    5350 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 61CD5410
P 5350 2900
F 0 "R2" H 5200 2950 50  0000 L CNN
F 1 "10k" H 5150 2850 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5280 2900 50  0001 C CNN
F 3 "~" H 5350 2900 50  0001 C CNN
	1    5350 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2950 5100 2750
$Comp
L power:GND #PWR0110
U 1 1 61CD91D3
P 5100 3500
F 0 "#PWR0110" H 5100 3250 50  0001 C CNN
F 1 "GND" H 5105 3327 50  0000 C CNN
F 2 "" H 5100 3500 50  0001 C CNN
F 3 "" H 5100 3500 50  0001 C CNN
	1    5100 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3500 5100 3350
Connection ~ 5350 2750
Wire Wire Line
	5100 2750 5350 2750
Wire Wire Line
	5100 3050 5350 3050
Wire Wire Line
	5100 3150 5500 3150
Wire Wire Line
	5500 3150 5500 3050
Wire Wire Line
	5350 2750 5500 2750
$Comp
L Device:R R3
U 1 1 61CD54F8
P 5500 2900
F 0 "R3" H 5570 2946 50  0000 L CNN
F 1 "5k" H 5570 2855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5430 2900 50  0001 C CNN
F 3 "~" H 5500 2900 50  0001 C CNN
	1    5500 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2650 5350 2750
Wire Wire Line
	5500 3150 6000 3150
Connection ~ 5500 3150
Text Label 6000 3150 2    50   ~ 0
DCC_IN
$Comp
L w_connectors:HEADER_15 J2
U 1 1 61CF32B0
P 7250 2350
F 0 "J2" H 6850 2450 60  0000 L CNN
F 1 "nano2" H 6750 2550 60  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x15_P2.54mm_Vertical" H 7250 2350 60  0001 C CNN
F 3 "" H 7250 2350 60  0000 C CNN
	1    7250 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3200 1050 3450 1050
$Comp
L w_connectors:HEADER_15 J3
U 1 1 61D11CC1
P 6850 2350
F 0 "J3" H 6450 2250 60  0000 L CNN
F 1 "nano1" H 6400 2150 60  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x15_P2.54mm_Vertical" H 6850 2350 60  0001 C CNN
F 3 "" H 6850 2350 60  0000 C CNN
	1    6850 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2050 6250 2050
Text Label 6250 2050 0    50   ~ 0
DCC_IN
Wire Wire Line
	6750 1950 6500 1950
$Comp
L power:GND #PWR0113
U 1 1 61D1B23E
P 6400 1700
F 0 "#PWR0113" H 6400 1450 50  0001 C CNN
F 1 "GND" H 6405 1527 50  0000 C CNN
F 2 "" H 6400 1700 50  0001 C CNN
F 3 "" H 6400 1700 50  0001 C CNN
	1    6400 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1700 6500 1700
Wire Wire Line
	6500 1700 6500 1950
Wire Wire Line
	7350 1750 7450 1750
$Comp
L power:GND #PWR0114
U 1 1 61D20083
P 7600 1700
F 0 "#PWR0114" H 7600 1450 50  0001 C CNN
F 1 "GND" H 7605 1527 50  0000 C CNN
F 2 "" H 7600 1700 50  0001 C CNN
F 3 "" H 7600 1700 50  0001 C CNN
	1    7600 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1950 7800 1950
$Comp
L power:+5V #PWR0115
U 1 1 61D2117B
P 7800 1950
F 0 "#PWR0115" H 7800 1800 50  0001 C CNN
F 1 "+5V" H 7815 2123 50  0000 C CNN
F 2 "" H 7800 1950 50  0001 C CNN
F 3 "" H 7800 1950 50  0001 C CNN
	1    7800 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1700 7450 1700
Wire Wire Line
	7450 1700 7450 1750
NoConn ~ 6750 1850
NoConn ~ 6750 1650
NoConn ~ 6750 1750
NoConn ~ 6750 2150
NoConn ~ 6750 2250
NoConn ~ 6750 2350
NoConn ~ 6750 2450
NoConn ~ 6750 2550
NoConn ~ 6750 2650
NoConn ~ 6750 2750
NoConn ~ 6750 2850
NoConn ~ 6750 2950
NoConn ~ 6750 3050
NoConn ~ 7350 3050
NoConn ~ 7350 2950
NoConn ~ 7350 2850
NoConn ~ 7350 2750
NoConn ~ 7350 2650
NoConn ~ 7350 2550
NoConn ~ 7350 2450
NoConn ~ 7350 2350
NoConn ~ 7350 2250
NoConn ~ 7350 2150
NoConn ~ 7350 2050
NoConn ~ 7350 1850
NoConn ~ 7350 1650
$Comp
L Connector:Conn_01x01_Male J4
U 1 1 61E886B8
P 6700 1050
F 0 "J4" H 6808 1231 50  0000 C CNN
F 1 "Conn_01x01_Male" H 6808 1140 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 6700 1050 50  0001 C CNN
F 3 "~" H 6700 1050 50  0001 C CNN
	1    6700 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0111
U 1 1 61E88DE2
P 7300 1050
F 0 "#PWR0111" H 7300 900 50  0001 C CNN
F 1 "+12V" H 7315 1223 50  0000 C CNN
F 2 "" H 7300 1050 50  0001 C CNN
F 3 "" H 7300 1050 50  0001 C CNN
	1    7300 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1050 6900 1050
$EndSCHEMATC
