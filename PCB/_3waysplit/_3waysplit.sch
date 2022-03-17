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
L Connector:Screw_Terminal_01x03 J1
U 1 1 6074964B
P 3000 2950
F 0 "J1" H 2918 2625 50  0000 C CNN
F 1 "Screw_Terminal_01x03" H 2918 2716 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 3000 2950 50  0001 C CNN
F 3 "~" H 3000 2950 50  0001 C CNN
	1    3000 2950
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J4
U 1 1 6074A70F
P 4000 2950
F 0 "J4" H 3918 2625 50  0000 C CNN
F 1 "Screw_Terminal_01x03" H 3918 2716 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 4000 2950 50  0001 C CNN
F 3 "~" H 4000 2950 50  0001 C CNN
	1    4000 2950
	1    0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J2
U 1 1 6074B73A
P 3500 2400
F 0 "J2" V 3464 2580 50  0000 L CNN
F 1 "Screw_Terminal_01x03" V 3373 2580 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 3500 2400 50  0001 C CNN
F 3 "~" H 3500 2400 50  0001 C CNN
	1    3500 2400
	0    1    -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J3
U 1 1 6074C1C6
P 3500 3450
F 0 "J3" V 3372 3262 50  0000 R CNN
F 1 "Screw_Terminal_01x03" V 3463 3262 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 3500 3450 50  0001 C CNN
F 3 "~" H 3500 3450 50  0001 C CNN
	1    3500 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 3050 3400 3050
Wire Wire Line
	3200 2950 3500 2950
Wire Wire Line
	3800 2850 3600 2850
Wire Wire Line
	3400 2600 3400 3050
Wire Wire Line
	3500 3250 3500 2950
Wire Wire Line
	3600 3250 3600 2850
Connection ~ 3400 3050
Wire Wire Line
	3400 3050 3800 3050
Wire Wire Line
	3400 3050 3400 3250
Connection ~ 3500 2950
Wire Wire Line
	3500 2950 3800 2950
Wire Wire Line
	3500 2950 3500 2600
Connection ~ 3600 2850
Wire Wire Line
	3600 2850 3200 2850
Wire Wire Line
	3600 2850 3600 2600
$EndSCHEMATC
