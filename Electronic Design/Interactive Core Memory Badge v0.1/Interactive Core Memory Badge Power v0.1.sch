EESchema Schematic File Version 4
LIBS:Interactive Core Memory Badge v0.1-cache
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
P 3700 1700
F 0 "#PWR023" H 3700 1550 50  0001 C CNN
F 1 "+BATT" H 3715 1873 50  0000 C CNN
F 2 "" H 3700 1700 50  0001 C CNN
F 3 "" H 3700 1700 50  0001 C CNN
	1    3700 1700
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
P 4650 1700
F 0 "F1" V 4425 1700 50  0000 C CNN
F 1 "Polyfuse" V 4516 1700 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric" H 4700 1500 50  0001 L CNN
F 3 "~" H 4650 1700 50  0001 C CNN
	1    4650 1700
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 5D30313B
P 4200 1700
F 0 "SW1" H 4200 1935 50  0000 C CNN
F 1 "SW_SPST" H 4200 1844 50  0000 C CNN
F 2 "Digikey:Switch_Slide_JS202011SCQN" H 4200 1700 50  0001 C CNN
F 3 "~" H 4200 1700 50  0001 C CNN
	1    4200 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1700 4500 1700
$Comp
L power:+VSW #PWR024
U 1 1 5D305A98
P 5000 1700
F 0 "#PWR024" H 5000 1550 50  0001 C CNN
F 1 "+VSW" H 5015 1873 50  0000 C CNN
F 2 "" H 5000 1700 50  0001 C CNN
F 3 "" H 5000 1700 50  0001 C CNN
	1    5000 1700
	1    0    0    -1  
$EndComp
Text Notes 1400 1250 0    50   ~ 0
Adafruit LiPo Charger Module\nHas built-in connection to battery 1S Lipo\nApprox. 3-4V operating voltage supplied to WHOLE SYSTEM.
Wire Wire Line
	3700 1700 4000 1700
Wire Wire Line
	4800 1700 5000 1700
Text Notes 600  850  0    50   ~ 0
USB V+ pad to charger module to charge from USB.\nSystem is only powered from the LiPo.\nLiPo must be connected to run.
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
P 2400 2650
F 0 "#PWR022" H 2400 2500 50  0001 C CNN
F 1 "-BATT" H 2415 2823 50  0000 C CNN
F 2 "" H 2400 2650 50  0001 C CNN
F 3 "" H 2400 2650 50  0001 C CNN
	1    2400 2650
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
	2400 2300 2400 1700
Text Notes 1900 3050 0    50   ~ 0
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
IN: From computer USB 5V into Teensy LC module board (jumper cut to MCU onboard),\nOUT: V+USB and -BATT.
Text Notes 7300 3650 0    50   ~ 0
IN: +VSW\nOUT: VMEM to cores controlled by WRITE_ENABLE
Wire Wire Line
	2250 2550 2400 2550
Wire Wire Line
	2400 2550 2400 2650
Wire Wire Line
	1700 1600 2150 1600
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
P 7650 1800
AR Path="/5D35C3D6" Ref="#PWR?"  Part="1" 
AR Path="/5D254AE8/5D35C3D6" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 7650 1600 50  0001 C CNN
F 1 "GNDPWR" H 7654 1646 50  0000 C CNN
F 2 "" H 7650 1750 50  0001 C CNN
F 3 "" H 7650 1750 50  0001 C CNN
	1    7650 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1800 7650 1800
Wire Wire Line
	6150 2150 6500 2150
Wire Wire Line
	6150 1900 6150 2150
Text Notes 7300 1300 0    50   ~ 0
Core Memory Power
Text Notes 4550 1250 0    50   ~ 0
MCU, LED Array, I2C
$EndSCHEMATC
