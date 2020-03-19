EESchema Schematic File Version 4
LIBS:Interactive Core Memory Badge (Logic) v0.3-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "Core 64 - Interactive Core Memory Badge (Logic)"
Date "2020-03-15"
Rev "0.3"
Comp "Andy Geppert - Machine Ideas, LLC"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+BATT #PWR0101
U 1 1 5D2956F9
P 3700 1650
F 0 "#PWR0101" H 3700 1500 50  0001 C CNN
F 1 "+BATT" H 3715 1823 50  0000 C CNN
F 2 "" H 3700 1650 50  0001 C CNN
F 3 "" H 3700 1650 50  0001 C CNN
	1    3700 1650
	1    0    0    -1  
$EndComp
$Comp
L power:VMEM #PWR0102
U 1 1 5D2FEB13
P 8750 1600
F 0 "#PWR0102" H 8750 1450 50  0001 C CNN
F 1 "VMEM" H 8765 1773 50  0000 C CNN
F 2 "" H 8750 1600 50  0001 C CNN
F 3 "" H 8750 1600 50  0001 C CNN
	1    8750 1600
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
Wire Wire Line
	4400 1950 4500 1950
$Comp
L power:+VSW #PWR0103
U 1 1 5D305A98
P 6400 1650
F 0 "#PWR0103" H 6400 1500 50  0001 C CNN
F 1 "+VSW" H 6415 1823 50  0000 C CNN
F 2 "" H 6400 1650 50  0001 C CNN
F 3 "" H 6400 1650 50  0001 C CNN
	1    6400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2050 4000 2050
Wire Wire Line
	6200 1950 6400 1950
Text Notes 600  850  0    50   ~ 0
Power from USB or Battery\n* May not need to cut the jumper any more now???
Text GLabel 1700 1600 0    50   Input ~ 0
V+USB
$Comp
L power:GNDD #PWR0104
U 1 1 5D31E05B
P 5000 2650
F 0 "#PWR0104" H 5000 2400 50  0001 C CNN
F 1 "GNDD" H 5004 2495 50  0000 C CNN
F 2 "" H 5000 2650 50  0001 C CNN
F 3 "" H 5000 2650 50  0001 C CNN
	1    5000 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2550 4000 2550
$Comp
L power:-BATT #PWR0105
U 1 1 5D30A5B6
P 1450 2850
F 0 "#PWR0105" H 1450 2700 50  0001 C CNN
F 1 "-BATT" H 1465 3023 50  0000 C CNN
F 2 "" H 1450 2850 50  0001 C CNN
F 3 "" H 1450 2850 50  0001 C CNN
	1    1450 2850
	-1   0    0    1   
$EndComp
Text Notes 1900 3200 0    50   ~ 0
STAR GROUND EVERYTHING TO -BATT
Text GLabel 7250 1900 1    50   Input ~ 0
WRITE_ENABLE
Wire Wire Line
	8750 1650 8750 1600
Text Notes 1350 3950 0    50   ~ 0
IN: V+USB (5V) into Micro LiPo Charger circuit to charge 1S battery\nOUT: as +BATT and to onboard connector 1S battery
Text Notes 600  3400 0    50   ~ 0
POWER FLOW:
Text Notes 600  3650 0    50   ~ 0
IN: From computer USB 5V into Teensy LC module board (jumper cut on bottom of MCU onboard),\nOUT: V+USB and -BATT, and +3V3
Text Notes 7300 3650 0    50   ~ 0
IN: +VSW\nOUT: VMEM to cores controlled by WRITE_ENABLE
Wire Wire Line
	1450 2550 1450 2850
Wire Wire Line
	1700 1600 1800 1600
Wire Wire Line
	5000 2650 5000 2550
Text Notes 4550 3050 0    50   ~ 0
DIGITAL LOGIC GROUND
Text Notes 7300 3050 0    50   ~ 0
CORE POWER GROUND
Wire Wire Line
	8350 2450 8350 2350
Wire Wire Line
	4000 2450 4000 2550
$Comp
L power:+VSW #PWR0107
U 1 1 5D3925E7
P 7850 1600
F 0 "#PWR0107" H 7850 1450 50  0001 C CNN
F 1 "+VSW" H 7865 1773 50  0000 C CNN
F 2 "" H 7850 1600 50  0001 C CNN
F 3 "" H 7850 1600 50  0001 C CNN
	1    7850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2450 5900 2450
