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
Connection ~ 2150 3650
Wire Wire Line
	2150 2700 2150 3650
Wire Wire Line
	1750 2700 2150 2700
Connection ~ 2100 3350
Wire Wire Line
	1750 3350 1750 3300
Wire Wire Line
	2100 3350 1750 3350
Wire Wire Line
	2100 3350 2300 3350
Wire Wire Line
	2050 3000 2050 3450
Wire Wire Line
	1450 3000 1450 3350
Wire Wire Line
	6450 2500 6450 2900
Wire Wire Line
	2100 3550 1200 3550
Wire Wire Line
	2100 3350 2100 3550
Wire Wire Line
	1200 3650 2150 3650
$Comp
L Connector:Screw_Terminal_01x04 J1
U 1 1 603231CE
P 1000 3550
F 0 "J1" H 918 3125 50  0000 C CNN
F 1 "Screw_Terminal_01x04" H 1050 3100 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-4_P5.08mm" H 1000 3550 50  0001 C CNN
F 3 "~" H 1000 3550 50  0001 C CNN
	1    1000 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1200 3450 2050 3450
Wire Wire Line
	1450 3350 1200 3350
Wire Wire Line
	7600 4950 7900 4950
Wire Wire Line
	7600 3900 7600 4950
Wire Wire Line
	6900 3900 7600 3900
Wire Wire Line
	7650 3700 6900 3700
Wire Wire Line
	7650 4750 7650 3700
Wire Wire Line
	7900 4750 7650 4750
Wire Wire Line
	7700 4550 7900 4550
Wire Wire Line
	7700 3500 7700 4550
Wire Wire Line
	6900 3500 7700 3500
Wire Wire Line
	7750 3300 6900 3300
Wire Wire Line
	7750 4350 7750 3300
Wire Wire Line
	7900 4350 7750 4350
Wire Wire Line
	7800 4150 7900 4150
Wire Wire Line
	7800 3100 7800 4150
Wire Wire Line
	6900 3100 7800 3100
Wire Wire Line
	7850 2900 6900 2900
Wire Wire Line
	7850 3950 7850 2900
Wire Wire Line
	7900 3950 7850 3950
Wire Wire Line
	7900 4250 7400 4250
Wire Wire Line
	7900 5050 6950 5050
Connection ~ 6450 2900
$Comp
L power:+5V #PWR0102
U 1 1 6029C3F4
P 6450 2500
F 0 "#PWR0102" H 6450 2350 50  0001 C CNN
F 1 "+5V" H 6465 2673 50  0000 C CNN
F 2 "" H 6450 2500 50  0001 C CNN
F 3 "" H 6450 2500 50  0001 C CNN
	1    6450 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3100 6450 3300
Connection ~ 6450 3100
Wire Wire Line
	6600 3100 6450 3100
Wire Wire Line
	6450 3300 6600 3300
Wire Wire Line
	6450 3300 6450 3500
Connection ~ 6450 3300
Connection ~ 6450 3500
Wire Wire Line
	6450 2900 6450 3100
Wire Wire Line
	6600 2900 6450 2900
Wire Wire Line
	6600 3500 6450 3500
Connection ~ 6450 3700
Wire Wire Line
	6450 3500 6450 3700
Wire Wire Line
	6450 3700 6600 3700
$Comp
L power:GND #PWR0101
U 1 1 6025A851
P 4900 3250
F 0 "#PWR0101" H 4900 3000 50  0001 C CNN
F 1 "GND" H 4905 3077 50  0000 C CNN
F 2 "" H 4900 3250 50  0001 C CNN
F 3 "" H 4900 3250 50  0001 C CNN
	1    4900 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3550 5050 3550
Wire Wire Line
	3150 3700 3150 3650
Connection ~ 3150 3650
Wire Wire Line
	3150 3650 2650 3650
Connection ~ 3650 3650
Wire Wire Line
	3650 3650 3150 3650
$Comp
L Connector:Screw_Terminal_01x06 J4
U 1 1 6021DCED
P 8100 4850
F 0 "J4" H 8250 4650 50  0000 C CNN
F 1 "Screw_Terminal_01x03" H 8600 4800 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-6_P5.08mm" H 8100 4850 50  0001 C CNN
F 3 "~" H 8100 4850 50  0001 C CNN
	1    8100 4850
	1    0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x06 J3
