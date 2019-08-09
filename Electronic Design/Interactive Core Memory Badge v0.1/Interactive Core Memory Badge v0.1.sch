EESchema Schematic File Version 4
LIBS:Interactive Core Memory Badge v0.1-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 3
Title "Core 64"
Date "2019-07-09"
Rev "0.1"
Comp "Andy Geppert"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 700  700  500  150 
U 5D254AE8
F0 "Power" 50
F1 "Interactive Core Memory Badge Power v0.1.sch" 50
$EndSheet
$Sheet
S 700  1100 500  150 
U 5D2551FF
F0 "MCU" 50
F1 "Interactive Core Memory Badge MCU v0.1.sch" 50
$EndSheet
Text GLabel 1750 4600 3    50   Input ~ 0
XB0
Text GLabel 1850 4600 3    50   Input ~ 0
XB1
Text GLabel 1950 4600 3    50   Input ~ 0
XB2
Text GLabel 2050 4600 3    50   Input ~ 0
XB3
Text GLabel 2150 4600 3    50   Input ~ 0
XB4
Text GLabel 2250 4600 3    50   Input ~ 0
XB5
Text GLabel 2350 4600 3    50   Input ~ 0
XB6
Text GLabel 2450 4600 3    50   Input ~ 0
XB7
Text GLabel 2050 3000 1    50   Input ~ 0
XT3-7
Text GLabel 1950 3000 1    50   Input ~ 0
XT2-6
Text GLabel 1850 3000 1    50   Input ~ 0
XT1-5
Text GLabel 1750 3000 1    50   Input ~ 0
XT0-4
Wire Wire Line
	1400 3600 1150 3600
Wire Wire Line
	1150 3600 1150 4000
Wire Wire Line
	1150 4000 1400 4000
Wire Wire Line
	1400 3700 1050 3700
Wire Wire Line
	1050 3700 1050 4100
Wire Wire Line
	1050 4100 1400 4100
Wire Wire Line
	1400 3800 950  3800
Wire Wire Line
	950  3800 950  4200
Wire Wire Line
	950  4200 1400 4200
Wire Wire Line
	1400 4300 850  4300
Wire Wire Line
	850  4300 850  3900
Wire Wire Line
	850  3900 1400 3900
$Comp
L CORE_64_LIBRARY:Core_Memory_8x8_Array CM1
U 1 1 5D2EBF55
P 2100 3950
F 0 "CM1" H 2600 4600 50  0000 L CNN
F 1 "Core_Memory_8x8_Array" H 700 3300 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:core_64" H 2150 4000 50  0001 C CNN
F 3 "" H 2150 4000 50  0001 C CNN
	1    2100 3950
	1    0    0    -1  
$EndComp
Text Notes 2950 850  0    50   ~ 0
NOTE: Orientation of core array is the user view. \nThe user view is the BACK COPPER of the PCB where only the core array is installed. \nThe other side of the board is the FRONT COPPER PCB where all other compnents are populated, out of sight of the user. \nThe PCB layout is viewed from the FRONT COPPER PCB side.
Wire Wire Line
	2550 6250 2550 6550
Wire Wire Line
	1350 6250 1350 6550
Wire Wire Line
	1350 7250 1850 7250
Wire Wire Line
	1850 7250 1850 7300
Wire Wire Line
	2550 7250 1850 7250
Connection ~ 1850 7250
Text GLabel 2050 5100 1    50   Output ~ 0
XB3
Text GLabel 1950 5100 1    50   Output ~ 0
XB2
Text GLabel 1850 5100 1    50   Output ~ 0
XB1
Text GLabel 1750 5100 1    50   Output ~ 0
XB0
Wire Wire Line
	1650 6550 1650 6700
Wire Wire Line
	2250 6550 2250 6750
Wire Wire Line
	2850 6550 2850 6800
Connection ~ 2850 6800
Connection ~ 2250 6750
Connection ~ 1650 6700
Text GLabel 1050 6050 0    50   Input ~ 0
Q1P
Text GLabel 1050 7500 0    50   Input ~ 0
Q1N
Wire Wire Line
	1050 7500 1100 7500
Wire Wire Line
	1050 6050 1100 6050
Wire Wire Line
	1400 6050 1550 6050
Wire Wire Line
	1400 7500 1550 7500
$Comp
L power:GNDPWR #PWR02
U 1 1 5D3B6BDD
P 1850 7700
F 0 "#PWR02" H 1850 7500 50  0001 C CNN
F 1 "GNDPWR" H 1854 7546 50  0000 C CNN
F 2 "" H 1850 7650 50  0001 C CNN
F 3 "" H 1850 7650 50  0001 C CNN
	1    1850 7700
	1    0    0    -1  
$EndComp
$Comp
L power:VMEM #PWR01
U 1 1 5D3B6BE3
P 1850 5850
F 0 "#PWR01" H 1850 5700 50  0001 C CNN
F 1 "VMEM" H 1865 6023 50  0000 C CNN
F 2 "" H 1850 5850 50  0001 C CNN
F 3 "" H 1850 5850 50  0001 C CNN
	1    1850 5850
	1    0    0    -1  
$EndComp
Text GLabel 2150 5100 1    50   Output ~ 0
XB4
Text GLabel 2250 5100 1    50   Output ~ 0
XB5
Text GLabel 2350 5100 1    50   Output ~ 0
XB6
Text GLabel 2450 5100 1    50   Output ~ 0
XB7
$Comp
L power:VMEM #PWR03
U 1 1 5D3EAB0F
P 3700 1150
F 0 "#PWR03" H 3700 1000 50  0001 C CNN
F 1 "VMEM" H 3715 1323 50  0000 C CNN
F 2 "" H 3700 1150 50  0001 C CNN
F 3 "" H 3700 1150 50  0001 C CNN
	1    3700 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1400 3400 1400
$Comp
L Device:R R3
U 1 1 5D3EAB23
P 3150 1400
F 0 "R3" V 2943 1400 50  0000 C CNN
F 1 "220" V 3034 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3080 1400 50  0001 C CNN
F 3 "~" H 3150 1400 50  0001 C CNN
	1    3150 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 1400 3000 1400
Text GLabel 2950 1400 0    50   Input ~ 0
Q3P
Wire Wire Line
	3700 1150 3700 1200
