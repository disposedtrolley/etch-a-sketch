EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Etch a Sketch"
Date ""
Rev ""
Comp ""
Comment1 "James Liu"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 5E8A2153
P 8100 4400
F 0 "SW1" H 8150 4650 50  0000 R CNN
F 1 "Encoder 1" H 8250 4150 50  0000 R CNN
F 2 "" H 7950 4560 50  0001 C CNN
F 3 "~" H 8100 4660 50  0001 C CNN
	1    8100 4400
	1    0    0    -1  
$EndComp
NoConn ~ 5450 3850
NoConn ~ 5450 4050
NoConn ~ 5450 4150
NoConn ~ 5450 4250
NoConn ~ 5450 4350
NoConn ~ 5450 4450
NoConn ~ 5450 4550
NoConn ~ 5450 4850
NoConn ~ 5450 4950
NoConn ~ 5450 5050
NoConn ~ 5450 5150
NoConn ~ 5450 5250
NoConn ~ 5450 5350
NoConn ~ 5450 5450
NoConn ~ 5450 5550
NoConn ~ 6750 5550
NoConn ~ 6750 5450
NoConn ~ 6750 5350
NoConn ~ 6750 5250
NoConn ~ 6750 5150
NoConn ~ 6750 4850
NoConn ~ 6750 4750
NoConn ~ 6750 4650
NoConn ~ 6750 4550
NoConn ~ 6750 4250
NoConn ~ 6750 4150
NoConn ~ 6750 3650
NoConn ~ 6750 3550
NoConn ~ 6750 3450
NoConn ~ 6750 3150
NoConn ~ 6750 3050
NoConn ~ 6750 2950
NoConn ~ 6750 2850
NoConn ~ 6750 2750
NoConn ~ 6750 2650
NoConn ~ 6750 2550
NoConn ~ 6750 2450
NoConn ~ 8400 5200
NoConn ~ 8400 5000
NoConn ~ 8400 4500
NoConn ~ 8400 4300
$Comp
L power:GND #PWR020
U 1 1 5E8C8561
P 7800 4400
F 0 "#PWR020" H 7800 4150 50  0001 C CNN
F 1 "GND" H 7805 4227 50  0000 C CNN
F 2 "" H 7800 4400 50  0001 C CNN
F 3 "" H 7800 4400 50  0001 C CNN
	1    7800 4400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5E8C7700
P 7800 5100
F 0 "#PWR021" H 7800 4850 50  0001 C CNN
F 1 "GND" H 7805 4927 50  0000 C CNN
F 2 "" H 7800 5100 50  0001 C CNN
F 3 "" H 7800 5100 50  0001 C CNN
	1    7800 5100
	0    1    1    0   
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW2
U 1 1 5E89DE47
P 8100 5100
F 0 "SW2" H 8150 5350 50  0000 R CNN
F 1 "Encoder 2" H 8300 4850 50  0000 R CNN
F 2 "" H 7950 5260 50  0001 C CNN
F 3 "~" H 8100 5360 50  0001 C CNN
	1    8100 5100
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32F4:STM32F401RETx U2
U 1 1 5E88491C
P 6150 3950
F 0 "U2" H 6100 3900 50  0000 C CNN
F 1 "STM32F401RET6" H 6150 3800 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 5550 2250 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00102166.pdf" H 6150 3950 50  0001 C CNN
	1    6150 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5E9FA020
P 6150 5800
F 0 "#PWR022" H 6150 5550 50  0001 C CNN
F 1 "GND" H 6155 5627 50  0000 C CNN
F 2 "" H 6150 5800 50  0001 C CNN
F 3 "" H 6150 5800 50  0001 C CNN
	1    6150 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5750 5950 5800
Wire Wire Line
	5950 5800 6050 5800
Wire Wire Line
	6050 5750 6050 5800
Connection ~ 6050 5800
Wire Wire Line
	6050 5800 6150 5800
