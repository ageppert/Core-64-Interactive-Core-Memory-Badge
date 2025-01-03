EESchema Schematic File Version 4
LIBS:Core64 LB v0.6-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 5 5
Title "Core 64 - Core Matrix Driver"
Date "2021-11-09"
Rev "0.6"
Comp "Concept and design by Andy Geppert @ www.MachineIdeas.com"
Comment1 "Visit www.Core64.io for information on assembly and optional features."
Comment2 "As released"
Comment3 ""
Comment4 "All non-polarized capacitors are X7R or X5R ceramic unless otherwise noted."
$EndDescr
Wire Wire Line
	2400 4450 2400 4550
Wire Wire Line
	1200 4450 1200 4550
Wire Wire Line
	1200 5450 1700 5450
Wire Wire Line
	1700 5450 1700 5500
Wire Wire Line
	2400 5450 1700 5450
Connection ~ 1700 5450
Text GLabel 3050 4000 1    50   Output ~ 0
XB3
Text GLabel 2900 4000 1    50   Output ~ 0
XB2
Text GLabel 2750 4000 1    50   Output ~ 0
XB1
Text GLabel 2600 4000 1    50   Output ~ 0
XB0
Wire Wire Line
	1500 4750 1500 4900
Connection ~ 2700 5000
Connection ~ 2100 4950
Connection ~ 1500 4900
Text GLabel 900  4200 0    50   Input ~ 0
Q1P
Text GLabel 900  5700 0    50   Input ~ 0
Q1N
Wire Wire Line
	900  5700 950  5700
Wire Wire Line
	900  4200 950  4200
Wire Wire Line
	1250 4200 1400 4200
Wire Wire Line
	1250 5700 1400 5700
$Comp
L power:GNDPWR #PWR0122
U 1 1 5D3B6BDD
P 1700 5900
F 0 "#PWR0122" H 1700 5700 50  0001 C CNN
F 1 "GNDPWR" H 1704 5746 50  0000 C CNN
F 2 "" H 1700 5850 50  0001 C CNN
F 3 "" H 1700 5850 50  0001 C CNN
	1    1700 5900
	1    0    0    -1  
$EndComp
$Comp
L power:VMEM #PWR0125
U 1 1 5D3B6BE3
P 1700 4000
F 0 "#PWR0125" H 1700 3850 50  0001 C CNN
F 1 "VMEM" H 1715 4173 50  0000 C CNN
F 2 "" H 1700 4000 50  0001 C CNN
F 3 "" H 1700 4000 50  0001 C CNN
	1    1700 4000
	1    0    0    -1  
$EndComp
Text GLabel 5200 4000 1    50   Output ~ 0
XB4
Text GLabel 5350 4000 1    50   Output ~ 0
XB5
Text GLabel 5500 4000 1    50   Output ~ 0
XB6
Text GLabel 5650 4000 1    50   Output ~ 0
XB7
$Comp
L power:VMEM #PWR0126
U 1 1 5D3EAB0F
P 3950 1150
F 0 "#PWR0126" H 3950 1000 50  0001 C CNN
F 1 "VMEM" H 3965 1323 50  0000 C CNN
F 2 "" H 3950 1150 50  0001 C CNN
F 3 "" H 3950 1150 50  0001 C CNN
	1    3950 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1400 3650 1400
$Comp
L Device:R R5
U 1 1 5D3EAB23
P 3400 1400
F 0 "R5" V 3193 1400 50  0000 C CNN
F 1 "470" V 3284 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3330 1400 50  0001 C CNN
F 3 "~" H 3400 1400 50  0001 C CNN
F 4 "RES 470 OHM" H 3400 1400 50  0001 C CNN "Description"
F 5 "10%" H 3400 1400 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 3400 1400 50  0001 C CNN "Insert?"
	1    3400 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 1400 3250 1400
Text GLabel 3200 1400 0    50   Input ~ 0
Q3P
Wire Wire Line
	3950 1150 3950 1200
Text GLabel 3250 1750 0    50   Output ~ 0
XT0,4
Text GLabel 5150 1750 0    50   Output ~ 0
XT1,5
Text GLabel 7050 1750 0    50   Output ~ 0
XT2,6
Text GLabel 8950 1750 0    50   Output ~ 0
XT3,7
$Comp
L Digikey-Transistors:MMBT4403LT1G Q5
U 1 1 5D3EAB8E
P 3850 1400
F 0 "Q5" H 4038 1453 60  0000 L CNN
F 1 "MMBT4403LT1G" H 4038 1347 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 4050 1600 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 4050 1700 60  0001 L CNN
F 4 "MMBT4403LT1GOSCT-ND" H 4050 1800 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4403LT1G" H 4050 1900 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4050 2000 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 4050 2100 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 4050 2200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4403LT1G/MMBT4403LT1GOSCT-ND/1139820" H 4050 2300 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS PNP 40V 0.6A SOT23" H 4050 2400 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 4050 2500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4050 2600 60  0001 L CNN "Status"
F 13 "MMBT4403-7-F" H 3850 1400 50  0001 C CNN "MPN(Secondary)"
F 14 "Diodes Inc." H 3850 1400 50  0001 C CNN "Manufacturer(Secondary)"
F 15 "Onsemi" H 3850 1400 50  0001 C CNN "Manufacturer_Name"
F 16 "Yes" H 3850 1400 50  0001 C CNN "Insert?"
	1    3850 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 5D406468
P 3650 1750
F 0 "R21" V 3443 1750 50  0000 C CNN
F 1 "6R8-5%" V 3534 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3580 1750 50  0001 C CNN
F 3 "~" H 3650 1750 50  0001 C CNN
F 4 "RES 6.8 OHM 1/8W 0805" H 3650 1750 50  0001 C CNN "Description"
F 5 "5%" H 3650 1750 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 3650 1750 50  0001 C CNN "Insert?"
	1    3650 1750
	0    1    1    0   
$EndComp
$Comp
L Digikey-Transistors:MMBT4401LT1G Q6
U 1 1 5D3EAB7F
P 3850 2100
F 0 "Q6" H 4038 2153 60  0000 L CNN
F 1 "MMBT4401LT1G" H 4038 2047 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 4050 2300 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 4050 2400 60  0001 L CNN
F 4 "MMBT4401LT1GOSCT-ND" H 4050 2500 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4401LT1G" H 4050 2600 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4050 2700 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 4050 2800 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 4050 2900 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4401LT1G/MMBT4401LT1GOSCT-ND/1139819" H 4050 3000 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SOT23" H 4050 3100 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 4050 3200 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4050 3300 60  0001 L CNN "Status"
F 13 "MMBT4401-7-F" H 3850 2100 50  0001 C CNN "MPN(Secondary)"
F 14 "Diodes Inc." H 3850 2100 50  0001 C CNN "Manufacturer(Secondary)"
F 15 "Onsemi" H 3850 2100 50  0001 C CNN "Manufacturer_Name"
F 16 "Yes" H 3850 2100 50  0001 C CNN "Insert?"
	1    3850 2100
	1    0    0    -1  
$EndComp
Text GLabel 3200 2100 0    50   Input ~ 0
Q3N
Wire Wire Line
	3200 2100 3250 2100
$Comp
L Device:R R6
U 1 1 5D3EAB1C
P 3400 2100
F 0 "R6" V 3193 2100 50  0000 C CNN
F 1 "470" V 3284 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3330 2100 50  0001 C CNN
F 3 "~" H 3400 2100 50  0001 C CNN
F 4 "RES 470 OHM" H 3400 2100 50  0001 C CNN "Description"
F 5 "10%" H 3400 2100 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 3400 2100 50  0001 C CNN "Insert?"
	1    3400 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 2100 3650 2100
$Comp
L power:GNDPWR #PWR0127
U 1 1 5D3EAB15
P 3950 2350
F 0 "#PWR0127" H 3950 2150 50  0001 C CNN
F 1 "GNDPWR" H 3954 2196 50  0000 C CNN
F 2 "" H 3950 2300 50  0001 C CNN
F 3 "" H 3950 2300 50  0001 C CNN
	1    3950 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1600 3950 1750
Wire Wire Line
	1500 4900 2800 4900
Wire Wire Line
	2100 4950 2850 4950
Wire Wire Line
	2700 5000 2900 5000
Wire Wire Line
	2700 5000 2700 5250
Wire Wire Line
	1500 4900 1500 5250
Wire Wire Line
	2100 4950 2100 5250
Wire Wire Line
	2900 4200 2900 5000
$Comp
L Digikey-Transistors:MMBT4403LT1G Q3
U 1 1 5D5BD2C4
P 4200 4200
F 0 "Q3" H 4388 4253 60  0000 L CNN
F 1 "MMBT4403LT1G" H 4388 4147 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 4400 4400 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 4400 4500 60  0001 L CNN
F 4 "MMBT4403LT1GOSCT-ND" H 4400 4600 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4403LT1G" H 4400 4700 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4400 4800 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 4400 4900 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 4400 5000 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4403LT1G/MMBT4403LT1GOSCT-ND/1139820" H 4400 5100 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS PNP 40V 0.6A SOT23" H 4400 5200 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 4400 5300 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4400 5400 60  0001 L CNN "Status"
F 13 "MMBT4403-7-F" H 4200 4200 50  0001 C CNN "MPN(Secondary)"
F 14 "Diodes Inc." H 4200 4200 50  0001 C CNN "Manufacturer(Secondary)"
F 15 "Onsemi" H 4200 4200 50  0001 C CNN "Manufacturer_Name"
F 16 "Yes" H 4200 4200 50  0001 C CNN "Insert?"
	1    4200 4200
	1    0    0    -1  
$EndComp
$Comp
L Digikey-Transistors:MMBT4401LT1G Q4
U 1 1 5D5BD2D3
P 4200 5700
F 0 "Q4" H 4388 5753 60  0000 L CNN
F 1 "MMBT4401LT1G" H 4388 5647 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 4400 5900 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 4400 6000 60  0001 L CNN
F 4 "MMBT4401LT1GOSCT-ND" H 4400 6100 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4401LT1G" H 4400 6200 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4400 6300 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 4400 6400 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 4400 6500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4401LT1G/MMBT4401LT1GOSCT-ND/1139819" H 4400 6600 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SOT23" H 4400 6700 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 4400 6800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4400 6900 60  0001 L CNN "Status"
F 13 "MMBT4401-7-F" H 4200 5700 50  0001 C CNN "MPN(Secondary)"
F 14 "Diodes Inc." H 4200 5700 50  0001 C CNN "Manufacturer(Secondary)"
F 15 "Onsemi" H 4200 5700 50  0001 C CNN "Manufacturer_Name"
F 16 "Yes" H 4200 5700 50  0001 C CNN "Insert?"
	1    4200 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4450 5000 4550
Wire Wire Line
	3800 4450 3800 4550
Wire Wire Line
	3500 4750 3500 4850
Wire Wire Line
	3800 5450 4300 5450
Wire Wire Line
	4300 5450 4300 5500
Wire Wire Line
	5000 5450 4300 5450
Connection ~ 4300 5450
Connection ~ 3500 4850
Wire Wire Line
	3500 4850 3500 5250
