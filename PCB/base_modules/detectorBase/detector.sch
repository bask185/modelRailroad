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
U 1 1 62421B16
P 6650 4300
F 0 "A1" H 7250 3350 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 7250 3250 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 6650 4300 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 6650 4300 50  0001 C CNN
	1    6650 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3700 6150 3700
Wire Wire Line
	5850 3800 6150 3800
Wire Wire Line
	5850 3900 6150 3900
Wire Wire Line
	5850 4000 6150 4000
Wire Wire Line
	5850 4100 6150 4100
Wire Wire Line
	5850 4200 6150 4200
Wire Wire Line
	5850 4300 6150 4300
Wire Wire Line
	5850 4500 6150 4500
Wire Wire Line
	5850 4400 6150 4400
Wire Wire Line
	5850 4700 6150 4700
Wire Wire Line
	5850 4600 6150 4600
Wire Wire Line
	5850 4800 6150 4800
Wire Wire Line
	7150 4300 7450 4300
Wire Wire Line
	7150 4400 7450 4400
Wire Wire Line
	7150 4500 7450 4500
Wire Wire Line
	7150 4600 7450 4600
Wire Wire Line
	7150 4700 7450 4700
Wire Wire Line
	7150 4800 7450 4800
Wire Wire Line
	7150 5000 7450 5000
Wire Wire Line
	7150 3700 7450 3700
Wire Wire Line
	7150 3800 7450 3800
Wire Wire Line
	5850 4900 6150 4900
Wire Wire Line
	7150 4100 7450 4100
Wire Wire Line
	5850 5000 6150 5000
NoConn ~ 6750 3300
NoConn ~ 6550 3300
NoConn ~ 5850 3700
NoConn ~ 5850 3800
NoConn ~ 5850 3900
Wire Wire Line
	6750 5300 6750 5350
Wire Wire Line
	6750 5350 6700 5350
Wire Wire Line
	6650 5350 6650 5300
$Comp
L power:GND #PWR0101
U 1 1 62426A94
P 6700 5400
F 0 "#PWR0101" H 6700 5150 50  0001 C CNN
F 1 "GND" H 6705 5227 50  0000 C CNN
F 2 "" H 6700 5400 50  0001 C CNN
F 3 "" H 6700 5400 50  0001 C CNN
	1    6700 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5400 6700 5350
Connection ~ 6700 5350
Wire Wire Line
	6700 5350 6650 5350
$Comp
L Switch:SW_SPST SW1
U 1 1 6242715B
P 8500 5150
F 0 "SW1" H 8500 5385 50  0000 C CNN
F 1 "SW_SPST" H 8500 5294 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 8500 5150 50  0001 C CNN
F 3 "~" H 8500 5150 50  0001 C CNN
	1    8500 5150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6242834C
P 8500 5450
F 0 "#PWR0102" H 8500 5200 50  0001 C CNN
F 1 "GND" H 8505 5277 50  0000 C CNN
F 2 "" H 8500 5450 50  0001 C CNN
F 3 "" H 8500 5450 50  0001 C CNN
	1    8500 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 5450 8500 5350
$Comp
L Device:R R17
U 1 1 62428C3C
P 8500 4750
F 0 "R17" H 8570 4796 50  0000 L CNN
F 1 "R" H 8570 4705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8430 4750 50  0001 C CNN
F 3 "~" H 8500 4750 50  0001 C CNN
	1    8500 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 624297F5
P 8500 4550
F 0 "#PWR0103" H 8500 4400 50  0001 C CNN
F 1 "+5V" H 8515 4723 50  0000 C CNN
F 2 "" H 8500 4550 50  0001 C CNN
F 3 "" H 8500 4550 50  0001 C CNN
	1    8500 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4950 8500 4900
Wire Wire Line
	8500 4600 8500 4550
Wire Wire Line
	7150 4900 8500 4900