Wire Wire Line
	6150 5750 6150 5800
Connection ~ 6150 5800
Wire Wire Line
	6250 5750 6250 5800
Wire Wire Line
	6250 5800 6150 5800
Wire Wire Line
	6350 5750 6350 5800
Wire Wire Line
	6350 5800 6250 5800
Connection ~ 6250 5800
$Comp
L Regulator_Linear:AMS1117-3.3 U1
U 1 1 5EA9C6D6
P 2500 1100
F 0 "U1" H 2500 1342 50  0000 C CNN
F 1 "AMS1117-3.3" H 2500 1251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2500 1300 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2600 850 50  0001 C CNN
	1    2500 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5EA9D52E
P 1800 1100
F 0 "FB1" V 1563 1100 50  0000 C CNN
F 1 "100 @ 100MHz" V 1654 1100 50  0000 C CNN
F 2 "" V 1730 1100 50  0001 C CNN
F 3 "~" H 1800 1100 50  0001 C CNN
	1    1800 1100
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse_Small F1
U 1 1 5EAA3DE2
P 1400 1100
F 0 "F1" H 1400 1285 50  0000 C CNN
F 1 "500mA" H 1400 1194 50  0000 C CNN
F 2 "" H 1400 1100 50  0001 C CNN
F 3 "~" H 1400 1100 50  0001 C CNN
	1    1400 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky_Small D1
U 1 1 5EAA537A
P 1050 1100
F 0 "D1" H 1050 895 50  0000 C CNN
F 1 "B5819W" H 1050 986 50  0000 C CNN
F 2 "" V 1050 1100 50  0001 C CNN
F 3 "~" V 1050 1100 50  0001 C CNN
	1    1050 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 1100 1300 1100
Wire Wire Line
	1500 1100 1700 1100
Wire Wire Line
	1900 1100 2000 1100
$Comp
L power:GND #PWR06
U 1 1 5EAB60C2
P 2500 1550
F 0 "#PWR06" H 2500 1300 50  0001 C CNN
F 1 "GND" H 2505 1377 50  0000 C CNN
F 2 "" H 2500 1550 50  0001 C CNN
F 3 "" H 2500 1550 50  0001 C CNN
	1    2500 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5EAB8020
P 2000 1350
F 0 "C1" H 2092 1396 50  0000 L CNN
F 1 "10uF" H 2092 1305 50  0000 L CNN
F 2 "" H 2000 1350 50  0001 C CNN
F 3 "~" H 2000 1350 50  0001 C CNN
	1    2000 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1100 2000 1250
Connection ~ 2000 1100
Wire Wire Line
	2000 1100 2200 1100
$Comp
L Device:C_Small C2
U 1 1 5EABC7A1
P 3000 1350
F 0 "C2" H 3092 1396 50  0000 L CNN
F 1 "10uF" H 3092 1305 50  0000 L CNN
F 2 "" H 3000 1350 50  0001 C CNN
F 3 "~" H 3000 1350 50  0001 C CNN
	1    3000 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1450 2000 1550
Wire Wire Line
	2000 1550 2500 1550
Wire Wire Line
	2500 1400 2500 1550
Connection ~ 2500 1550
Wire Wire Line
	3000 1450 3000 1550
Wire Wire Line
	3000 1550 2500 1550
Wire Wire Line
	2800 1100 3000 1100
Wire Wire Line
	3000 1100 3000 1250
$Comp
L power:VCC #PWR01
U 1 1 5EACD535
P 750 950
F 0 "#PWR01" H 750 800 50  0001 C CNN
F 1 "VCC" H 767 1123 50  0000 C CNN
F 2 "" H 750 950 50  0001 C CNN
F 3 "" H 750 950 50  0001 C CNN
	1    750  950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  950  750  1100
Wire Wire Line
	750  1100 950  1100
