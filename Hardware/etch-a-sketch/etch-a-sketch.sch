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
P 6100 3650
F 0 "SW1" H 6150 3900 50  0000 R CNN
F 1 "Encoder 1" H 6250 3400 50  0000 R CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 5950 3810 50  0001 C CNN
F 3 "~" H 6100 3910 50  0001 C CNN
	1    6100 3650
	1    0    0    -1  
$EndComp
NoConn ~ 1550 5200
NoConn ~ 1550 5400
NoConn ~ 1550 5500
NoConn ~ 1550 5600
NoConn ~ 1550 5700
NoConn ~ 1550 5800
NoConn ~ 1550 5900
NoConn ~ 1550 6200
NoConn ~ 1550 6300
NoConn ~ 1550 6400
NoConn ~ 1550 6500
NoConn ~ 1550 6600
NoConn ~ 1550 6700
NoConn ~ 1550 6800
NoConn ~ 1550 6900
NoConn ~ 2850 6900
NoConn ~ 2850 6800
NoConn ~ 2850 6700
NoConn ~ 2850 6500
NoConn ~ 2850 6200
NoConn ~ 2850 6100
NoConn ~ 2850 6000
NoConn ~ 2850 5900
NoConn ~ 2850 5600
NoConn ~ 2850 5500
NoConn ~ 2850 5000
NoConn ~ 2850 4900
NoConn ~ 2850 4800
NoConn ~ 2850 4500
NoConn ~ 2850 4400
NoConn ~ 2850 4300
NoConn ~ 2850 4200
NoConn ~ 6400 4450
NoConn ~ 6400 4250
NoConn ~ 6400 3750
NoConn ~ 6400 3550
$Comp
L power:GND #PWR013
U 1 1 5E8C8561
P 5800 3650
F 0 "#PWR013" H 5800 3400 50  0001 C CNN
F 1 "GND" H 5805 3477 50  0000 C CNN
F 2 "" H 5800 3650 50  0001 C CNN
F 3 "" H 5800 3650 50  0001 C CNN
	1    5800 3650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5E8C7700
P 5800 4350
F 0 "#PWR017" H 5800 4100 50  0001 C CNN
F 1 "GND" H 5805 4177 50  0000 C CNN
F 2 "" H 5800 4350 50  0001 C CNN
F 3 "" H 5800 4350 50  0001 C CNN
	1    5800 4350
	0    1    1    0   
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW2
U 1 1 5E89DE47
P 6100 4350
F 0 "SW2" H 6150 4600 50  0000 R CNN
F 1 "Encoder 2" H 6300 4100 50  0000 R CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 5950 4510 50  0001 C CNN
F 3 "~" H 6100 4610 50  0001 C CNN
	1    6100 4350
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32F4:STM32F401RETx U2
U 1 1 5E88491C
P 2250 5300
F 0 "U2" H 2200 5250 50  0000 C CNN
F 1 "STM32F401RET6" H 2250 5150 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 1650 3600 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00102166.pdf" H 2250 5300 50  0001 C CNN
	1    2250 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5E9FA020
P 2250 7150
F 0 "#PWR023" H 2250 6900 50  0001 C CNN
F 1 "GND" H 2255 6977 50  0000 C CNN
F 2 "" H 2250 7150 50  0001 C CNN
F 3 "" H 2250 7150 50  0001 C CNN
	1    2250 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 7100 2050 7150
Wire Wire Line
	2050 7150 2150 7150
Wire Wire Line
	2150 7100 2150 7150
Connection ~ 2150 7150
Wire Wire Line
	2150 7150 2250 7150
Wire Wire Line
	2250 7100 2250 7150
Connection ~ 2250 7150
Wire Wire Line
	2350 7100 2350 7150
Wire Wire Line
	2350 7150 2250 7150
Wire Wire Line
	2450 7100 2450 7150
Wire Wire Line
	2450 7150 2350 7150
Connection ~ 2350 7150
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
F 2 "Inductor_SMD:L_0805_2012Metric" V 1730 1100 50  0001 C CNN
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
F 2 "Fuse:Fuse_1206_3216Metric" H 1400 1100 50  0001 C CNN
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
F 2 "Diode_SMD:D_SOD-123" V 1050 1100 50  0001 C CNN
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
L power:GND #PWR03
U 1 1 5EAB60C2
P 2500 1550
F 0 "#PWR03" H 2500 1300 50  0001 C CNN
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
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2000 1350 50  0001 C CNN
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
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3000 1350 50  0001 C CNN
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
	3700 1800 3700 700 
