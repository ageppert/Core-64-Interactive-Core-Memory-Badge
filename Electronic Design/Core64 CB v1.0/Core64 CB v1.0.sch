EESchema Schematic File Version 4
LIBS:Core64 CB v1.0-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 2
Title "Core64 CB (Core Board)"
Date "2022-06-02"
Rev "1.0"
Comp "Concept and design by Andy Geppert @ www.MachineIdeas.com"
Comment1 "Visit www.Core64.io for information on assembly and optional features."
Comment2 ""
Comment3 "Production Release"
Comment4 "All capacitors ceramic X7R unless otherwise noted."
$EndDescr
Text GLabel 5350 2550 3    50   Input ~ 0
XB0
Text GLabel 5450 2550 3    50   Input ~ 0
XB1
Text GLabel 5550 2550 3    50   Input ~ 0
XB2
Text GLabel 5650 2550 3    50   Input ~ 0
XB3
Text GLabel 5750 2550 3    50   Input ~ 0
XB4
Text GLabel 5850 2550 3    50   Input ~ 0
XB5
Text GLabel 5950 2550 3    50   Input ~ 0
XB6
Text GLabel 6050 2550 3    50   Input ~ 0
XB7
Text GLabel 5650 950  1    50   Input ~ 0
XT3-7
Text GLabel 5550 950  1    50   Input ~ 0
XT2-6
Text GLabel 5450 950  1    50   Input ~ 0
XT1-5
Text GLabel 5350 950  1    50   Input ~ 0
XT0-4
Text GLabel 8100 1800 0    50   Output ~ 0
XB3
Text GLabel 8100 1700 0    50   Output ~ 0
XB2
Text GLabel 8100 1600 0    50   Output ~ 0
XB1
Text GLabel 8100 1500 0    50   Output ~ 0
XB0
Text GLabel 8100 1900 0    50   Output ~ 0
XB4
Text GLabel 8100 2000 0    50   Output ~ 0
XB5
Text GLabel 8100 2100 0    50   Output ~ 0
XB6
Text GLabel 8100 2200 0    50   Output ~ 0
XB7
Text GLabel 8100 1400 0    50   Output ~ 0
H_XT0-4
Text GLabel 8100 1300 0    50   Output ~ 0
H_XT1-5
Text GLabel 8100 1200 0    50   Output ~ 0
H_XT2-6
Text GLabel 8100 1100 0    50   Output ~ 0
H_XT3-7
Wire Wire Line
	5350 1200 5750 1200
Wire Wire Line
	5750 1200 5750 1250
Wire Wire Line
	5350 1200 5350 1250
Wire Wire Line
	5450 1250 5450 1150
Wire Wire Line
	5450 1150 5850 1150
Wire Wire Line
	5850 1150 5850 1250
Wire Wire Line
	5550 1250 5550 1100
Wire Wire Line
	5550 1100 5950 1100
Wire Wire Line
	5950 1100 5950 1250
Wire Wire Line
	5650 1250 5650 1050
Wire Wire Line
	5650 1050 6050 1050
Wire Wire Line
	6050 1050 6050 1250
Wire Wire Line
	5350 1200 5350 950 
Connection ~ 5350 1200
Wire Wire Line
	5450 1150 5450 950 
Connection ~ 5450 1150
Wire Wire Line
	5550 1100 5550 950 
Connection ~ 5550 1100
Wire Wire Line
	5650 1050 5650 950 
Connection ~ 5650 1050
Wire Wire Line
	8100 1100 8350 1100
Wire Wire Line
	8100 1200 8350 1200
Wire Wire Line
	8100 1300 8350 1300
Wire Wire Line
	8100 1400 8350 1400
Text GLabel 5000 2250 0    50   Input ~ 0
YL7
Text GLabel 5000 2150 0    50   Input ~ 0
YL6
Text GLabel 5000 2050 0    50   Input ~ 0
YL5
Text GLabel 5000 1950 0    50   Input ~ 0
YL4
Text GLabel 5000 1850 0    50   Input ~ 0
YL3
Text GLabel 5000 1750 0    50   Input ~ 0
YL2
Text GLabel 5000 1650 0    50   Input ~ 0
YL1
Text GLabel 5000 1550 0    50   Input ~ 0
YL0
Text GLabel 3550 1250 2    50   Output ~ 0
H_YL1
Text GLabel 3550 1150 2    50   Output ~ 0
H_YL0
Text GLabel 3550 1350 2    50   Output ~ 0
H_YL2
Text GLabel 3550 1450 2    50   Output ~ 0
H_YL3
Text GLabel 3550 1550 2    50   Output ~ 0
YL4
Text GLabel 3550 1650 2    50   Output ~ 0
YL5
Text GLabel 3550 1750 2    50   Output ~ 0
YL6
Text GLabel 3550 1850 2    50   Output ~ 0
YL7
Wire Wire Line
	3500 1550 3500 1750
Wire Wire Line
	3500 1750 3550 1750
Wire Wire Line
	3550 1150 2900 1150
Wire Wire Line
	2900 1250 3550 1250
Wire Wire Line
	2900 1350 3550 1350
Wire Wire Line
	3550 1450 2900 1450
Wire Wire Line
	3550 1550 3500 1550