$Comp
L power:+3V3 #PWR02
U 1 1 5EAD1E8C
P 3000 1100
F 0 "#PWR02" H 3000 950 50  0001 C CNN
F 1 "+3V3" H 3015 1273 50  0000 C CNN
F 2 "" H 3000 1100 50  0001 C CNN
F 3 "" H 3000 1100 50  0001 C CNN
	1    3000 1100
	1    0    0    -1  
$EndComp
Connection ~ 3000 1100
Wire Notes Line
	3400 1800 3400 700 
Wire Notes Line
	3400 700  650  700 
Wire Notes Line
	650  700  650  1800
Wire Notes Line
	650  1800 3400 1800
Text Notes 650  650  0    50   ~ 0
Input Voltage Regulator
$Comp
L power:+3V3 #PWR010
U 1 1 5EB10D41
P 5950 2150
F 0 "#PWR010" H 5950 2000 50  0001 C CNN
F 1 "+3V3" H 5965 2323 50  0000 C CNN
F 2 "" H 5950 2150 50  0001 C CNN
F 3 "" H 5950 2150 50  0001 C CNN
	1    5950 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2150 5950 2250
Wire Wire Line
	5950 2150 6050 2150
Wire Wire Line
	6050 2150 6050 2250
Connection ~ 5950 2150
Wire Wire Line
	6050 2150 6150 2150
Wire Wire Line
	6150 2150 6150 2250
Connection ~ 6050 2150
Wire Wire Line
	6150 2150 6250 2150
Wire Wire Line
	6250 2150 6250 2250
Connection ~ 6150 2150
Wire Wire Line
	6250 2150 6350 2150
Wire Wire Line
	6350 2150 6350 2250
Connection ~ 6250 2150
$Comp
L power:+3V3 #PWR03
U 1 1 5EB1C3B9
P 7300 1150
F 0 "#PWR03" H 7300 1000 50  0001 C CNN
F 1 "+3V3" H 7315 1323 50  0000 C CNN
F 2 "" H 7300 1150 50  0001 C CNN
F 3 "" H 7300 1150 50  0001 C CNN
	1    7300 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB2
U 1 1 5EB1CAEF
P 7600 1350
F 0 "FB2" V 7363 1350 50  0000 C CNN
F 1 "100 @ 100MHz" V 7454 1350 50  0000 C CNN
F 2 "" V 7530 1350 50  0001 C CNN
F 3 "~" H 7600 1350 50  0001 C CNN
	1    7600 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 1150 7300 1350
Wire Wire Line
	7300 1350 7500 1350
$Comp
L Device:C_Small C9
U 1 1 5EB2049F
P 7850 1550
F 0 "C9" H 7942 1596 50  0000 L CNN
F 1 "100nF" H 7942 1505 50  0000 L CNN
F 2 "" H 7850 1550 50  0001 C CNN
F 3 "~" H 7850 1550 50  0001 C CNN
	1    7850 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 5EB2083E
P 8300 1550
F 0 "C10" H 8392 1596 50  0000 L CNN
F 1 "1uF" H 8392 1505 50  0000 L CNN
F 2 "" H 8300 1550 50  0001 C CNN
F 3 "~" H 8300 1550 50  0001 C CNN
	1    8300 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1350 7850 1350
Wire Wire Line
	7850 1350 7850 1450
Wire Wire Line
	7850 1350 8300 1350
Wire Wire Line
	8300 1350 8300 1450
Connection ~ 7850 1350
$Comp
L power:GND #PWR08
U 1 1 5EB26FC3
P 8300 1650
F 0 "#PWR08" H 8300 1400 50  0001 C CNN
F 1 "GND" H 8305 1477 50  0000 C CNN
F 2 "" H 8300 1650 50  0001 C CNN
F 3 "" H 8300 1650 50  0001 C CNN
	1    8300 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5EB27462