Wire Wire Line
	4100 4750 4100 4900
Wire Wire Line
	4700 4750 4700 4950
Wire Wire Line
	5300 4750 5300 5000
Connection ~ 5300 5000
Connection ~ 4700 4950
Connection ~ 4100 4900
Wire Wire Line
	3500 4850 5350 4850
Text GLabel 3500 4200 0    50   Input ~ 0
Q2P
Text GLabel 3500 5700 0    50   Input ~ 0
Q2N
Wire Wire Line
	3500 5700 3550 5700
Wire Wire Line
	3500 4200 3550 4200
$Comp
L Device:R R3
U 1 1 5D5BD310
P 3700 4200
F 0 "R3" V 3493 4200 50  0000 C CNN
F 1 "470" V 3584 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3630 4200 50  0001 C CNN
F 3 "~" H 3700 4200 50  0001 C CNN
F 4 "RES 470 OHM" H 3700 4200 50  0001 C CNN "Description"
F 5 "10%" H 3700 4200 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 3700 4200 50  0001 C CNN "Insert?"
	1    3700 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 4200 4000 4200
$Comp
L Device:R R4
U 1 1 5D5BD317
P 3700 5700
F 0 "R4" V 3493 5700 50  0000 C CNN
F 1 "470" V 3584 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3630 5700 50  0001 C CNN
F 3 "~" H 3700 5700 50  0001 C CNN
F 4 "RES 470 OHM" H 3700 5700 50  0001 C CNN "Description"
F 5 "10%" H 3700 5700 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 3700 5700 50  0001 C CNN "Insert?"
	1    3700 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 5700 4000 5700
$Comp
L power:GNDPWR #PWR0128
U 1 1 5D5BD31E
P 4300 5900
F 0 "#PWR0128" H 4300 5700 50  0001 C CNN
F 1 "GNDPWR" H 4304 5746 50  0000 C CNN
F 2 "" H 4300 5850 50  0001 C CNN
F 3 "" H 4300 5850 50  0001 C CNN
	1    4300 5900
	1    0    0    -1  
$EndComp
$Comp
L power:VMEM #PWR0129
U 1 1 5D5BD324
P 4300 4000
F 0 "#PWR0129" H 4300 3850 50  0001 C CNN
F 1 "VMEM" H 4315 4173 50  0000 C CNN
F 2 "" H 4300 4000 50  0001 C CNN
F 3 "" H 4300 4000 50  0001 C CNN
	1    4300 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4900 5400 4900
Wire Wire Line
	4700 4950 5450 4950
Wire Wire Line
	5300 5000 5500 5000
Wire Wire Line
	5300 5000 5300 5250
Wire Wire Line
	4100 4900 4100 5250
Wire Wire Line
	4700 4950 4700 5250
Wire Wire Line
	2750 4850 2750 4200
Connection ~ 900  4850
Wire Wire Line
	900  4750 900  4850
Wire Wire Line
	900  4850 2750 4850
Wire Wire Line
	5350 4200 5350 4850
Wire Wire Line
	5400 4100 5400 4900
Wire Wire Line
	5450 4100 5450 4950
Wire Wire Line
	5500 4200 5500 5000
$Comp
L power:VMEM #PWR0130
U 1 1 5D5FAA92
P 5850 1150
F 0 "#PWR0130" H 5850 1000 50  0001 C CNN
F 1 "VMEM" H 5865 1323 50  0000 C CNN
F 2 "" H 5850 1150 50  0001 C CNN
F 3 "" H 5850 1150 50  0001 C CNN
	1    5850 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1400 5550 1400
$Comp
L Device:R R7
U 1 1 5D5FAA99
P 5300 1400
F 0 "R7" V 5093 1400 50  0000 C CNN
F 1 "470" V 5184 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5230 1400 50  0001 C CNN
F 3 "~" H 5300 1400 50  0001 C CNN
F 4 "RES 470 OHM" H 5300 1400 50  0001 C CNN "Description"
F 5 "10%" H 5300 1400 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 5300 1400 50  0001 C CNN "Insert?"
	1    5300 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 1400 5150 1400
Text GLabel 5100 1400 0    50   Input ~ 0
Q4P
Wire Wire Line
	5850 1150 5850 1200
$Comp
L Device:R R22
U 1 1 5D5FAAB1
P 5550 1750
F 0 "R22" V 5343 1750 50  0000 C CNN
F 1 "6R8-5%" V 5434 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5480 1750 50  0001 C CNN
F 3 "~" H 5550 1750 50  0001 C CNN
F 4 "RES 6.8 OHM 1/8W 0805" H 5550 1750 50  0001 C CNN "Description"
F 5 "5%" H 5550 1750 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 5550 1750 50  0001 C CNN "Insert?"
	1    5550 1750
	0    -1   1    0   
$EndComp
Text GLabel 5100 2100 0    50   Input ~ 0
Q4N
Wire Wire Line
	5100 2100 5150 2100
$Comp
L Device:R R8
U 1 1 5D5FAAC8
P 5300 2100
F 0 "R8" V 5093 2100 50  0000 C CNN
F 1 "470" V 5184 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5230 2100 50  0001 C CNN
F 3 "~" H 5300 2100 50  0001 C CNN
F 4 "RES 470 OHM" H 5300 2100 50  0001 C CNN "Description"
F 5 "10%" H 5300 2100 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 5300 2100 50  0001 C CNN "Insert?"
	1    5300 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 2100 5550 2100
$Comp
L power:GNDPWR #PWR0131
U 1 1 5D5FAACF
P 5850 2300
F 0 "#PWR0131" H 5850 2100 50  0001 C CNN
F 1 "GNDPWR" H 5854 2146 50  0000 C CNN
F 2 "" H 5850 2250 50  0001 C CNN
F 3 "" H 5850 2250 50  0001 C CNN
	1    5850 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1600 5850 1750
Wire Wire Line
	5700 1750 5850 1750
Connection ~ 5850 1750
Wire Wire Line
	5850 1750 5850 1900
$Comp
L power:VMEM #PWR0132
U 1 1 5D63435D
P 7750 1150
F 0 "#PWR0132" H 7750 1000 50  0001 C CNN
F 1 "VMEM" H 7765 1323 50  0000 C CNN
F 2 "" H 7750 1150 50  0001 C CNN
F 3 "" H 7750 1150 50  0001 C CNN
	1    7750 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1400 7450 1400
$Comp
L Device:R R9
U 1 1 5D634364
P 7200 1400
F 0 "R9" V 6993 1400 50  0000 C CNN
F 1 "470" V 7084 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7130 1400 50  0001 C CNN
F 3 "~" H 7200 1400 50  0001 C CNN
F 4 "RES 470 OHM" H 7200 1400 50  0001 C CNN "Description"
F 5 "10%" H 7200 1400 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 7200 1400 50  0001 C CNN "Insert?"
	1    7200 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 1400 7050 1400
Text GLabel 7000 1400 0    50   Input ~ 0
Q5P
Wire Wire Line
	7750 1150 7750 1200
$Comp
L Digikey-Transistors:MMBT4403LT1G Q9
U 1 1 5D634376
P 7650 1400
F 0 "Q9" H 7838 1453 60  0000 L CNN
F 1 "MMBT4403LT1G" H 7838 1347 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 7850 1600 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 7850 1700 60  0001 L CNN
F 4 "MMBT4403LT1GOSCT-ND" H 7850 1800 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4403LT1G" H 7850 1900 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7850 2000 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 7850 2100 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 7850 2200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4403LT1G/MMBT4403LT1GOSCT-ND/1139820" H 7850 2300 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS PNP 40V 0.6A SOT23" H 7850 2400 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 7850 2500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7850 2600 60  0001 L CNN "Status"
F 13 "MMBT4403-7-F" H 7650 1400 50  0001 C CNN "MPN(Secondary)"
F 14 "Diodes Inc." H 7650 1400 50  0001 C CNN "Manufacturer(Secondary)"
F 15 "Onsemi" H 7650 1400 50  0001 C CNN "Manufacturer_Name"
F 16 "Yes" H 7650 1400 50  0001 C CNN "Insert?"
	1    7650 1400
	1    0    0    -1  
$EndComp
$Comp
L Digikey-Transistors:MMBT4401LT1G Q10
U 1 1 5D63438B
P 7650 2100
F 0 "Q10" H 7838 2153 60  0000 L CNN
F 1 "MMBT4401LT1G" H 7838 2047 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 7850 2300 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 7850 2400 60  0001 L CNN
F 4 "MMBT4401LT1GOSCT-ND" H 7850 2500 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4401LT1G" H 7850 2600 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7850 2700 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 7850 2800 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 7850 2900 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4401LT1G/MMBT4401LT1GOSCT-ND/1139819" H 7850 3000 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SOT23" H 7850 3100 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 7850 3200 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7850 3300 60  0001 L CNN "Status"
F 13 "MMBT4401-7-F" H 7650 2100 50  0001 C CNN "MPN(Secondary)"
F 14 "Diodes Inc." H 7650 2100 50  0001 C CNN "Manufacturer(Secondary)"
F 15 "Onsemi" H 7650 2100 50  0001 C CNN "Manufacturer_Name"
F 16 "Yes" H 7650 2100 50  0001 C CNN "Insert?"
	1    7650 2100
	1    0    0    -1  
$EndComp
Text GLabel 7000 2100 0    50   Input ~ 0
Q5N
Wire Wire Line
	7000 2100 7050 2100
$Comp
L Device:R R10
U 1 1 5D634393
P 7200 2100
F 0 "R10" V 6993 2100 50  0000 C CNN
F 1 "470" V 7084 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7130 2100 50  0001 C CNN
F 3 "~" H 7200 2100 50  0001 C CNN
F 4 "RES 470 OHM" H 7200 2100 50  0001 C CNN "Description"
F 5 "10%" H 7200 2100 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 7200 2100 50  0001 C CNN "Insert?"
	1    7200 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 2100 7450 2100
$Comp
L power:GNDPWR #PWR0133
U 1 1 5D63439A
P 7750 2300
F 0 "#PWR0133" H 7750 2100 50  0001 C CNN
F 1 "GNDPWR" H 7754 2146 50  0000 C CNN
F 2 "" H 7750 2250 50  0001 C CNN
F 3 "" H 7750 2250 50  0001 C CNN
	1    7750 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1600 7750 1750
Wire Wire Line
	7600 1750 7750 1750
Connection ~ 7750 1750
Wire Wire Line
	7750 1750 7750 1900
$Comp
L power:VMEM #PWR0134
U 1 1 5D6343A4
P 9650 1150
F 0 "#PWR0134" H 9650 1000 50  0001 C CNN
F 1 "VMEM" H 9665 1323 50  0000 C CNN
F 2 "" H 9650 1150 50  0001 C CNN
F 3 "" H 9650 1150 50  0001 C CNN
	1    9650 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 1400 9350 1400