Text GLabel 1750 2350 3    50   Output ~ 0
XT0-4
Text GLabel 1850 2350 3    50   Output ~ 0
XT1-5
Text GLabel 1950 2350 3    50   Output ~ 0
XT2-6
Text GLabel 2050 2350 3    50   Output ~ 0
XT3-7
$Comp
L Digikey-Transistors:MMBT4403LT1G Q3
U 1 1 5D3EAB8E
P 3600 1400
F 0 "Q3" H 3788 1453 60  0000 L CNN
F 1 "MMBT4403LT1G" H 3788 1347 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 3800 1600 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 3800 1700 60  0001 L CNN
F 4 "MMBT4403LT1GOSCT-ND" H 3800 1800 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4403LT1G" H 3800 1900 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 3800 2000 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 3800 2100 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 3800 2200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4403LT1G/MMBT4403LT1GOSCT-ND/1139820" H 3800 2300 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS PNP 40V 0.6A SOT23" H 3800 2400 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 3800 2500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3800 2600 60  0001 L CNN "Status"
	1    3600 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5D406468
P 3400 1750
F 0 "R5" V 3193 1750 50  0000 C CNN
F 1 "6R8" V 3284 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3330 1750 50  0001 C CNN
F 3 "~" H 3400 1750 50  0001 C CNN
	1    3400 1750
	0    1    1    0   
$EndComp
$Comp
L Digikey-Transistors:MMBT4401LT1G Q4
U 1 1 5D3EAB7F
P 3600 2050
F 0 "Q4" H 3788 2103 60  0000 L CNN
F 1 "MMBT4401LT1G" H 3788 1997 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 3800 2250 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 3800 2350 60  0001 L CNN
F 4 "MMBT4401LT1GOSCT-ND" H 3800 2450 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4401LT1G" H 3800 2550 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 3800 2650 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 3800 2750 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 3800 2850 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4401LT1G/MMBT4401LT1GOSCT-ND/1139819" H 3800 2950 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SOT23" H 3800 3050 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 3800 3150 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3800 3250 60  0001 L CNN "Status"
	1    3600 2050
	1    0    0    -1  
$EndComp
Text GLabel 2950 2050 0    50   Input ~ 0
Q3N
Wire Wire Line
	2950 2050 3000 2050
$Comp
L Device:R R4
U 1 1 5D3EAB1C
P 3150 2050
F 0 "R4" V 2943 2050 50  0000 C CNN
F 1 "220" V 3034 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3080 2050 50  0001 C CNN
F 3 "~" H 3150 2050 50  0001 C CNN
	1    3150 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 2050 3400 2050
$Comp
L power:GNDPWR #PWR04
U 1 1 5D3EAB15
P 3700 2250
F 0 "#PWR04" H 3700 2050 50  0001 C CNN
F 1 "GNDPWR" H 3704 2096 50  0000 C CNN
F 2 "" H 3700 2200 50  0001 C CNN
F 3 "" H 3700 2200 50  0001 C CNN
	1    3700 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1600 3700 1750
Wire Wire Line
	1750 3250 2150 3250
Wire Wire Line
	2150 3250 2150 3300
Wire Wire Line
	1750 3250 1750 3300
Wire Wire Line
	1850 3300 1850 3200
Wire Wire Line
	1850 3200 2250 3200
Wire Wire Line
	2250 3200 2250 3300
Wire Wire Line
	1950 3300 1950 3150
Wire Wire Line
	1950 3150 2350 3150
Wire Wire Line
	2350 3150 2350 3300
Wire Wire Line
	2050 3300 2050 3100
Wire Wire Line
	2050 3100 2450 3100
Wire Wire Line
	2450 3100 2450 3300
Wire Wire Line
	1750 3250 1750 3000
Connection ~ 1750 3250
Wire Wire Line
	1850 3200 1850 3000
Connection ~ 1850 3200
Wire Wire Line
	1950 3150 1950 3000
Connection ~ 1950 3150
Wire Wire Line
	2050 3100 2050 3000
Connection ~ 2050 3100
Wire Wire Line
	1750 2350 1750 1750
Wire Wire Line
	2900 5550 1750 5550
Wire Wire Line
	1750 5550 1750 5100
Wire Wire Line
	2950 6700 2950 5500
Wire Wire Line
	2950 5500 1850 5500
Wire Wire Line
	1850 5500 1850 5100
Wire Wire Line
	1650 6700 2950 6700
Wire Wire Line
	3000 6750 3000 5450
Wire Wire Line
	3000 5450 1950 5450
Wire Wire Line
	1950 5450 1950 5100
Wire Wire Line
	2250 6750 3000 6750
Wire Wire Line
	2050 5100 2050 5400
Wire Wire Line
	2050 5400 3050 5400
Wire Wire Line
	2850 6800 3050 6800
Wire Wire Line
	2850 6800 2850 7050
Wire Wire Line
	1650 6700 1650 7050
Wire Wire Line
	2250 6750 2250 7050
Wire Wire Line
	3050 5400 3050 6800
$Comp
L Diode:BAW56S D3
U 3 1 5D5BD2B5
P 5000 6550
F 0 "D3" H 5000 6765 50  0000 C CNN
F 1 "BAW56S" H 5000 6674 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5000 6375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV756S_BAW56_SER.pdf" H 5000 6650 50  0001 C CNN
	3    5000 6550
	1    0    0    -1  
$EndComp
$Comp
L Digikey-Transistors:MMBT4403LT1G Q5
U 1 1 5D5BD2C4
P 4350 6050
F 0 "Q5" H 4538 6103 60  0000 L CNN
F 1 "MMBT4403LT1G" H 4538 5997 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 4550 6250 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 4550 6350 60  0001 L CNN
F 4 "MMBT4403LT1GOSCT-ND" H 4550 6450 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4403LT1G" H 4550 6550 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4550 6650 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 4550 6750 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 4550 6850 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4403LT1G/MMBT4403LT1GOSCT-ND/1139820" H 4550 6950 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS PNP 40V 0.6A SOT23" H 4550 7050 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 4550 7150 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4550 7250 60  0001 L CNN "Status"
	1    4350 6050
	1    0    0    -1  
$EndComp
$Comp
L Digikey-Transistors:MMBT4401LT1G Q6
U 1 1 5D5BD2D3
P 4350 7500
F 0 "Q6" H 4538 7553 60  0000 L CNN
F 1 "MMBT4401LT1G" H 4538 7447 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 4550 7700 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 4550 7800 60  0001 L CNN
F 4 "MMBT4401LT1GOSCT-ND" H 4550 7900 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4401LT1G" H 4550 8000 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4550 8100 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 4550 8200 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 4550 8300 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4401LT1G/MMBT4401LT1GOSCT-ND/1139819" H 4550 8400 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SOT23" H 4550 8500 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 4550 8600 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4550 8700 60  0001 L CNN "Status"
	1    4350 7500
	1    0    0    -1  
