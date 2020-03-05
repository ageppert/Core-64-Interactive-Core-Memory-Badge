EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L power:+BATT #PWR023
U 1 1 5D2956F9
P 3700 1650
F 0 "#PWR023" H 3700 1500 50  0001 C CNN
F 1 "+BATT" H 3715 1823 50  0000 C CNN
F 2 "" H 3700 1650 50  0001 C CNN
F 3 "" H 3700 1650 50  0001 C CNN
	1    3700 1650
	1    0    0    -1  
$EndComp
$Comp
L power:VMEM #PWR027
U 1 1 5D2FEB13
P 7650 1600
F 0 "#PWR027" H 7650 1450 50  0001 C CNN
F 1 "VMEM" H 7665 1773 50  0000 C CNN
F 2 "" H 7650 1600 50  0001 C CNN
F 3 "" H 7650 1600 50  0001 C CNN
	1    7650 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:Polyfuse F1
U 1 1 5D3009B0
P 4650 1950
F 0 "F1" V 4425 1950 50  0000 C CNN
F 1 "Polyfuse" V 4516 1950 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric" H 4700 1750 50  0001 L CNN
F 3 "~" H 4650 1950 50  0001 C CNN
	1    4650 1950
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 5D30313B
P 4200 1950
F 0 "SW1" H 4200 2185 50  0000 C CNN
F 1 "SW_SPST" H 4200 2094 50  0000 C CNN
F 2 "Digikey:Switch_Slide_JS202011SCQN" H 4200 1950 50  0001 C CNN
F 3 "~" H 4200 1950 50  0001 C CNN
	1    4200 1950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4400 1950 4500 1950
$Comp
L power:+VSW #PWR024
U 1 1 5D305A98
P 5000 1650
F 0 "#PWR024" H 5000 1500 50  0001 C CNN
F 1 "+VSW" H 5015 1823 50  0000 C CNN
F 2 "" H 5000 1650 50  0001 C CNN
F 3 "" H 5000 1650 50  0001 C CNN
	1    5000 1650
	1    0    0    -1  
$EndComp
Text Notes 1400 1250 0    50   ~ 0
Adafruit LiPo Charger Module\nHas built-in connection to battery 1S Lipo\nApprox. 3-4V operating voltage supplied to WHOLE SYSTEM.
Wire Wire Line
	3700 1950 4000 1950
Wire Wire Line
	4800 1950 5000 1950
Text Notes 600  850  0    50   ~ 0
Charger module receives power from USB, either Micro LiPo charger or Teensy LC.\nRest of the the system is only powered from the LiPo.\nLiPo must be connected to operate.
Text GLabel 1700 1600 0    50   Input ~ 0
V+USB
$Comp
L power:GNDD #PWR025
U 1 1 5D31E05B
P 5000 2650
F 0 "#PWR025" H 5000 2400 50  0001 C CNN
F 1 "GNDD" H 5004 2495 50  0000 C CNN
F 2 "" H 5000 2650 50  0001 C CNN
F 3 "" H 5000 2650 50  0001 C CNN
	1    5000 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2550 2400 2550
$Comp
L CORE_64_LIBRARY:Micro_LiPo_Charger U1
U 1 1 5D30894A
P 1700 2100
F 0 "U1" H 1758 2425 50  0000 C CNN
F 1 "Micro_LiPo_Charger" H 1758 2334 50  0000 C CNN
F 2 "Core_Memory_8x8_Array:Micro_LiPo_Charger" H 1700 2100 50  0001 C CNN
F 3 "" H 1700 2100 50  0001 C CNN
	1    1700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2000 2150 2000
Wire Wire Line
	2000 2100 2250 2100
Wire Wire Line
	2250 2100 2250 2200
Wire Wire Line
	2250 2200 2000 2200
Connection ~ 2250 2200
$Comp
L power:-BATT #PWR022
U 1 1 5D30A5B6
P 2400 2800
F 0 "#PWR022" H 2400 2650 50  0001 C CNN
F 1 "-BATT" H 2415 2973 50  0000 C CNN
F 2 "" H 2400 2800 50  0001 C CNN
F 3 "" H 2400 2800 50  0001 C CNN
	1    2400 2800
	-1   0    0    1   
$EndComp
$Comp
L power:+BATT #PWR021
U 1 1 5D30AA43
P 2400 1700
F 0 "#PWR021" H 2400 1550 50  0001 C CNN
F 1 "+BATT" H 2415 1873 50  0000 C CNN
F 2 "" H 2400 1700 50  0001 C CNN
F 3 "" H 2400 1700 50  0001 C CNN
	1    2400 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2300 2400 2300