Wire Notes Line
	3700 700  650  700 
Wire Notes Line
	650  700  650  1800
Wire Notes Line
	650  1800 3700 1800
Text Notes 650  700  0    50   ~ 0
Input Voltage Regulator
$Comp
L power:+3V3 #PWR012
U 1 1 5EB10D41
P 2050 3500
F 0 "#PWR012" H 2050 3350 50  0001 C CNN
F 1 "+3V3" H 2065 3673 50  0000 C CNN
F 2 "" H 2050 3500 50  0001 C CNN
F 3 "" H 2050 3500 50  0001 C CNN
	1    2050 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3500 2050 3600
Wire Wire Line
	2050 3500 2150 3500
Wire Wire Line
	2150 3500 2150 3600
Connection ~ 2050 3500
Wire Wire Line
	2150 3500 2250 3500
Wire Wire Line
	2250 3500 2250 3600
Connection ~ 2150 3500
Wire Wire Line
	2250 3500 2350 3500
Wire Wire Line
	2350 3500 2350 3600
Connection ~ 2250 3500
Wire Wire Line
	2350 3500 2450 3500
Wire Wire Line
	2450 3500 2450 3600
Connection ~ 2350 3500
$Comp
L power:+3V3 #PWR05
U 1 1 5EB1C3B9
P 3250 2450
F 0 "#PWR05" H 3250 2300 50  0001 C CNN
F 1 "+3V3" H 3265 2623 50  0000 C CNN
F 2 "" H 3250 2450 50  0001 C CNN
F 3 "" H 3250 2450 50  0001 C CNN
	1    3250 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB2
U 1 1 5EB1CAEF
P 3550 2650
F 0 "FB2" V 3313 2650 50  0000 C CNN
F 1 "100 @ 100MHz" V 3404 2650 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 3480 2650 50  0001 C CNN
F 3 "~" H 3550 2650 50  0001 C CNN
	1    3550 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 2450 3250 2650
Wire Wire Line
	3250 2650 3450 2650
$Comp
L Device:C_Small C9
U 1 1 5EB2049F
P 3800 2850
F 0 "C9" H 3892 2896 50  0000 L CNN
F 1 "100nF" H 3892 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3800 2850 50  0001 C CNN
F 3 "~" H 3800 2850 50  0001 C CNN
	1    3800 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 5EB2083E
P 4250 2850
F 0 "C10" H 4342 2896 50  0000 L CNN
F 1 "1uF" H 4342 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4250 2850 50  0001 C CNN
F 3 "~" H 4250 2850 50  0001 C CNN
	1    4250 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2650 3800 2650
Wire Wire Line
	3800 2650 3800 2750
Wire Wire Line
	3800 2650 4250 2650
Wire Wire Line
	4250 2650 4250 2750
Connection ~ 3800 2650
$Comp
L power:GND #PWR010
U 1 1 5EB26FC3
P 4250 2950
F 0 "#PWR010" H 4250 2700 50  0001 C CNN
F 1 "GND" H 4255 2777 50  0000 C CNN
F 2 "" H 4250 2950 50  0001 C CNN
F 3 "" H 4250 2950 50  0001 C CNN
	1    4250 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5EB27462
P 3800 2950
F 0 "#PWR09" H 3800 2700 50  0001 C CNN
F 1 "GND" H 3805 2777 50  0000 C CNN
F 2 "" H 3800 2950 50  0001 C CNN
F 3 "" H 3800 2950 50  0001 C CNN
	1    3800 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR06
U 1 1 5EB27EA0
P 4250 2450
F 0 "#PWR06" H 4250 2300 50  0001 C CNN
F 1 "+3.3VA" H 4265 2623 50  0000 C CNN
F 2 "" H 4250 2450 50  0001 C CNN
F 3 "" H 4250 2450 50  0001 C CNN
	1    4250 2450
	1    0    0    -1  
$EndComp
Connection ~ 4250 2650
Wire Wire Line
	4250 2450 4250 2650
$Comp
L Device:C_Small C4
U 1 1 5EB4349C
P 1150 2650
F 0 "C4" H 1242 2696 50  0000 L CNN
F 1 "100nF" H 1242 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1150 2650 50  0001 C CNN
F 3 "~" H 1150 2650 50  0001 C CNN
	1    1150 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR016