P 7850 1650
F 0 "#PWR07" H 7850 1400 50  0001 C CNN
F 1 "GND" H 7855 1477 50  0000 C CNN
F 2 "" H 7850 1650 50  0001 C CNN
F 3 "" H 7850 1650 50  0001 C CNN
	1    7850 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR04
U 1 1 5EB27EA0
P 8300 1150
F 0 "#PWR04" H 8300 1000 50  0001 C CNN
F 1 "+3.3VA" H 8315 1323 50  0000 C CNN
F 2 "" H 8300 1150 50  0001 C CNN
F 3 "" H 8300 1150 50  0001 C CNN
	1    8300 1150
	1    0    0    -1  
$EndComp
Connection ~ 8300 1350
Wire Wire Line
	8300 1150 8300 1350
$Comp
L Device:C_Small C4
U 1 1 5EB4349C
P 4550 1550
F 0 "C4" H 4642 1596 50  0000 L CNN
F 1 "100nF" H 4642 1505 50  0000 L CNN
F 2 "" H 4550 1550 50  0001 C CNN
F 3 "~" H 4550 1550 50  0001 C CNN
	1    4550 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR013
U 1 1 5EB43DB2
P 5450 2950
F 0 "#PWR013" H 5450 2800 50  0001 C CNN
F 1 "+3.3VA" V 5465 3077 50  0000 L CNN
F 2 "" H 5450 2950 50  0001 C CNN
F 3 "" H 5450 2950 50  0001 C CNN
	1    5450 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5EB4C92A
P 4950 1550
F 0 "C5" H 5042 1596 50  0000 L CNN
F 1 "100nF" H 5042 1505 50  0000 L CNN
F 2 "" H 4950 1550 50  0001 C CNN
F 3 "~" H 4950 1550 50  0001 C CNN
	1    4950 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5EB4CB2A
P 5350 1550
F 0 "C6" H 5442 1596 50  0000 L CNN
F 1 "100nF" H 5442 1505 50  0000 L CNN
F 2 "" H 5350 1550 50  0001 C CNN
F 3 "~" H 5350 1550 50  0001 C CNN
	1    5350 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5EB4CDF9
P 5750 1550
F 0 "C7" H 5842 1596 50  0000 L CNN
F 1 "100nF" H 5842 1505 50  0000 L CNN
F 2 "" H 5750 1550 50  0001 C CNN
F 3 "~" H 5750 1550 50  0001 C CNN
	1    5750 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5EB4D152
P 6150 1550
F 0 "C8" H 6242 1596 50  0000 L CNN
F 1 "100nF" H 6242 1505 50  0000 L CNN
F 2 "" H 6150 1550 50  0001 C CNN
F 3 "~" H 6150 1550 50  0001 C CNN
	1    6150 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5EB515A1
P 4150 1550
F 0 "C3" H 4242 1596 50  0000 L CNN
F 1 "10uF" H 4242 1505 50  0000 L CNN
F 2 "" H 4150 1550 50  0001 C CNN
F 3 "~" H 4150 1550 50  0001 C CNN
	1    4150 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1450 4150 1350
Wire Wire Line
	4150 1350 4550 1350
Wire Wire Line
	6150 1350 6150 1450
Wire Wire Line
	6150 1650 6150 1750
Wire Wire Line
	6150 1750 5750 1750
Wire Wire Line
	4150 1750 4150 1650
Wire Wire Line
	4550 1350 4550 1450
Connection ~ 4550 1350
Wire Wire Line
	4550 1350 4950 1350
Wire Wire Line
	4950 1350 4950 1450
Connection ~ 4950 1350
Wire Wire Line
	4950 1350 5350 1350
Wire Wire Line
	5350 1350 5350 1450
Connection ~ 5350 1350
Wire Wire Line
	5350 1350 5750 1350
Wire Wire Line
	5750 1350 5750 1450
Connection ~ 5750 1350
Wire Wire Line
	5750 1350 6150 1350
Wire Wire Line
	5750 1650 5750 1750