Wire Wire Line
	2400 2300 2400 1750
Text Notes 1900 3200 0    50   ~ 0
STAR GROUND EVERYTHING TO -BATT
Text GLabel 6150 1900 1    50   Input ~ 0
WRITE_ENABLE
Wire Wire Line
	7650 1650 7650 1600
Text Notes 1350 3950 0    50   ~ 0
IN: V+USB (5V) into Micro LiPo Charger circuit to charge 1S battery\nOUT: as +BATT and to onboard connector 1S battery
Text Notes 600  3400 0    50   ~ 0
POWER FLOW:
Text Notes 600  3650 0    50   ~ 0
IN: From computer USB 5V into Teensy LC module board (jumper cut on bottom of MCU onboard),\nOUT: V+USB and -BATT, and +3V3
Text Notes 7300 3650 0    50   ~ 0
IN: +VSW\nOUT: VMEM to cores controlled by WRITE_ENABLE
Wire Wire Line
	2250 2550 2400 2550
Wire Wire Line
	2400 2550 2400 2800
Wire Wire Line
	1700 1600 1800 1600
Wire Wire Line
	2150 2000 2150 1600
Connection ~ 2400 2550
Wire Wire Line
	5000 2650 5000 2550
Text Notes 4550 3050 0    50   ~ 0
DIGITAL LOGIC GROUND
Text Notes 7300 3050 0    50   ~ 0
CORE POWER GROUND
Wire Wire Line
	7250 2450 7250 2350
Wire Wire Line
	2400 2450 2400 2550
Wire Wire Line
	2250 2200 2250 2550
$Comp
L power:+VSW #PWR026
U 1 1 5D3925E7
P 6750 1600
F 0 "#PWR026" H 6750 1450 50  0001 C CNN
F 1 "+VSW" H 6765 1773 50  0000 C CNN
F 2 "" H 6750 1600 50  0001 C CNN
F 3 "" H 6750 1600 50  0001 C CNN
	1    6750 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2450 7250 2450
Wire Wire Line
	6750 1600 6750 1650
Wire Wire Line
	6750 1650 7650 1650
Text Notes 4500 3650 0    50   ~ 0
IN: +BATT (3.7/4.2V) Battery is switched and fused\nOUT: +VSW\n
$Comp
L Digikey-Transistors:MMBT4401LT1G Q?
U 1 1 5D35C3C6
P 7150 2150
AR Path="/5D35C3C6" Ref="Q?"  Part="1" 
AR Path="/5D254AE8/5D35C3C6" Ref="Q21"  Part="1" 
F 0 "Q21" H 7338 2203 60  0000 L CNN
F 1 "MMBT4401LT1G" H 7338 2097 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 7350 2350 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 7350 2450 60  0001 L CNN
F 4 "MMBT4401LT1GOSCT-ND" H 7350 2550 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4401LT1G" H 7350 2650 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7350 2750 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 7350 2850 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 7350 2950 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4401LT1G/MMBT4401LT1GOSCT-ND/1139819" H 7350 3050 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SOT23" H 7350 3150 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 7350 3250 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7350 3350 60  0001 L CNN "Status"
	1    7150 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1800 7250 1950
$Comp
L Device:R R?
U 1 1 5D35C3CF
P 6650 2150
AR Path="/5D35C3CF" Ref="R?"  Part="1" 
AR Path="/5D254AE8/5D35C3CF" Ref="R27"  Part="1" 
F 0 "R27" V 6443 2150 50  0000 C CNN
F 1 "220" V 6534 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6580 2150 50  0001 C CNN
F 3 "~" H 6650 2150 50  0001 C CNN
	1    6650 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	6800 2150 6950 2150
$Comp
L power:GNDPWR #PWR?
U 1 1 5D35C3D6
P 9500 2000
AR Path="/5D35C3D6" Ref="#PWR?"  Part="1" 
AR Path="/5D254AE8/5D35C3D6" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 9500 1800 50  0001 C CNN
F 1 "GNDPWR" H 9504 1846 50  0000 C CNN
F 2 "" H 9500 1950 50  0001 C CNN
F 3 "" H 9500 1950 50  0001 C CNN
	1    9500 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1800 8500 1800
Wire Wire Line
	6150 2150 6500 2150
Wire Wire Line
	6150 1900 6150 2150