$Comp
L Device:R R11
U 1 1 5D6343AB
P 9100 1400
F 0 "R11" V 8893 1400 50  0000 C CNN
F 1 "470" V 8984 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9030 1400 50  0001 C CNN
F 3 "~" H 9100 1400 50  0001 C CNN
F 4 "RES 470 OHM" H 9100 1400 50  0001 C CNN "Description"
F 5 "10%" H 9100 1400 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 9100 1400 50  0001 C CNN "Insert?"
	1    9100 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 1400 8950 1400
Text GLabel 8900 1400 0    50   Input ~ 0
Q6P
Wire Wire Line
	9650 1150 9650 1200
$Comp
L Digikey-Transistors:MMBT4403LT1G Q11
U 1 1 5D6343BD
P 9550 1400
F 0 "Q11" H 9738 1453 60  0000 L CNN
F 1 "MMBT4403LT1G" H 9738 1347 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 9750 1600 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 9750 1700 60  0001 L CNN
F 4 "MMBT4403LT1GOSCT-ND" H 9750 1800 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4403LT1G" H 9750 1900 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9750 2000 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 9750 2100 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 9750 2200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4403LT1G/MMBT4403LT1GOSCT-ND/1139820" H 9750 2300 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS PNP 40V 0.6A SOT23" H 9750 2400 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 9750 2500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9750 2600 60  0001 L CNN "Status"
F 13 "MMBT4403-7-F" H 9550 1400 50  0001 C CNN "MPN(Secondary)"
F 14 "Diodes Inc." H 9550 1400 50  0001 C CNN "Manufacturer(Secondary)"
F 15 "Onsemi" H 9550 1400 50  0001 C CNN "Manufacturer_Name"
F 16 "Yes" H 9550 1400 50  0001 C CNN "Insert?"
	1    9550 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 5D6343C3
P 9350 1750
F 0 "R24" V 9143 1750 50  0000 C CNN
F 1 "6R8-5%" V 9234 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9280 1750 50  0001 C CNN
F 3 "~" H 9350 1750 50  0001 C CNN
F 4 "RES 6.8 OHM 1/8W 0805" H 9350 1750 50  0001 C CNN "Description"
F 5 "5%" H 9350 1750 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 9350 1750 50  0001 C CNN "Insert?"
	1    9350 1750
	0    -1   1    0   
$EndComp
$Comp
L Digikey-Transistors:MMBT4401LT1G Q12
U 1 1 5D6343D2
P 9550 2100
F 0 "Q12" H 9738 2153 60  0000 L CNN
F 1 "MMBT4401LT1G" H 9738 2047 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 9750 2300 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 9750 2400 60  0001 L CNN
F 4 "MMBT4401LT1GOSCT-ND" H 9750 2500 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4401LT1G" H 9750 2600 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9750 2700 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 9750 2800 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 9750 2900 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4401LT1G/MMBT4401LT1GOSCT-ND/1139819" H 9750 3000 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SOT23" H 9750 3100 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 9750 3200 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9750 3300 60  0001 L CNN "Status"
F 13 "MMBT4401-7-F" H 9550 2100 50  0001 C CNN "MPN(Secondary)"
F 14 "Diodes Inc." H 9550 2100 50  0001 C CNN "Manufacturer(Secondary)"
F 15 "Onsemi" H 9550 2100 50  0001 C CNN "Manufacturer_Name"
F 16 "Yes" H 9550 2100 50  0001 C CNN "Insert?"
	1    9550 2100
	1    0    0    -1  
$EndComp
Text GLabel 8900 2100 0    50   Input ~ 0
Q6N
Wire Wire Line
	8900 2100 8950 2100
$Comp
L Device:R R12
U 1 1 5D6343DA
P 9100 2100
F 0 "R12" V 8893 2100 50  0000 C CNN
F 1 "470" V 8984 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9030 2100 50  0001 C CNN
F 3 "~" H 9100 2100 50  0001 C CNN
F 4 "RES 470 OHM" H 9100 2100 50  0001 C CNN "Description"
F 5 "10%" H 9100 2100 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 9100 2100 50  0001 C CNN "Insert?"
	1    9100 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	9250 2100 9350 2100
$Comp
L power:GNDPWR #PWR0135
U 1 1 5D6343E1
P 9650 2300
F 0 "#PWR0135" H 9650 2100 50  0001 C CNN
F 1 "GNDPWR" H 9654 2146 50  0000 C CNN
F 2 "" H 9650 2250 50  0001 C CNN
F 3 "" H 9650 2250 50  0001 C CNN
	1    9650 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1750 9650 1750
Wire Wire Line
	9650 1750 9650 1900
Wire Wire Line
	8950 1750 9200 1750
Wire Wire Line
	7300 1750 7050 1750
$Comp
L Device:R R23
U 1 1 5D63437C
P 7450 1750
F 0 "R23" V 7243 1750 50  0000 C CNN
F 1 "6R8-5%" V 7334 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7380 1750 50  0001 C CNN
F 3 "~" H 7450 1750 50  0001 C CNN
F 4 "RES 6.8 OHM 1/8W 0805" H 7450 1750 50  0001 C CNN "Description"
F 5 "5%" H 7450 1750 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 7450 1750 50  0001 C CNN "Insert?"
	1    7450 1750
	0    -1   1    0   
$EndComp
Wire Wire Line
	5150 1750 5400 1750
Wire Wire Line
	3800 1750 3950 1750
Connection ~ 3950 1750
Wire Wire Line
	3950 1750 3950 1900
Wire Wire Line
	9650 1600 9650 1750
Connection ~ 9650 1750
$Comp
L Digikey-Transistors:MMBT4403LT1G Q13
U 1 1 5D4AA6A4
P 9500 2900
F 0 "Q13" H 9688 2953 60  0000 L CNN
F 1 "MMBT4403LT1G" H 9688 2847 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 9700 3100 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 9700 3200 60  0001 L CNN
F 4 "MMBT4403LT1GOSCT-ND" H 9700 3300 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4403LT1G" H 9700 3400 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9700 3500 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 9700 3600 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 9700 3700 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4403LT1G/MMBT4403LT1GOSCT-ND/1139820" H 9700 3800 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS PNP 40V 0.6A SOT23" H 9700 3900 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 9700 4000 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9700 4100 60  0001 L CNN "Status"
F 13 "MMBT4403-7-F" H 9500 2900 50  0001 C CNN "MPN(Secondary)"
F 14 "Diodes Inc." H 9500 2900 50  0001 C CNN "Manufacturer(Secondary)"
F 15 "Onsemi" H 9500 2900 50  0001 C CNN "Manufacturer_Name"
F 16 "Yes" H 9500 2900 50  0001 C CNN "Insert?"
	1    9500 2900
	-1   0    0    -1  
$EndComp
$Comp
L Digikey-Transistors:MMBT4401LT1G Q14
U 1 1 5D4AA6B3
P 9500 4150
F 0 "Q14" H 9688 4203 60  0000 L CNN
F 1 "MMBT4401LT1G" H 9688 4097 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 9700 4350 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 9700 4450 60  0001 L CNN
F 4 "MMBT4401LT1GOSCT-ND" H 9700 4550 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4401LT1G" H 9700 4650 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9700 4750 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 9700 4850 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 9700 4950 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4401LT1G/MMBT4401LT1GOSCT-ND/1139819" H 9700 5050 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SOT23" H 9700 5150 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 9700 5250 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9700 5350 60  0001 L CNN "Status"
F 13 "MMBT4401-7-F" H 9500 4150 50  0001 C CNN "MPN(Secondary)"
F 14 "Diodes Inc." H 9500 4150 50  0001 C CNN "Manufacturer(Secondary)"
F 15 "Onsemi" H 9500 4150 50  0001 C CNN "Manufacturer_Name"
F 16 "Yes" H 9500 4150 50  0001 C CNN "Insert?"
	1    9500 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9400 3100 9400 3150
Connection ~ 9100 3550
Connection ~ 9700 3450
Text GLabel 10100 2900 2    50   Input ~ 0
Q7P
Text GLabel 10100 4150 2    50   Input ~ 0
Q7N
Wire Wire Line
	10100 4150 10050 4150
Wire Wire Line
	10100 2900 10050 2900
$Comp
L Device:R R13
U 1 1 5D4AA6F0
P 9900 2900
F 0 "R13" V 9693 2900 50  0000 C CNN
F 1 "470" V 9784 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9830 2900 50  0001 C CNN
F 3 "~" H 9900 2900 50  0001 C CNN
F 4 "RES 470 OHM" H 9900 2900 50  0001 C CNN "Description"
F 5 "10%" H 9900 2900 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 9900 2900 50  0001 C CNN "Insert?"
	1    9900 2900
	0    -1   1    0   
$EndComp
Wire Wire Line
	9750 2900 9700 2900
$Comp
L Device:R R14
U 1 1 5D4AA6F7
P 9900 4150
F 0 "R14" V 9693 4150 50  0000 C CNN
F 1 "470" V 9784 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9830 4150 50  0001 C CNN
F 3 "~" H 9900 4150 50  0001 C CNN
F 4 "RES 470 OHM" H 9900 4150 50  0001 C CNN "Description"
F 5 "10%" H 9900 4150 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 9900 4150 50  0001 C CNN "Insert?"
	1    9900 4150
	0    -1   1    0   
$EndComp
Wire Wire Line
	9750 4150 9700 4150
$Comp
L power:GNDPWR #PWR0136
U 1 1 5D4AA6FE
P 9400 4350
F 0 "#PWR0136" H 9400 4150 50  0001 C CNN
F 1 "GNDPWR" H 9404 4196 50  0000 C CNN
F 2 "" H 9400 4300 50  0001 C CNN
F 3 "" H 9400 4300 50  0001 C CNN
	1    9400 4350
	-1   0    0    -1  
$EndComp
$Comp
L power:VMEM #PWR0137
U 1 1 5D4AA704
P 9400 2700
F 0 "#PWR0137" H 9400 2550 50  0001 C CNN
F 1 "VMEM" H 9415 2873 50  0000 C CNN
F 2 "" H 9400 2700 50  0001 C CNN
F 3 "" H 9400 2700 50  0001 C CNN
	1    9400 2700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9100 3550 9100 3750
Wire Wire Line
	9700 3450 9700 3750
Wire Wire Line
	9100 3350 9100 3550
Wire Wire Line
	9700 3350 9700 3450
Text GLabel 6050 3650 0    50   Output ~ 0
YL7
Text GLabel 6050 3550 0    50   Output ~ 0
YL6
Text GLabel 6050 3450 0    50   Output ~ 0
YL5
Text GLabel 6050 3350 0    50   Output ~ 0
YL4
Text GLabel 6050 3250 0    50   Output ~ 0
YL3
Text GLabel 6050 3150 0    50   Output ~ 0
YL2
Text GLabel 6050 2950 0    50   Output ~ 0
YL0
Text GLabel 6050 3050 0    50   Output ~ 0
YL1
$Comp
L Digikey-Transistors:MMBT4403LT1G Q15
U 1 1 5D5F2D8A
P 9500 5050
F 0 "Q15" H 9688 5103 60  0000 L CNN
F 1 "MMBT4403LT1G" H 9688 4997 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 9700 5250 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 9700 5350 60  0001 L CNN
F 4 "MMBT4403LT1GOSCT-ND" H 9700 5450 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4403LT1G" H 9700 5550 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9700 5650 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 9700 5750 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 9700 5850 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4403LT1G/MMBT4403LT1GOSCT-ND/1139820" H 9700 5950 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS PNP 40V 0.6A SOT23" H 9700 6050 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 9700 6150 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9700 6250 60  0001 L CNN "Status"
F 13 "MMBT4403-7-F" H 9500 5050 50  0001 C CNN "MPN(Secondary)"
F 14 "Diodes Inc." H 9500 5050 50  0001 C CNN "Manufacturer(Secondary)"
F 15 "Onsemi" H 9500 5050 50  0001 C CNN "Manufacturer_Name"
F 16 "Yes" H 9500 5050 50  0001 C CNN "Insert?"
	1    9500 5050
	-1   0    0    -1  