Connection ~ 5750 1750
Wire Wire Line
	5750 1750 5350 1750
Wire Wire Line
	5350 1650 5350 1750
Connection ~ 5350 1750
Wire Wire Line
	5350 1750 4950 1750
Wire Wire Line
	4950 1650 4950 1750
Connection ~ 4950 1750
Wire Wire Line
	4950 1750 4550 1750
Wire Wire Line
	4550 1650 4550 1750
Connection ~ 4550 1750
Wire Wire Line
	4550 1750 4150 1750
$Comp
L power:+3V3 #PWR05
U 1 1 5EB74B69
P 4150 1350
F 0 "#PWR05" H 4150 1200 50  0001 C CNN
F 1 "+3V3" H 4165 1523 50  0000 C CNN
F 2 "" H 4150 1350 50  0001 C CNN
F 3 "" H 4150 1350 50  0001 C CNN
	1    4150 1350
	1    0    0    -1  
$EndComp
Connection ~ 4150 1350
$Comp
L power:GND #PWR09
U 1 1 5EB75077
P 4150 1750
F 0 "#PWR09" H 4150 1500 50  0001 C CNN
F 1 "GND" H 4155 1577 50  0000 C CNN
F 2 "" H 4150 1750 50  0001 C CNN
F 3 "" H 4150 1750 50  0001 C CNN
	1    4150 1750
	1    0    0    -1  
$EndComp
Connection ~ 4150 1750
$Comp
L Device:C_Small C11
U 1 1 5EB7A09B
P 4550 2950
F 0 "C11" H 4642 2996 50  0000 L CNN
F 1 "4.7uF" H 4642 2905 50  0000 L CNN
F 2 "" H 4550 2950 50  0001 C CNN
F 3 "~" H 4550 2950 50  0001 C CNN
	1    4550 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2850 4550 2850
$Comp
L power:GND #PWR014
U 1 1 5EB90BA7
P 4550 3050
F 0 "#PWR014" H 4550 2800 50  0001 C CNN
F 1 "GND" H 4555 2877 50  0000 C CNN
F 2 "" H 4550 3050 50  0001 C CNN
F 3 "" H 4550 3050 50  0001 C CNN
	1    4550 3050
	1    0    0    -1  
$EndComp
Text GLabel 5450 2450 0    50   Input ~ 0
NRST
Text GLabel 5450 2650 0    50   Input ~ 0
BOOT0
Text GLabel 6750 4350 2    50   Input ~ 0
BOOT1
Text GLabel 5450 3550 0    50   Input ~ 0
HSE_IN
Text GLabel 5450 3650 0    50   Input ~ 0
HSE_OUT
$Comp
L Device:Crystal_GND24_Small HSE1
U 1 1 5EB9E974
P 3650 3900
F 0 "HSE1" H 3300 4100 50  0000 L CNN
F 1 "16MHz" H 3300 4000 50  0000 L CNN
F 2 "" H 3650 3900 50  0001 C CNN
F 3 "~" H 3650 3900 50  0001 C CNN
	1    3650 3900
	1    0    0    -1  
$EndComp
Text GLabel 3250 3900 0    50   Input ~ 0
HSE_IN
Wire Wire Line
	3250 3900 3400 3900
Text GLabel 4300 3900 2    50   Input ~ 0
HSE_OUT
Wire Wire Line
	3750 3900 3900 3900
$Comp
L power:GND #PWR019
U 1 1 5EBAB3FB
P 3650 4300
F 0 "#PWR019" H 3650 4050 50  0001 C CNN
F 1 "GND" H 3655 4127 50  0000 C CNN
F 2 "" H 3650 4300 50  0001 C CNN
F 3 "" H 3650 4300 50  0001 C CNN
	1    3650 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4000 3650 4250