U 1 1 5EB43DB2
P 1550 4300
F 0 "#PWR016" H 1550 4150 50  0001 C CNN
F 1 "+3.3VA" V 1565 4427 50  0000 L CNN
F 2 "" H 1550 4300 50  0001 C CNN
F 3 "" H 1550 4300 50  0001 C CNN
	1    1550 4300
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5EB4C92A
P 1550 2650
F 0 "C5" H 1642 2696 50  0000 L CNN
F 1 "100nF" H 1642 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1550 2650 50  0001 C CNN
F 3 "~" H 1550 2650 50  0001 C CNN
	1    1550 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5EB4CB2A
P 1950 2650
F 0 "C6" H 2042 2696 50  0000 L CNN
F 1 "100nF" H 2042 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1950 2650 50  0001 C CNN
F 3 "~" H 1950 2650 50  0001 C CNN
	1    1950 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5EB4CDF9
P 2350 2650
F 0 "C7" H 2442 2696 50  0000 L CNN
F 1 "100nF" H 2442 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2350 2650 50  0001 C CNN
F 3 "~" H 2350 2650 50  0001 C CNN
	1    2350 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5EB4D152
P 2750 2650
F 0 "C8" H 2842 2696 50  0000 L CNN
F 1 "100nF" H 2842 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2750 2650 50  0001 C CNN
F 3 "~" H 2750 2650 50  0001 C CNN
	1    2750 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5EB515A1
P 750 2650
F 0 "C3" H 842 2696 50  0000 L CNN
F 1 "10uF" H 842 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 750 2650 50  0001 C CNN
F 3 "~" H 750 2650 50  0001 C CNN
	1    750  2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  2550 750  2450
Wire Wire Line
	750  2450 1150 2450
Wire Wire Line
	2750 2450 2750 2550
Wire Wire Line
	2750 2750 2750 2850
Wire Wire Line
	2750 2850 2350 2850
Wire Wire Line
	750  2850 750  2750
Wire Wire Line
	1150 2450 1150 2550
Connection ~ 1150 2450
Wire Wire Line
	1150 2450 1550 2450
Wire Wire Line
	1550 2450 1550 2550
Connection ~ 1550 2450
Wire Wire Line
	1550 2450 1950 2450
Wire Wire Line
	1950 2450 1950 2550
Connection ~ 1950 2450
Wire Wire Line
	1950 2450 2350 2450
Wire Wire Line
	2350 2450 2350 2550
Connection ~ 2350 2450
Wire Wire Line
	2350 2450 2750 2450
Wire Wire Line
	2350 2750 2350 2850
Connection ~ 2350 2850
Wire Wire Line
	2350 2850 1950 2850
Wire Wire Line
	1950 2750 1950 2850
Connection ~ 1950 2850
Wire Wire Line
	1950 2850 1550 2850
Wire Wire Line
	1550 2750 1550 2850
Connection ~ 1550 2850
Wire Wire Line
	1550 2850 1150 2850
Wire Wire Line
	1150 2750 1150 2850
Connection ~ 1150 2850
Wire Wire Line
	1150 2850 750  2850
$Comp
L power:+3V3 #PWR04
U 1 1 5EB74B69
P 750 2450
F 0 "#PWR04" H 750 2300 50  0001 C CNN
F 1 "+3V3" H 765 2623 50  0000 C CNN
F 2 "" H 750 2450 50  0001 C CNN
F 3 "" H 750 2450 50  0001 C CNN
	1    750  2450
	1    0    0    -1  
$EndComp
Connection ~ 750  2450
$Comp
L power:GND #PWR08
U 1 1 5EB75077
P 750 2850
F 0 "#PWR08" H 750 2600 50  0001 C CNN
F 1 "GND" H 755 2677 50  0000 C CNN
F 2 "" H 750 2850 50  0001 C CNN
F 3 "" H 750 2850 50  0001 C CNN
	1    750  2850
	1    0    0    -1  
$EndComp
Connection ~ 750  2850
Wire Wire Line
	1550 4200 800  4200
$Comp
L power:GND #PWR018
U 1 1 5EB90BA7
P 800 4400
F 0 "#PWR018" H 800 4150 50  0001 C CNN
F 1 "GND" H 805 4227 50  0000 C CNN
F 2 "" H 800 4400 50  0001 C CNN
F 3 "" H 800 4400 50  0001 C CNN
	1    800  4400
	1    0    0    -1  