$EndComp
$Comp
L Diode:BAW56S D3
U 4 1 5D5BD2D9
P 5300 6550
F 0 "D3" H 5300 6765 50  0000 C CNN
F 1 "BAW56S" H 5300 6674 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5300 6375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV756S_BAW56_SER.pdf" H 5300 6650 50  0001 C CNN
	4    5300 6550
	-1   0    0    -1  
$EndComp
$Comp
L Diode:BAW56S D3
U 1 1 5D5BD2DF
P 3800 6550
F 0 "D3" H 3800 6765 50  0000 C CNN
F 1 "BAW56S" H 3800 6674 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 3800 6375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV756S_BAW56_SER.pdf" H 3800 6650 50  0001 C CNN
	1    3800 6550
	1    0    0    -1  
$EndComp
$Comp
L Diode:BAW56S D3
U 2 1 5D5BD2E5
P 4100 6550
F 0 "D3" H 4100 6765 50  0000 C CNN
F 1 "BAW56S" H 4100 6674 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 4100 6375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV756S_BAW56_SER.pdf" H 4100 6650 50  0001 C CNN
	2    4100 6550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4450 6250 5150 6250
Wire Wire Line
	5150 6250 5150 6550
Connection ~ 5150 6550
Wire Wire Line
	4450 6250 3950 6250
Wire Wire Line
	3950 6250 3950 6550
Connection ~ 4450 6250
Connection ~ 3950 6550
$Comp
L Diode:BAV70S D4
U 1 1 5D5BD2F2
P 3950 7050
F 0 "D4" H 3950 7266 50  0000 C CNN
F 1 "BAV70S" H 3950 7175 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 3950 7050 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV70_SER.pdf" H 3950 7050 50  0001 C CNN
	1    3950 7050
	1    0    0    -1  
$EndComp
$Comp
L Diode:BAV70S D4
U 2 1 5D5BD2F8
P 5150 7050
F 0 "D4" H 5150 7266 50  0000 C CNN
F 1 "BAV70S" H 5150 7175 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5150 7050 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV70_SER.pdf" H 5150 7050 50  0001 C CNN
	2    5150 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 6550 3650 6650
Wire Wire Line
	3950 7250 4450 7250
Wire Wire Line
	4450 7250 4450 7300
Wire Wire Line
	5150 7250 4450 7250
Connection ~ 4450 7250
Connection ~ 3650 6650
Wire Wire Line
	3650 6650 3650 7050
Wire Wire Line
	4250 6550 4250 6700
Wire Wire Line
	4850 6550 4850 6750
Wire Wire Line
	5450 6550 5450 6800
Connection ~ 5450 6800
Connection ~ 4850 6750
Connection ~ 4250 6700
Wire Wire Line
	3650 6650 5500 6650
Text GLabel 3650 6050 0    50   Input ~ 0
Q2P
Text GLabel 3650 7500 0    50   Input ~ 0
Q2N
Wire Wire Line
	3650 7500 3700 7500
Wire Wire Line
	3650 6050 3700 6050
$Comp
L Device:R R6
U 1 1 5D5BD310
P 3850 6050
F 0 "R6" V 3643 6050 50  0000 C CNN
F 1 "220" V 3734 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3780 6050 50  0001 C CNN
F 3 "~" H 3850 6050 50  0001 C CNN
	1    3850 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 6050 4150 6050
$Comp
L Device:R R7
U 1 1 5D5BD317
P 3850 7500
F 0 "R7" V 3643 7500 50  0000 C CNN
F 1 "220" V 3734 7500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3780 7500 50  0001 C CNN
F 3 "~" H 3850 7500 50  0001 C CNN
	1    3850 7500
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 7500 4150 7500
$Comp
L power:GNDPWR #PWR06
U 1 1 5D5BD31E
P 4450 7700
F 0 "#PWR06" H 4450 7500 50  0001 C CNN
F 1 "GNDPWR" H 4454 7546 50  0000 C CNN
F 2 "" H 4450 7650 50  0001 C CNN
F 3 "" H 4450 7650 50  0001 C CNN
	1    4450 7700
	1    0    0    -1  
$EndComp
$Comp
L power:VMEM #PWR05
U 1 1 5D5BD324
P 4450 5850
F 0 "#PWR05" H 4450 5700 50  0001 C CNN
F 1 "VMEM" H 4465 6023 50  0000 C CNN
F 2 "" H 4450 5850 50  0001 C CNN
F 3 "" H 4450 5850 50  0001 C CNN
	1    4450 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6700 5550 6700
Wire Wire Line
	4850 6750 5600 6750
Wire Wire Line
	5450 6800 5650 6800
Wire Wire Line
	5450 6800 5450 7050
Wire Wire Line
	4250 6700 4250 7050
Wire Wire Line
	4850 6750 4850 7050
Wire Wire Line
	2900 6650 2900 5550
Wire Wire Line
	1050 6650 1050 7050
Connection ~ 1050 6650
Wire Wire Line
	1050 6550 1050 6650
Wire Wire Line
	1050 6650 2900 6650
Wire Wire Line
	2150 5100 2150 5350
Wire Wire Line
	2150 5350 5500 5350
Wire Wire Line
	5500 5350 5500 6650
Wire Wire Line
	2250 5100 2250 5300
Wire Wire Line
	2250 5300 5550 5300
Wire Wire Line
	5550 5300 5550 6700
Wire Wire Line
	2350 5100 2350 5250
Wire Wire Line
	2350 5250 5600 5250
Wire Wire Line
	5600 5250 5600 6750
Wire Wire Line
	2450 5100 2450 5200
Wire Wire Line
	2450 5200 5650 5200
Wire Wire Line
	5650 5200 5650 6800
$Comp
L power:VMEM #PWR07
U 1 1 5D5FAA92
P 5650 1150
F 0 "#PWR07" H 5650 1000 50  0001 C CNN
F 1 "VMEM" H 5665 1323 50  0000 C CNN
F 2 "" H 5650 1150 50  0001 C CNN
F 3 "" H 5650 1150 50  0001 C CNN
	1    5650 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1400 5350 1400