Connection ~ 8500 4900
$Comp
L power:+5V #PWR0104
U 1 1 6242F173
P 6850 3250
F 0 "#PWR0104" H 6850 3100 50  0001 C CNN
F 1 "+5V" H 6865 3423 50  0000 C CNN
F 2 "" H 6850 3250 50  0001 C CNN
F 3 "" H 6850 3250 50  0001 C CNN
	1    6850 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3300 6850 3250
NoConn ~ 7450 3700
NoConn ~ 7450 3800
NoConn ~ 7450 4100
$Comp
L Device:D_Bridge_+-AA D1
U 1 1 62430CAF
P 3450 1450
F 0 "D1" H 3794 1496 50  0000 L CNN
F 1 "D" H 3794 1405 50  0000 L CNN
F 2 "Diode_THT:Diode_Bridge_DIP-4_W7.62mm_P5.08mm" H 3450 1450 50  0001 C CNN
F 3 "~" H 3450 1450 50  0001 C CNN
	1    3450 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1450 3150 1400
Wire Wire Line
	3150 1400 3750 1400
Wire Wire Line
	3750 1400 3750 1450
$Comp
L Device:D_Bridge_+-AA D2
U 1 1 62433361
P 3450 2200
F 0 "D2" H 3794 2246 50  0000 L CNN
F 1 "D" H 3794 2155 50  0000 L CNN
F 2 "Diode_THT:Diode_Bridge_DIP-4_W7.62mm_P5.08mm" H 3450 2200 50  0001 C CNN
F 3 "~" H 3450 2200 50  0001 C CNN
	1    3450 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2200 3150 2150
Wire Wire Line
	3150 2150 3750 2150
Wire Wire Line
	3750 2150 3750 2200
$Comp
L Isolator:PC847 U1
U 1 1 62433BA4
P 4550 1450
F 0 "U1" H 4550 1775 50  0000 C CNN
F 1 "PC847" H 4550 1684 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4350 1250 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 4550 1450 50  0001 L CNN
	1    4550 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Bridge_+-AA D3
U 1 1 624392EF
P 3450 2950
F 0 "D3" H 3794 2996 50  0000 L CNN
F 1 "D" H 3794 2905 50  0000 L CNN
F 2 "Diode_THT:Diode_Bridge_DIP-4_W7.62mm_P5.08mm" H 3450 2950 50  0001 C CNN
F 3 "~" H 3450 2950 50  0001 C CNN
	1    3450 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2950 3150 2900
Wire Wire Line
	3150 2900 3750 2900
Wire Wire Line
	3750 2900 3750 2950
$Comp
L Device:D_Bridge_+-AA D4
U 1 1 62439EC3
P 3450 3700
F 0 "D4" H 3794 3746 50  0000 L CNN
F 1 "D" H 3794 3655 50  0000 L CNN
F 2 "Diode_THT:Diode_Bridge_DIP-4_W7.62mm_P5.08mm" H 3450 3700 50  0001 C CNN
F 3 "~" H 3450 3700 50  0001 C CNN
	1    3450 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3700 3150 3650
Wire Wire Line
	3150 3650 3750 3650
Wire Wire Line
	3750 3650 3750 3700
Wire Wire Line
	3450 1750 2900 1750
Wire Wire Line
	2900 1750 2900 1600
Wire Wire Line
	2900 1300 2900 1150
Wire Wire Line
	2900 1150 3450 1150
Wire Wire Line
	3450 2500 2900 2500
Wire Wire Line
	2900 2500 2900 2350
Wire Wire Line
	2900 2050 2900 1900
Wire Wire Line
	2900 1900 3450 1900
Wire Wire Line
	3450 3250 2900 3250
Wire Wire Line
	2900 3250 2900 3100
Wire Wire Line
	2900 2800 2900 2650
Wire Wire Line
	2900 2650 3450 2650
Wire Wire Line
	3450 4000 2900 4000
Wire Wire Line
	2900 4000 2900 3850
Wire Wire Line
	2900 3550 2900 3400
Wire Wire Line
	2900 3400 3450 3400