$Comp
L Device:C_Small C13
U 1 1 5EBB347B
P 3900 4100
F 0 "C13" H 3992 4146 50  0000 L CNN
F 1 "12pF" H 3992 4055 50  0000 L CNN
F 2 "" H 3900 4100 50  0001 C CNN
F 3 "~" H 3900 4100 50  0001 C CNN
	1    3900 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 5EBB39F1
P 3400 4100
F 0 "C12" H 3200 4150 50  0000 L CNN
F 1 "12pF" H 3100 4050 50  0000 L CNN
F 2 "" H 3400 4100 50  0001 C CNN
F 3 "~" H 3400 4100 50  0001 C CNN
	1    3400 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3900 3400 4000
Connection ~ 3400 3900
Wire Wire Line
	3400 3900 3550 3900
Wire Wire Line
	3900 3900 3900 4000
Wire Wire Line
	3400 4200 3400 4250
Wire Wire Line
	3400 4250 3650 4250
Connection ~ 3650 4250
Wire Wire Line
	3650 4250 3650 4300
Wire Wire Line
	3900 4200 3900 4250
Wire Wire Line
	3900 4250 3800 4250
Wire Wire Line
	3650 3800 3650 3700
Wire Wire Line
	3650 3700 3800 3700
Wire Wire Line
	3800 3700 3800 4250
Connection ~ 3800 4250
Wire Wire Line
	3800 4250 3650 4250
$Comp
L Device:R_Small R3
U 1 1 5EBCA998
P 4100 3900
F 0 "R3" V 3904 3900 50  0000 C CNN
F 1 "220" V 3995 3900 50  0000 C CNN
F 2 "" H 4100 3900 50  0001 C CNN
F 3 "~" H 4100 3900 50  0001 C CNN
	1    4100 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 3900 4000 3900
Connection ~ 3900 3900
Wire Wire Line
	4200 3900 4300 3900
Text Notes 3800 4700 0    50   Italic 0
Resistor and parallel caps\nform a low-pass filter.\n\nAnything above 16MHz can\nbe attenuated.
$Comp
L Device:R_Small R1
U 1 1 5EBDDC60
P 7900 2350
F 0 "R1" H 7959 2396 50  0000 L CNN
F 1 "10k" H 7959 2305 50  0000 L CNN
F 2 "" H 7900 2350 50  0001 C CNN
F 3 "~" H 7900 2350 50  0001 C CNN
	1    7900 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5EBDEBF2
P 8250 2350
F 0 "R2" H 8309 2396 50  0000 L CNN
F 1 "10k" H 8309 2305 50  0000 L CNN
F 2 "" H 8250 2350 50  0001 C CNN
F 3 "~" H 8250 2350 50  0001 C CNN
	1    8250 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5EBDF54C
P 7900 2450
F 0 "#PWR011" H 7900 2200 50  0001 C CNN
F 1 "GND" H 7905 2277 50  0000 C CNN
F 2 "" H 7900 2450 50  0001 C CNN
F 3 "" H 7900 2450 50  0001 C CNN
	1    7900 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5EBDFC91
P 8250 2450
F 0 "#PWR012" H 8250 2200 50  0001 C CNN
F 1 "GND" H 8255 2277 50  0000 C CNN
F 2 "" H 8250 2450 50  0001 C CNN
F 3 "" H 8250 2450 50  0001 C CNN
	1    8250 2450
	1    0    0    -1  
$EndComp
Text GLabel 8250 2250 1    50   Input ~ 0
BOOT1
Text GLabel 7900 2250 1    50   Input ~ 0
BOOT0
Text GLabel 6750 3750 2    50   Input ~ 0
SWDIO
Text GLabel 6750 3850 2    50   Input ~ 0
SWCLK
Text GLabel 6750 4450 2    50   Input ~ 0
SWO
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 5EBEAFB2
P 9750 3550
F 0 "J1" H 9800 3967 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 9800 3876 50  0000 C CNN
F 2 "" H 9750 3550 50  0001 C CNN
F 3 "~" H 9750 3550 50  0001 C CNN
	1    9750 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR015