$EndComp
Text GLabel 1550 3800 0    50   Input ~ 0
NRST
Text GLabel 1550 4000 0    50   Input ~ 0
BOOT0
Text GLabel 2850 5700 2    50   Input ~ 0
BOOT1
Text GLabel 1550 4900 0    50   Input ~ 0
HSE_IN
Text GLabel 1550 5000 0    50   Input ~ 0
HSE_OUT
$Comp
L Device:Crystal_GND24_Small HSE1
U 1 1 5EB9E974
P 4000 6000
F 0 "HSE1" H 3650 6200 50  0000 L CNN
F 1 "16MHz" H 3650 6100 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 4000 6000 50  0001 C CNN
F 3 "~" H 4000 6000 50  0001 C CNN
	1    4000 6000
	1    0    0    -1  
$EndComp
Text GLabel 3600 6000 0    50   Input ~ 0
HSE_IN
Wire Wire Line
	3600 6000 3750 6000
Text GLabel 4650 6000 2    50   Input ~ 0
HSE_OUT
Wire Wire Line
	4100 6000 4250 6000
$Comp
L power:GND #PWR021
U 1 1 5EBAB3FB
P 4000 6400
F 0 "#PWR021" H 4000 6150 50  0001 C CNN
F 1 "GND" H 4005 6227 50  0000 C CNN
F 2 "" H 4000 6400 50  0001 C CNN
F 3 "" H 4000 6400 50  0001 C CNN
	1    4000 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6100 4000 6350
$Comp
L Device:C_Small C13
U 1 1 5EBB347B
P 4250 6200
F 0 "C13" H 4342 6246 50  0000 L CNN
F 1 "12pF" H 4342 6155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4250 6200 50  0001 C CNN
F 3 "~" H 4250 6200 50  0001 C CNN
	1    4250 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 5EBB39F1
P 3750 6200
F 0 "C12" H 3550 6250 50  0000 L CNN
F 1 "12pF" H 3450 6150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3750 6200 50  0001 C CNN
F 3 "~" H 3750 6200 50  0001 C CNN
	1    3750 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 6000 3750 6100
Connection ~ 3750 6000
Wire Wire Line
	3750 6000 3900 6000
Wire Wire Line
	4250 6000 4250 6100
Wire Wire Line
	3750 6300 3750 6350
Wire Wire Line
	3750 6350 4000 6350
Connection ~ 4000 6350
Wire Wire Line
	4000 6350 4000 6400
Wire Wire Line
	4250 6300 4250 6350
Wire Wire Line
	4250 6350 4150 6350
Wire Wire Line
	4000 5900 4000 5800
Wire Wire Line
	4000 5800 4150 5800
Wire Wire Line
	4150 5800 4150 6350
Connection ~ 4150 6350
Wire Wire Line
	4150 6350 4000 6350
$Comp
L Device:R_Small R4
U 1 1 5EBCA998
P 4450 6000
F 0 "R4" V 4254 6000 50  0000 C CNN
F 1 "220" V 4345 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4450 6000 50  0001 C CNN
F 3 "~" H 4450 6000 50  0001 C CNN
	1    4450 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 6000 4350 6000
Connection ~ 4250 6000
Wire Wire Line
	4550 6000 4650 6000
Text Notes 4150 6800 0    50   Italic 0
Resistor and parallel caps\nform a low-pass filter.\n\nAnything above 16MHz can\nbe attenuated.
$Comp
L Device:R_Small R2
U 1 1 5EBDDC60
P 3850 3650
F 0 "R2" H 3909 3696 50  0000 L CNN
F 1 "10k" H 3909 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3850 3650 50  0001 C CNN
F 3 "~" H 3850 3650 50  0001 C CNN
	1    3850 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5EBDEBF2
P 4200 3650
F 0 "R3" H 4259 3696 50  0000 L CNN
F 1 "10k" H 4259 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4200 3650 50  0001 C CNN
F 3 "~" H 4200 3650 50  0001 C CNN
	1    4200 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5EBDF54C
P 3850 3750
F 0 "#PWR014" H 3850 3500 50  0001 C CNN
F 1 "GND" H 3855 3577 50  0000 C CNN
F 2 "" H 3850 3750 50  0001 C CNN
F 3 "" H 3850 3750 50  0001 C CNN
	1    3850 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5EBDFC91