$Comp
L Device:D_Bridge_+-AA D5
U 1 1 62452738
P 3450 6750
F 0 "D5" H 3794 6796 50  0000 L CNN
F 1 "D" H 3794 6705 50  0000 L CNN
F 2 "Diode_THT:Diode_Bridge_DIP-4_W7.62mm_P5.08mm" H 3450 6750 50  0001 C CNN
F 3 "~" H 3450 6750 50  0001 C CNN
	1    3450 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 4500 3150 4450
Wire Wire Line
	3150 4450 3750 4450
Wire Wire Line
	3750 4450 3750 4500
$Comp
L Device:D_Bridge_+-AA D6
U 1 1 62452741
P 3450 6000
F 0 "D6" H 3794 6046 50  0000 L CNN
F 1 "D" H 3794 5955 50  0000 L CNN
F 2 "Diode_THT:Diode_Bridge_DIP-4_W7.62mm_P5.08mm" H 3450 6000 50  0001 C CNN
F 3 "~" H 3450 6000 50  0001 C CNN
	1    3450 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 5250 3150 5200
Wire Wire Line
	3150 5200 3750 5200
Wire Wire Line
	3750 5200 3750 5250
$Comp
L Device:D_Bridge_+-AA D7
U 1 1 6245274A
P 3450 5250
F 0 "D7" H 3794 5296 50  0000 L CNN
F 1 "D" H 3794 5205 50  0000 L CNN
F 2 "Diode_THT:Diode_Bridge_DIP-4_W7.62mm_P5.08mm" H 3450 5250 50  0001 C CNN
F 3 "~" H 3450 5250 50  0001 C CNN
	1    3450 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 6000 3150 5950
Wire Wire Line
	3150 5950 3750 5950
Wire Wire Line
	3750 5950 3750 6000
$Comp
L Device:D_Bridge_+-AA D8
U 1 1 62452753
P 3450 4500
F 0 "D8" H 3794 4546 50  0000 L CNN
F 1 "D" H 3794 4455 50  0000 L CNN
F 2 "Diode_THT:Diode_Bridge_DIP-4_W7.62mm_P5.08mm" H 3450 4500 50  0001 C CNN
F 3 "~" H 3450 4500 50  0001 C CNN
	1    3450 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 6750 3150 6700
Wire Wire Line
	3150 6700 3750 6700
Wire Wire Line
	3750 6700 3750 6750
Wire Wire Line
	3450 4800 2900 4800
Wire Wire Line
	2900 4800 2900 4650
Wire Wire Line
	2900 4350 2900 4200
Wire Wire Line
	2900 4200 3450 4200
Wire Wire Line
	3450 5550 2900 5550
Wire Wire Line
	2900 5550 2900 5400
Wire Wire Line
	2900 5100 2900 4950
Wire Wire Line
	2900 4950 3450 4950
Wire Wire Line
	3450 6300 2900 6300
Wire Wire Line
	2900 6300 2900 6150
Wire Wire Line
	2900 5850 2900 5700
Wire Wire Line
	2900 5700 3450 5700
Wire Wire Line
	3450 7050 2900 7050
Wire Wire Line
	2900 7050 2900 6900
Wire Wire Line
	2900 6600 2900 6450
Wire Wire Line
	2900 6450 3450 6450
$Comp
L Device:R R9
U 1 1 6245B43F
P 4100 1150
F 0 "R9" V 4307 1150 50  0000 C CNN
F 1 "R" V 4216 1150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4030 1150 50  0001 C CNN
F 3 "~" H 4100 1150 50  0001 C CNN
	1    4100 1150
	0    -1   -1   0   
$EndComp
Connection ~ 3450 1150
Wire Wire Line
	4250 1150 4250 1350
Wire Wire Line
	4250 1550 4250 1750
Wire Wire Line
	4250 1750 3450 1750
Connection ~ 3450 1750
Wire Wire Line
	3450 1150 3950 1150
$Comp
L Isolator:PC847 U1
U 2 1 6246FCF2
P 4550 2200
F 0 "U1" H 4550 2525 50  0000 C CNN
F 1 "PC847" H 4550 2434 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4350 2000 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 4550 2200 50  0001 L CNN
	2    4550 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 6246FCF8