Wire Wire Line
	3500 1550 2900 1550
Connection ~ 3500 1550
Wire Wire Line
	6750 1950 6400 1950
Wire Wire Line
	6750 1550 6750 1950
Wire Wire Line
	6400 1550 6750 1550
Wire Wire Line
	6650 1650 6400 1650
Wire Wire Line
	6650 2050 6650 1650
Wire Wire Line
	6400 2050 6650 2050
Wire Wire Line
	6550 1750 6400 1750
Wire Wire Line
	6550 2150 6550 1750
Wire Wire Line
	6400 2150 6550 2150
Wire Wire Line
	6450 1850 6400 1850
Wire Wire Line
	6450 2250 6450 1850
Wire Wire Line
	6400 2250 6450 2250
Wire Wire Line
	3450 1850 3550 1850
Wire Wire Line
	3450 1650 3450 1850
Wire Wire Line
	3550 1650 3450 1650
Text Notes 2550 2850 2    59   ~ 0
SILKSCREEN:\nLSIG\nUSR1\nYL0\nYL1\nYL2\nYL3\nYL4,6\nYL5,7\nSEN2\nSEN1\nSCL\nSDA\n3V3\nGNDD\nCP8\nCP7\nCP6\nCP5\nUSR2\nUSR3
Wire Wire Line
	3450 1650 2900 1650
Connection ~ 3450 1650
Wire Wire Line
	8100 2200 8350 2200
Wire Wire Line
	8100 2100 8350 2100
$Comp
L Connector:Conn_01x20_Male J2
U 1 1 5E723F12
P 8550 1800
F 0 "J2" H 8550 2850 50  0000 C CNN
F 1 "929834-04-36-RK" H 9400 2850 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x20_P2.54mm_Vertical_SMD_and_TH_Pin1Right" H 8550 1800 50  0001 C CNN
F 3 "~" H 8550 1800 50  0001 C CNN
F 4 "Amphenol ICC (FCI)" H 8550 1800 50  0001 C CNN "Alt. Manufacturer"
F 5 "77311-420-36LF" H 8550 1800 50  0001 C CNN "Alt. Mfg P/N"
F 6 "929834-04-36-RK" H 8550 1800 50  0001 C CNN "Mfg P/N"
F 7 "NO" H 8550 1800 50  0001 C CNN "Insert"
F 8 "3M" H 8550 1800 50  0001 C CNN "Manufacturer_Name"
F 9 "Mouser" H 8550 1800 50  0001 C CNN "Supplier (Primary)"
F 10 "517-929834-04-36-RK" H 8550 1800 50  0001 C CNN "Supplier SKU (Primary)"
	1    8550 1800
	-1   0    0    -1  
$EndComp
$Comp
L CORE_64_LIBRARY:Core_Memory_8x8_Array_Front_Facing CM1
U 1 1 5E79BDE1
P 5700 1900
F 0 "CM1" H 5050 2550 50  0000 C CNN
F 1 "Core_Memory_8x8_Array_Front_Facing" H 5700 950 50  0000 C CNN
F 2 "Core_Memory_8x8_Array:core_64_6.75mm_square_v0.5_front_facing" H 5750 1950 50  0001 C CNN
F 3 "" H 5750 1950 50  0001 C CNN
F 4 "NO" H 5700 1900 50  0001 C CNN "Insert"
F 5 "Opening for the cores and wire grid" H 5700 1900 50  0001 C CNN "Description"
	1    5700 1900
	1    0    0    -1  
$EndComp
Text GLabel 4900 2600 0    50   Output ~ 0
SENSE1
Text GLabel 4900 2500 0    50   Output ~ 0
SENSE2
Wire Wire Line
	4900 2600 5250 2600
Wire Wire Line
	5250 2600 5250 2550
Wire Wire Line
	8350 1500 8100 1500
Wire Wire Line
	8350 1600 8100 1600
Wire Wire Line
	8350 1700 8100 1700
Wire Wire Line
	8100 1800 8350 1800
Wire Wire Line
	8350 1900 8100 1900
Wire Wire Line
	8100 2000 8350 2000
Text GLabel 3050 1850 2    50   Input ~ 0
SENSE1
Text GLabel 3050 1750 2    50   Input ~ 0
SENSE2
Wire Wire Line
	5000 2350 4950 2350
Wire Wire Line
	4950 2350 4950 2500
Wire Wire Line
	4950 2500 4900 2500
Wire Wire Line
	3050 1850 2900 1850
Wire Wire Line
	3850 2250 3850 2350
Wire Wire Line
	2900 2150 3050 2150
Wire Wire Line
	2900 2250 3850 2250
Wire Wire Line
	2900 2350 3300 2350
Wire Wire Line
	3300 2450 2900 2450
Wire Wire Line
	2900 2550 3300 2550
Wire Wire Line
	3300 2650 2900 2650
Wire Wire Line
	2900 1750 3050 1750
Text GLabel 3050 1950 2    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 3050 2050 2    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	2900 1950 3050 1950
Wire Wire Line
	2900 2050 3050 2050
