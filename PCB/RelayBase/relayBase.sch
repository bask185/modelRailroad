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
L Connector:Conn_01x10_Male J1
U 1 1 6230664F
P 3050 4000
F 0 "J1" H 3158 4581 50  0000 C CNN
F 1 "Conn_01x10_Male" H 3000 4500 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 3050 4000 50  0001 C CNN
F 3 "~" H 3050 4000 50  0001 C CNN
	1    3050 4000
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 6230B0FB
P 5350 3750
F 0 "A1" H 5350 2661 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 5350 2570 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5350 3750 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5350 3750 50  0001 C CNN
	1    5350 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3600 3400 3600
Wire Wire Line
	3250 3700 3400 3700
Wire Wire Line
	3250 3800 3400 3800
Wire Wire Line
	3250 3900 3400 3900
Wire Wire Line
	3250 4000 3400 4000
Wire Wire Line
	3250 4100 3400 4100
Wire Wire Line
	3250 4200 3400 4200
Wire Wire Line
	3250 4300 3400 4300
Wire Wire Line
	3250 4400 3400 4400
Wire Wire Line
	3250 4500 3400 4500
$Comp
L power:+5V #PWR0101
U 1 1 6230DD9C
P 3400 3600
F 0 "#PWR0101" H 3400 3450 50  0001 C CNN
F 1 "+5V" H 3415 3773 50  0000 C CNN
F 2 "" H 3400 3600 50  0001 C CNN
F 3 "" H 3400 3600 50  0001 C CNN
	1    3400 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6230E694
P 3400 4500
F 0 "#PWR0102" H 3400 4250 50  0001 C CNN
F 1 "GND" H 3405 4327 50  0000 C CNN
F 2 "" H 3400 4500 50  0001 C CNN
F 3 "" H 3400 4500 50  0001 C CNN
	1    3400 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Male J2
U 1 1 62310C72
P 7500 4150
F 0 "J2" H 7608 4731 50  0000 C CNN
F 1 "Conn_01x10_Male" H 7450 4650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 7500 4150 50  0001 C CNN
F 3 "~" H 7500 4150 50  0001 C CNN
	1    7500 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	7300 4550 7150 4550
Wire Wire Line
	7300 4450 7150 4450
Wire Wire Line
	7300 4350 7150 4350
Wire Wire Line
	7300 4250 7150 4250
Wire Wire Line
	7300 4150 7150 4150
Wire Wire Line
	7300 4050 7150 4050
Wire Wire Line
	7300 3950 7150 3950
Wire Wire Line
	7300 3850 7150 3850
Wire Wire Line
	7300 3750 7150 3750
Wire Wire Line
	7300 3650 7150 3650
$Comp
L power:+5V #PWR0103
U 1 1 62310C82
P 7150 4550
F 0 "#PWR0103" H 7150 4400 50  0001 C CNN
F 1 "+5V" H 7165 4723 50  0000 C CNN
F 2 "" H 7150 4550 50  0001 C CNN
F 3 "" H 7150 4550 50  0001 C CNN
	1    7150 4550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 62310C88
P 7150 3650
F 0 "#PWR0104" H 7150 3400 50  0001 C CNN
F 1 "GND" H 7155 3477 50  0000 C CNN
F 2 "" H 7150 3650 50  0001 C CNN
F 3 "" H 7150 3650 50  0001 C CNN
	1    7150 3650
	-1   0    0    1   
$EndComp
Text Label 3400 3700 0    50   ~ 0
in8
Text Label 3400 3800 0    50   ~ 0
in7
Text Label 3400 3900 0    50   ~ 0
in6
Text Label 3400 4000 0    50   ~ 0
in5
Text Label 3400 4100 0    50   ~ 0
in4
Text Label 3400 4200 0    50   ~ 0
in3
Text Label 3400 4300 0    50   ~ 0
in2
Text Label 3400 4400 0    50   ~ 0
in1
Text Label 7150 4450 2    50   ~ 0
in16
Text Label 7150 4350 2    50   ~ 0
in15
Text Label 7150 4250 2    50   ~ 0
in14
Text Label 7150 4150 2    50   ~ 0
in13
Text Label 7150 4050 2    50   ~ 0
in12
Text Label 7150 3950 2    50   ~ 0
in11
Text Label 7150 3850 2    50   ~ 0
in10
Text Label 7150 3750 2    50   ~ 0
in9
Wire Wire Line
	4700 3150 4850 3150
Wire Wire Line
	4700 3250 4850 3250
Wire Wire Line
	4700 3350 4850 3350
NoConn ~ 4700 3350
NoConn ~ 4700 3250
NoConn ~ 4700 3150
Wire Wire Line
	4850 3450 4700 3450