$Comp
L Device:R R8
U 1 1 5D5FAA99
P 5100 1400
F 0 "R8" V 4893 1400 50  0000 C CNN
F 1 "220" V 4984 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5030 1400 50  0001 C CNN
F 3 "~" H 5100 1400 50  0001 C CNN
	1    5100 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 1400 4950 1400
Text GLabel 4900 1400 0    50   Input ~ 0
Q4P
Wire Wire Line
	5650 1150 5650 1200
$Comp
L Digikey-Transistors:MMBT4403LT1G Q7
U 1 1 5D5FAAAB
P 5550 1400
F 0 "Q7" H 5738 1453 60  0000 L CNN
F 1 "MMBT4403LT1G" H 5738 1347 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 5750 1600 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 5750 1700 60  0001 L CNN
F 4 "MMBT4403LT1GOSCT-ND" H 5750 1800 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4403LT1G" H 5750 1900 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5750 2000 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 5750 2100 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 5750 2200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4403LT1G/MMBT4403LT1GOSCT-ND/1139820" H 5750 2300 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS PNP 40V 0.6A SOT23" H 5750 2400 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 5750 2500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5750 2600 60  0001 L CNN "Status"
	1    5550 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5D5FAAB1
P 5250 1750
F 0 "R10" V 5043 1750 50  0000 C CNN
F 1 "6R8" V 5134 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5180 1750 50  0001 C CNN
F 3 "~" H 5250 1750 50  0001 C CNN
	1    5250 1750
	0    -1   1    0   
$EndComp
$Comp
L Digikey-Transistors:MMBT4401LT1G Q8
U 1 1 5D5FAAC0
P 5550 2050
F 0 "Q8" H 5738 2103 60  0000 L CNN
F 1 "MMBT4401LT1G" H 5738 1997 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 5750 2250 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 5750 2350 60  0001 L CNN
F 4 "MMBT4401LT1GOSCT-ND" H 5750 2450 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4401LT1G" H 5750 2550 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5750 2650 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 5750 2750 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 5750 2850 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4401LT1G/MMBT4401LT1GOSCT-ND/1139819" H 5750 2950 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SOT23" H 5750 3050 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 5750 3150 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5750 3250 60  0001 L CNN "Status"
	1    5550 2050
	1    0    0    -1  
$EndComp
Text GLabel 4900 2050 0    50   Input ~ 0
Q4N
Wire Wire Line
	4900 2050 4950 2050
$Comp
L Device:R R9
U 1 1 5D5FAAC8
P 5100 2050
F 0 "R9" V 4893 2050 50  0000 C CNN
F 1 "220" V 4984 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5030 2050 50  0001 C CNN
F 3 "~" H 5100 2050 50  0001 C CNN
	1    5100 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 2050 5350 2050
$Comp
L power:GNDPWR #PWR08
U 1 1 5D5FAACF
P 5650 2250
F 0 "#PWR08" H 5650 2050 50  0001 C CNN
F 1 "GNDPWR" H 5654 2096 50  0000 C CNN
F 2 "" H 5650 2200 50  0001 C CNN
F 3 "" H 5650 2200 50  0001 C CNN
	1    5650 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1600 5650 1750
Wire Wire Line
	5400 1750 5650 1750
Connection ~ 5650 1750
Wire Wire Line
	5650 1750 5650 1850
Wire Wire Line
	1850 2350 1850 1850
Wire Wire Line
	1850 1850 2550 1850
Wire Wire Line
	2550 1850 2550 2500
Wire Wire Line
	2550 2500 4650 2500
Wire Wire Line
	4650 2500 4650 1750
$Comp
L power:VMEM #PWR013
U 1 1 5D63435D
P 7600 1150
F 0 "#PWR013" H 7600 1000 50  0001 C CNN
F 1 "VMEM" H 7615 1323 50  0000 C CNN
F 2 "" H 7600 1150 50  0001 C CNN
F 3 "" H 7600 1150 50  0001 C CNN
	1    7600 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1400 7300 1400
$Comp
L Device:R R13
U 1 1 5D634364
P 7050 1400
F 0 "R13" V 6843 1400 50  0000 C CNN
F 1 "220" V 6934 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6980 1400 50  0001 C CNN
F 3 "~" H 7050 1400 50  0001 C CNN
	1    7050 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 1400 6900 1400
Text GLabel 6850 1400 0    50   Input ~ 0
Q5P
Wire Wire Line
	7600 1150 7600 1200
$Comp
L Digikey-Transistors:MMBT4403LT1G Q13
U 1 1 5D634376
P 7500 1400
F 0 "Q13" H 7688 1453 60  0000 L CNN
F 1 "MMBT4403LT1G" H 7688 1347 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 7700 1600 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 7700 1700 60  0001 L CNN
F 4 "MMBT4403LT1GOSCT-ND" H 7700 1800 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4403LT1G" H 7700 1900 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7700 2000 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 7700 2100 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 7700 2200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4403LT1G/MMBT4403LT1GOSCT-ND/1139820" H 7700 2300 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS PNP 40V 0.6A SOT23" H 7700 2400 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 7700 2500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7700 2600 60  0001 L CNN "Status"
	1    7500 1400
	1    0    0    -1  
$EndComp
$Comp
L Digikey-Transistors:MMBT4401LT1G Q14
U 1 1 5D63438B
P 7500 2050
F 0 "Q14" H 7688 2103 60  0000 L CNN
F 1 "MMBT4401LT1G" H 7688 1997 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 7700 2250 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 7700 2350 60  0001 L CNN
F 4 "MMBT4401LT1GOSCT-ND" H 7700 2450 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4401LT1G" H 7700 2550 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7700 2650 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 7700 2750 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 7700 2850 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4401LT1G/MMBT4401LT1GOSCT-ND/1139819" H 7700 2950 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SOT23" H 7700 3050 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 7700 3150 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7700 3250 60  0001 L CNN "Status"
	1    7500 2050
	1    0    0    -1  
$EndComp
Text GLabel 6850 2050 0    50   Input ~ 0
Q5N
Wire Wire Line
	6850 2050 6900 2050
$Comp
L Device:R R14
U 1 1 5D634393
P 7050 2050
F 0 "R14" V 6843 2050 50  0000 C CNN
F 1 "220" V 6934 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6980 2050 50  0001 C CNN
F 3 "~" H 7050 2050 50  0001 C CNN
	1    7050 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 2050 7300 2050