$EndComp
$Comp
L Digikey-Transistors:MMBT4401LT1G Q16
U 1 1 5D5F2D99
P 9500 6300
F 0 "Q16" H 9688 6353 60  0000 L CNN
F 1 "MMBT4401LT1G" H 9688 6247 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 9700 6500 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 9700 6600 60  0001 L CNN
F 4 "MMBT4401LT1GOSCT-ND" H 9700 6700 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4401LT1G" H 9700 6800 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9700 6900 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 9700 7000 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 9700 7100 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4401LT1G/MMBT4401LT1GOSCT-ND/1139819" H 9700 7200 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SOT23" H 9700 7300 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 9700 7400 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9700 7500 60  0001 L CNN "Status"
F 13 "MMBT4401-7-F" H 9500 6300 50  0001 C CNN "MPN(Secondary)"
F 14 "Diodes Inc." H 9500 6300 50  0001 C CNN "Manufacturer(Secondary)"
F 15 "Onsemi" H 9500 6300 50  0001 C CNN "Manufacturer_Name"
F 16 "Yes" H 9500 6300 50  0001 C CNN "Insert?"
	1    9500 6300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9400 5250 9400 5300
Connection ~ 9100 5700
Connection ~ 9700 5600
Text GLabel 10100 5050 2    50   Input ~ 0
Q8P
Text GLabel 10100 6300 2    50   Input ~ 0
Q8N
Wire Wire Line
	10100 6300 10050 6300
Wire Wire Line
	10100 5050 10050 5050
$Comp
L Device:R R15
U 1 1 5D5F2DB3
P 9900 5050
F 0 "R15" V 9693 5050 50  0000 C CNN
F 1 "470" V 9784 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9830 5050 50  0001 C CNN
F 3 "~" H 9900 5050 50  0001 C CNN
F 4 "RES 470 OHM" H 9900 5050 50  0001 C CNN "Description"
F 5 "10%" H 9900 5050 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 9900 5050 50  0001 C CNN "Insert?"
	1    9900 5050
	0    -1   1    0   
$EndComp
Wire Wire Line
	9750 5050 9700 5050
$Comp
L Device:R R16
U 1 1 5D5F2DBA
P 9900 6300
F 0 "R16" V 9693 6300 50  0000 C CNN
F 1 "470" V 9784 6300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9830 6300 50  0001 C CNN
F 3 "~" H 9900 6300 50  0001 C CNN
F 4 "RES 470 OHM" H 9900 6300 50  0001 C CNN "Description"
F 5 "10%" H 9900 6300 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 9900 6300 50  0001 C CNN "Insert?"
	1    9900 6300
	0    -1   1    0   
$EndComp
Wire Wire Line
	9750 6300 9700 6300
$Comp
L power:GNDPWR #PWR0138
U 1 1 5D5F2DC1
P 9400 6500
F 0 "#PWR0138" H 9400 6300 50  0001 C CNN
F 1 "GNDPWR" H 9404 6346 50  0000 C CNN
F 2 "" H 9400 6450 50  0001 C CNN
F 3 "" H 9400 6450 50  0001 C CNN
	1    9400 6500
	-1   0    0    -1  
$EndComp
$Comp
L power:VMEM #PWR0139
U 1 1 5D5F2DC7
P 9400 4850
F 0 "#PWR0139" H 9400 4700 50  0001 C CNN
F 1 "VMEM" H 9415 5023 50  0000 C CNN
F 2 "" H 9400 4850 50  0001 C CNN
F 3 "" H 9400 4850 50  0001 C CNN
	1    9400 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9100 5700 9100 5900
Wire Wire Line
	9700 5600 9700 5900
Wire Wire Line
	9100 5500 9100 5700
Wire Wire Line
	9700 5500 9700 5600
$Comp
L power:VMEM #PWR0140
U 1 1 5D6B822A
P 7200 3750
F 0 "#PWR0140" H 7200 3600 50  0001 C CNN
F 1 "VMEM" H 7215 3923 50  0000 C CNN
F 2 "" H 7200 3750 50  0001 C CNN
F 3 "" H 7200 3750 50  0001 C CNN
	1    7200 3750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7600 4000 7500 4000
$Comp
L Device:R R17
U 1 1 5D6B8231
P 7750 4000
F 0 "R17" V 7543 4000 50  0000 C CNN
F 1 "470" V 7634 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7680 4000 50  0001 C CNN
F 3 "~" H 7750 4000 50  0001 C CNN
F 4 "RES 470 OHM" H 7750 4000 50  0001 C CNN "Description"
F 5 "10%" H 7750 4000 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 7750 4000 50  0001 C CNN "Insert?"
	1    7750 4000
	0    -1   1    0   
$EndComp
Wire Wire Line
	7950 4000 7900 4000
Text GLabel 7950 4000 2    50   Input ~ 0
Q9P
Wire Wire Line
	7200 3750 7200 3800
$Comp
L Digikey-Transistors:MMBT4403LT1G Q17
U 1 1 5D6B8243
P 7300 4000
F 0 "Q17" H 7488 4053 60  0000 L CNN
F 1 "MMBT4403LT1G" H 7488 3947 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 7500 4200 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 7500 4300 60  0001 L CNN
F 4 "MMBT4403LT1GOSCT-ND" H 7500 4400 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4403LT1G" H 7500 4500 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7500 4600 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 7500 4700 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 7500 4800 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4403LT1G/MMBT4403LT1GOSCT-ND/1139820" H 7500 4900 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS PNP 40V 0.6A SOT23" H 7500 5000 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 7500 5100 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7500 5200 60  0001 L CNN "Status"
F 13 "MMBT4403-7-F" H 7300 4000 50  0001 C CNN "MPN(Secondary)"
F 14 "Diodes Inc." H 7300 4000 50  0001 C CNN "Manufacturer(Secondary)"
F 15 "Onsemi" H 7300 4000 50  0001 C CNN "Manufacturer_Name"
F 16 "Yes" H 7300 4000 50  0001 C CNN "Insert?"
	1    7300 4000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R25
U 1 1 5D6B8249
P 6900 4350
F 0 "R25" V 6800 4350 50  0000 C CNN
F 1 "6R8-5%" V 7000 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6830 4350 50  0001 C CNN
F 3 "~" H 6900 4350 50  0001 C CNN
F 4 "RES 6.8 OHM 1/8W 0805" H 6900 4350 50  0001 C CNN "Description"
F 5 "5%" H 6900 4350 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 6900 4350 50  0001 C CNN "Insert?"
	1    6900 4350
	0    -1   1    0   
$EndComp
$Comp
L Digikey-Transistors:MMBT4401LT1G Q18
U 1 1 5D6B8258
P 7300 4650
F 0 "Q18" H 7488 4703 60  0000 L CNN
F 1 "MMBT4401LT1G" H 7488 4597 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 7500 4850 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 7500 4950 60  0001 L CNN
F 4 "MMBT4401LT1GOSCT-ND" H 7500 5050 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4401LT1G" H 7500 5150 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7500 5250 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 7500 5350 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 7500 5450 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4401LT1G/MMBT4401LT1GOSCT-ND/1139819" H 7500 5550 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SOT23" H 7500 5650 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 7500 5750 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7500 5850 60  0001 L CNN "Status"
F 13 "MMBT4401-7-F" H 7300 4650 50  0001 C CNN "MPN(Secondary)"
F 14 "Diodes Inc." H 7300 4650 50  0001 C CNN "Manufacturer(Secondary)"
F 15 "Onsemi" H 7300 4650 50  0001 C CNN "Manufacturer_Name"
F 16 "Yes" H 7300 4650 50  0001 C CNN "Insert?"
	1    7300 4650
	-1   0    0    -1  
$EndComp
Text GLabel 7950 4650 2    50   Input ~ 0
Q9N
Wire Wire Line
	7950 4650 7900 4650
$Comp
L Device:R R18
U 1 1 5D6B8260
P 7750 4650
F 0 "R18" V 7850 4650 50  0000 C CNN
F 1 "470" V 7950 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7680 4650 50  0001 C CNN
F 3 "~" H 7750 4650 50  0001 C CNN
F 4 "RES 470 OHM" H 7750 4650 50  0001 C CNN "Description"
F 5 "10%" H 7750 4650 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 7750 4650 50  0001 C CNN "Insert?"
	1    7750 4650
	0    -1   1    0   
$EndComp
Wire Wire Line
	7600 4650 7500 4650
$Comp
L power:GNDPWR #PWR0141
U 1 1 5D6B8267
P 7200 4850
F 0 "#PWR0141" H 7200 4650 50  0001 C CNN
F 1 "GNDPWR" H 7204 4696 50  0000 C CNN
F 2 "" H 7200 4800 50  0001 C CNN
F 3 "" H 7200 4800 50  0001 C CNN
	1    7200 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6050 3350 6250 3350
Wire Wire Line
	6250 3350 6250 3550
Wire Wire Line
	6250 3550 6050 3550
Wire Wire Line
	6050 2950 8550 2950
Wire Wire Line
	8550 2950 8550 3450
Wire Wire Line
	8550 3450 9700 3450
Wire Wire Line
	8450 3550 8450 3050
Wire Wire Line
	8450 3050 6050 3050
Wire Wire Line
	8450 3550 9100 3550
Wire Wire Line
	8350 3150 8350 5600
Wire Wire Line
	8350 3150 6050 3150
Wire Wire Line
	8250 3250 8250 5700
Wire Wire Line
	6050 3250 8250 3250
Wire Wire Line
	8250 5700 9100 5700
Wire Wire Line
	8350 5600 9700 5600
$Comp
L power:VMEM #PWR0142
U 1 1 5D87AE9C
P 7200 5400
F 0 "#PWR0142" H 7200 5250 50  0001 C CNN
F 1 "VMEM" H 7215 5573 50  0000 C CNN
F 2 "" H 7200 5400 50  0001 C CNN
F 3 "" H 7200 5400 50  0001 C CNN
	1    7200 5400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7550 5650 7500 5650
$Comp
L Device:R R19
U 1 1 5D87AEA3
P 7700 5650
F 0 "R19" V 7493 5650 50  0000 C CNN
F 1 "470" V 7584 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7630 5650 50  0001 C CNN
F 3 "~" H 7700 5650 50  0001 C CNN
F 4 "RES 470 OHM" H 7700 5650 50  0001 C CNN "Description"
F 5 "10%" H 7700 5650 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 7700 5650 50  0001 C CNN "Insert?"
	1    7700 5650
	0    -1   1    0   