P 4100 1900
F 0 "R10" V 4307 1900 50  0000 C CNN
F 1 "R" V 4216 1900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4030 1900 50  0001 C CNN
F 3 "~" H 4100 1900 50  0001 C CNN
	1    4100 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 1900 4250 2100
Wire Wire Line
	4250 2300 4250 2500
Wire Wire Line
	4250 2500 3450 2500
Wire Wire Line
	3450 1900 3950 1900
$Comp
L Isolator:PC847 U1
U 3 1 624735B1
P 4550 2950
F 0 "U1" H 4550 3275 50  0000 C CNN
F 1 "PC847" H 4550 3184 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4350 2750 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 4550 2950 50  0001 L CNN
	3    4550 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 624735B7
P 4100 2650
F 0 "R11" V 4307 2650 50  0000 C CNN
F 1 "R" V 4216 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4030 2650 50  0001 C CNN
F 3 "~" H 4100 2650 50  0001 C CNN
	1    4100 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 2650 4250 2850
Wire Wire Line
	4250 3050 4250 3250
Wire Wire Line
	4250 3250 3450 3250
Wire Wire Line
	3450 2650 3950 2650
$Comp
L Isolator:PC847 U1
U 4 1 62477E13
P 4550 3700
F 0 "U1" H 4550 4025 50  0000 C CNN
F 1 "PC847" H 4550 3934 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4350 3500 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 4550 3700 50  0001 L CNN
	4    4550 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 62477E19
P 4100 3400
F 0 "R12" V 4307 3400 50  0000 C CNN
F 1 "R" V 4216 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4030 3400 50  0001 C CNN
F 3 "~" H 4100 3400 50  0001 C CNN
	1    4100 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 3400 4250 3600
Wire Wire Line
	4250 3800 4250 4000
Wire Wire Line
	4250 4000 3450 4000
Wire Wire Line
	3450 3400 3950 3400
$Comp
L Isolator:PC847 U2
U 1 1 6247D713
P 4550 5250
F 0 "U2" H 4550 5575 50  0000 C CNN
F 1 "PC847" H 4550 5484 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4350 5050 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 4550 5250 50  0001 L CNN
	1    4550 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 6247D719
P 4100 4200
F 0 "R13" V 4307 4200 50  0000 C CNN
F 1 "R" V 4216 4200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4030 4200 50  0001 C CNN
F 3 "~" H 4100 4200 50  0001 C CNN
	1    4100 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 4200 4250 4400
Wire Wire Line
	4250 4600 4250 4800
Wire Wire Line
	4250 4800 3450 4800
Wire Wire Line
	3450 4200 3950 4200
$Comp
L Isolator:PC847 U2
U 2 1 62481ECF
P 4550 4500
F 0 "U2" H 4550 4825 50  0000 C CNN
F 1 "PC847" H 4550 4734 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4350 4300 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 4550 4500 50  0001 L CNN
	2    4550 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 62481ED5
P 4100 4950
F 0 "R14" V 4307 4950 50  0000 C CNN
F 1 "R" V 4216 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4030 4950 50  0001 C CNN
F 3 "~" H 4100 4950 50  0001 C CNN
	1    4100 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 4950 4250 5150
Wire Wire Line
	4250 5350 4250 5550
Wire Wire Line
	4250 5550 3450 5550
Wire Wire Line
	3450 4950 3950 4950
$Comp
L Isolator:PC847 U2
U 3 1 62486117
P 4550 6750
F 0 "U2" H 4550 7075 50  0000 C CNN
F 1 "PC847" H 4550 6984 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4350 6550 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 4550 6750 50  0001 L CNN
	3    4550 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 6248611D
P 4100 5700
F 0 "R15" V 4307 5700 50  0000 C CNN
F 1 "R" V 4216 5700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4030 5700 50  0001 C CNN
F 3 "~" H 4100 5700 50  0001 C CNN
	1    4100 5700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 5700 4250 5900
Wire Wire Line
	4250 6100 4250 6300
Wire Wire Line
	4250 6300 3450 6300