Text GLabel 3050 2150 2    50   Input ~ 0
3V3_800mA
Text Notes 1700 4800 0    50   ~ 0
DIGITAL LOGIC GROUND
$Comp
L Sensor_Magnetic:SI7210 U1
U 1 1 5E88BBFB
P 2150 4200
F 0 "U1" H 2125 4470 50  0000 C CNN
F 1 "SI7210-B-00-IV" H 2125 4377 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2150 3850 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Infineon-TLV493D-A1B6-DS-v01_00-EN.pdf?fileId=5546d462525dbac40152a6b85c760e80" H 2000 4700 50  0001 C CNN
F 4 "YES" H 2150 4200 50  0001 C CNN "Insert"
F 5 "Silicon Labs" H 2150 4200 50  0001 C CNN "Manufacturer_Name"
F 6 "SI7210-B-00-IV" H 2150 4200 50  0001 C CNN "Mfg P/N"
F 7 "None" H 2150 4200 50  0001 C CNN "Alt. Manufacturer"
F 8 "None" H 2150 4200 50  0001 C CNN "Alt. Mfg P/N"
F 9 "Si7210 Series I2C Hall Effect Magnetic Position and Temperature Sensor" H 2150 4200 50  0001 C CNN "Description"
F 10 "Arrow" H 2150 4200 50  0001 C CNN "Supplier (2nd)"
F 11 "Newark" H 2150 4200 50  0001 C CNN "Supplier (Primary)"
F 12 "si7210-b-00-iv" H 2150 4200 50  0001 C CNN "Supplier SKU (2nd)"
F 13 "31AC1357" H 2150 4200 50  0001 C CNN "Supplier SKU (Primary)"
	1    2150 4200
	1    0    0    -1  
$EndComp
Text GLabel 1200 3850 0    50   BiDi ~ 0
I2C_CLOCK
$Comp
L power:GNDD #PWR03
U 1 1 5E8DA46A
P 1500 4650
F 0 "#PWR03" H 1500 4400 50  0001 C CNN
F 1 "GNDD" H 1504 4495 50  0000 C CNN
F 2 "" H 1500 4650 50  0001 C CNN
F 3 "" H 1500 4650 50  0001 C CNN
	1    1500 4650
	1    0    0    -1  
$EndComp
Text GLabel 1200 3550 0    50   Input ~ 0
3V3_800mA
Wire Wire Line
	1750 4300 1500 4300
Wire Wire Line
	2650 4400 2650 4200
Wire Wire Line
	2850 3550 1200 3550
$Comp
L Sensor_Magnetic:SI7210 U2
U 1 1 5E8F8CC9
P 4550 4200
F 0 "U2" H 4525 4470 50  0000 C CNN
F 1 "SI7210-B-02-IV" H 4525 4377 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4550 3850 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Infineon-TLV493D-A1B6-DS-v01_00-EN.pdf?fileId=5546d462525dbac40152a6b85c760e80" H 4400 4700 50  0001 C CNN
F 4 "YES" H 4550 4200 50  0001 C CNN "Insert"
F 5 "Silicon Labs" H 4550 4200 50  0001 C CNN "Manufacturer_Name"
F 6 "SI7210-B-02-IV" H 4550 4200 50  0001 C CNN "Mfg P/N"
F 7 "None" H 4550 4200 50  0001 C CNN "Alt. Manufacturer"
F 8 "None" H 4550 4200 50  0001 C CNN "Alt. Mfg P/N"
F 9 "Si7210 Series I2C Hall Effect Magnetic Position and Temperature Sensor" H 4550 4200 50  0001 C CNN "Description"
F 10 "Mouser" H 4550 4200 50  0001 C CNN "Supplier (2nd)"
F 11 "Newark" H 4550 4200 50  0001 C CNN "Supplier (Primary)"
F 12 "634-SI7210-B-02-IV" H 4550 4200 50  0001 C CNN "Supplier SKU (2nd)"
F 13 "31AC1359" H 4550 4200 50  0001 C CNN "Supplier SKU (Primary)"
	1    4550 4200
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Magnetic:SI7210 U3
U 1 1 5E90A275
P 7050 4200
F 0 "U3" H 7025 4470 50  0000 C CNN
F 1 "SI7210-B-03-IV" H 7025 4377 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 7050 3850 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Infineon-TLV493D-A1B6-DS-v01_00-EN.pdf?fileId=5546d462525dbac40152a6b85c760e80" H 6900 4700 50  0001 C CNN
F 4 "YES" H 7050 4200 50  0001 C CNN "Insert"
F 5 "Silicon Labs" H 7050 4200 50  0001 C CNN "Manufacturer_Name"
F 6 "SI7210-B-03-IV" H 7050 4200 50  0001 C CNN "Mfg P/N"
F 7 "None" H 7050 4200 50  0001 C CNN "Alt. Manufacturer"
F 8 "None" H 7050 4200 50  0001 C CNN "Alt. Mfg P/N"
F 9 "Si7210 Series I2C Hall Effect Magnetic Position and Temperature Sensor" H 7050 4200 50  0001 C CNN "Description"
F 10 "Mouser" H 7050 4200 50  0001 C CNN "Supplier (2nd)"
F 11 "Newark" H 7050 4200 50  0001 C CNN "Supplier (Primary)"
F 12 "634-SI7210-B-03-IV" H 7050 4200 50  0001 C CNN "Supplier SKU (2nd)"
F 13 "31AC1360" H 7050 4200 50  0001 C CNN "Supplier SKU (Primary)"
	1    7050 4200
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Magnetic:SI7210 U4
U 1 1 5E90A741
P 9300 4200
F 0 "U4" H 9275 4470 50  0000 C CNN
F 1 "SI7210-B-04-IV" H 9275 4377 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 9300 3850 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Infineon-TLV493D-A1B6-DS-v01_00-EN.pdf?fileId=5546d462525dbac40152a6b85c760e80" H 9150 4700 50  0001 C CNN
F 4 "YES" H 9300 4200 50  0001 C CNN "Insert"
F 5 "Silicon Labs" H 9300 4200 50  0001 C CNN "Manufacturer_Name"
F 6 "SI7210-B-04-IV" H 9300 4200 50  0001 C CNN "Mfg P/N"
F 7 "None" H 9300 4200 50  0001 C CNN "Alt. Manufacturer"
F 8 "None" H 9300 4200 50  0001 C CNN "Alt. Mfg P/N"
F 9 "Si7210 Series I2C Hall Effect Magnetic Position and Temperature Sensor" H 9300 4200 50  0001 C CNN "Description"
F 10 "Arrow" H 9300 4200 50  0001 C CNN "Supplier (2nd)"
F 11 "Mouser" H 9300 4200 50  0001 C CNN "Supplier (Primary)"
F 12 "si7210-b-04-iv" H 9300 4200 50  0001 C CNN "Supplier SKU (2nd)"
F 13 "634-SI7210-B-04-IV" H 9300 4200 50  0001 C CNN "Supplier SKU (Primary)"
	1    9300 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4300 3900 4300