P 4200 3750
F 0 "#PWR015" H 4200 3500 50  0001 C CNN
F 1 "GND" H 4205 3577 50  0000 C CNN
F 2 "" H 4200 3750 50  0001 C CNN
F 3 "" H 4200 3750 50  0001 C CNN
	1    4200 3750
	1    0    0    -1  
$EndComp
Text GLabel 4200 3550 1    50   Input ~ 0
BOOT1
Text GLabel 3850 3550 1    50   Input ~ 0
BOOT0
Text GLabel 2850 5100 2    50   Input ~ 0
SWDIO
Text GLabel 2850 5200 2    50   Input ~ 0
SWCLK
Text GLabel 2850 5800 2    50   Input ~ 0
SWO
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J2
U 1 1 5EBEAFB2
P 5950 2750
F 0 "J2" H 6000 3167 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 6000 3076 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical_SMD" H 5950 2750 50  0001 C CNN
F 3 "~" H 5950 2750 50  0001 C CNN
	1    5950 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR07
U 1 1 5EBED49D
P 5750 2550
F 0 "#PWR07" H 5750 2400 50  0001 C CNN
F 1 "+3V3" V 5765 2678 50  0000 L CNN
F 2 "" H 5750 2550 50  0001 C CNN
F 3 "" H 5750 2550 50  0001 C CNN
	1    5750 2550
	0    -1   -1   0   
$EndComp
Text GLabel 6250 2550 2    50   Input ~ 0
SWDIO
Text GLabel 6250 2650 2    50   Input ~ 0
SWCLK
Text GLabel 6250 2750 2    50   Input ~ 0
SWO
NoConn ~ 6250 2850
$Comp
L power:GND #PWR011
U 1 1 5EBF564E
P 5650 2950
F 0 "#PWR011" H 5650 2700 50  0001 C CNN
F 1 "GND" H 5655 2777 50  0000 C CNN
F 2 "" H 5650 2950 50  0001 C CNN
F 3 "" H 5650 2950 50  0001 C CNN
	1    5650 2950
	1    0    0    -1  
$EndComp
NoConn ~ 5750 2850
Wire Wire Line
	5750 2950 5650 2950
Wire Wire Line
	5750 2650 5650 2650
Wire Wire Line
	5650 2650 5650 2750
Wire Wire Line
	5750 2750 5650 2750
Connection ~ 5650 2750
Wire Wire Line
	5650 2750 5650 2950
Connection ~ 5650 2950
$Comp
L power:GND #PWR019
U 1 1 5EC0AEF0
P 5550 5300
F 0 "#PWR019" H 5550 5050 50  0001 C CNN
F 1 "GND" H 5555 5127 50  0000 C CNN
F 2 "" H 5550 5300 50  0001 C CNN
F 3 "" H 5550 5300 50  0001 C CNN
	1    5550 5300
	-1   0    0    1   
$EndComp
NoConn ~ 5650 5300
Text GLabel 5850 5300 1    50   Input ~ 0
OLED_SDA
Text GLabel 5750 5300 1    50   Input ~ 0
OLED_SCL
$Comp
L power:+3V3 #PWR020
U 1 1 5EC0F37C
P 5950 5300
F 0 "#PWR020" H 5950 5150 50  0001 C CNN
F 1 "+3V3" H 5965 5473 50  0000 C CNN
F 2 "" H 5950 5300 50  0001 C CNN
F 3 "" H 5950 5300 50  0001 C CNN
	1    5950 5300
	1    0    0    -1  