Wire Wire Line
	3450 5700 3950 5700
$Comp
L Isolator:PC847 U2
U 4 1 6248B000
P 4550 6000
F 0 "U2" H 4550 6325 50  0000 C CNN
F 1 "PC847" H 4550 6234 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4350 5800 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 4550 6000 50  0001 L CNN
	4    4550 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 6248B006
P 4100 6450
F 0 "R16" V 4307 6450 50  0000 C CNN
F 1 "R" V 4216 6450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4030 6450 50  0001 C CNN
F 3 "~" H 4100 6450 50  0001 C CNN
	1    4100 6450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 6450 4250 6650
Wire Wire Line
	4250 6850 4250 7050
Wire Wire Line
	4250 7050 3450 7050
Wire Wire Line
	3450 6450 3950 6450
$Comp
L power:GND #PWR0105
U 1 1 6248F1B9
P 4850 7000
F 0 "#PWR0105" H 4850 6750 50  0001 C CNN
F 1 "GND" H 4855 6827 50  0000 C CNN
F 2 "" H 4850 7000 50  0001 C CNN
F 3 "" H 4850 7000 50  0001 C CNN
	1    4850 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 7000 4850 6850
$Comp
L power:GND #PWR0106
U 1 1 62494762
P 4850 6250
F 0 "#PWR0106" H 4850 6000 50  0001 C CNN
F 1 "GND" H 4855 6077 50  0000 C CNN
F 2 "" H 4850 6250 50  0001 C CNN
F 3 "" H 4850 6250 50  0001 C CNN
	1    4850 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6250 4850 6100
$Comp
L power:GND #PWR0107
U 1 1 62498C7B
P 4850 5500
F 0 "#PWR0107" H 4850 5250 50  0001 C CNN
F 1 "GND" H 4855 5327 50  0000 C CNN
F 2 "" H 4850 5500 50  0001 C CNN
F 3 "" H 4850 5500 50  0001 C CNN
	1    4850 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5500 4850 5350
$Comp
L power:GND #PWR0108
U 1 1 6249D0CE
P 4850 4750
F 0 "#PWR0108" H 4850 4500 50  0001 C CNN
F 1 "GND" H 4855 4577 50  0000 C CNN
F 2 "" H 4850 4750 50  0001 C CNN
F 3 "" H 4850 4750 50  0001 C CNN
	1    4850 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4750 4850 4600
$Comp
L power:GND #PWR0109
U 1 1 624A162F
P 4850 3950
F 0 "#PWR0109" H 4850 3700 50  0001 C CNN
F 1 "GND" H 4855 3777 50  0000 C CNN
F 2 "" H 4850 3950 50  0001 C CNN
F 3 "" H 4850 3950 50  0001 C CNN
	1    4850 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3950 4850 3800
$Comp
L power:GND #PWR0110
U 1 1 624A5C74
P 4850 3200
F 0 "#PWR0110" H 4850 2950 50  0001 C CNN
F 1 "GND" H 4855 3027 50  0000 C CNN
F 2 "" H 4850 3200 50  0001 C CNN
F 3 "" H 4850 3200 50  0001 C CNN
	1    4850 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3200 4850 3050
$Comp
L power:GND #PWR0111
U 1 1 624AA34F
P 4850 2450
F 0 "#PWR0111" H 4850 2200 50  0001 C CNN
F 1 "GND" H 4855 2277 50  0000 C CNN
F 2 "" H 4850 2450 50  0001 C CNN
F 3 "" H 4850 2450 50  0001 C CNN
	1    4850 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2450 4850 2300
$Comp
L power:GND #PWR0112
U 1 1 624AEAEA
P 4850 1700
F 0 "#PWR0112" H 4850 1450 50  0001 C CNN
F 1 "GND" H 4855 1527 50  0000 C CNN
F 2 "" H 4850 1700 50  0001 C CNN
F 3 "" H 4850 1700 50  0001 C CNN
	1    4850 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1700 4850 1550
Wire Wire Line
	4850 1350 5050 1350
Wire Wire Line
	4850 2100 5050 2100