Wire Wire Line
	3900 4300 3900 4600
Wire Wire Line
	8650 4600 8650 4300
Wire Wire Line
	8650 4300 8900 4300
Wire Wire Line
	6650 4300 6400 4300
Wire Wire Line
	6400 4300 6400 4600
Connection ~ 6400 4600
Connection ~ 2850 3550
Wire Wire Line
	1700 4200 1750 4200
Text GLabel 1200 3700 0    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	1200 3850 1600 3850
Wire Wire Line
	1700 4200 1700 3700
Connection ~ 1700 3700
Wire Wire Line
	1600 4400 1600 3850
Wire Wire Line
	1600 4400 1750 4400
Connection ~ 1600 3850
Wire Wire Line
	1200 3700 1700 3700
Wire Wire Line
	8900 4200 8850 4200
Wire Wire Line
	8850 4200 8850 3700
Wire Wire Line
	8900 4400 8750 4400
Wire Wire Line
	8750 4400 8750 3850
Wire Wire Line
	1600 3850 4000 3850
Wire Wire Line
	1700 3700 4100 3700
Wire Wire Line
	6650 4200 6600 4200
Wire Wire Line
	6650 4400 6500 4400
Wire Wire Line
	6500 4400 6500 3850
Connection ~ 6500 3850
Wire Wire Line
	4150 4200 4100 4200
Wire Wire Line
	4100 4200 4100 3700
Connection ~ 4100 3700
Wire Wire Line
	4100 3700 6600 3700
Wire Wire Line
	4150 4400 4000 4400
Wire Wire Line
	4000 4400 4000 3850
Connection ~ 4000 3850
Wire Wire Line
	4000 3850 6500 3850
Wire Wire Line
	6500 3850 8750 3850
Wire Wire Line
	6600 4200 6600 3700
Connection ~ 6600 3700
Wire Wire Line
	6600 3700 8850 3700
$Comp
L Device:C C1
U 1 1 5EACD96D
P 2850 4400
F 0 "C1" H 2941 4446 50  0000 L CNN
F 1 "0.1uF" H 2941 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2850 4400 50  0001 C CNN
F 3 "~" H 2850 4400 50  0001 C CNN
F 4 "C396718" H 2850 4400 50  0001 C CNN "LCSC"
F 5 "YES" H 2850 4400 50  0001 C CNN "Insert"
F 6 "Capacitor" H 2850 4400 50  0001 C CNN "Description"
F 7 "X7R ceramic" H 2850 4400 50  0001 C CNN "Value_Modifer"
	1    2850 4400
	1    0    0    -1  
$EndComp
Connection ~ 8650 4600
Text Notes 3350 5100 0    50   ~ 0
I2C configurable hall sensors for field strength measurement. Not a simple on/off switch.\nSilicon Labs SI7210-B-xx-IV (00, 02, 03, 04)\nLow (push-pull) up to 20 mT, SOT23-5\nRecommended sensitivity ± (N and S) 3-7 mT (30-70 Gauss)
Text Notes 3750 2800 0    50   ~ 0
DIGITAL\nLOGIC\nGROUND
Text GLabel 8350 2900 2    50   Input ~ 0
SAO_GPIO2
Text GLabel 8350 3000 2    50   Input ~ 0
SAO_GPIO1
Wire Wire Line
	8250 2900 8350 2900
Wire Wire Line
	8250 2400 8250 2900
Wire Wire Line
	8350 3000 8050 3000