Wire Wire Line
	7850 1600 7850 1650
Wire Wire Line
	7850 1650 8750 1650
Text Notes 4500 3650 0    50   ~ 0
IN: +BATT (3.7/4.2V) Battery is switched and fused\nOUT: +VSW\n
$Comp
L Digikey-Transistors:MMBT4401LT1G Q?
U 1 1 5D35C3C6
P 8250 2150
AR Path="/5D35C3C6" Ref="Q?"  Part="1" 
AR Path="/5D254AE8/5D35C3C6" Ref="Q21"  Part="1" 
F 0 "Q21" H 8438 2203 60  0000 L CNN
F 1 "MMBT4401LT1G" H 8438 2097 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 8450 2350 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 8450 2450 60  0001 L CNN
F 4 "MMBT4401LT1GOSCT-ND" H 8450 2550 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4401LT1G" H 8450 2650 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 8450 2750 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 8450 2850 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 8450 2950 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4401LT1G/MMBT4401LT1GOSCT-ND/1139819" H 8450 3050 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SOT23" H 8450 3150 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 8450 3250 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8450 3350 60  0001 L CNN "Status"
	1    8250 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1800 8350 1950
$Comp
L Device:R R?
U 1 1 5D35C3CF
P 7750 2150
AR Path="/5D35C3CF" Ref="R?"  Part="1" 
AR Path="/5D254AE8/5D35C3CF" Ref="R27"  Part="1" 
F 0 "R27" V 7543 2150 50  0000 C CNN
F 1 "470" V 7634 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7680 2150 50  0001 C CNN
F 3 "~" H 7750 2150 50  0001 C CNN
	1    7750 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 2150 8050 2150
$Comp
L power:GNDPWR #PWR?
U 1 1 5D35C3D6
P 10600 2000
AR Path="/5D35C3D6" Ref="#PWR?"  Part="1" 
AR Path="/5D254AE8/5D35C3D6" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 10600 1800 50  0001 C CNN
F 1 "GNDPWR" H 10604 1846 50  0000 C CNN
F 2 "" H 10600 1950 50  0001 C CNN
F 3 "" H 10600 1950 50  0001 C CNN
	1    10600 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1800 9600 1800
Wire Wire Line
	7250 2150 7600 2150
Wire Wire Line
	7250 1900 7250 2150
Text Notes 8400 1300 0    50   ~ 0
Core Memory Power
Text Notes 5950 1250 0    50   ~ 0
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
P 3100 1700
F 0 "TP3" H 3150 1900 50  0000 L CNN
F 1 "+BATT" H 3150 1800 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 3300 1700 50  0001 C CNN
F 3 "~" H 3300 1700 50  0001 C CNN
	1    3100 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1700 3700 1700
$Comp
L Connector:TestPoint TP4
U 1 1 5D48D068
P 1800 2850
F 0 "TP4" H 1858 2968 50  0000 L CNN
F 1 "-BATT" H 1858 2877 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 2000 2850 50  0001 C CNN
F 3 "~" H 2000 2850 50  0001 C CNN
	1    1800 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2850 1450 2850
Connection ~ 1450 2850
$Comp
L Connector:TestPoint TP5
U 1 1 5D48E646
P 6750 1700
F 0 "TP5" H 6808 1818 50  0000 L CNN
F 1 "+VSW" H 6808 1727 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 6950 1700 50  0001 C CNN
F 3 "~" H 6950 1700 50  0001 C CNN
	1    6750 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1950 6750 1950
Wire Wire Line
	6750 1950 6750 1700
Connection ~ 6400 1950
$Comp
L Connector:TestPoint TP6
U 1 1 5D48F2A7
P 9150 1550
F 0 "TP6" H 9208 1668 50  0000 L CNN
F 1 "VMEM" H 9208 1577 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 9350 1550 50  0001 C CNN
F 3 "~" H 9350 1550 50  0001 C CNN
	1    9150 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 1650 9150 1650
Wire Wire Line
	9150 1650 9150 1550
Connection ~ 8750 1650
Wire Wire Line
	10600 2000 10600 1800
Wire Wire Line
	3700 2050 3700 1700
Wire Wire Line
	6400 1650 6400 1950
$Comp
L Connector:TestPoint TP2
U 1 1 5D542466
P 900 2800
F 0 "TP2" H 958 2918 50  0000 L CNN
F 1 "V-USB" H 958 2827 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 1100 2800 50  0001 C CNN
F 3 "~" H 1100 2800 50  0001 C CNN
	1    900  2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  2800 900  2850