$EndComp
Wire Wire Line
	7900 5650 7850 5650
Text GLabel 7900 5650 2    50   Input ~ 0
Q10P
Wire Wire Line
	7200 5400 7200 5450
$Comp
L Digikey-Transistors:MMBT4403LT1G Q19
U 1 1 5D87AEB5
P 7300 5650
F 0 "Q19" H 7488 5703 60  0000 L CNN
F 1 "MMBT4403LT1G" H 7488 5597 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 7500 5850 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 7500 5950 60  0001 L CNN
F 4 "MMBT4403LT1GOSCT-ND" H 7500 6050 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4403LT1G" H 7500 6150 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7500 6250 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 7500 6350 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 7500 6450 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4403LT1G/MMBT4403LT1GOSCT-ND/1139820" H 7500 6550 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS PNP 40V 0.6A SOT23" H 7500 6650 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 7500 6750 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7500 6850 60  0001 L CNN "Status"
F 13 "MMBT4403-7-F" H 7300 5650 50  0001 C CNN "MPN(Secondary)"
F 14 "Diodes Inc." H 7300 5650 50  0001 C CNN "Manufacturer(Secondary)"
F 15 "Onsemi" H 7300 5650 50  0001 C CNN "Manufacturer_Name"
F 16 "Yes" H 7300 5650 50  0001 C CNN "Insert?"
	1    7300 5650
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R26
U 1 1 5D87AEBB
P 6850 6000
F 0 "R26" V 6750 6000 50  0000 C CNN
F 1 "6R8-5%" V 6950 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6780 6000 50  0001 C CNN
F 3 "~" H 6850 6000 50  0001 C CNN
F 4 "RES 6.8 OHM 1/8W 0805" H 6850 6000 50  0001 C CNN "Description"
F 5 "5%" H 6850 6000 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 6850 6000 50  0001 C CNN "Insert?"
	1    6850 6000
	0    -1   1    0   
$EndComp
$Comp
L Digikey-Transistors:MMBT4401LT1G Q20
U 1 1 5D87AECA
P 7300 6300
F 0 "Q20" H 7488 6353 60  0000 L CNN
F 1 "MMBT4401LT1G" H 7488 6247 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 7500 6500 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 7500 6600 60  0001 L CNN
F 4 "MMBT4401LT1GOSCT-ND" H 7500 6700 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4401LT1G" H 7500 6800 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7500 6900 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 7500 7000 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 7500 7100 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4401LT1G/MMBT4401LT1GOSCT-ND/1139819" H 7500 7200 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SOT23" H 7500 7300 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 7500 7400 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7500 7500 60  0001 L CNN "Status"
F 13 "MMBT4401-7-F" H 7300 6300 50  0001 C CNN "MPN(Secondary)"
F 14 "Diodes Inc." H 7300 6300 50  0001 C CNN "Manufacturer(Secondary)"
F 15 "Onsemi" H 7300 6300 50  0001 C CNN "Manufacturer_Name"
F 16 "Yes" H 7300 6300 50  0001 C CNN "Insert?"
	1    7300 6300
	-1   0    0    -1  
$EndComp
Text GLabel 7900 6300 2    50   Input ~ 0
Q10N
Wire Wire Line
	7900 6300 7850 6300
$Comp
L Device:R R20
U 1 1 5D87AED2
P 7700 6300
F 0 "R20" V 7800 6300 50  0000 C CNN
F 1 "470" V 7900 6300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7630 6300 50  0001 C CNN
F 3 "~" H 7700 6300 50  0001 C CNN
F 4 "RES 470 OHM" H 7700 6300 50  0001 C CNN "Description"
F 5 "10%" H 7700 6300 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 7700 6300 50  0001 C CNN "Insert?"
	1    7700 6300
	0    -1   1    0   
$EndComp
Wire Wire Line
	7550 6300 7500 6300
$Comp
L power:GNDPWR #PWR0143
U 1 1 5D87AED9
P 7200 6500
F 0 "#PWR0143" H 7200 6300 50  0001 C CNN
F 1 "GNDPWR" H 7204 6346 50  0000 C CNN
F 2 "" H 7200 6450 50  0001 C CNN
F 3 "" H 7200 6450 50  0001 C CNN
	1    7200 6500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7000 6000 7200 6000
Wire Wire Line
	7200 6000 7200 6100
Wire Wire Line
	7200 5850 7200 6000
Connection ~ 7200 6000
Wire Wire Line
	6350 3650 6350 6000
Wire Wire Line
	6350 3650 6050 3650
Wire Wire Line
	6350 3450 6350 3650
Wire Wire Line
	6050 3450 6350 3450
$Comp
L Device:R R1
U 1 1 5D48D653
P 1100 4200
F 0 "R1" V 893 4200 50  0000 C CNN
F 1 "470" V 984 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1030 4200 50  0001 C CNN
F 3 "~" H 1100 4200 50  0001 C CNN
F 4 "RES 470 OHM" H 1100 4200 50  0001 C CNN "Description"
F 5 "10%" H 1100 4200 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 1100 4200 50  0001 C CNN "Insert?"
	1    1100 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5D48DBED
P 1100 5700
F 0 "R2" V 893 5700 50  0000 C CNN
F 1 "470" V 984 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1030 5700 50  0001 C CNN
F 3 "~" H 1100 5700 50  0001 C CNN
F 4 "RES 470 OHM" H 1100 5700 50  0001 C CNN "Description"
F 5 "10%" H 1100 5700 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 1100 5700 50  0001 C CNN "Insert?"
	1    1100 5700
	0    1    1    0   
$EndComp
$Comp
L Digikey-Transistors:MMBT4403LT1G Q1
U 1 1 5D49119D
P 1600 4200
F 0 "Q1" H 1788 4253 60  0000 L CNN
F 1 "MMBT4403LT1G" H 1788 4147 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 1800 4400 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 1800 4500 60  0001 L CNN
F 4 "MMBT4403LT1GOSCT-ND" H 1800 4600 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4403LT1G" H 1800 4700 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 1800 4800 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 1800 4900 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 1800 5000 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4403LT1G/MMBT4403LT1GOSCT-ND/1139820" H 1800 5100 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS PNP 40V 0.6A SOT23" H 1800 5200 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 1800 5300 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1800 5400 60  0001 L CNN "Status"
F 13 "MMBT4403-7-F" H 1600 4200 50  0001 C CNN "MPN(Secondary)"
F 14 "Diodes Inc." H 1600 4200 50  0001 C CNN "Manufacturer(Secondary)"
F 15 "Onsemi" H 1600 4200 50  0001 C CNN "Manufacturer_Name"
F 16 "Yes" H 1600 4200 50  0001 C CNN "Insert?"
	1    1600 4200
	1    0    0    -1  
$EndComp
$Comp
L Digikey-Transistors:MMBT4401LT1G Q2
U 1 1 5D4976F4
P 1600 5700
F 0 "Q2" H 1788 5753 60  0000 L CNN
F 1 "MMBT4401LT1G" H 1788 5647 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 1800 5900 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 1800 6000 60  0001 L CNN
F 4 "MMBT4401LT1GOSCT-ND" H 1800 6100 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4401LT1G" H 1800 6200 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 1800 6300 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 1800 6400 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 1800 6500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4401LT1G/MMBT4401LT1GOSCT-ND/1139819" H 1800 6600 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SOT23" H 1800 6700 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 1800 6800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1800 6900 60  0001 L CNN "Status"
F 13 "MMBT4401-7-F" H 1600 5700 50  0001 C CNN "MPN(Secondary)"
F 14 "Diodes Inc." H 1600 5700 50  0001 C CNN "Manufacturer(Secondary)"
F 15 "Onsemi" H 1600 5700 50  0001 C CNN "Manufacturer_Name"
F 16 "Yes" H 1600 5700 50  0001 C CNN "Insert?"
	1    1600 5700
	1    0    0    -1  
$EndComp
$Comp
L Diode:BAT54AW D1
U 1 1 5D4E500E
P 1200 4750
F 0 "D1" H 1200 4883 50  0000 C CNN
F 1 "BAT54AW" H 1200 4974 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 1275 4875 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAT54W_SER.pdf" H 1080 4750 50  0001 C CNN
F 4 "DIODE ARRAY SCHOTTKY 30V " H 1200 4750 50  0001 C CNN "Description"
F 5 "BAT54AW-7-F" H 1200 4750 50  0001 C CNN "MPN"
F 6 "Diodes Inc." H 1200 4750 50  0001 C CNN "Manufacturer_Name"
F 7 "Yes" H 1200 4750 50  0001 C CNN "Insert?"
	1    1200 4750
	-1   0    0    1   
$EndComp
$Comp
L Diode:BAT54CW D2
U 1 1 5D4E8A7D
P 1200 5250
F 0 "D2" H 1200 5475 50  0000 C CNN
F 1 "BAT54CW" H 1200 5384 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 1275 5375 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAT54W_SER.pdf" H 1120 5250 50  0001 C CNN
F 4 "DIODE ARRAY SCHOTTKY 30V " H 1200 5250 50  0001 C CNN "Description"
F 5 "BAT54CW-7-F" H 1200 5250 50  0001 C CNN "MPN"
F 6 "Diodes Inc." H 1200 5250 50  0001 C CNN "Manufacturer_Name"
F 7 "Yes" H 1200 5250 50  0001 C CNN "Insert?"
	1    1200 5250
	1    0    0    -1  
$EndComp
$Comp
L Diode:BAT54AW D3
U 1 1 5D51DA5C
P 2400 4750
F 0 "D3" H 2400 4883 50  0000 C CNN
F 1 "BAT54AW" H 2400 4974 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 2475 4875 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAT54W_SER.pdf" H 2280 4750 50  0001 C CNN
F 4 "DIODE ARRAY SCHOTTKY 30V " H 2400 4750 50  0001 C CNN "Description"
F 5 "BAT54AW-7-F" H 2400 4750 50  0001 C CNN "MPN"
F 6 "Diodes Inc." H 2400 4750 50  0001 C CNN "Manufacturer_Name"
F 7 "Yes" H 2400 4750 50  0001 C CNN "Insert?"
	1    2400 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 4750 2700 5000
Wire Wire Line
	2100 4750 2100 4950
$Comp
L Diode:BAT54CW D4
U 1 1 5D54366F
P 2400 5250
F 0 "D4" H 2400 5475 50  0000 C CNN
F 1 "BAT54CW" H 2400 5384 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 2475 5375 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAT54W_SER.pdf" H 2320 5250 50  0001 C CNN
F 4 "DIODE ARRAY SCHOTTKY 30V " H 2400 5250 50  0001 C CNN "Description"
F 5 "BAT54CW-7-F" H 2400 5250 50  0001 C CNN "MPN"
F 6 "Diodes Inc." H 2400 5250 50  0001 C CNN "Manufacturer_Name"
F 7 "Yes" H 2400 5250 50  0001 C CNN "Insert?"
	1    2400 5250
	1    0    0    -1  