Text Notes 7150 5600 0    50   ~ 0
SILKSCREEN: ALS+PROX I2C 0x38
$Comp
L power:GNDD #PWR05
U 1 1 5E880DFA
P 3850 2350
F 0 "#PWR05" H 3850 2100 50  0001 C CNN
F 1 "GNDD" H 3854 2195 50  0000 C CNN
F 2 "" H 3850 2350 50  0001 C CNN
F 3 "" H 3850 2350 50  0001 C CNN
	1    3850 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2500 8350 2500
Wire Wire Line
	7750 2400 8250 2400
Connection ~ 8250 2400
Wire Wire Line
	8250 2400 8350 2400
Wire Wire Line
	7750 2600 8350 2600
Text Notes 7100 5450 0    100  ~ 0
AMBIENT LIGHT SENSOR I2C 0x29 or 0x38\n(SEE SECOND SHEET FOR ALTERNATIVES)
Text Notes 3950 7500 0    100  ~ 0
SILKSCREEN GRAPHICS
Text Notes 650  3400 0    100  ~ 0
HALL SENSORS (SEE SECOND SHEET FOR HALL SWITCH ALTERNATES)
Text Notes 600  700  0    100  ~ 0
CORE MATRIX
Text Notes 1650 3500 0    50   ~ 0
SILKSCREEN: 0x30
Text Notes 4050 3500 0    50   ~ 0
SILKSCREEN: 0x31
Text Notes 6550 3500 0    50   ~ 0
SILKSCREEN: 0x32
Text Notes 8800 3500 0    50   ~ 0
SILKSCREEN: 0x33
Wire Wire Line
	2500 4400 2650 4400
Wire Wire Line
	1500 4300 1500 4600
Wire Wire Line
	3900 4600 2850 4600
Connection ~ 3900 4600
Connection ~ 1500 4600
Wire Wire Line
	1500 4600 1500 4650
Connection ~ 2850 4600
Wire Wire Line
	2850 4600 1500 4600
Wire Wire Line
	2850 4250 2850 4200
Wire Wire Line
	2850 4200 2650 4200
Wire Wire Line
	8650 4600 10000 4600
Text Notes 4200 1600 0    50   ~ 0
SILKSCREEN:\nPixel 0-7 ->
Text Notes 6800 1600 0    50   ~ 0
SILKSCREEN:\n<-bit 63-56
Text Notes 6800 2250 0    50   ~ 0
SILKSCREEN:\n<-bit 7-0
Text Notes 4200 2300 0    50   ~ 0
SILKSCREEN:\nPixel 56-63->
Text Notes 600  7950 0    50   ~ 0
CORE BOARD | PCB P/N | VERSION (REL. DATE) | PCBA P/N\nANDY GEPPERT   \nwww.MachineIdeas.com\nInteractive Core Memory\nwww.Core64.io
Text GLabel 3300 2350 2    50   Output ~ 0
PLANE_8
Text GLabel 3300 2450 2    50   Output ~ 0
PLANE_7
Text GLabel 3300 2550 2    50   Output ~ 0
PLANE_6
Text GLabel 3300 2650 2    50   Output ~ 0
PLANE_5
Text GLabel 7750 2600 0    50   Output ~ 0
PLANE_4
Text GLabel 7750 2500 0    50   Output ~ 0
PLANE_3
Text GLabel 7750 2400 0    50   Output ~ 0
PLANE_2
Text GLabel 7750 2300 0    50   Output ~ 0
PLANE_1
Wire Wire Line
	8350 2300 8050 2300
Wire Wire Line
	8050 3000 8050 2300
Connection ~ 8050 2300
Wire Wire Line
	8050 2300 7750 2300
Text Notes 600  7500 0    100  ~ 0
SILKSCREEN MISC.
$Comp
L CORE_64_LIBRARY:Core_64_Logo_9mm_tall L1
U 1 1 5F3DC9AF
P 3950 7650
F 0 "L1" H 3975 7697 50  0000 L CNN
F 1 "Core_64_Logo_9mm_tall" H 3975 7604 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Core64_Logo_9mm_tall" H 3950 7650 50  0001 C CNN
F 3 "" H 3950 7650 50  0001 C CNN
F 4 "NO" H 3950 7650 50  0001 C CNN "Insert"
F 5 "Silkscreen" H 3950 7650 50  0001 C CNN "Description"
	1    3950 7650
	1    0    0    -1  
$EndComp
$Comp
L CORE_64_LIBRARY:Core_64_M-+S_Buttons_4mm L2
U 1 1 5F41CA57
P 5000 7650
F 0 "L2" H 5025 7697 50  0000 L CNN
F 1 "Core_64_M-+S_Buttons_4mm" H 5025 7604 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Core64-M_-_+_S_Buttons" H 5000 7650 50  0001 C CNN
F 3 "" H 5000 7650 50  0001 C CNN
F 4 "NO" H 5000 7650 50  0001 C CNN "Insert"
F 5 "Silkscreen" H 5000 7650 50  0001 C CNN "Description"
	1    5000 7650
	1    0    0    -1  