$EndComp
Text GLabel 5800 3550 0    50   Input ~ 0
ENC1_A
Text GLabel 5800 3750 0    50   Input ~ 0
ENC1_B
Text GLabel 5800 4450 0    50   Input ~ 0
ENC2_B
Text GLabel 5800 4250 0    50   Input ~ 0
ENC2_A
Text GLabel 2850 6400 2    50   Input ~ 0
OLED_SDA
Text GLabel 2850 6300 2    50   Input ~ 0
OLED_SCL
Text GLabel 2850 4700 2    50   Input ~ 0
ENC1_A
Text GLabel 2850 4600 2    50   Input ~ 0
ENC1_B
Text GLabel 2850 3900 2    50   Input ~ 0
ENC2_A
Text GLabel 2850 3800 2    50   Input ~ 0
ENC2_B
Text GLabel 6250 2950 2    50   Input ~ 0
NRST
NoConn ~ 2850 5300
$Comp
L Device:LED_Small D3
U 1 1 5EC7E354
P 3100 6600
F 0 "D3" H 2900 6550 50  0000 C CNN
F 1 "Red" H 2900 6650 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 3100 6600 50  0001 C CNN
F 3 "~" V 3100 6600 50  0001 C CNN
	1    3100 6600
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 6600 3000 6600
$Comp
L Device:R_Small R5
U 1 1 5EC81E30
P 3200 6800
F 0 "R5" H 3259 6846 50  0000 L CNN
F 1 "2k2" H 3259 6755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3200 6800 50  0001 C CNN
F 3 "~" H 3200 6800 50  0001 C CNN
	1    3200 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 6600 3200 6700
$Comp
L power:GND #PWR022
U 1 1 5EC84C86
P 3200 6900
F 0 "#PWR022" H 3200 6650 50  0001 C CNN
F 1 "GND" H 3205 6727 50  0000 C CNN
F 2 "" H 3200 6900 50  0001 C CNN
F 3 "" H 3200 6900 50  0001 C CNN
	1    3200 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D2
U 1 1 5EC8B91E
P 3350 1100
F 0 "D2" H 3350 895 50  0000 C CNN
F 1 "Red" H 3350 986 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 3350 1100 50  0001 C CNN
F 3 "~" V 3350 1100 50  0001 C CNN
	1    3350 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 1100 3250 1100
$Comp
L Device:R_Small R1
U 1 1 5EC8F1C8
P 3450 1350
F 0 "R1" H 3509 1396 50  0000 L CNN
F 1 "2k2" H 3509 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3450 1350 50  0001 C CNN
F 3 "~" H 3450 1350 50  0001 C CNN
	1    3450 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1100 3450 1250
Wire Wire Line
	3450 1450 3450 1550
Wire Wire Line
	3450 1550 3000 1550
Connection ~ 3000 1550
$Comp
L Device:C_Small C11
U 1 1 5EB7A09B
P 800 4300
F 0 "C11" H 892 4346 50  0000 L CNN
F 1 "4.7uF" H 892 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 800 4300 50  0001 C CNN
F 3 "~" H 800 4300 50  0001 C CNN
	1    800  4300
	1    0    0    -1  
$EndComp
Wire Notes Line
	650  2200 5200 2200
Wire Notes Line
	5200 2200 5200 7400
Wire Notes Line
	5200 7400 650  7400
Wire Notes Line
	650  7400 650  2200
Text Notes 650  2200 0    50   Italic 0
Microcontroller
Wire Notes Line
	5400 2200 5400 3200
Wire Notes Line
	5400 3200 7200 3200
Wire Notes Line
	7200 3200 7200 2200
Wire Notes Line
	7200 2200 5400 2200
Text Notes 5400 2200 0    50   ~ 0
Debug
Wire Notes Line
	5400 3350 6500 3350
Wire Notes Line
	6500 3350 6500 4700
Wire Notes Line
	6500 4700 5400 4700
Wire Notes Line
	5400 4700 5400 3350
Wire Notes Line
	5400 4850 6250 4850
Wire Notes Line
	6250 4850 6250 5600
Wire Notes Line
	6250 5600 5400 5600
Wire Notes Line
	5400 5600 5400 4850
Text Notes 5400 4850 0    50   ~ 0
Display
Text Notes 5400 3350 0    50   ~ 0
Knobs
Text GLabel 2850 4000 2    50   Input ~ 0
USART2_TX
Text GLabel 2850 4100 2    50   Input ~ 0
USART2_RX
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5ED41BFE
P 6750 2400
F 0 "J1" V 6714 2212 50  0000 R CNN
F 1 "USART" V 6623 2212 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 6750 2400 50  0001 C CNN
F 3 "~" H 6750 2400 50  0001 C CNN
	1    6750 2400
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J3
U 1 1 5ED42D60
P 5750 5500
F 0 "J3" V 5622 5780 50  0000 L CNN
F 1 "OLED" V 5713 5780 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 5750 5500 50  0001 C CNN
F 3 "~" H 5750 5500 50  0001 C CNN
	1    5750 5500
	0    1    1    0   