U 1 1 5EBED49D
P 9550 3350
F 0 "#PWR015" H 9550 3200 50  0001 C CNN
F 1 "+3V3" V 9565 3478 50  0000 L CNN
F 2 "" H 9550 3350 50  0001 C CNN
F 3 "" H 9550 3350 50  0001 C CNN
	1    9550 3350
	0    -1   -1   0   
$EndComp
Text GLabel 10050 3350 2    50   Input ~ 0
SWDIO
Text GLabel 10050 3450 2    50   Input ~ 0
SWCLK
Text GLabel 10050 3550 2    50   Input ~ 0
SWO
NoConn ~ 10050 3650
$Comp
L power:GND #PWR018
U 1 1 5EBF564E
P 9450 3750
F 0 "#PWR018" H 9450 3500 50  0001 C CNN
F 1 "GND" H 9455 3577 50  0000 C CNN
F 2 "" H 9450 3750 50  0001 C CNN
F 3 "" H 9450 3750 50  0001 C CNN
	1    9450 3750
	1    0    0    -1  
$EndComp
NoConn ~ 9550 3650
Wire Wire Line
	9550 3750 9450 3750
Wire Wire Line
	9550 3450 9450 3450
Wire Wire Line
	9450 3450 9450 3550
Wire Wire Line
	9550 3550 9450 3550
Connection ~ 9450 3550
Wire Wire Line
	9450 3550 9450 3750
Connection ~ 9450 3750
$Comp
L Connector:Conn_01x05_Female J2
U 1 1 5EC06E8B
P 8100 3850
F 0 "J2" V 7946 4098 50  0000 L CNN
F 1 "OLED" V 8037 4098 50  0000 L CNN
F 2 "" H 8100 3850 50  0001 C CNN
F 3 "~" H 8100 3850 50  0001 C CNN
	1    8100 3850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5EC0AEF0
P 7900 3650
F 0 "#PWR016" H 7900 3400 50  0001 C CNN
F 1 "GND" H 7905 3477 50  0000 C CNN
F 2 "" H 7900 3650 50  0001 C CNN
F 3 "" H 7900 3650 50  0001 C CNN
	1    7900 3650
	-1   0    0    1   
$EndComp
NoConn ~ 8000 3650
Text GLabel 8200 3650 1    50   Input ~ 0
OLED_SDA
Text GLabel 8100 3650 1    50   Input ~ 0
OLED_SCL
$Comp
L power:+3V3 #PWR017
U 1 1 5EC0F37C
P 8300 3650
F 0 "#PWR017" H 8300 3500 50  0001 C CNN
F 1 "+3V3" H 8315 3823 50  0000 C CNN
F 2 "" H 8300 3650 50  0001 C CNN
F 3 "" H 8300 3650 50  0001 C CNN
	1    8300 3650
	1    0    0    -1  
$EndComp
Text GLabel 7800 4300 0    50   Input ~ 0
ENC1_A
Text GLabel 7800 4500 0    50   Input ~ 0
ENC1_B
Text GLabel 7800 5200 0    50   Input ~ 0
ENC2_B
Text GLabel 7800 5000 0    50   Input ~ 0
ENC2_A
Text GLabel 6750 5050 2    50   Input ~ 0
OLED_SDA
Text GLabel 6750 4950 2    50   Input ~ 0
OLED_SCL
Text GLabel 6750 3250 2    50   Input ~ 0
ENC1_A
Text GLabel 6750 3350 2    50   Input ~ 0
ENC1_B
Text GLabel 5450 4750 0    50   Input ~ 0
ENC2_A
Text GLabel 5450 4650 0    50   Input ~ 0
ENC2_B
Text GLabel 10050 3750 2    50   Input ~ 0
NRST
NoConn ~ 6750 3950
$EndSCHEMATC