$Comp
L power:GNDPWR #PWR014
U 1 1 5D63439A
P 7600 2250
F 0 "#PWR014" H 7600 2050 50  0001 C CNN
F 1 "GNDPWR" H 7604 2096 50  0000 C CNN
F 2 "" H 7600 2200 50  0001 C CNN
F 3 "" H 7600 2200 50  0001 C CNN
	1    7600 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1600 7600 1750
Wire Wire Line
	7350 1750 7600 1750
Connection ~ 7600 1750
Wire Wire Line
	7600 1750 7600 1850
$Comp
L power:VMEM #PWR019
U 1 1 5D6343A4
P 9550 1150
F 0 "#PWR019" H 9550 1000 50  0001 C CNN
F 1 "VMEM" H 9565 1323 50  0000 C CNN
F 2 "" H 9550 1150 50  0001 C CNN
F 3 "" H 9550 1150 50  0001 C CNN
	1    9550 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1400 9250 1400
$Comp
L Device:R R20
U 1 1 5D6343AB
P 9000 1400
F 0 "R20" V 8793 1400 50  0000 C CNN
F 1 "220" V 8884 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8930 1400 50  0001 C CNN
F 3 "~" H 9000 1400 50  0001 C CNN
	1    9000 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	8800 1400 8850 1400
Text GLabel 8800 1400 0    50   Input ~ 0
Q6P
Wire Wire Line
	9550 1150 9550 1200
$Comp
L Digikey-Transistors:MMBT4403LT1G Q15
U 1 1 5D6343BD
P 9450 1400
F 0 "Q15" H 9638 1453 60  0000 L CNN
F 1 "MMBT4403LT1G" H 9638 1347 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 9650 1600 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 9650 1700 60  0001 L CNN
F 4 "MMBT4403LT1GOSCT-ND" H 9650 1800 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4403LT1G" H 9650 1900 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9650 2000 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 9650 2100 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 9650 2200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4403LT1G/MMBT4403LT1GOSCT-ND/1139820" H 9650 2300 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS PNP 40V 0.6A SOT23" H 9650 2400 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 9650 2500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9650 2600 60  0001 L CNN "Status"
	1    9450 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R22
U 1 1 5D6343C3
P 9150 1750
F 0 "R22" V 8943 1750 50  0000 C CNN
F 1 "6R8" V 9034 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9080 1750 50  0001 C CNN
F 3 "~" H 9150 1750 50  0001 C CNN
	1    9150 1750
	0    -1   1    0   
$EndComp
$Comp
L Digikey-Transistors:MMBT4401LT1G Q16
U 1 1 5D6343D2
P 9450 2050
F 0 "Q16" H 9638 2103 60  0000 L CNN
F 1 "MMBT4401LT1G" H 9638 1997 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 9650 2250 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 9650 2350 60  0001 L CNN
F 4 "MMBT4401LT1GOSCT-ND" H 9650 2450 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4401LT1G" H 9650 2550 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9650 2650 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 9650 2750 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 9650 2850 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4401LT1G/MMBT4401LT1GOSCT-ND/1139819" H 9650 2950 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SOT23" H 9650 3050 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 9650 3150 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9650 3250 60  0001 L CNN "Status"
	1    9450 2050
	1    0    0    -1  
$EndComp
Text GLabel 8800 2050 0    50   Input ~ 0
Q6N
Wire Wire Line
	8800 2050 8850 2050
$Comp
L Device:R R21
U 1 1 5D6343DA
P 9000 2050
F 0 "R21" V 8793 2050 50  0000 C CNN
F 1 "220" V 8884 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8930 2050 50  0001 C CNN
F 3 "~" H 9000 2050 50  0001 C CNN
	1    9000 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 2050 9250 2050
$Comp
L power:GNDPWR #PWR020
U 1 1 5D6343E1
P 9550 2250
F 0 "#PWR020" H 9550 2050 50  0001 C CNN
F 1 "GNDPWR" H 9554 2096 50  0000 C CNN
F 2 "" H 9550 2200 50  0001 C CNN
F 3 "" H 9550 2200 50  0001 C CNN
	1    9550 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 1750 9550 1750
Wire Wire Line
	9550 1750 9550 1850
Wire Wire Line
	8500 1750 9000 1750
Wire Wire Line
	1950 2350 1950 1950
Wire Wire Line
	1950 1950 2450 1950
Wire Wire Line
	2450 1950 2450 2600
Wire Wire Line
	2450 2600 6600 2600
Wire Wire Line
	2050 2350 2050 2050
Wire Wire Line
	2050 2050 2350 2050
Wire Wire Line
	2350 2050 2350 2700
Wire Wire Line
	7050 1750 6600 1750
Wire Wire Line
	6600 1750 6600 2600
Wire Wire Line
	8500 1750 8500 2700
Wire Wire Line
	2350 2700 8500 2700
$Comp
L Device:R R15
U 1 1 5D63437C
P 7200 1750
F 0 "R15" V 6993 1750 50  0000 C CNN
F 1 "6R8" V 7084 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7130 1750 50  0001 C CNN
F 3 "~" H 7200 1750 50  0001 C CNN
	1    7200 1750
	0    -1   1    0   
$EndComp
Wire Wire Line
	4650 1750 5100 1750
Wire Wire Line
	3550 1750 3700 1750
Connection ~ 3700 1750
Wire Wire Line
	3700 1750 3700 1850
Wire Wire Line
	1750 1750 3250 1750
Wire Wire Line
	9550 1600 9550 1750
Connection ~ 9550 1750
$Comp
L Diode:BAW56S D5
U 3 1 5D4AA695
P 9550 3350
F 0 "D5" H 9550 3565 50  0000 C CNN
F 1 "BAW56S" H 9550 3474 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 9550 3175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV756S_BAW56_SER.pdf" H 9550 3450 50  0001 C CNN
	3    9550 3350
	-1   0    0    -1  
$EndComp
$Comp
L Digikey-Transistors:MMBT4403LT1G Q17
U 1 1 5D4AA6A4
P 9500 2900
F 0 "Q17" H 9688 2953 60  0000 L CNN
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
	1    9500 2900
	-1   0    0    -1  
$EndComp
$Comp
L Digikey-Transistors:MMBT4401LT1G Q18
U 1 1 5D4AA6B3
P 9500 4150
F 0 "Q18" H 9688 4203 60  0000 L CNN
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
	1    9500 4150
	-1   0    0    -1  