Text Notes 7300 1300 0    50   ~ 0
Core Memory Power
Text Notes 4550 1250 0    50   ~ 0
MCU, LED Array, I2C
$Comp
L Connector:TestPoint TP1
U 1 1 5D48B700
P 1800 1550
F 0 "TP1" H 1858 1668 50  0000 L CNN
F 1 "V+USB" H 1858 1577 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 2000 1550 50  0001 C CNN
F 3 "~" H 2000 1550 50  0001 C CNN
	1    1800 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1550 1800 1600
Connection ~ 1800 1600
Wire Wire Line
	1800 1600 2150 1600
$Comp
L Connector:TestPoint TP3
U 1 1 5D48C4DD
P 2750 1750
F 0 "TP3" H 2808 1868 50  0000 L CNN
F 1 "+BATT" H 2808 1777 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 2950 1750 50  0001 C CNN
F 3 "~" H 2950 1750 50  0001 C CNN
	1    2750 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1750 2750 1750
Connection ~ 2400 1750
Wire Wire Line
	2400 1750 2400 1700
$Comp
L Connector:TestPoint TP4
U 1 1 5D48D068
P 2750 2800
F 0 "TP4" H 2808 2918 50  0000 L CNN
F 1 "-BATT" H 2808 2827 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 2950 2800 50  0001 C CNN
F 3 "~" H 2950 2800 50  0001 C CNN
	1    2750 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2800 2400 2800
Connection ~ 2400 2800
$Comp
L Connector:TestPoint TP5
U 1 1 5D48E646
P 5350 1700
F 0 "TP5" H 5408 1818 50  0000 L CNN
F 1 "+VSW" H 5408 1727 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 5550 1700 50  0001 C CNN
F 3 "~" H 5550 1700 50  0001 C CNN
	1    5350 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1950 5350 1950
Wire Wire Line
	5350 1950 5350 1700
Connection ~ 5000 1950
$Comp
L Connector:TestPoint TP6
U 1 1 5D48F2A7
P 8050 1550
F 0 "TP6" H 8108 1668 50  0000 L CNN
F 1 "VMEM" H 8108 1577 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 8250 1550 50  0001 C CNN
F 3 "~" H 8250 1550 50  0001 C CNN
	1    8050 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1650 8050 1650
Wire Wire Line
	8050 1650 8050 1550
Connection ~ 7650 1650
Wire Wire Line
	9500 2000 9500 1800
Wire Wire Line
	3700 1950 3700 1650
Wire Wire Line
	5000 1650 5000 1950
$Comp
L Connector:TestPoint TP2
U 1 1 5D542466
P 1850 2750
F 0 "TP2" H 1908 2868 50  0000 L CNN
F 1 "V-USB" H 1908 2777 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 2050 2750 50  0001 C CNN
F 3 "~" H 2050 2750 50  0001 C CNN
	1    1850 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2750 1850 2800
Wire Wire Line
	1850 2800 2400 2800
$Comp
L Device:R R?
U 1 1 5D4B5807
P 8950 1800
AR Path="/5D4B5807" Ref="R?"  Part="1" 
AR Path="/5D254AE8/5D4B5807" Ref="R43"  Part="1" 
F 0 "R43" V 8743 1800 50  0000 C CNN
F 1 "0" V 8834 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8880 1800 50  0001 C CNN
F 3 "~" H 8950 1800 50  0001 C CNN
	1    8950 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 1800 9350 1800
Text Notes 8500 1250 0    50   ~ 0
All core power flows to ground through this resistor.\nCan this replace all of the others?\nAt least it can be used to measure current.\nCCL = Core Current Lowside Measurement\nCCH = Core Current Highside Measurement
$Comp
L Connector:TestPoint TP18
U 1 1 5D4B94F7
P 8500 1700
F 0 "TP18" H 8558 1818 50  0000 L CNN
F 1 "CCL" H 8558 1727 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 8700 1700 50  0001 C CNN
F 3 "~" H 8700 1700 50  0001 C CNN
	1    8500 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP19
U 1 1 5D4B9C69
P 9350 1700
F 0 "TP19" H 9408 1818 50  0000 L CNN
F 1 "CCH" H 9408 1727 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 9550 1700 50  0001 C CNN
F 3 "~" H 9550 1700 50  0001 C CNN
	1    9350 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1700 9350 1800
Connection ~ 9350 1800
Wire Wire Line
	9350 1800 9500 1800
Wire Wire Line
	8500 1700 8500 1800
Connection ~ 8500 1800
Wire Wire Line
	8500 1800 8800 1800
$EndSCHEMATC