$EndComp
Text Notes 700  5600 0    100  ~ 0
REQUIRED: CONFIGURATION FOR SINGLE CORE PLANE
Text Notes 700  5850 0    50   ~ 0
STEP 1: Solder eight SJs JP9 through JP16.
Text Notes 700  6100 0    50   ~ 0
STEP 2: Do NOT solder any JPs JP1 through JP8.
Text Notes 700  6350 0    50   ~ 0
STEP 3: No additional components needed.
Text Notes 700  6600 0    50   ~ 0
STEP 4: See instructions on Logic Board, if any.
$Comp
L Device:R_Small R1
U 1 1 6020F18B
P 2550 4050
F 0 "R1" H 2609 4097 50  0000 L CNN
F 1 "10K" H 2609 4004 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2550 4050 50  0001 C CNN
F 3 "~" H 2550 4050 50  0001 C CNN
F 4 "C269724" H 2550 4050 50  0001 C CNN "LCSC"
F 5 "YES" H 2550 4050 50  0001 C CNN "Insert"
F 6 "Resistor" H 2550 4050 50  0001 C CNN "Description"
F 7 "10%" H 2550 4050 50  0001 C CNN "Value_Modifer"
	1    2550 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3950 2550 3900
Wire Wire Line
	2550 3900 2850 3900
Wire Wire Line
	2850 3900 2850 3550
Wire Wire Line
	2550 4150 2550 4200
Wire Wire Line
	2550 4200 2500 4200
Wire Wire Line
	2850 4550 2850 4600
Wire Wire Line
	2850 3900 2850 4200
Connection ~ 2850 3900
Connection ~ 2850 4200
Wire Wire Line
	3900 4600 5250 4600
Wire Wire Line
	5050 4400 5050 4200
$Comp
L Device:C C2
U 1 1 602AD09E
P 5250 4400
F 0 "C2" H 5341 4446 50  0000 L CNN
F 1 "0.1uF" H 5341 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5250 4400 50  0001 C CNN
F 3 "~" H 5250 4400 50  0001 C CNN
F 4 "C396718" H 5250 4400 50  0001 C CNN "LCSC"
F 5 "YES" H 5250 4400 50  0001 C CNN "Insert"
F 6 "Capacitor" H 5250 4400 50  0001 C CNN "Description"
F 7 "X7R ceramic" H 5250 4400 50  0001 C CNN "Value_Modifer"
	1    5250 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4400 5050 4400
Wire Wire Line
	5250 4250 5250 4200
Wire Wire Line
	5250 4200 5050 4200
$Comp
L Device:R_Small R2
U 1 1 602AD0A7
P 4950 4050
F 0 "R2" H 5009 4097 50  0000 L CNN
F 1 "10K" H 5009 4004 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4950 4050 50  0001 C CNN
F 3 "~" H 4950 4050 50  0001 C CNN
F 4 "C269724" H 4950 4050 50  0001 C CNN "LCSC"
F 5 "YES" H 4950 4050 50  0001 C CNN "Insert"
F 6 "Resistor" H 4950 4050 50  0001 C CNN "Description"
F 7 "10%" H 4950 4050 50  0001 C CNN "Value_Modifer"
	1    4950 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3950 4950 3900
Wire Wire Line
	4950 3900 5250 3900
Wire Wire Line
	5250 3900 5250 3550
Wire Wire Line
	4950 4150 4950 4200
Wire Wire Line
	4950 4200 4900 4200
Wire Wire Line
	5250 3900 5250 4200
Connection ~ 5250 3900
Connection ~ 5250 4200
Wire Wire Line
	2850 3550 5250 3550
Wire Wire Line
	6400 4600 7750 4600
Wire Wire Line
	7550 4400 7550 4200
$Comp
L Device:C C3
U 1 1 602CA142
P 7750 4400
F 0 "C3" H 7841 4446 50  0000 L CNN
F 1 "0.1uF" H 7841 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7750 4400 50  0001 C CNN
F 3 "~" H 7750 4400 50  0001 C CNN
F 4 "C396718" H 7750 4400 50  0001 C CNN "LCSC"
F 5 "YES" H 7750 4400 50  0001 C CNN "Insert"
F 6 "Capacitor" H 7750 4400 50  0001 C CNN "Description"
F 7 "X7R ceramic" H 7750 4400 50  0001 C CNN "Value_Modifer"
	1    7750 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 4400 7550 4400
Wire Wire Line
	7750 4250 7750 4200
Wire Wire Line
	7750 4200 7550 4200
$Comp
L Device:R_Small R3
U 1 1 602CA14B
P 7450 4050
F 0 "R3" H 7509 4097 50  0000 L CNN
F 1 "10K" H 7509 4004 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 7450 4050 50  0001 C CNN
F 3 "~" H 7450 4050 50  0001 C CNN
F 4 "C269724" H 7450 4050 50  0001 C CNN "LCSC"
F 5 "YES" H 7450 4050 50  0001 C CNN "Insert"
F 6 "Resistor" H 7450 4050 50  0001 C CNN "Description"
F 7 "10%" H 7450 4050 50  0001 C CNN "Value_Modifer"
	1    7450 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3950 7450 3900
Wire Wire Line
	7450 3900 7750 3900
Wire Wire Line
	7750 3900 7750 3550
Wire Wire Line
	7450 4150 7450 4200
Wire Wire Line
	7450 4200 7400 4200