$EndComp
$Comp
L Diode:BAW56S D5
U 1 1 5D4AA6B9
P 9250 3350
F 0 "D5" H 9250 3565 50  0000 C CNN
F 1 "BAW56S" H 9250 3474 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 9250 3175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV756S_BAW56_SER.pdf" H 9250 3450 50  0001 C CNN
	1    9250 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 3100 9400 3350
Connection ~ 9400 3350
$Comp
L Diode:BAV70S D6
U 1 1 5D4AA6D8
P 9400 3750
F 0 "D6" H 9400 3966 50  0000 C CNN
F 1 "BAV70S" H 9400 3875 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 9400 3750 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV70_SER.pdf" H 9400 3750 50  0001 C CNN
	1    9400 3750
	-1   0    0    -1  
$EndComp
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
L Device:R R23
U 1 1 5D4AA6F0
P 9900 2900
F 0 "R23" V 9693 2900 50  0000 C CNN
F 1 "220" V 9784 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9830 2900 50  0001 C CNN
F 3 "~" H 9900 2900 50  0001 C CNN
	1    9900 2900
	0    -1   1    0   
$EndComp
Wire Wire Line
	9750 2900 9700 2900
$Comp
L Device:R R24
U 1 1 5D4AA6F7
P 9900 4150
F 0 "R24" V 9693 4150 50  0000 C CNN
F 1 "220" V 9784 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9830 4150 50  0001 C CNN
F 3 "~" H 9900 4150 50  0001 C CNN
	1    9900 4150
	0    -1   1    0   
$EndComp
Wire Wire Line
	9750 4150 9700 4150
$Comp
L power:GNDPWR #PWR016
U 1 1 5D4AA6FE
P 9400 4350
F 0 "#PWR016" H 9400 4150 50  0001 C CNN
F 1 "GNDPWR" H 9404 4196 50  0000 C CNN
F 2 "" H 9400 4300 50  0001 C CNN
F 3 "" H 9400 4300 50  0001 C CNN
	1    9400 4350
	-1   0    0    -1  
$EndComp
$Comp
L power:VMEM #PWR015
U 1 1 5D4AA704
P 9400 2700
F 0 "#PWR015" H 9400 2550 50  0001 C CNN
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
Text GLabel 2800 4300 2    50   Input ~ 0
YL7
Text GLabel 2800 4200 2    50   Input ~ 0
YL6
Text GLabel 2800 4100 2    50   Input ~ 0
YL5
Text GLabel 2800 4000 2    50   Input ~ 0
YL4
Text GLabel 2800 3900 2    50   Input ~ 0
YL3
Text GLabel 2800 3800 2    50   Input ~ 0
YL2
Text GLabel 2800 3700 2    50   Input ~ 0
YL1
Text GLabel 2800 3600 2    50   Input ~ 0
YL0
Wire Wire Line
	9100 3350 9100 3550
Wire Wire Line
	9700 3350 9700 3450
Text GLabel 3300 4300 0    50   Output ~ 0
YL7
Text GLabel 3300 4200 0    50   Output ~ 0
YL6
Text GLabel 3300 4100 0    50   Output ~ 0
YL5
Text GLabel 3300 4000 0    50   Output ~ 0
YL4
Text GLabel 3300 3900 0    50   Output ~ 0
YL3
Text GLabel 3300 3800 0    50   Output ~ 0
YL2
Text GLabel 3300 3600 0    50   Output ~ 0
YL0
Text GLabel 3300 3700 0    50   Output ~ 0
YL1
$Comp
L Diode:BAW56S D5
U 4 1 5D5F2D7B
P 9550 5500
F 0 "D5" H 9550 5715 50  0000 C CNN
F 1 "BAW56S" H 9550 5624 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 9550 5325 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV756S_BAW56_SER.pdf" H 9550 5600 50  0001 C CNN
	4    9550 5500
	-1   0    0    -1  
$EndComp
$Comp
L Digikey-Transistors:MMBT4403LT1G Q19
U 1 1 5D5F2D8A
P 9500 5050
F 0 "Q19" H 9688 5103 60  0000 L CNN
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
	1    9500 5050
	-1   0    0    -1  
$EndComp
$Comp
L Digikey-Transistors:MMBT4401LT1G Q20
U 1 1 5D5F2D99
P 9500 6300
F 0 "Q20" H 9688 6353 60  0000 L CNN
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
	1    9500 6300
	-1   0    0    -1  
$EndComp
$Comp
L Diode:BAW56S D5
U 2 1 5D5F2D9F
P 9250 5500
F 0 "D5" H 9250 5715 50  0000 C CNN
F 1 "BAW56S" H 9250 5624 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 9250 5325 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV756S_BAW56_SER.pdf" H 9250 5600 50  0001 C CNN
	2    9250 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 5250 9400 5500
Connection ~ 9400 5500
$Comp
L Diode:BAV70S D6
U 2 1 5D5F2DA7
P 9400 5900
F 0 "D6" H 9400 6116 50  0000 C CNN
F 1 "BAV70S" H 9400 6025 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 9400 5900 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV70_SER.pdf" H 9400 5900 50  0001 C CNN
	2    9400 5900
	-1   0    0    -1  
$EndComp
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
L Device:R R25
U 1 1 5D5F2DB3
P 9900 5050
F 0 "R25" V 9693 5050 50  0000 C CNN
F 1 "220" V 9784 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9830 5050 50  0001 C CNN
F 3 "~" H 9900 5050 50  0001 C CNN
	1    9900 5050
	0    -1   1    0   
$EndComp
Wire Wire Line
	9750 5050 9700 5050
$Comp
L Device:R R26
U 1 1 5D5F2DBA
P 9900 6300
F 0 "R26" V 9693 6300 50  0000 C CNN
F 1 "220" V 9784 6300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9830 6300 50  0001 C CNN
F 3 "~" H 9900 6300 50  0001 C CNN
	1    9900 6300
	0    -1   1    0   
$EndComp
Wire Wire Line
	9750 6300 9700 6300
$Comp
L power:GNDPWR #PWR018
U 1 1 5D5F2DC1
P 9400 6500
F 0 "#PWR018" H 9400 6300 50  0001 C CNN
F 1 "GNDPWR" H 9404 6346 50  0000 C CNN
F 2 "" H 9400 6450 50  0001 C CNN
F 3 "" H 9400 6450 50  0001 C CNN
	1    9400 6500
	-1   0    0    -1  