$EndComp
$Comp
L Diode:BAT54AW D5
U 1 1 5D55D4AE
P 3800 4750
F 0 "D5" H 3800 4883 50  0000 C CNN
F 1 "BAT54AW" H 3800 4974 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 3875 4875 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAT54W_SER.pdf" H 3680 4750 50  0001 C CNN
F 4 "DIODE ARRAY SCHOTTKY 30V " H 3800 4750 50  0001 C CNN "Description"
F 5 "BAT54AW-7-F" H 3800 4750 50  0001 C CNN "MPN"
F 6 "Diodes Inc." H 3800 4750 50  0001 C CNN "Manufacturer_Name"
F 7 "Yes" H 3800 4750 50  0001 C CNN "Insert?"
	1    3800 4750
	-1   0    0    1   
$EndComp
$Comp
L Diode:BAT54AW D7
U 1 1 5D55DFE2
P 5000 4750
F 0 "D7" H 5000 4883 50  0000 C CNN
F 1 "BAT54AW" H 5000 4974 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 5075 4875 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAT54W_SER.pdf" H 4880 4750 50  0001 C CNN
F 4 "DIODE ARRAY SCHOTTKY 30V " H 5000 4750 50  0001 C CNN "Description"
F 5 "BAT54AW-7-F" H 5000 4750 50  0001 C CNN "MPN"
F 6 "Diodes Inc." H 5000 4750 50  0001 C CNN "Manufacturer_Name"
F 7 "Yes" H 5000 4750 50  0001 C CNN "Insert?"
	1    5000 4750
	-1   0    0    1   
$EndComp
$Comp
L Diode:BAT54CW D8
U 1 1 5D55F22B
P 5000 5250
F 0 "D8" H 5000 5475 50  0000 C CNN
F 1 "BAT54CW" H 5000 5384 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 5075 5375 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAT54W_SER.pdf" H 4920 5250 50  0001 C CNN
F 4 "DIODE ARRAY SCHOTTKY 30V " H 5000 5250 50  0001 C CNN "Description"
F 5 "BAT54CW-7-F" H 5000 5250 50  0001 C CNN "MPN"
F 6 "Diodes Inc." H 5000 5250 50  0001 C CNN "Manufacturer_Name"
F 7 "Yes" H 5000 5250 50  0001 C CNN "Insert?"
	1    5000 5250
	1    0    0    -1  
$EndComp
$Comp
L Diode:BAT54CW D6
U 1 1 5D560010
P 3800 5250
F 0 "D6" H 3800 5475 50  0000 C CNN
F 1 "BAT54CW" H 3800 5384 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 3875 5375 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAT54W_SER.pdf" H 3720 5250 50  0001 C CNN
F 4 "DIODE ARRAY SCHOTTKY 30V " H 3800 5250 50  0001 C CNN "Description"
F 5 "BAT54CW-7-F" H 3800 5250 50  0001 C CNN "MPN"
F 6 "Diodes Inc." H 3800 5250 50  0001 C CNN "Manufacturer_Name"
F 7 "Yes" H 3800 5250 50  0001 C CNN "Insert?"
	1    3800 5250
	1    0    0    -1  
$EndComp
$Comp
L Diode:BAT54AW D11
U 1 1 5D5609D1
P 9400 5500
F 0 "D11" H 9550 5350 50  0000 C CNN
F 1 "BAT54AW" H 9200 5350 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 9475 5625 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAT54W_SER.pdf" H 9280 5500 50  0001 C CNN
F 4 "DIODE ARRAY SCHOTTKY 30V " H 9400 5500 50  0001 C CNN "Description"
F 5 "BAT54AW-7-F" H 9400 5500 50  0001 C CNN "MPN"
F 6 "Diodes Inc." H 9400 5500 50  0001 C CNN "Manufacturer_Name"
F 7 "Yes" H 9400 5500 50  0001 C CNN "Insert?"
	1    9400 5500
	-1   0    0    1   
$EndComp
$Comp
L Diode:BAT54CW D12
U 1 1 5D56153A
P 9400 5900
F 0 "D12" H 9250 5800 50  0000 C CNN
F 1 "BAT54CW" H 9600 5800 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 9475 6025 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAT54W_SER.pdf" H 9320 5900 50  0001 C CNN
F 4 "DIODE ARRAY SCHOTTKY 30V " H 9400 5900 50  0001 C CNN "Description"
F 5 "BAT54CW-7-F" H 9400 5900 50  0001 C CNN "MPN"
F 6 "Diodes Inc." H 9400 5900 50  0001 C CNN "Manufacturer_Name"
F 7 "Yes" H 9400 5900 50  0001 C CNN "Insert?"
	1    9400 5900
	1    0    0    -1  
$EndComp
$Comp
L Diode:BAT54AW D9
U 1 1 5D57DB50
P 9400 3350
F 0 "D9" H 9550 3200 50  0000 C CNN
F 1 "BAT54AW" H 9200 3200 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 9475 3475 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAT54W_SER.pdf" H 9280 3350 50  0001 C CNN
F 4 "DIODE ARRAY SCHOTTKY 30V " H 9400 3350 50  0001 C CNN "Description"
F 5 "BAT54AW-7-F" H 9400 3350 50  0001 C CNN "MPN"
F 6 "Diodes Inc." H 9400 3350 50  0001 C CNN "Manufacturer_Name"
F 7 "Yes" H 9400 3350 50  0001 C CNN "Insert?"
	1    9400 3350
	-1   0    0    1   
$EndComp
$Comp
L Diode:BAT54CW D10
U 1 1 5D57EB12
P 9400 3750
F 0 "D10" H 9250 3650 50  0000 C CNN
F 1 "BAT54CW" H 9600 3650 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 9475 3875 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAT54W_SER.pdf" H 9320 3750 50  0001 C CNN
F 4 "DIODE ARRAY SCHOTTKY 30V " H 9400 3750 50  0001 C CNN "Description"
F 5 "BAT54CW-7-F" H 9400 3750 50  0001 C CNN "MPN"
F 6 "Diodes Inc." H 9400 3750 50  0001 C CNN "Manufacturer_Name"
F 7 "Yes" H 9400 3750 50  0001 C CNN "Insert?"
	1    9400 3750
	1    0    0    -1  
$EndComp
Text Notes 2950 1700 0    50   ~ 0
COL 0,4
Text Notes 4850 1700 0    50   ~ 0
COL 1,5
Text Notes 6750 1700 0    50   ~ 0
COL 2,6
Text Notes 8650 1700 0    50   ~ 0
COL 3,7
Text Notes 1550 4800 0    50   ~ 0
COL 0
Text Notes 1550 5000 0    50   ~ 0
COL 1
Text Notes 1850 5150 0    50   ~ 0
COL 2
Text Notes 2750 5150 0    50   ~ 0
COL 3
Text Notes 4150 4800 0    50   ~ 0
COL 4
Text Notes 4150 5000 0    50   ~ 0
COL 5
Text Notes 4450 5150 0    50   ~ 0
COL 6
Text Notes 5350 5150 0    50   ~ 0
COL 7
Text Notes 6400 4550 0    50   ~ 0
ROW 0,4\nROW 2,6
Text Notes 6350 6250 0    50   ~ 0
ROW 1,5\nROW 3,7
Text Notes 8700 3400 0    50   ~ 0
ROW 0,4
Text Notes 8700 5850 0    50   ~ 0
ROW 3,7
Text Notes 8700 3700 0    50   ~ 0
ROW 1,5
Text Notes 8700 5550 0    50   ~ 0
ROW 2,6
Text GLabel 3600 7000 0    50   Input ~ 0
WRITE_ENABLE
Text Notes 4900 6650 0    50   ~ 0
CORE MEMORY GROUND
Wire Wire Line
	4450 6700 4450 6800
$Comp
L power:GNDPWR #PWR?
U 1 1 5E8ED56D
P 5300 6750
AR Path="/5E8ED56D" Ref="#PWR?"  Part="1" 
AR Path="/5D254AE8/5E8ED56D" Ref="#PWR?"  Part="1" 
AR Path="/5E755AC8/5E8ED56D" Ref="#PWR0151"  Part="1" 
F 0 "#PWR0151" H 5300 6550 50  0001 C CNN
F 1 "GNDPWR" H 5304 6596 50  0000 C CNN
F 2 "" H 5300 6700 50  0001 C CNN
F 3 "" H 5300 6700 50  0001 C CNN
	1    5300 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 7000 3700 7000
Text Notes 1050 6750 0    50   ~ 0
CORE MEMORY POWER
Text GLabel 800  7100 0    50   Input ~ 0
3V3
$Comp
L power:GND #PWR?
U 1 1 5E8ED59A
P 4450 7300
AR Path="/5D254AE8/5E8ED59A" Ref="#PWR?"  Part="1" 
AR Path="/5E8ED59A" Ref="#PWR?"  Part="1" 
AR Path="/5E755AC8/5E8ED59A" Ref="#PWR0152"  Part="1" 
F 0 "#PWR0152" H 4450 7050 50  0001 C CNN
F 1 "GND" H 4455 7125 50  0000 C CNN
F 2 "" H 4450 7300 50  0001 C CNN
F 3 "" H 4450 7300 50  0001 C CNN
	1    4450 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 7250 4450 7300
Wire Wire Line
	2600 4000 2600 4100
Wire Wire Line
	2600 4200 2750 4200
Wire Wire Line
	2750 4000 2750 4100
Wire Wire Line
	2750 4100 2800 4100
Wire Wire Line
	2800 4100 2800 4900
Wire Wire Line
	2850 4100 2900 4100
Wire Wire Line
	2900 4100 2900 4000
Wire Wire Line
	2850 4100 2850 4950
Wire Wire Line
	3050 4000 3050 4200
Wire Wire Line
	3050 4200 2900 4200
Wire Wire Line
	5200 4000 5200 4200
Wire Wire Line
	5350 4000 5350 4100
Wire Wire Line
	5500 4100 5500 4000
Wire Wire Line
	5650 4000 5650 4200
Wire Wire Line
	5350 4100 5400 4100
Wire Wire Line
	5450 4100 5500 4100
Wire Wire Line
	5500 4200 5650 4200
Wire Wire Line
	5350 4200 5200 4200
Wire Wire Line
	5300 6700 5300 6750
Connection ~ 6350 3650
Wire Wire Line
	6400 3550 6400 4350
Wire Wire Line
	6250 3550 6400 3550
Connection ~ 6250 3550
Text Notes 550  6500 0    118  ~ 0
CORE MATRIX POWER
Text Notes 550  3650 0    118  ~ 0
CORE MATRIX BOTTOM COLUMN DRIVERS
Text Notes 4100 850  0    118  ~ 0
CORE MATRIX TOP COLUMN DRIVERS
Text Notes 5850 2800 0    118  ~ 0
CORE MATRIX ROW DRIVERS
$Comp
L power:VMEM #PWR0144
U 1 1 5EC965BD
P 1450 7000
F 0 "#PWR0144" H 1450 6850 50  0001 C CNN
F 1 "VMEM" H 1465 7173 50  0000 C CNN
F 2 "" H 1450 7000 50  0001 C CNN
F 3 "" H 1450 7000 50  0001 C CNN
	1    1450 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 7100 1450 7000