$EndComp
Text GLabel 6750 2600 3    50   Input ~ 0
USART2_TX
Text GLabel 6850 2600 3    50   Input ~ 0
USART2_RX
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5ED69F9D
P 7700 2600
F 0 "H2" V 7654 2750 50  0000 L CNN
F 1 "MountingHole_Pad" V 7745 2750 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 7700 2600 50  0001 C CNN
F 3 "~" H 7700 2600 50  0001 C CNN
	1    7700 2600
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5ED6A288
P 7700 2850
F 0 "H3" V 7654 3000 50  0000 L CNN
F 1 "MountingHole_Pad" V 7745 3000 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 7700 2850 50  0001 C CNN
F 3 "~" H 7700 2850 50  0001 C CNN
	1    7700 2850
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5ED6AB54
P 7700 3100
F 0 "H4" V 7654 3250 50  0000 L CNN
F 1 "MountingHole_Pad" V 7745 3250 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 7700 3100 50  0001 C CNN
F 3 "~" H 7700 3100 50  0001 C CNN
	1    7700 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5ED73CC9
P 7550 3300
F 0 "#PWR0101" H 7550 3050 50  0001 C CNN
F 1 "GND" H 7555 3127 50  0000 C CNN
F 2 "" H 7550 3300 50  0001 C CNN
F 3 "" H 7550 3300 50  0001 C CNN
	1    7550 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3100 7550 3100
Wire Wire Line
	7550 3100 7550 3300
Wire Wire Line
	7600 2850 7550 2850
Wire Wire Line
	7550 2850 7550 3100
Connection ~ 7550 3100
Wire Wire Line
	7600 2600 7550 2600
Wire Wire Line
	7550 2600 7550 2850
Connection ~ 7550 2850
Connection ~ 7550 2600
Wire Wire Line
	7550 2350 7550 2600
Wire Wire Line
	7600 2350 7550 2350
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5ED6970A
P 7700 2350
F 0 "H1" V 7654 2500 50  0000 L CNN
F 1 "MountingHole_Pad" V 7745 2500 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 7700 2350 50  0001 C CNN
F 3 "~" H 7700 2350 50  0001 C CNN
	1    7700 2350
	0    1    1    0   
$EndComp
Wire Notes Line
	8600 2200 8600 3550
Wire Notes Line
	8600 3550 7450 3550
Wire Notes Line
	7450 3550 7450 2200
Wire Notes Line
	7450 2200 8600 2200
Text Notes 7450 2200 0    50   ~ 0
Mounting Holes
$Comp
L Connector:USB_B_Mini J4
U 1 1 5EDAFB76
P 5750 6350
F 0 "J4" H 5807 6817 50  0000 C CNN
F 1 "Power Connector" H 5807 6726 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Wuerth_629105150521" H 5900 6300 50  0001 C CNN
F 3 "~" H 5900 6300 50  0001 C CNN
	1    5750 6350
	1    0    0    -1  
$EndComp
NoConn ~ 6050 6350
NoConn ~ 6050 6450
$Comp
L power:GND #PWR025
U 1 1 5EDBF07A
P 6050 6800
F 0 "#PWR025" H 6050 6550 50  0001 C CNN
F 1 "GND" H 6055 6627 50  0000 C CNN
F 2 "" H 6050 6800 50  0001 C CNN
F 3 "" H 6050 6800 50  0001 C CNN
	1    6050 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 6750 6050 6750
Wire Wire Line
	6050 6750 6050 6800
Wire Wire Line
	6050 6550 6050 6750
Connection ~ 6050 6750
Wire Wire Line
	5650 6750 5750 6750
Connection ~ 5750 6750
Wire Notes Line
	5400 5800 6450 5800
Wire Notes Line
	6450 5800 6450 7050
Wire Notes Line
	6450 7050 5400 7050
Wire Notes Line
	5400 7050 5400 5800
Text Notes 5400 5800 0    50   ~ 0
Micro USB
$Comp
L power:VCC #PWR0102
U 1 1 5EDE1CBE
P 6300 6150
F 0 "#PWR0102" H 6300 6000 50  0001 C CNN
F 1 "VCC" H 6317 6323 50  0000 C CNN
F 2 "" H 6300 6150 50  0001 C CNN
F 3 "" H 6300 6150 50  0001 C CNN
	1    6300 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 6150 6300 6150
NoConn ~ 1550 6000
NoConn ~ 1550 6100
$EndSCHEMATC
