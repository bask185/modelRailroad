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
L Connector:RJ12 J1
U 1 1 608D1C2A
P 2650 3050
F 0 "J1" H 2321 3054 50  0000 R CNN
F 1 "RJ12" H 2321 3145 50  0000 R CNN
F 2 "Connector_RJ:RJ25_Wayconn_MJEA-660X1_Horizontal" V 2650 3075 50  0001 C CNN
F 3 "~" V 2650 3075 50  0001 C CNN
	1    2650 3050
	1    0    0    1   
$EndComp
$Comp
L Connector:RJ12 J2
U 1 1 608D36DA
P 3500 3900
F 0 "J2" H 3557 4467 50  0000 C CNN
F 1 "RJ12" H 3557 4376 50  0000 C CNN
F 2 "Connector_RJ:RJ12_Amphenol_54601" V 3500 3925 50  0001 C CNN
F 3 "~" V 3500 3925 50  0001 C CNN
	1    3500 3900
	0    -1   -1   0   
$EndComp
$Comp
L Connector:RJ12 J3
U 1 1 608D3AF7
P 4500 3900
F 0 "J3" H 4557 4467 50  0000 C CNN
F 1 "RJ12" H 4557 4376 50  0000 C CNN
F 2 "Connector_RJ:RJ25_Wayconn_MJEA-660X1_Horizontal" V 4500 3925 50  0001 C CNN
F 3 "~" V 4500 3925 50  0001 C CNN
	1    4500 3900
	0    -1   -1   0   
$EndComp
$Comp
L Connector:RJ12 J4
U 1 1 608D44A4
P 5300 3050
F 0 "J4" H 4970 3146 50  0000 R CNN
F 1 "RJ12" H 4970 3055 50  0000 R CNN
F 2 "Connector_RJ:RJ12_Amphenol_54601" V 5300 3075 50  0001 C CNN
F 3 "~" V 5300 3075 50  0001 C CNN
	1    5300 3050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 3150 3400 3150
Wire Wire Line
	3050 3250 3300 3250
Wire Wire Line
	4900 3050 4500 3050
Wire Wire Line
	4600 3500 4600 2950
Wire Wire Line
	3050 2950 3600 2950
Connection ~ 4600 2950
Wire Wire Line
	4600 2950 4900 2950
Connection ~ 4500 3050
Wire Wire Line
	4500 3050 3500 3050
Wire Wire Line
	4500 3050 4500 3500
Wire Wire Line
	4400 3500 4400 3150
Connection ~ 4400 3150
Wire Wire Line
	4400 3150 4900 3150
Wire Wire Line
	4300 3500 4300 3250
Connection ~ 4300 3250
Wire Wire Line
	4300 3250 4900 3250
Wire Wire Line
	3600 3500 3600 2950
Connection ~ 3600 2950
Connection ~ 3500 3050
Wire Wire Line
	3500 3050 3050 3050
Wire Wire Line
	3500 3050 3500 3500
Wire Wire Line
	3400 3500 3400 3150
Connection ~ 3400 3150
Wire Wire Line
	3400 3150 4400 3150
Wire Wire Line
	3300 3500 3300 3250
Connection ~ 3300 3250
Wire Wire Line
	3600 2950 4600 2950
Wire Wire Line
	3300 3250 4300 3250
Wire Wire Line
	4900 3350 4200 3350
Wire Wire Line
	3200 3500 3200 3350
Connection ~ 3200 3350
Wire Wire Line
	3200 3350 3050 3350
Wire Wire Line
	4200 3500 4200 3350
Connection ~ 4200 3350
Wire Wire Line
	4200 3350 3200 3350
Wire Wire Line
	4900 2850 4700 2850
Wire Wire Line
	3700 3500 3700 2850
Connection ~ 3700 2850
Wire Wire Line
	3700 2850 3050 2850
Wire Wire Line
	4700 3500 4700 2850
Connection ~ 4700 2850
Wire Wire Line
	4700 2850 3700 2850
$EndSCHEMATC