Text Notes 3250 6500 0    118  ~ 0
CORE MATRIX WRITE ENABLE
Wire Wire Line
	3800 4450 4300 4450
Wire Wire Line
	1200 4450 1700 4450
Text GLabel 2550 2000 0    50   Output ~ 0
XB3
Text GLabel 2550 1900 0    50   Output ~ 0
XB2
Text GLabel 2550 1800 0    50   Output ~ 0
XB1
Text GLabel 2550 1700 0    50   Output ~ 0
XB0
Text GLabel 2550 2100 0    50   Output ~ 0
XB4
Text GLabel 2550 2200 0    50   Output ~ 0
XB5
Text GLabel 2550 2300 0    50   Output ~ 0
XB6
Text GLabel 2550 2400 0    50   Output ~ 0
XB7
Text GLabel 2550 1600 0    50   Output ~ 0
XT0,4
Text GLabel 2550 1500 0    50   Output ~ 0
XT1,5
Text GLabel 2550 1400 0    50   Output ~ 0
XT2,6
Text GLabel 2550 1300 0    50   Output ~ 0
XT3,7
Wire Wire Line
	2550 1300 2650 1300
Wire Wire Line
	2550 1400 2650 1400
Wire Wire Line
	2550 1500 2650 1500
Wire Wire Line
	2550 1600 2650 1600
Text GLabel 1450 1400 2    50   Output ~ 0
YL1
Text GLabel 1450 1300 2    50   Output ~ 0
YL0
Text GLabel 1450 1500 2    50   Output ~ 0
YL2
Text GLabel 1450 1600 2    50   Output ~ 0
YL3
Text GLabel 1450 2000 2    50   Output ~ 0
YL7
Wire Wire Line
	1400 1700 1400 1900
Wire Wire Line
	1400 1900 1450 1900
Wire Wire Line
	1450 1300 800  1300
Wire Wire Line
	1450 1600 800  1600
Wire Wire Line
	1450 1700 1400 1700
Wire Wire Line
	1400 1700 800  1700
Connection ~ 1400 1700
Wire Wire Line
	1350 2000 1450 2000
Wire Wire Line
	1350 1800 1350 2000
Wire Wire Line
	1450 1800 1350 1800
Wire Wire Line
	1350 1800 800  1800
Connection ~ 1350 1800
Wire Wire Line
	2550 2400 2650 2400
Wire Wire Line
	2550 2300 2650 2300
$Comp
L Connector_Generic:Conn_01x20 J2
U 1 1 5E78B5ED
P 2850 2000
F 0 "J2" H 2050 3150 50  0000 C CNN
F 1 "SSW-116-22-F-S-VS‎" H 2400 3050 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 2850 2000 50  0001 C CNN
F 3 "~" H 2850 2000 50  0001 C CNN
F 4 "No" H 2850 2000 50  0001 C CNN "Insert?"
	1    2850 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x20 J1
U 1 1 5E78B5F3
P 600 2000
F 0 "J1" H 550 3150 50  0000 C CNN
F 1 "SSW-116-22-F-S-VS‎" H 150 3050 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 600 2000 50  0001 C CNN
F 3 "~" H 600 2000 50  0001 C CNN
F 4 "No" H 600 2000 50  0001 C CNN "Insert?"
	1    600  2000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2550 2000 2650 2000
Wire Wire Line
	2550 2200 2650 2200
Text GLabel 900  1900 2    50   Input ~ 0
SENSE2
Text GLabel 900  2000 2    50   Input ~ 0
SENSE1
Wire Wire Line
	900  2000 800  2000
$Comp
L power:GNDD #PWR0146
U 1 1 5E78B651
P 1400 2750
F 0 "#PWR0146" H 1400 2500 50  0001 C CNN
F 1 "GNDD" H 1404 2595 50  0000 C CNN
F 2 "" H 1400 2750 50  0001 C CNN
F 3 "" H 1400 2750 50  0001 C CNN
	1    1400 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2400 1400 2750
Wire Wire Line
	800  2300 900  2300
Wire Wire Line
	800  2400 1400 2400
Wire Wire Line
	850  2600 800  2600
Wire Wire Line
	850  2800 800  2800
Wire Wire Line
	2650 1700 2550 1700
Wire Wire Line
	2650 1800 2550 1800
Wire Wire Line
	2650 1900 2550 1900
Wire Wire Line
	2650 2100 2550 2100
Text Notes 1250 3200 0    50   ~ 0
DIGITAL\nLOGIC \nGROUND
Text Notes 4000 7600 0    50   ~ 0
SYSTEM POWER GROUND
Text GLabel 900  2300 2    50   Input ~ 0
3V3
Wire Wire Line
	800  1400 1450 1400
Wire Wire Line
	800  1500 1450 1500
Wire Wire Line
	800  1900 900  1900
Wire Wire Line
	800  2500 850  2500
Wire Wire Line
	800  2700 850  2700
Text Notes 550  750  0    118  ~ 0
CORE BOARD INTERCONNECTS
Text GLabel 900  2100 2    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 900  2200 2    50   BiDi ~ 0
I2C_DATA
Text GLabel 1450 1900 2    50   Output ~ 0
YL6
Text GLabel 1450 1800 2    50   Output ~ 0
YL5
Text GLabel 1450 1700 2    50   Output ~ 0
YL4
Wire Wire Line
	800  2100 900  2100
Wire Wire Line
	800  2200 900  2200
Wire Wire Line
	4450 6700 4950 6700
Wire Wire Line
	1700 4400 1700 4450
Connection ~ 1700 4450
Wire Wire Line
	1700 4450 2400 4450
Wire Wire Line
	4300 4400 4300 4450
Connection ~ 4300 4450
Wire Wire Line
	4300 4450 5000 4450
Wire Wire Line
	3950 2300 3950 2350
Wire Wire Line
	800  7100 1000 7100
$Comp
L power:GND #PWR?
U 1 1 5F6C52F2
P 1000 7500
AR Path="/5D254AE8/5F6C52F2" Ref="#PWR?"  Part="1" 
AR Path="/5F6C52F2" Ref="#PWR?"  Part="1" 
AR Path="/5E755AC8/5F6C52F2" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 1000 7250 50  0001 C CNN
F 1 "GND" H 1005 7325 50  0000 C CNN
F 2 "" H 1000 7500 50  0001 C CNN
F 3 "" H 1000 7500 50  0001 C CNN
	1    1000 7500
	1    0    0    -1  
$EndComp
Text Notes 550  7850 0    50   ~ 0
SYSTEM POWER GROUND
Wire Wire Line
	1000 7400 1000 7450
$Comp
L Device:CP1_Small C?
U 1 1 5F6C52FB
P 1000 7300
AR Path="/5E755787/5F6C52FB" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5F6C52FB" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5F6C52FB" Ref="C1"  Part="1" 
AR Path="/5E7548ED/5F6C52FB" Ref="C?"  Part="1" 
F 0 "C1" H 1100 7400 50  0000 L CNN
F 1 "470uF" H 1100 7300 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 1000 7300 50  0001 C CNN
F 3 "~" H 1000 7300 50  0001 C CNN
F 4 "565-EMHL100ARA471MHA0GCT-ND" H 1000 7300 50  0001 C CNN "Digikey"
F 5 "Yes" H 1000 7300 50  0001 C CNN "Insert?"
F 6 "CAP ALUM 470UF 20% 10V SMD" H 1000 7300 50  0001 C CNN "Description"
F 7 "6.3SEV330M6.3X8" H 1000 7300 50  0001 C CNN "MPN(Secondary)"
F 8 "Rubycon" H 1000 7300 50  0001 C CNN "Manufacturer(Secondary)"
F 9 "330UF 20% 6.3V" H 1000 7300 50  0001 C CNN "Value_Modifier"
F 10 "EEE-FTA471XAL" H 1000 7300 50  0001 C CNN "MPN"
F 11 "Panasonic" H 1000 7300 50  0001 C CNN "Manufacturer_Name"
	1    1000 7300
	1    0    0    -1  
$EndComp
Text Notes 1450 2250 0    50   ~ 0
Silkscreen: 3V3 ONLY
Text GLabel 2550 2500 0    50   Input ~ 0
CP1_EN
Text GLabel 2550 2600 0    50   Input ~ 0
CP2_EN
Text GLabel 2550 2700 0    50   Input ~ 0
CP3_EN
Text GLabel 2550 2800 0    50   Input ~ 0
CP4_EN
Text GLabel 850  2800 2    50   Input ~ 0
CP5_EN
Text GLabel 850  2700 2    50   Input ~ 0
CP6_EN
Text GLabel 850  2600 2    50   Input ~ 0
CP7_EN
Text GLabel 850  2500 2    50   Input ~ 0
CP8_EN
Wire Wire Line
	2550 2500 2650 2500
Wire Wire Line
	2650 2600 2550 2600
Wire Wire Line
	2550 2700 2650 2700
Wire Wire Line
	2650 2800 2550 2800
Text Notes 4550 6850 0    50   ~ 0
D
Text Notes 4550 7250 0    50   ~ 0
S
Text Notes 4150 6950 0    50   ~ 0
G
Wire Wire Line
	3700 7250 4000 7250
Wire Wire Line
	4450 7200 4450 7250
Connection ~ 4450 7250
Wire Wire Line
	4300 7250 4450 7250
$Comp
L Device:R R?
U 1 1 5F6E9DAB
P 4150 7250
AR Path="/5F6E9DAB" Ref="R?"  Part="1" 
AR Path="/5D254AE8/5F6E9DAB" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5F6E9DAB" Ref="R28"  Part="1" 
F 0 "R28" V 4050 7250 50  0000 C CNN
F 1 "10k" V 4250 7250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4080 7250 50  0001 C CNN
F 3 "~" H 4150 7250 50  0001 C CNN
F 4 "RES 10K OHM" H 4150 7250 50  0001 C CNN "Description"
F 5 "Yes" H 4150 7250 50  0001 C CNN "Insert?"
F 6 "20%" H 4150 7250 50  0001 C CNN "Value_Modifier"
	1    4150 7250
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 7200 1000 7100
Connection ~ 1000 7100
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5F97E8E3
P 5050 6900
AR Path="/5E7548ED/5F97E8E3" Ref="J?"  Part="1" 
AR Path="/5E755AC8/5F97E8E3" Ref="J5"  Part="1" 
F 0 "J5" V 5150 6900 50  0000 R CNN
F 1 "CORE Cur. Mon." V 5250 7200 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 5050 6900 50  0001 C CNN
F 3 "~" H 5050 6900 50  0001 C CNN
F 4 "No" H 5050 6900 50  0001 C CNN "Insert?"
	1    5050 6900
	0    1    1    0   