Wire Wire Line
	7750 3900 7750 4200
Connection ~ 7750 3900
Connection ~ 7750 4200
Wire Wire Line
	9800 4400 9800 4200
$Comp
L Device:C C4
U 1 1 602D4D5C
P 10000 4400
F 0 "C4" H 10091 4446 50  0000 L CNN
F 1 "0.1uF" H 10091 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10000 4400 50  0001 C CNN
F 3 "~" H 10000 4400 50  0001 C CNN
F 4 "C396718" H 10000 4400 50  0001 C CNN "LCSC"
F 5 "YES" H 10000 4400 50  0001 C CNN "Insert"
F 6 "Capacitor" H 10000 4400 50  0001 C CNN "Description"
F 7 "X7R ceramic" H 10000 4400 50  0001 C CNN "Value_Modifer"
	1    10000 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 4400 9800 4400
Wire Wire Line
	10000 4250 10000 4200
Wire Wire Line
	10000 4200 9800 4200
$Comp
L Device:R_Small R4
U 1 1 602D4D65
P 9700 4050
F 0 "R4" H 9759 4097 50  0000 L CNN
F 1 "10K" H 9759 4004 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9700 4050 50  0001 C CNN
F 3 "~" H 9700 4050 50  0001 C CNN
F 4 "C269724" H 9700 4050 50  0001 C CNN "LCSC"
F 5 "YES" H 9700 4050 50  0001 C CNN "Insert"
F 6 "Resistor" H 9700 4050 50  0001 C CNN "Description"
F 7 "10%" H 9700 4050 50  0001 C CNN "Value_Modifer"
	1    9700 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3950 9700 3900
Wire Wire Line
	9700 3900 10000 3900
Wire Wire Line
	10000 3900 10000 3550
Wire Wire Line
	9700 4150 9700 4200
Wire Wire Line
	9700 4200 9650 4200
Wire Wire Line
	10000 4550 10000 4600
Wire Wire Line
	10000 3900 10000 4200
Connection ~ 10000 3900
Connection ~ 10000 4200
Connection ~ 5250 3550
Wire Wire Line
	5250 3550 7750 3550
Connection ~ 7750 3550
Wire Wire Line
	7750 3550 10000 3550
Wire Wire Line
	5250 4550 5250 4600
Connection ~ 5250 4600
Wire Wire Line
	5250 4600 6400 4600
Wire Wire Line
	7750 4550 7750 4600
Connection ~ 7750 4600
Wire Wire Line
	7750 4600 8650 4600
NoConn ~ 2900 1050
$Comp
L Connector:Conn_01x20_Male J1
U 1 1 5E72894A
P 2700 1850
F 0 "J1" H 2700 2950 50  0000 C CNN
F 1 "929834-04-36-RK" H 3550 2950 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x20_P2.54mm_Vertical_SMD_and_TH_Pin1Right" H 2700 1850 50  0001 C CNN
F 3 "~" H 2700 1850 50  0001 C CNN
F 4 "Amphenol ICC (FCI)" H 2700 1850 50  0001 C CNN "Alt. Manufacturer"
F 5 "77311-420-36LF" H 2700 1850 50  0001 C CNN "Alt. Mfg P/N"
F 6 "929834-04-36-RK" H 2700 1850 50  0001 C CNN "Mfg P/N"
F 7 "NO" H 2700 1850 50  0001 C CNN "Insert"
F 8 "3M" H 2700 1850 50  0001 C CNN "Manufacturer_Name"
F 9 "Mouser" H 2700 1850 50  0001 C CNN "Supplier (Primary)"
F 10 "517-929834-04-36-RK" H 2700 1850 50  0001 C CNN "Supplier SKU (Primary)"
	1    2700 1850
	1    0    0    -1  
$EndComp
NoConn ~ 8350 1000
NoConn ~ 8350 900 
NoConn ~ 2900 950 
NoConn ~ 8350 2800
NoConn ~ 8350 2700
NoConn ~ 2900 2750
NoConn ~ 2900 2850
$Comp
L Device:C C5
U 1 1 60495262
P 8200 6150
F 0 "C5" H 7950 6200 50  0000 L CNN
F 1 "0.1uF" H 7850 6100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8238 6000 50  0001 C CNN
F 3 "~" H 8200 6150 50  0001 C CNN
F 4 "C396718" H 8200 6150 50  0001 C CNN "LCSC"
F 5 "NO" H 8200 6150 50  0001 C CNN "Insert"
F 6 "Capacitor" H 8200 6150 50  0001 C CNN "Description"
F 7 "X7R ceramic" H 8200 6150 50  0001 C CNN "Value_Modifer"
	1    8200 6150
	1    0    0    -1  
$EndComp
Text Notes 7850 6650 0    50   ~ 0
DIGITAL LOGIC GROUND
$Comp
L power:GNDD #PWR01
U 1 1 60495269
P 7700 6500
F 0 "#PWR01" H 7700 6250 50  0001 C CNN
F 1 "GNDD" H 7704 6345 50  0000 C CNN
F 2 "" H 7700 6500 50  0001 C CNN
F 3 "" H 7700 6500 50  0001 C CNN
	1    7700 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 5950 8200 6000