Wire Wire Line
	4850 2850 5050 2850
Wire Wire Line
	4850 3600 5050 3600
Text Label 5050 1350 0    50   ~ 0
det1
Text Label 5050 2100 0    50   ~ 0
det2
Text Label 5050 2850 0    50   ~ 0
det3
Text Label 5050 3600 0    50   ~ 0
det4
Text Label 5050 4400 0    50   ~ 0
det5
Wire Wire Line
	4850 4400 5050 4400
Text Label 5050 5150 0    50   ~ 0
det6
Wire Wire Line
	4850 5150 5050 5150
Text Label 5050 5900 0    50   ~ 0
det7
Wire Wire Line
	4850 5900 5050 5900
Text Label 5050 6650 0    50   ~ 0
det8
Wire Wire Line
	4850 6650 5050 6650
Text Label 5850 4000 0    50   ~ 0
det1
Text Label 5850 4100 0    50   ~ 0
det2
Text Label 5850 4200 0    50   ~ 0
det3
Text Label 5850 4300 0    50   ~ 0
det4
Text Label 5850 4500 0    50   ~ 0
det5
Text Label 5850 4400 0    50   ~ 0
det6
Text Label 5850 4700 0    50   ~ 0
det7
Text Label 5850 4600 0    50   ~ 0
det8
Text Label 2900 1750 0    50   ~ 0
com
Text Label 2900 2500 0    50   ~ 0
com
Text Label 2900 3250 0    50   ~ 0
com
Text Label 2900 4000 0    50   ~ 0
com
Text Label 2900 4800 0    50   ~ 0
com
Text Label 2900 5550 0    50   ~ 0
com
Text Label 2900 6300 0    50   ~ 0
com
Text Label 2900 7050 0    50   ~ 0
com
Text Label 2900 6450 0    50   ~ 0
track8
Text Label 2900 5700 0    50   ~ 0
track7
Text Label 2900 4950 0    50   ~ 0
track6
Text Label 2900 4200 0    50   ~ 0
track5
Text Label 2900 3400 0    50   ~ 0
track4
Text Label 2900 2650 0    50   ~ 0
track3
Text Label 2900 1900 0    50   ~ 0
track2
Text Label 2900 1150 0    50   ~ 0
track1
$Comp
L Device:R R1
U 1 1 6251C50A
P 5650 6450
F 0 "R1" H 5720 6496 50  0000 L CNN
F 1 "R" H 5720 6405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5580 6450 50  0001 C CNN
F 3 "~" H 5650 6450 50  0001 C CNN
	1    5650 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D9
U 1 1 6251D46F
P 5650 6800
F 0 "D9" V 5689 6682 50  0000 R CNN
F 1 "LED" V 5598 6682 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 5650 6800 50  0001 C CNN
F 3 "~" H 5650 6800 50  0001 C CNN
	1    5650 6800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 6251DF54
P 5650 7000
F 0 "#PWR01" H 5650 6750 50  0001 C CNN
F 1 "GND" H 5655 6827 50  0000 C CNN
F 2 "" H 5650 7000 50  0001 C CNN
F 3 "" H 5650 7000 50  0001 C CNN
	1    5650 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 7000 5650 6950
Wire Wire Line
	5650 6650 5650 6600
Wire Wire Line
	5650 6300 5650 6000
Text Label 5650 6000 0    50   ~ 0
status_led
Text Label 5850 5000 2    50   ~ 0
status_led
NoConn ~ 5850 4900
NoConn ~ 5850 4800
NoConn ~ 7450 4300
NoConn ~ 7450 4400
NoConn ~ 7450 4500
NoConn ~ 7450 4600
NoConn ~ 7450 4700
NoConn ~ 7450 4800
NoConn ~ 7450 5000
$Comp
L Connector:Screw_Terminal_01x09 J1
U 1 1 6255E1A5
P 8450 3550
F 0 "J1" H 8530 3592 50  0000 L CNN
F 1 "Screw_Terminal_01x09" H 8530 3501 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-9-5.08_1x09_P5.08mm_Horizontal" H 8450 3550 50  0001 C CNN
F 3 "~" H 8450 3550 50  0001 C CNN
	1    8450 3550
	1    0    0    -1  