$EndComp
Text Notes 2400 7950 0    79   ~ 0
QxP (PNP) is normally high, low to activate matrix transistor.\nQxN (NPN) is normally low, high to activate matrix transistor.
Text Notes 3300 6650 0    50   ~ 0
N-CHNL FET as low-side switch
$Comp
L Device:Q_NMOS_GSD Q21
U 1 1 5FABD474
P 4350 7000
F 0 "Q21" H 4555 7047 50  0000 L CNN
F 1 "NVTR4503NT1G_NMOS_GSD" H 4550 6700 50  0000 L CNN
F 2 "Digikey:SOT-23-3" H 4550 7100 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/NTR4503N-D.PDF" H 4350 7000 50  0001 C CNN
F 4 "NVTR4503NT1G" H 4350 7000 50  0001 C CNN "MPN"
F 5 "Onsemi" H 4350 7000 50  0001 C CNN "Manufacturer_Name"
F 6 "IRLML2030TRPBF" H 4350 7000 50  0001 C CNN "MPN(Secondary)"
F 7 "Infineon Technologies" H 4350 7000 50  0001 C CNN "Manufacturer(Secondary)"
F 8 "MOSFET N-CHNL GSD LOW RDS(ON)" H 4350 7000 50  0001 C CNN "Description"
F 9 "Yes" H 4350 7000 50  0001 C CNN "Insert?"
	1    4350 7000
	1    0    0    -1  
$EndComp
Text Notes 3300 6800 0    50   ~ 0
Rds(ON)=0.1
$Comp
L Digikey-Transistors:MMBT4401LT1G Q8
U 1 1 5D5FAAC0
P 5750 2100
F 0 "Q8" H 5938 2153 60  0000 L CNN
F 1 "MMBT4401LT1G" H 5938 2047 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 5950 2300 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 5950 2400 60  0001 L CNN
F 4 "MMBT4401LT1GOSCT-ND" H 5950 2500 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4401LT1G" H 5950 2600 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5950 2700 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 5950 2800 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 5950 2900 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4401LT1G/MMBT4401LT1GOSCT-ND/1139819" H 5950 3000 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SOT23" H 5950 3100 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 5950 3200 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5950 3300 60  0001 L CNN "Status"
F 13 "MMBT4401-7-F" H 5750 2100 50  0001 C CNN "MPN(Secondary)"
F 14 "Diodes Inc." H 5750 2100 50  0001 C CNN "Manufacturer(Secondary)"
F 15 "Onsemi" H 5750 2100 50  0001 C CNN "Manufacturer_Name"
F 16 "Yes" H 5750 2100 50  0001 C CNN "Insert?"
	1    5750 2100
	1    0    0    -1  
$EndComp
$Comp
L Digikey-Transistors:MMBT4403LT1G Q7
U 1 1 5D5FAAAB
P 5750 1400
F 0 "Q7" H 5938 1453 60  0000 L CNN
F 1 "MMBT4403LT1G" H 5938 1347 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 5950 1600 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 5950 1700 60  0001 L CNN
F 4 "MMBT4403LT1GOSCT-ND" H 5950 1800 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4403LT1G" H 5950 1900 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5950 2000 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 5950 2100 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 5950 2200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4403LT1G/MMBT4403LT1GOSCT-ND/1139820" H 5950 2300 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS PNP 40V 0.6A SOT23" H 5950 2400 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 5950 2500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5950 2600 60  0001 L CNN "Status"
F 13 "MMBT4403-7-F" H 5750 1400 50  0001 C CNN "MPN(Secondary)"
F 14 "Diodes Inc." H 5750 1400 50  0001 C CNN "Manufacturer(Secondary)"
F 15 "Onsemi" H 5750 1400 50  0001 C CNN "Manufacturer_Name"
F 16 "Yes" H 5750 1400 50  0001 C CNN "Insert?"
	1    5750 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4350 6750 4350
Wire Wire Line
	6350 6000 6700 6000
Wire Wire Line
	5050 6700 5300 6700
Wire Wire Line
	4950 6700 5050 6700
Wire Wire Line
	1000 7100 1450 7100
Connection ~ 4950 6700
Connection ~ 5050 6700
Text Notes 7950 800  0    50   ~ 0
Drive Transistor current: 3.3/470=7mA
NoConn ~ 800  2900
NoConn ~ 800  3000
NoConn ~ 800  1200
$Comp
L power:+BATT #PWR?
U 1 1 6036FA36
P 2050 2900
AR Path="/5E7548ED/6036FA36" Ref="#PWR?"  Part="1" 
AR Path="/5E755AC8/5D254AE8/6036FA36" Ref="#PWR?"  Part="1" 
AR Path="/5E755AC8/6036FA36" Ref="#PWR0149"  Part="1" 
F 0 "#PWR0149" H 2050 2750 50  0001 C CNN
F 1 "+BATT" H 2065 3073 50  0000 C CNN
F 2 "" H 2050 2900 50  0001 C CNN
F 3 "" H 2050 2900 50  0001 C CNN
	1    2050 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2900 2050 2900
Text GLabel 2550 3000 0    50   Input ~ 0
TEENSY_VUSB
Wire Wire Line
	2550 3000 2650 3000
$Comp
L power:GND #PWR0147
U 1 1 603C5693
P 2050 1200
F 0 "#PWR0147" H 2050 950 50  0001 C CNN
F 1 "GND" H 2055 1023 50  0000 C CNN
F 2 "" H 2050 1200 50  0001 C CNN
F 3 "" H 2050 1200 50  0001 C CNN
	1    2050 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1200 2050 1200
Text GLabel 2550 1100 0    50   Input ~ 0
5V0
Wire Wire Line
	2550 1100 2650 1100
Text GLabel 900  1100 2    50   Output ~ 0
LED_MATRIX_5V0_SIG
Wire Wire Line
	800  1100 900  1100
Text GLabel 3550 2950 0    50   Input ~ 0
HS1
Text GLabel 3550 3250 0    50   Input ~ 0
HS2
Text GLabel 4650 2950 0    50   Input ~ 0
HS3
Text GLabel 4650 3250 0    50   Input ~ 0
HS4
Text GLabel 3850 2950 2    50   Input ~ 0
CP5_EN
Text GLabel 3850 3250 2    50   Input ~ 0
CP6_EN
Text GLabel 4950 2950 2    50   Input ~ 0
CP7_EN
Text GLabel 4950 3250 2    50   Input ~ 0
CP8_EN
$Comp
L Jumper:SolderJumper_2_Bridged JP4
U 1 1 60397BD0
P 4800 3250
F 0 "JP4" H 4800 3150 50  0000 C CNN
F 1 "Hall Switch 4" H 4800 3350 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 4800 3250 50  0001 C CNN
F 3 "~" H 4800 3250 50  0001 C CNN
F 4 "No" H 4800 3250 50  0001 C CNN "Insert?"
	1    4800 3250
	1    0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP3
U 1 1 603B8476
P 4800 2950
F 0 "JP3" H 4800 2850 50  0000 C CNN
F 1 "Hall Switch 3" H 4800 3050 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 4800 2950 50  0001 C CNN
F 3 "~" H 4800 2950 50  0001 C CNN
F 4 "No" H 4800 2950 50  0001 C CNN "Insert?"
	1    4800 2950
	1    0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP1
U 1 1 6040AAB4
P 3700 2950
F 0 "JP1" H 3700 2850 50  0000 C CNN
F 1 "Hall Switch 1" H 3700 3050 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 3700 2950 50  0001 C CNN
F 3 "~" H 3700 2950 50  0001 C CNN
F 4 "No" H 3700 2950 50  0001 C CNN "Insert?"
	1    3700 2950
	1    0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP2
U 1 1 6041B0A8
P 3700 3250
F 0 "JP2" H 3700 3150 50  0000 C CNN
F 1 "Hall Switch 2" H 3700 3350 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 3700 3250 50  0001 C CNN
F 3 "~" H 3700 3250 50  0001 C CNN
F 4 "No" H 3700 3250 50  0001 C CNN "Insert?"
	1    3700 3250
	1    0    0    1   
$EndComp
Wire Notes Line
	3200 3400 5450 3400
Wire Notes Line
	5450 3400 5450 2600
Wire Notes Line
	5450 2600 3200 2600
Wire Notes Line
	3200 2600 3200 3400
Text Notes 3300 2800 0    98   ~ 0
HALL SWITCHES (PLAN B…)
Text GLabel 4150 1750 2    50   Output ~ 0
TC0_MON
Text GLabel 2500 4100 0    50   Output ~ 0
BC0_MON
Wire Wire Line
	900  4850 900  5250
Text GLabel 7450 4350 2    50   Output ~ 0
RR0_MON
Text GLabel 9900 3450 2    50   Output ~ 0
LR0_MON
Wire Wire Line
	2500 4100 2600 4100
Connection ~ 2600 4100
Wire Wire Line
	2600 4100 2600 4200
Wire Wire Line
	3250 1750 3500 1750
Wire Wire Line
	3950 1750 4150 1750
Wire Wire Line
	9700 3450 9900 3450
Wire Wire Line
	7200 4200 7200 4350
Wire Wire Line
	7200 4350 7200 4450
Connection ~ 7200 4350
Wire Wire Line
	7050 4350 7200 4350
Wire Wire Line
	7200 4350 7450 4350
$Comp
L Device:R R27
U 1 1 618ACD94
P 3950 7000
F 0 "R27" V 3743 7000 50  0000 C CNN
F 1 "470" V 3834 7000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3880 7000 50  0001 C CNN
F 3 "~" H 3950 7000 50  0001 C CNN
F 4 "RES 470 OHM" H 3950 7000 50  0001 C CNN "Description"
F 5 "10%" H 3950 7000 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 3950 7000 50  0001 C CNN "Insert?"
	1    3950 7000
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 7000 3700 7250
Wire Wire Line
	3800 7000 3700 7000
Connection ~ 3700 7000
Wire Wire Line
	4100 7000 4150 7000
Connection ~ 1000 7450
Wire Wire Line
	1000 7450 1000 7500
$Comp
L Connector:Conn_01x01_Male J3
U 1 1 61AA8F55
P 1700 7100
F 0 "J3" H 1673 7031 50  0000 R CNN
F 1 "Conn_01x01_Male" H 1673 7124 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical_No_Registration" H 1700 7100 50  0001 C CNN
F 3 "~" H 1700 7100 50  0001 C CNN
F 4 "No" H 1700 7100 50  0001 C CNN "Insert?"
	1    1700 7100
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J4
U 1 1 61AAA405
P 1700 7450
F 0 "J4" H 1673 7381 50  0000 R CNN
F 1 "Conn_01x01_Male" H 1673 7474 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical_No_Registration" H 1700 7450 50  0001 C CNN
F 3 "~" H 1700 7450 50  0001 C CNN
F 4 "No" H 1700 7450 50  0001 C CNN "Insert?"
	1    1700 7450
	-1   0    0    1   
$EndComp
Wire Wire Line
	1500 7100 1450 7100
Connection ~ 1450 7100
Wire Wire Line
	1000 7450 1500 7450
Text Notes 1750 7600 0    50   ~ 0
GND
Text Notes 1750 7250 0    50   ~ 0
+
Text Notes 1500 7550 0    50   ~ 0
DNI
Text Notes 1500 7200 0    50   ~ 0
DNI
Text Notes 1900 7400 0    50   ~ 0
Optional: Thru hole radial lead Cap.\n2.5mm lead spacing, 6.3mm dia, 12.5mm tall
$EndSCHEMATC