U 1 1 6021CA94
P 8100 4250
F 0 "J3" H 8250 4300 50  0000 C CNN
F 1 "Screw_Terminal_01x03" H 8600 4200 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-6_P5.08mm" H 8100 4250 50  0001 C CNN
F 3 "~" H 8100 4250 50  0001 C CNN
	1    8100 4250
	1    0    0    1   
$EndComp
$Comp
L power:+12V #PWR01
U 1 1 602449D0
P 2300 3350
F 0 "#PWR01" H 2300 3200 50  0001 C CNN
F 1 "+12V" H 2315 3523 50  0000 C CNN
F 2 "" H 2300 3350 50  0001 C CNN
F 3 "" H 2300 3350 50  0001 C CNN
	1    2300 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3350 4000 3350
Connection ~ 3800 3350
$Comp
L power:+5V #PWR04
U 1 1 60243926
P 3800 3350
F 0 "#PWR04" H 3800 3200 50  0001 C CNN
F 1 "+5V" H 3815 3523 50  0000 C CNN
F 2 "" H 3800 3350 50  0001 C CNN
F 3 "" H 3800 3350 50  0001 C CNN
	1    3800 3350
	1    0    0    -1  
$EndComp
Connection ~ 2300 3350
Wire Wire Line
	4000 3650 3650 3650
Connection ~ 3650 3350
Wire Wire Line
	3650 3350 3800 3350
Wire Wire Line
	3450 3350 3650 3350
$Comp
L Device:C C3
U 1 1 6023CC76
P 4000 3500
F 0 "C3" H 4115 3546 50  0000 L CNN
F 1 "C" H 4115 3455 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4038 3350 50  0001 C CNN
F 3 "~" H 4000 3500 50  0001 C CNN
	1    4000 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 60236BF4
P 3650 3500
F 0 "C2" H 3768 3546 50  0000 L CNN
F 1 "CP" H 3768 3455 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 3688 3350 50  0001 C CNN
F 3 "~" H 3650 3500 50  0001 C CNN
	1    3650 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 60236354
P 2300 3500
F 0 "C1" H 2418 3546 50  0000 L CNN
F 1 "CP" H 2418 3455 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P1.50mm" H 2338 3350 50  0001 C CNN
F 3 "~" H 2300 3500 50  0001 C CNN
	1    2300 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6022099B
P 6400 4250
F 0 "#PWR05" H 6400 4000 50  0001 C CNN
F 1 "GND" H 6405 4077 50  0000 C CNN
F 2 "" H 6400 4250 50  0001 C CNN
F 3 "" H 6400 4250 50  0001 C CNN
	1    6400 4250
	0    1    -1   0   
$EndComp
Wire Wire Line
	6450 3900 6600 3900
Wire Wire Line
	6450 3700 6450 3900
$Comp
L Device:R R5
U 1 1 602172D0
P 6750 3700
F 0 "R5" V 6650 3800 50  0000 C CNN
F 1 "220R" V 6650 3550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6680 3700 50  0001 C CNN
F 3 "~" H 6750 3700 50  0001 C CNN
	1    6750 3700
	0    1    -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 6021785B
P 6750 3900
F 0 "R6" V 6650 4000 50  0000 C CNN
F 1 "220R" V 6650 3750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6680 3900 50  0001 C CNN
F 3 "~" H 6750 3900 50  0001 C CNN
	1    6750 3900
	0    1    -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 6021754C
P 6750 2900
F 0 "R1" V 6650 3000 50  0000 C CNN
F 1 "220R" V 6650 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6680 2900 50  0001 C CNN
F 3 "~" H 6750 2900 50  0001 C CNN
	1    6750 2900
	0    1    -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 6021700B
P 6750 3500
F 0 "R4" V 6650 3600 50  0000 C CNN
F 1 "220R" V 6650 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6680 3500 50  0001 C CNN
F 3 "~" H 6750 3500 50  0001 C CNN
	1    6750 3500
	0    1    -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 60216D26
P 6750 3300
F 0 "R3" V 6650 3400 50  0000 C CNN
F 1 "220R" V 6650 3200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6680 3300 50  0001 C CNN
F 3 "~" H 6750 3300 50  0001 C CNN
	1    6750 3300
	0    1    -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 602168CE