Wire Wire Line
	900  2850 1450 2850
$Comp
L Device:R R?
U 1 1 5D4B5807
P 10050 1800
AR Path="/5D4B5807" Ref="R?"  Part="1" 
AR Path="/5D254AE8/5D4B5807" Ref="R43"  Part="1" 
F 0 "R43" V 9843 1800 50  0000 C CNN
F 1 "0.01" V 9934 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9980 1800 50  0001 C CNN
F 3 "~" H 10050 1800 50  0001 C CNN
	1    10050 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	10200 1800 10450 1800
Text Notes 8950 1050 0    50   ~ 0
All core power flows to ground through this resistor.\nCan this replace all of the others?\nAt least it can be used to measure current.\nCCL = Core Current Lowside Measurement\nCCH = Core Current Highside Measurement
$Comp
L Connector:TestPoint TP7
U 1 1 5D4B94F7
P 9600 1700
F 0 "TP7" H 9658 1818 50  0000 L CNN
F 1 "CCL" H 9658 1727 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 9800 1700 50  0001 C CNN
F 3 "~" H 9800 1700 50  0001 C CNN
	1    9600 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 5D4B9C69
P 10450 1700
F 0 "TP8" H 10508 1818 50  0000 L CNN
F 1 "CCH" H 10508 1727 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 10650 1700 50  0001 C CNN
F 3 "~" H 10650 1700 50  0001 C CNN
	1    10450 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 1700 10450 1800
Connection ~ 10450 1800
Wire Wire Line
	10450 1800 10600 1800
Wire Wire Line
	9600 1700 9600 1800
Connection ~ 9600 1800
Wire Wire Line
	9600 1800 9900 1800
$Comp
L Switch:SW_DPDT_x2 SW1
U 1 1 5E9AF194
P 4200 1950
F 0 "SW1" H 4200 1621 50  0000 C CNN
F 1 "SW_DPDT_x2" H 4200 1714 50  0000 C CNN
F 2 "Digikey:Switch_Slide_JS202011SCQN" H 4200 1950 50  0001 C CNN
F 3 "~" H 4200 1950 50  0001 C CNN
	1    4200 1950
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Small D13
U 1 1 5E9B647B
P 2450 1850
F 0 "D13" H 2450 1750 50  0000 C CNN
F 1 "S1M-13-F" H 2450 2000 50  0000 C CNN
F 2 "Digikey:DO-214AC" H 2450 1850 50  0001 C CNN
F 3 "~" H 2450 1850 50  0001 C CNN
	1    2450 1850
	-1   0    0    1   
$EndComp
Text Notes 2250 2200 0    50   ~ 0
1.1V DROP IF USING USB POWER\n(Keep +VSW close to 4V maximum.)
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U?
U 1 1 5E7B5B14
P 5900 1950
F 0 "U?" H 5900 2195 50  0000 C CNN
F 1 "LD1117S33TR_SOT223" H 5900 2102 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 5900 2150 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 6000 1700 50  0001 C CNN
	1    5900 1950
	1    0    0    -1  
$EndComp
Connection ~ 3700 1700
Wire Wire Line
	3700 1700 3700 1650
Wire Wire Line
	5900 2250 5900 2450
Connection ~ 5900 2450
Wire Wire Line
	5900 2450 8350 2450
Text Notes 2600 2750 0    50   ~ 0
Reverse Polarity Protection FET
$Comp
L Transistor_FET:BS870 Q?
U 1 1 5E73C5E5
P 2400 2450
F 0 "Q?" V 2651 2450 50  0000 C CNN
F 1 "BS870" V 2744 2450 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2600 2375 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds11302.pdf" H 2400 2450 50  0001 L CNN
	1    2400 2450
	0    -1   1    0   
$EndComp
Wire Wire Line
	1450 2550 2200 2550
Wire Wire Line
	2600 2550 4000 2550
Connection ~ 4000 2550
Wire Wire Line
	2400 2250 5150 2250
Wire Wire Line
	5150 2250 5150 1950
Wire Wire Line
	5150 1950 4800 1950
Wire Wire Line
	5150 1950 5600 1950
Connection ~ 5150 1950
Wire Wire Line
	2350 1850 2150 1850
Wire Wire Line
	2150 1850 2150 1600
Wire Wire Line
	2550 1850 4000 1850
$EndSCHEMATC