$EndComp
Text Label 7950 3250 0    50   ~ 0
track1
Wire Wire Line
	7950 3250 8250 3250
Wire Wire Line
	7950 3350 8250 3350
Text Label 7950 3350 0    50   ~ 0
track2
Text Label 7950 3450 0    50   ~ 0
track3
Wire Wire Line
	7950 3450 8250 3450
Text Label 7950 3550 0    50   ~ 0
track4
Wire Wire Line
	7950 3550 8250 3550
Text Label 7950 3650 0    50   ~ 0
track5
Wire Wire Line
	7950 3650 8250 3650
Text Label 7950 3750 0    50   ~ 0
track6
Wire Wire Line
	7950 3750 8250 3750
Text Label 7950 3850 0    50   ~ 0
track7
Wire Wire Line
	7950 3850 8250 3850
Text Label 7950 3950 0    50   ~ 0
track8
Wire Wire Line
	7950 3950 8250 3950
Wire Wire Line
	8250 3150 7950 3150
Text Label 7950 3150 0    50   ~ 0
com
$Comp
L Device:R_Network08_Split RN1
U 1 1 625A6522
P 2900 1450
F 0 "RN1" H 2988 1496 50  0000 L CNN
F 1 "R_Network08_Split" H 2988 1405 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 2820 1450 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2900 1450 50  0001 C CNN
	1    2900 1450
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Network08_Split RN1
U 2 1 625A7781
P 2900 2200
F 0 "RN1" H 2998 2238 50  0000 L CNN
F 1 "R_Network08_Split" H 2998 2147 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 2820 2200 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2900 2200 50  0001 C CNN
	2    2900 2200
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Network08_Split RN1
U 3 1 625A8C18
P 2900 2950
F 0 "RN1" H 2998 2988 50  0000 L CNN
F 1 "R_Network08_Split" H 2998 2897 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 2820 2950 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2900 2950 50  0001 C CNN
	3    2900 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Network08_Split RN1
U 4 1 625AA052
P 2900 3700
F 0 "RN1" H 2998 3738 50  0000 L CNN
F 1 "R_Network08_Split" H 2998 3647 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 2820 3700 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2900 3700 50  0001 C CNN
	4    2900 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Network08_Split RN1
U 5 1 625AAC66
P 2900 4500
F 0 "RN1" H 2998 4538 50  0000 L CNN
F 1 "R_Network08_Split" H 2998 4447 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 2820 4500 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2900 4500 50  0001 C CNN
	5    2900 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Network08_Split RN1
U 6 1 625AC875
P 2900 5250
F 0 "RN1" H 2998 5288 50  0000 L CNN
F 1 "R_Network08_Split" H 2998 5197 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 2820 5250 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2900 5250 50  0001 C CNN
	6    2900 5250
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Network08_Split RN1
U 7 1 625AD6EA
P 2900 6000
F 0 "RN1" H 2998 6038 50  0000 L CNN
F 1 "R_Network08_Split" H 2998 5947 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 2820 6000 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2900 6000 50  0001 C CNN
	7    2900 6000
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Network08_Split RN1
U 8 1 625AF095
P 2900 6750
F 0 "RN1" H 2998 6788 50  0000 L CNN
F 1 "R_Network08_Split" H 2998 6697 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 2820 6750 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2900 6750 50  0001 C CNN
	8    2900 6750
	-1   0    0    1   
$EndComp
Connection ~ 3450 1900
Connection ~ 3450 2500
Connection ~ 3450 2650
Connection ~ 3450 3250
Connection ~ 3450 3400
Connection ~ 3450 4000
Connection ~ 3450 4200
Connection ~ 3450 4800
Connection ~ 3450 4950
Connection ~ 3450 5550
Connection ~ 3450 5700
Connection ~ 3450 6300
Connection ~ 3450 6450
Connection ~ 3450 7050
$EndSCHEMATC