Wire Wire Line
	4850 3550 4700 3550
Wire Wire Line
	4850 3650 4700 3650
Wire Wire Line
	4850 3750 4700 3750
Wire Wire Line
	4850 3850 4700 3850
Wire Wire Line
	4850 3950 4700 3950
Wire Wire Line
	4850 4050 4700 4050
Wire Wire Line
	4850 4150 4700 4150
Text Label 4700 3450 2    50   ~ 0
in8
Text Label 4700 3550 2    50   ~ 0
in7
Text Label 4700 3650 2    50   ~ 0
in6
Text Label 4700 3750 2    50   ~ 0
in5
Text Label 4700 3850 2    50   ~ 0
in4
Text Label 4700 3950 2    50   ~ 0
in3
Text Label 4700 4050 2    50   ~ 0
in2
Text Label 4700 4150 2    50   ~ 0
in1
Wire Wire Line
	4850 4250 4700 4250
Wire Wire Line
	4850 4350 4700 4350
Text Label 6000 4150 0    50   ~ 0
in10
Text Label 6000 4250 0    50   ~ 0
in9
Wire Wire Line
	5850 3750 6000 3750
Wire Wire Line
	5850 3850 6000 3850
Wire Wire Line
	5850 3950 6000 3950
Wire Wire Line
	5850 4050 6000 4050
Wire Wire Line
	5850 4150 6000 4150
Wire Wire Line
	5850 4250 6000 4250
Text Label 4700 4350 2    50   ~ 0
in16
Text Label 4700 4250 2    50   ~ 0
in15
Text Label 6000 3750 0    50   ~ 0
in14
Text Label 6000 3850 0    50   ~ 0
in13
Text Label 6000 3950 0    50   ~ 0
in12
Text Label 6000 4050 0    50   ~ 0
in11
$Comp
L power:+5V #PWR0105
U 1 1 62317D40
P 5550 2650
F 0 "#PWR0105" H 5550 2500 50  0001 C CNN
F 1 "+5V" H 5565 2823 50  0000 C CNN
F 2 "" H 5550 2650 50  0001 C CNN
F 3 "" H 5550 2650 50  0001 C CNN
	1    5550 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2750 5550 2650
NoConn ~ 5450 2750
NoConn ~ 5250 2750
NoConn ~ 5850 3250
NoConn ~ 5850 3150
NoConn ~ 5850 3550
$Comp
L power:GND #PWR0106
U 1 1 6231CFAF
P 5800 4750
F 0 "#PWR0106" H 5800 4500 50  0001 C CNN
F 1 "GND" H 5805 4577 50  0000 C CNN
F 2 "" H 5800 4750 50  0001 C CNN
F 3 "" H 5800 4750 50  0001 C CNN
	1    5800 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4750 5450 4750
Connection ~ 5450 4750
Wire Wire Line
	5450 4750 5800 4750
NoConn ~ 4850 4450
Wire Wire Line
	5850 4350 6400 4350
Wire Wire Line
	6400 4350 6400 4750
$Comp
L power:GND #PWR0107
U 1 1 62333E5B
P 6400 5350
F 0 "#PWR0107" H 6400 5100 50  0001 C CNN
F 1 "GND" H 6405 5177 50  0000 C CNN
F 2 "" H 6400 5350 50  0001 C CNN
F 3 "" H 6400 5350 50  0001 C CNN
	1    6400 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5350 6400 5300
$Comp
L Device:R R1
U 1 1 62335F83
P 6550 4600
F 0 "R1" H 6620 4646 50  0000 L CNN
F 1 "R" H 6620 4555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6480 4600 50  0001 C CNN
F 3 "~" H 6550 4600 50  0001 C CNN
	1    6550 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4750 6400 4750
Connection ~ 6400 4750
Wire Wire Line
	6400 4750 6400 4900
$Comp
L power:+5V #PWR0108
U 1 1 623375D8
P 6550 4400
F 0 "#PWR0108" H 6550 4250 50  0001 C CNN
F 1 "+5V" H 6565 4573 50  0000 C CNN
F 2 "" H 6550 4400 50  0001 C CNN
F 3 "" H 6550 4400 50  0001 C CNN
	1    6550 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4450 6550 4400
$Comp
L Switch:SW_SPST SW1
U 1 1 6233BABC
P 6400 5100
F 0 "SW1" V 6354 5198 50  0000 L CNN
F 1 "SW_SPST" V 6445 5198 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 6400 5100 50  0001 C CNN
F 3 "~" H 6400 5100 50  0001 C CNN
	1    6400 5100
	0    1    1    0   
$EndComp
$EndSCHEMATC