$EndComp
$Comp
L power:VMEM #PWR017
U 1 1 5D5F2DC7
P 9400 4850
F 0 "#PWR017" H 9400 4700 50  0001 C CNN
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
L power:VMEM #PWR09
U 1 1 5D6B822A
P 7200 3750
F 0 "#PWR09" H 7200 3600 50  0001 C CNN
F 1 "VMEM" H 7215 3923 50  0000 C CNN
F 2 "" H 7200 3750 50  0001 C CNN
F 3 "" H 7200 3750 50  0001 C CNN
	1    7200 3750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7600 4000 7500 4000
$Comp
L Device:R R18
U 1 1 5D6B8231
P 7750 4000
F 0 "R18" V 7543 4000 50  0000 C CNN
F 1 "220" V 7634 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7680 4000 50  0001 C CNN
F 3 "~" H 7750 4000 50  0001 C CNN
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
L Digikey-Transistors:MMBT4403LT1G Q9
U 1 1 5D6B8243
P 7300 4000
F 0 "Q9" H 7488 4053 60  0000 L CNN
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
	1    7300 4000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5D6B8249
P 6800 4400
F 0 "R11" V 6593 4400 50  0000 C CNN
F 1 "6R8" V 6684 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6730 4400 50  0001 C CNN
F 3 "~" H 6800 4400 50  0001 C CNN
	1    6800 4400
	0    -1   1    0   
$EndComp
$Comp
L Digikey-Transistors:MMBT4401LT1G Q10
U 1 1 5D6B8258
P 7300 4650
F 0 "Q10" H 7488 4703 60  0000 L CNN
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
	1    7300 4650
	-1   0    0    -1  
$EndComp
Text GLabel 7950 4650 2    50   Input ~ 0
Q9N
Wire Wire Line
	7950 4650 7900 4650
$Comp
L Device:R R19
U 1 1 5D6B8260
P 7750 4650
F 0 "R19" V 7543 4650 50  0000 C CNN
F 1 "220" V 7634 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7680 4650 50  0001 C CNN
F 3 "~" H 7750 4650 50  0001 C CNN
	1    7750 4650
	0    -1   1    0   
$EndComp
Wire Wire Line
	7600 4650 7500 4650
$Comp
L power:GNDPWR #PWR010
U 1 1 5D6B8267
P 7200 4850
F 0 "#PWR010" H 7200 4650 50  0001 C CNN
F 1 "GNDPWR" H 7204 4696 50  0000 C CNN
F 2 "" H 7200 4800 50  0001 C CNN
F 3 "" H 7200 4800 50  0001 C CNN
	1    7200 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6950 4400 7200 4400
Wire Wire Line
	7200 4400 7200 4450
Wire Wire Line
	7200 4200 7200 4400
Connection ~ 7200 4400
Wire Wire Line
	3300 4000 3500 4000
Wire Wire Line
	3500 4000 3500 4200
Wire Wire Line
	3500 4200 3300 4200
Wire Wire Line
	3300 3600 3350 3600
Wire Wire Line
	3350 3600 3350 2950
Wire Wire Line
	3350 2950 8550 2950
Wire Wire Line
	8550 2950 8550 3450
Wire Wire Line
	8550 3450 9700 3450
Wire Wire Line
	8450 3550 8450 3050
Wire Wire Line
	8450 3050 3400 3050
Wire Wire Line
	3400 3050 3400 3700
Wire Wire Line
	3400 3700 3300 3700
Wire Wire Line
	8450 3550 9100 3550
Wire Wire Line
	3450 3800 3450 3150
Wire Wire Line
	3450 3150 8350 3150
Wire Wire Line
	8350 3150 8350 5600
Wire Wire Line
	3450 3800 3300 3800
Wire Wire Line
	3500 3900 3500 3250
Wire Wire Line
	3500 3250 8250 3250
Wire Wire Line
	8250 3250 8250 5700
Wire Wire Line
	3300 3900 3500 3900
Wire Wire Line
	8250 5700 9100 5700
Wire Wire Line
	8350 5600 9700 5600
Wire Wire Line
	3500 4000 3550 4000
Connection ~ 3500 4000
$Comp
L power:VMEM #PWR011
U 1 1 5D87AE9C
P 7200 5400
F 0 "#PWR011" H 7200 5250 50  0001 C CNN
F 1 "VMEM" H 7215 5573 50  0000 C CNN
F 2 "" H 7200 5400 50  0001 C CNN
F 3 "" H 7200 5400 50  0001 C CNN
	1    7200 5400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7550 5650 7500 5650
$Comp
L Device:R R16
U 1 1 5D87AEA3
P 7700 5650
F 0 "R16" V 7493 5650 50  0000 C CNN
F 1 "220" V 7584 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7630 5650 50  0001 C CNN
F 3 "~" H 7700 5650 50  0001 C CNN
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
L Digikey-Transistors:MMBT4403LT1G Q11
U 1 1 5D87AEB5
P 7300 5650
F 0 "Q11" H 7488 5703 60  0000 L CNN
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
	1    7300 5650
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5D87AEBB
P 6800 6050
F 0 "R12" V 6593 6050 50  0000 C CNN
F 1 "6R8" V 6684 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6730 6050 50  0001 C CNN
F 3 "~" H 6800 6050 50  0001 C CNN
	1    6800 6050
	0    -1   1    0   
$EndComp
$Comp
L Digikey-Transistors:MMBT4401LT1G Q12
U 1 1 5D87AECA
P 7300 6300
F 0 "Q12" H 7488 6353 60  0000 L CNN
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
	1    7300 6300
	-1   0    0    -1  
$EndComp
Text GLabel 7900 6300 2    50   Input ~ 0
Q10N
Wire Wire Line
	7900 6300 7850 6300
$Comp
L Device:R R17
U 1 1 5D87AED2
P 7700 6300
F 0 "R17" V 7493 6300 50  0000 C CNN
F 1 "220" V 7584 6300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7630 6300 50  0001 C CNN
F 3 "~" H 7700 6300 50  0001 C CNN
	1    7700 6300
	0    -1   1    0   
$EndComp
Wire Wire Line
	7550 6300 7500 6300
$Comp
L power:GNDPWR #PWR012
U 1 1 5D87AED9
P 7200 6500
F 0 "#PWR012" H 7200 6300 50  0001 C CNN
F 1 "GNDPWR" H 7204 6346 50  0000 C CNN
F 2 "" H 7200 6450 50  0001 C CNN
F 3 "" H 7200 6450 50  0001 C CNN
	1    7200 6500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6950 6050 7200 6050
Wire Wire Line
	7200 6050 7200 6100