P 6750 3100
F 0 "R2" V 6650 3200 50  0000 C CNN
F 1 "220R" V 6650 3000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6680 3100 50  0001 C CNN
F 3 "~" H 6750 3100 50  0001 C CNN
	1    6750 3100
	0    1    -1   0   
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 60EE91A2
P 5000 3200
F 0 "#PWR0104" H 5000 3050 50  0001 C CNN
F 1 "+5V" H 5015 3373 50  0000 C CNN
F 2 "" H 5000 3200 50  0001 C CNN
F 3 "" H 5000 3200 50  0001 C CNN
	1    5000 3200
	1    0    0    -1  
$EndComp
Text Label 5850 4550 0    50   ~ 0
pwm1
Text Label 5850 4650 0    50   ~ 0
pwm2
Text Label 5850 4750 0    50   ~ 0
pwm3
Text Label 5850 4850 0    50   ~ 0
pwm4
Text Label 5850 4950 0    50   ~ 0
pwm5
Text Label 5850 5050 0    50   ~ 0
pwm6
Wire Wire Line
	6150 4550 5850 4550
Wire Wire Line
	5850 4850 6150 4850
Wire Wire Line
	6150 4950 5850 4950
Wire Wire Line
	6150 5050 5850 5050
Wire Wire Line
	6150 4750 5850 4750
Wire Wire Line
	6150 4650 5850 4650
Wire Wire Line
	6400 4250 6550 4250
Text Label 5050 3550 0    50   ~ 0
data
Text Label 5050 3450 0    50   ~ 0
btn
Text Label 5050 3650 0    50   ~ 0
clock
Wire Wire Line
	5050 3650 5250 3650
Wire Wire Line
	5250 3450 5050 3450
Wire Wire Line
	4900 3250 5250 3250
Wire Wire Line
	5000 3200 5000 3350
Wire Wire Line
	5000 3350 5250 3350
Wire Wire Line
	7550 4950 7550 4850
Wire Wire Line
	7550 4850 7900 4850
Wire Wire Line
	6950 4950 7550 4950
Wire Wire Line
	7500 4850 7500 4650
Wire Wire Line
	7500 4650 7900 4650
Wire Wire Line
	6950 4850 7500 4850
Wire Wire Line
	7450 4750 7450 4450
Wire Wire Line
	7450 4450 7900 4450
Wire Wire Line
	6950 4750 7450 4750
Wire Wire Line
	7400 4250 7400 4650
Wire Wire Line
	6950 4650 7400 4650
Wire Wire Line
	7350 4550 7350 4050
Wire Wire Line
	7350 4050 7900 4050
Wire Wire Line
	6950 4550 7350 4550
$Comp
L Transistor_Array:ULN2003A U2
U 1 1 60284282
P 6550 4850
F 0 "U2" H 6150 5400 50  0000 C CNN
F 1 "ULN2003A" H 6550 5426 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6600 4300 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 6650 4650 50  0001 C CNN
	1    6550 4850
	1    0    0    1   
$EndComp
Text Label 1150 5250 0    50   ~ 0
pwm2
Text Label 1150 5350 0    50   ~ 0
pwm3
Text Label 1150 5650 0    50   ~ 0
pwm4
Text Label 1150 5750 0    50   ~ 0
pwm5
Text Label 1150 5850 0    50   ~ 0
pwm6
Wire Wire Line
	1150 5250 1450 5250
Wire Wire Line
	1450 5350 1150 5350
Wire Wire Line
	1450 5750 1150 5750
Wire Wire Line
	1450 5850 1150 5850
Text Label 1150 5450 0    50   ~ 0
data
Text Label 1150 5550 0    50   ~ 0
btn
Text Label 1150 5150 0    50   ~ 0
clock
Wire Wire Line
	1450 5050 1150 5050
Text Label 1150 5050 0    50   ~ 0
pwm1
Wire Wire Line
	1450 5150 1150 5150
Wire Wire Line
	1450 5550 1150 5550
Wire Wire Line
	1450 5450 1150 5450
NoConn ~ 6950 4450
NoConn ~ 6150 4450
$Comp
L Connector:Screw_Terminal_01x06 J2
U 1 1 6025CF18
P 3300 5650
F 0 "J2" H 3500 5450 50  0000 C CNN
F 1 "switches" H 3600 5550 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-6_P5.08mm" H 3300 5650 50  0001 C CNN
F 3 "~" H 3300 5650 50  0001 C CNN
	1    3300 5650
	1    0    0    1   
$EndComp
Wire Wire Line
	2450 5850 3100 5850
Wire Wire Line
	3100 5750 2450 5750