Text GLabel 7600 5950 0    50   Input ~ 0
3V3_800mA
Text GLabel 9900 5700 2    50   BiDi ~ 0
I2C_CLOCK
Wire Wire Line
	8200 5950 7700 5950
Connection ~ 8200 5950
Wire Wire Line
	8200 6400 8200 6300
$Sheet
S 5050 5600 1350 900 
U 604D6360
F0 "Core64 CB v1.0 Optional" 50
F1 "Core64 CB v1.0 Optional.sch" 50
$EndSheet
Text GLabel 9900 6050 2    50   Input ~ 0
ALS_INT
Wire Notes Line
	9050 1050 9050 2400
Text Notes 9800 1700 2    50   ~ 0
Required 14 pins
Text Notes 8700 2800 0    59   ~ 0
SILKSCREEN:\n5V0\nGND\nXT3,7\nXT2,6\nXT1,5\nXT0,4\nXB0\nXB1\nXB2\nXB3\nXB4\nXB5\nXB6\nXB7\nP1G1\nP2G2\nCP3\nCP4\n+BATT\n5VUSB
Text Notes 1400 1700 0    50   ~ 0
Required 12 pins
Wire Notes Line
	2150 1100 2150 2250
Text Notes 650  1250 0    50   ~ 0
Cut header 36-pin into\ntwo 16-pin headers,\ninstall centered with two\npins on each end not inserted.
Wire Wire Line
	8650 6050 8450 6050
Wire Wire Line
	8200 5950 8550 5950
Wire Wire Line
	9900 5700 9850 5700
Wire Wire Line
	9850 5700 9850 5600
Wire Wire Line
	8450 5600 8450 6050
Wire Wire Line
	8650 6150 8450 6150
Wire Wire Line
	8450 6150 8450 6400
Wire Wire Line
	8450 5600 9850 5600
Wire Wire Line
	9750 6250 9850 6250
Wire Wire Line
	9850 6150 9750 6150
Wire Wire Line
	8650 6250 8550 6250
Wire Wire Line
	8550 6250 8550 5950
Connection ~ 8550 5950
Wire Wire Line
	8550 5950 8650 5950
Wire Wire Line
	8200 6400 8450 6400
$Comp
L Device:C C6
U 1 1 6164A6E2
P 7700 6150
F 0 "C6" H 7450 6200 50  0000 L CNN
F 1 "10uF" H 7350 6100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7738 6000 50  0001 C CNN
F 3 "~" H 7700 6150 50  0001 C CNN
F 4 "C396718" H 7700 6150 50  0001 C CNN "LCSC"
F 5 "NO" H 7700 6150 50  0001 C CNN "Insert"
F 6 "Capacitor" H 7700 6150 50  0001 C CNN "Description"
F 7 "X7R ceramic" H 7700 6150 50  0001 C CNN "Value_Modifer"
	1    7700 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 6000 7700 5950
Wire Wire Line
	7600 5950 7700 5950
Connection ~ 7700 5950
Wire Wire Line
	9850 6250 9850 6150
$Comp
L RPR-0521RS:RPR-0521RS U5
U 1 1 61599E59
P 8650 5950
F 0 "U5" H 9200 6218 50  0000 C CNN
F 1 "RPR-0521RS" H 9200 6125 50  0000 C CNN
F 2 "Rohm_RPR-0521RS:RPR0521RS" H 9600 6050 50  0001 L CNN
F 3 "http://rohmfs.rohm.com/en/products/databook/datasheet/opto/optical_sensor/opto_module/rpr-0521rs-e.pdf" H 9600 5950 50  0001 L CNN
F 4 "I2C Digital Light Sensor, ALS w/prox 1.8V logic w/IrLED driver" H 9600 5850 50  0001 L CNN "Description"
F 5 "1.35" H 9600 5750 50  0001 L CNN "Height"
F 6 "ROHM Semiconductor" H 9600 5650 50  0001 L CNN "Manufacturer_Name"
F 7 "RPR-0521RS" H 9600 5550 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "755-RPR-0521RS" H 9600 5450 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/ROHM-Semiconductor/RPR-0521RS/?qs=pn%2Fzyis3XjF8Rw%252BiP8XjBQ%3D%3D" H 9600 5350 50  0001 L CNN "Mouser Price/Stock"
F 10 "NO" H 8650 5950 50  0001 C CNN "Insert"
F 11 "RPR-0521RS" H 8650 5950 50  0001 C CNN "Mfg P/N"
F 12 "None" H 8650 5950 50  0001 C CNN "Alt. Manufacturer"
F 13 "None" H 8650 5950 50  0001 C CNN "Alt. Mfg P/N"
	1    8650 5950
	1    0    0    -1  
$EndComp
Text GLabel 9900 5800 2    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	9750 5950 9850 5950
Wire Wire Line
	9850 5950 9850 5800
Wire Wire Line
	9850 5800 9900 5800
Wire Wire Line
	9750 6050 9900 6050
Wire Wire Line
	8200 6400 7700 6400
Wire Wire Line
	7700 6400 7700 6300
Connection ~ 8200 6400
Wire Wire Line
	7700 6500 7700 6400
Connection ~ 7700 6400
$EndSCHEMATC