Wire Wire Line
	7200 5850 7200 6050
Connection ~ 7200 6050
Text GLabel 3000 4550 2    50   Output ~ 0
SENSE1
Text GLabel 3000 4700 2    50   Output ~ 0
SENSE2
Wire Wire Line
	2550 4600 2550 4700
Wire Wire Line
	2550 4700 3000 4700
Wire Wire Line
	2800 4400 2900 4400
Wire Wire Line
	2900 4400 2900 4550
Wire Wire Line
	2900 4550 3000 4550
Wire Wire Line
	3550 4000 3550 3350
Wire Wire Line
	3550 3350 6400 3350
Wire Wire Line
	6400 3350 6400 4400
Wire Wire Line
	6400 4400 6650 4400
Wire Wire Line
	3600 3450 6350 3450
Wire Wire Line
	6350 3450 6350 6050
Wire Wire Line
	6350 6050 6650 6050
Connection ~ 3600 4100
Wire Wire Line
	3600 4100 3600 3450
Wire Wire Line
	3600 4300 3300 4300
Wire Wire Line
	3600 4100 3600 4300
Wire Wire Line
	3300 4100 3600 4100
$Comp
L Device:R R1
U 1 1 5D48D653
P 1250 6050
F 0 "R1" V 1043 6050 50  0000 C CNN
F 1 "220" V 1134 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1180 6050 50  0001 C CNN
F 3 "~" H 1250 6050 50  0001 C CNN
	1    1250 6050
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5D48DBED
P 1250 7500
F 0 "R2" V 1043 7500 50  0000 C CNN
F 1 "220" V 1134 7500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1180 7500 50  0001 C CNN
F 3 "~" H 1250 7500 50  0001 C CNN
	1    1250 7500
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 6250 1850 6250
$Comp
L Digikey-Transistors:MMBT4403LT1G Q1
U 1 1 5D49119D
P 1750 6050
F 0 "Q1" H 1938 6103 60  0000 L CNN
F 1 "MMBT4403LT1G" H 1938 5997 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 1950 6250 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 1950 6350 60  0001 L CNN
F 4 "MMBT4403LT1GOSCT-ND" H 1950 6450 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4403LT1G" H 1950 6550 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 1950 6650 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 1950 6750 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4403LT1-D.PDF" H 1950 6850 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4403LT1G/MMBT4403LT1GOSCT-ND/1139820" H 1950 6950 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS PNP 40V 0.6A SOT23" H 1950 7050 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 1950 7150 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1950 7250 60  0001 L CNN "Status"
	1    1750 6050
	1    0    0    -1  
$EndComp
Connection ~ 1850 6250
Wire Wire Line
	1850 6250 2550 6250
$Comp
L Diode:BAW56S D1
U 1 1 5D491FF5
P 1200 6550
F 0 "D1" H 1200 6765 50  0000 C CNN
F 1 "BAW56S" H 1200 6674 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 1200 6375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV756S_BAW56_SER.pdf" H 1200 6650 50  0001 C CNN
	1    1200 6550
	1    0    0    -1  
$EndComp
$Comp
L Diode:BAW56S D1
U 2 1 5D492F96
P 1500 6550
F 0 "D1" H 1500 6765 50  0000 C CNN
F 1 "BAW56S" H 1500 6674 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 1500 6375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV756S_BAW56_SER.pdf" H 1500 6650 50  0001 C CNN
	2    1500 6550
	-1   0    0    -1  
$EndComp
Connection ~ 1350 6550
$Comp
L Diode:BAW56S D1
U 3 1 5D493D32
P 2400 6550
F 0 "D1" H 2400 6765 50  0000 C CNN
F 1 "BAW56S" H 2400 6674 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 2400 6375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV756S_BAW56_SER.pdf" H 2400 6650 50  0001 C CNN
	3    2400 6550
	1    0    0    -1  
$EndComp
$Comp
L Diode:BAW56S D1
U 4 1 5D494DBE
P 2700 6550
F 0 "D1" H 2700 6765 50  0000 C CNN
F 1 "BAW56S" H 2700 6674 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 2700 6375 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV756S_BAW56_SER.pdf" H 2700 6650 50  0001 C CNN
	4    2700 6550
	-1   0    0    -1  
$EndComp
Connection ~ 2550 6550
$Comp
L Diode:BAV70S D2
U 1 1 5D4959E2
P 1350 7050
F 0 "D2" H 1350 7266 50  0000 C CNN
F 1 "BAV70S" H 1350 7175 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 1350 7050 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV70_SER.pdf" H 1350 7050 50  0001 C CNN
	1    1350 7050
	1    0    0    -1  
$EndComp
$Comp
L Diode:BAV70S D2
U 2 1 5D4967AE
P 2550 7050
F 0 "D2" H 2550 7266 50  0000 C CNN
F 1 "BAV70S" H 2550 7175 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 2550 7050 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV70_SER.pdf" H 2550 7050 50  0001 C CNN
	2    2550 7050
	1    0    0    -1  
$EndComp
$Comp
L Digikey-Transistors:MMBT4401LT1G Q2
U 1 1 5D4976F4
P 1750 7500
F 0 "Q2" H 1938 7553 60  0000 L CNN
F 1 "MMBT4401LT1G" H 1938 7447 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 1950 7700 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 1950 7800 60  0001 L CNN
F 4 "MMBT4401LT1GOSCT-ND" H 1950 7900 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4401LT1G" H 1950 8000 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 1950 8100 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 1950 8200 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 1950 8300 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4401LT1G/MMBT4401LT1GOSCT-ND/1139819" H 1950 8400 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SOT23" H 1950 8500 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 1950 8600 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1950 8700 60  0001 L CNN "Status"
	1    1750 7500
	1    0    0    -1  
$EndComp
$Comp
L Diode:BAT54AW D?
U 1 1 5D4E500E
P -400 6500
F 0 "D?" H -400 6633 50  0000 C CNN
F 1 "BAT54AW" H -400 6724 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H -325 6625 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAT54W_SER.pdf" H -520 6500 50  0001 C CNN
	1    -400 6500
	-1   0    0    1   
$EndComp
$Comp
L Diode:BAT54CW D?
U 1 1 5D4E8A7D
P -400 7200
F 0 "D?" H -400 7425 50  0000 C CNN
F 1 "BAT54CW" H -400 7334 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H -325 7325 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAT54W_SER.pdf" H -480 7200 50  0001 C CNN
	1    -400 7200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