Wire Wire Line
	2450 5650 3100 5650
Wire Wire Line
	2450 5550 3100 5550
Wire Wire Line
	3100 5450 2450 5450
Wire Wire Line
	2450 5350 3100 5350
$Comp
L Device:D_Bridge_+A-A D1
U 1 1 61DA5969
P 1750 3000
F 0 "D1" V 1400 2550 50  0000 L CNN
F 1 "D_Bridge_+A-A" V 1500 2300 50  0000 L CNN
F 2 "Diode_THT:Diode_Bridge_Round_D9.0mm" H 1750 3000 50  0001 C CNN
F 3 "~" H 1750 3000 50  0001 C CNN
	1    1750 3000
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x05_Male J5
U 1 1 61DB91DF
P 5450 3450
F 0 "J5" H 5422 3382 50  0000 R CNN
F 1 "Conn_01x05_Male" H 5422 3473 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 5450 3450 50  0001 C CNN
F 3 "~" H 5450 3450 50  0001 C CNN
	1    5450 3450
	-1   0    0    1   
$EndComp
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 61DBFAFC
P 1950 5350
F 0 "A1" H 1300 4400 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 1250 4300 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 1950 5350 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 1950 5350 50  0001 C CNN
	1    1950 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 5650 1450 5650
$Comp
L power:+5V #PWR0103
U 1 1 61E0BC22
P 2150 4250
F 0 "#PWR0103" H 2150 4100 50  0001 C CNN
F 1 "+5V" H 2165 4423 50  0000 C CNN
F 2 "" H 2150 4250 50  0001 C CNN
F 3 "" H 2150 4250 50  0001 C CNN
	1    2150 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4250 2150 4350
NoConn ~ 2050 4350
NoConn ~ 1850 4350
NoConn ~ 2450 4750
NoConn ~ 2450 4850
NoConn ~ 2450 5150
NoConn ~ 1450 4950
NoConn ~ 1450 4850
NoConn ~ 1450 4750
NoConn ~ 1450 5950
NoConn ~ 1450 6050
NoConn ~ 2450 5950
NoConn ~ 2450 6050
$Comp
L power:GND #PWR0106
U 1 1 61E35A21
P 2000 6500
F 0 "#PWR0106" H 2000 6250 50  0001 C CNN
F 1 "GND" H 2005 6327 50  0000 C CNN
F 2 "" H 2000 6500 50  0001 C CNN
F 3 "" H 2000 6500 50  0001 C CNN
	1    2000 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 6500 2000 6400
Wire Wire Line
	2000 6400 1950 6400
Wire Wire Line
	1950 6400 1950 6350
Wire Wire Line
	2050 6350 2050 6400
Wire Wire Line
	2050 6400 2000 6400
Connection ~ 2000 6400
$Comp
L power:GND #PWR0107
U 1 1 61E47A22
P 3150 3700
F 0 "#PWR0107" H 3150 3450 50  0001 C CNN
F 1 "GND" H 3155 3527 50  0000 C CNN
F 2 "" H 3150 3700 50  0001 C CNN
F 3 "" H 3150 3700 50  0001 C CNN
	1    3150 3700
	1    0    0    -1  
$EndComp
NoConn ~ 6950 5250
NoConn ~ 3400 2950
$Comp
L Regulator_Linear:L78L05_TO92 U1
U 1 1 61D8F615
P 3150 3350
F 0 "U1" H 3150 3592 50  0000 C CNN
F 1 "L78L05_TO92" H 3150 3501 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3150 3575 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/15/55/e5/aa/23/5b/43/fd/CD00000446.pdf/files/CD00000446.pdf/jcr:content/translations/en.CD00000446.pdf" H 3150 3300 50  0001 C CNN
	1    3150 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 61DBF285
P 2650 3500
F 0 "C4" H 2765 3546 50  0000 L CNN
F 1 "C" H 2765 3455 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2688 3350 50  0001 C CNN
F 3 "~" H 2650 3500 50  0001 C CNN
	1    2650 3500
	1    0    0    -1  
$EndComp
Connection ~ 2650 3650
Wire Wire Line
	2300 3350 2650 3350
Connection ~ 2650 3350
Wire Wire Line
	2650 3350 2850 3350
Wire Wire Line
	2150 3650 2300 3650
Connection ~ 2300 3650
Wire Wire Line
	2300 3650 2650 3650
$EndSCHEMATC
