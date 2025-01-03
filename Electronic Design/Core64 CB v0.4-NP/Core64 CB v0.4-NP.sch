EESchema Schematic File Version 4
LIBS:Core64 CB v0.4-NP-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Core64 CB (Core Board)"
Date "2020-11-25"
Rev "0.4-NP"
Comp "Core64.MachineIdeas.com"
Comment1 "As prototyped"
Comment2 "Andy Geppert"
Comment3 ""
Comment4 "All non-polarized capacitors are X7R or X5R ceramic unless otherwise noted."
$EndDescr
Text GLabel 3950 2500 3    50   Input ~ 0
XB0
Text GLabel 4050 2500 3    50   Input ~ 0
XB1
Text GLabel 4150 2500 3    50   Input ~ 0
XB2
Text GLabel 4250 2500 3    50   Input ~ 0
XB3
Text GLabel 4350 2500 3    50   Input ~ 0
XB4
Text GLabel 4450 2500 3    50   Input ~ 0
XB5
Text GLabel 4550 2500 3    50   Input ~ 0
XB6
Text GLabel 4650 2500 3    50   Input ~ 0
XB7
Text GLabel 4250 900  1    50   Input ~ 0
XT3-7
Text GLabel 4150 900  1    50   Input ~ 0
XT2-6
Text GLabel 4050 900  1    50   Input ~ 0
XT1-5
Text GLabel 3950 900  1    50   Input ~ 0
XT0-4
Text GLabel 6700 1750 0    50   Output ~ 0
XB3
Text GLabel 6700 1650 0    50   Output ~ 0
XB2
Text GLabel 6700 1550 0    50   Output ~ 0
XB1
Text GLabel 6700 1450 0    50   Output ~ 0
XB0
Text GLabel 6700 1850 0    50   Output ~ 0
XB4
Text GLabel 6700 1950 0    50   Output ~ 0
XB5
Text GLabel 6700 2050 0    50   Output ~ 0
XB6
Text GLabel 6700 2150 0    50   Output ~ 0
XB7
Text GLabel 6700 1350 0    50   Output ~ 0
XT0-4
Text GLabel 6700 1250 0    50   Output ~ 0
XT1-5
Text GLabel 6700 1150 0    50   Output ~ 0
XT2-6
Text GLabel 6700 1050 0    50   Output ~ 0
XT3-7
Wire Wire Line
	3950 1150 4350 1150
Wire Wire Line
	4350 1150 4350 1200
Wire Wire Line
	3950 1150 3950 1200
Wire Wire Line
	4050 1200 4050 1100
Wire Wire Line
	4050 1100 4450 1100
Wire Wire Line
	4450 1100 4450 1200
Wire Wire Line
	4150 1200 4150 1050
Wire Wire Line
	4150 1050 4550 1050
Wire Wire Line
	4550 1050 4550 1200
Wire Wire Line
	4250 1200 4250 1000
Wire Wire Line
	4250 1000 4650 1000
Wire Wire Line
	4650 1000 4650 1200
Wire Wire Line
	3950 1150 3950 900 
Connection ~ 3950 1150
Wire Wire Line
	4050 1100 4050 900 
Connection ~ 4050 1100
Wire Wire Line
	4150 1050 4150 900 
Connection ~ 4150 1050
Wire Wire Line
	4250 1000 4250 900 
Connection ~ 4250 1000
Wire Wire Line
	6700 1050 6950 1050
Wire Wire Line
	6700 1150 6950 1150
Wire Wire Line
	6700 1250 6950 1250
Wire Wire Line
	6700 1350 6950 1350
Text GLabel 3600 2200 0    50   Input ~ 0
YL7
Text GLabel 3600 2100 0    50   Input ~ 0
YL6
Text GLabel 3600 2000 0    50   Input ~ 0
YL5
Text GLabel 3600 1900 0    50   Input ~ 0
YL4
Text GLabel 3600 1800 0    50   Input ~ 0
YL3
Text GLabel 3600 1700 0    50   Input ~ 0
YL2
Text GLabel 3600 1600 0    50   Input ~ 0
YL1
Text GLabel 3600 1500 0    50   Input ~ 0
YL0
Text GLabel 2150 1200 2    50   Output ~ 0
YL1
Text GLabel 2150 1100 2    50   Output ~ 0
YL0
Text GLabel 2150 1300 2    50   Output ~ 0
YL2
Text GLabel 2150 1400 2    50   Output ~ 0
YL3
Text GLabel 2150 1500 2    50   Output ~ 0
YL4
Text GLabel 2150 1600 2    50   Output ~ 0
YL5
Text GLabel 2150 1700 2    50   Output ~ 0
YL6
Text GLabel 2150 1800 2    50   Output ~ 0
YL7
Wire Wire Line
	2100 1500 2100 1700
Wire Wire Line
	2100 1700 2150 1700
Wire Wire Line
	2150 1100 1500 1100
Wire Wire Line
	1500 1200 2150 1200
Wire Wire Line
	1500 1300 2150 1300
Wire Wire Line
	2150 1400 1500 1400
Wire Wire Line
	2150 1500 2100 1500
Wire Wire Line
	2100 1500 1500 1500
Connection ~ 2100 1500
Wire Wire Line
	5350 1900 5000 1900
Wire Wire Line
	5350 1500 5350 1900
Wire Wire Line
	5000 1500 5350 1500
Wire Wire Line
	5250 1600 5000 1600
Wire Wire Line
	5250 2000 5250 1600
Wire Wire Line
	5000 2000 5250 2000
Wire Wire Line
	5150 1700 5000 1700
Wire Wire Line
	5150 2100 5150 1700
Wire Wire Line
	5000 2100 5150 2100
Wire Wire Line
	5050 1800 5000 1800
Wire Wire Line
	5050 2200 5050 1800
Wire Wire Line
	5000 2200 5050 2200
Wire Wire Line
	2050 1800 2150 1800
Wire Wire Line
	2050 1600 2050 1800
Wire Wire Line
	2150 1600 2050 1600
Text Notes 1000 2100 2    50   ~ 0
SILKSCREEN:\nYL0\nYL1\nYL2\nYL3\nYL4,6\nYL5,7\nSEN1\nSEN2\nSCL\nSDA\n3V3\nGNDD
Wire Wire Line
	2050 1600 1500 1600
Connection ~ 2050 1600
Wire Wire Line
	6700 2150 6950 2150
Wire Wire Line
	6700 2050 6950 2050
$Comp
L Connector:Conn_01x16_Male J2
U 1 1 5E723F12
P 7150 1750
F 0 "J2" H 7258 2635 50  0000 C CNN
F 1 "TSM-116-03-T-SV‎" H 7258 2542 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 7150 1750 50  0001 C CNN
F 3 "~" H 7150 1750 50  0001 C CNN
	1    7150 1750
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x16_Male J1
U 1 1 5E72894A
P 1300 1800
F 0 "J1" H 1408 2685 50  0000 C CNN
F 1 "TSM-116-03-T-SV‎" H 1408 2592 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 1300 1800 50  0001 C CNN
F 3 "~" H 1300 1800 50  0001 C CNN
	1    1300 1800
	1    0    0    -1  
$EndComp
Text Notes 7400 2250 0    50   ~ 0
SILKSCREEN:\nXT3,7\nXT2,6\nXT1,5\nXT0,4\nXB0\nXB1\nXB2\nXB3\nXB4\nXB5\nXB6\nXB7\nIO1\nIO2
Text GLabel 3500 2450 0    50   Output ~ 0
SENSE1
Text GLabel 3500 2550 0    50   Output ~ 0
SENSE2
Wire Wire Line
	3500 2550 3850 2550
Wire Wire Line
	3850 2550 3850 2500
Wire Wire Line
	6950 1450 6700 1450
Wire Wire Line
	6950 1550 6700 1550
Wire Wire Line
	6950 1650 6700 1650
Wire Wire Line
	6700 1750 6950 1750
Wire Wire Line
	6950 1850 6700 1850
Wire Wire Line
	6700 1950 6950 1950
Text GLabel 1650 1700 2    50   Input ~ 0
SENSE1
Text GLabel 1650 1800 2    50   Input ~ 0
SENSE2
Wire Wire Line
	3600 2300 3550 2300
Wire Wire Line
	3550 2300 3550 2450
Wire Wire Line
	3550 2450 3500 2450
Wire Wire Line
	1650 1800 1500 1800
Wire Wire Line
	2450 2200 2450 2300
Wire Wire Line
	1500 2100 1650 2100
Wire Wire Line
	1500 2200 2450 2200
Wire Wire Line
	1500 1700 1650 1700
Text GLabel 1650 1900 2    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 1650 2000 2    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	1500 1900 1650 1900
Wire Wire Line
	1500 2000 1650 2000
Text GLabel 1650 2100 2    50   Input ~ 0
3V3_800mA
Text Notes 1650 4500 0    50   ~ 0
DIGITAL LOGIC GROUND
$Comp
L Sensor_Magnetic:SI7210 U1
U 1 1 5E88BBFB
P 2100 3900
F 0 "U1" H 2075 4170 50  0000 C CNN
F 1 "SI7210-B-01" H 2075 4077 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2100 3550 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Infineon-TLV493D-A1B6-DS-v01_00-EN.pdf?fileId=5546d462525dbac40152a6b85c760e80" H 1950 4400 50  0001 C CNN
	1    2100 3900
	1    0    0    -1  
$EndComp
Text GLabel 1150 3550 0    50   BiDi ~ 0
I2C_CLOCK
$Comp
L power:GNDD #PWR03
U 1 1 5E8DA46A
P 1450 4350
F 0 "#PWR03" H 1450 4100 50  0001 C CNN
F 1 "GNDD" H 1454 4195 50  0000 C CNN
F 2 "" H 1450 4350 50  0001 C CNN
F 3 "" H 1450 4350 50  0001 C CNN
	1    1450 4350
	1    0    0    -1  
$EndComp
Text GLabel 1150 3250 0    50   Input ~ 0
3V3_800mA
Wire Wire Line
	1700 4000 1450 4000
Wire Wire Line
	2600 4100 2600 3800
Wire Wire Line
	2600 3250 1150 3250
$Comp
L Sensor_Magnetic:SI7210 U2
U 1 1 5E8F8CC9
P 4500 3900
F 0 "U2" H 4475 4170 50  0000 C CNN
F 1 "SI7210-B-02" H 4475 4077 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4500 3550 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Infineon-TLV493D-A1B6-DS-v01_00-EN.pdf?fileId=5546d462525dbac40152a6b85c760e80" H 4350 4400 50  0001 C CNN
	1    4500 3900
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Magnetic:SI7210 U3
U 1 1 5E90A275
P 7000 3900
F 0 "U3" H 6975 4170 50  0000 C CNN
F 1 "SI7210-B-03" H 6975 4077 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 7000 3550 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Infineon-TLV493D-A1B6-DS-v01_00-EN.pdf?fileId=5546d462525dbac40152a6b85c760e80" H 6850 4400 50  0001 C CNN
	1    7000 3900
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Magnetic:SI7210 U4
U 1 1 5E90A741
P 9250 3900
F 0 "U4" H 9225 4170 50  0000 C CNN
F 1 "SI7210-B-04" H 9225 4077 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 9250 3550 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Infineon-TLV493D-A1B6-DS-v01_00-EN.pdf?fileId=5546d462525dbac40152a6b85c760e80" H 9100 4400 50  0001 C CNN
	1    9250 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4000 3850 4000
Wire Wire Line
	3850 4000 3850 4300
Wire Wire Line
	8600 4300 8600 4000
Wire Wire Line
	8600 4000 8850 4000
Wire Wire Line
	6600 4000 6350 4000
Wire Wire Line
	6350 4000 6350 4300
Connection ~ 6350 4300
Wire Wire Line
	5000 4100 5000 3800
Wire Wire Line
	5000 3250 2600 3250
Connection ~ 2600 3250
Wire Wire Line
	5000 3250 7550 3250
Wire Wire Line
	7550 3250 7550 3800
Wire Wire Line
	9750 4100 9750 3750
Wire Wire Line
	9750 3250 7550 3250
Connection ~ 7550 3250
Wire Wire Line
	1650 3900 1700 3900
Text GLabel 1150 3400 0    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	1150 3550 1550 3550
Wire Wire Line
	1650 3900 1650 3400
Connection ~ 1650 3400
Wire Wire Line
	1550 4100 1550 3550
Wire Wire Line
	1550 4100 1700 4100
Connection ~ 1550 3550
Wire Wire Line
	1150 3400 1650 3400
Connection ~ 5000 3250
Wire Wire Line
	8850 3900 8800 3900
Wire Wire Line
	8800 3900 8800 3400
Wire Wire Line
	8850 4100 8700 4100
Wire Wire Line
	8700 4100 8700 3550
Wire Wire Line
	1550 3550 3950 3550
Wire Wire Line
	1650 3400 4050 3400
Wire Wire Line
	6600 3900 6550 3900
Wire Wire Line
	6600 4100 6450 4100
Wire Wire Line
	6450 4100 6450 3550
Connection ~ 6450 3550
Wire Wire Line
	4100 3900 4050 3900
Wire Wire Line
	4050 3900 4050 3400
Connection ~ 4050 3400
Wire Wire Line
	4050 3400 6550 3400
Wire Wire Line
	4100 4100 3950 4100
Wire Wire Line
	3950 4100 3950 3550
Connection ~ 3950 3550
Wire Wire Line
	3950 3550 6450 3550
Wire Wire Line
	6450 3550 8700 3550
Wire Wire Line
	6550 3900 6550 3400
Connection ~ 6550 3400
Wire Wire Line
	6550 3400 8800 3400
$Comp
L Device:C C1
U 1 1 5EACD96D
P 2800 4050
F 0 "C1" H 2891 4096 50  0000 L CNN
F 1 "0.1uF" H 2891 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2800 4050 50  0001 C CNN
F 3 "~" H 2800 4050 50  0001 C CNN
	1    2800 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5EAEAD4B
P 5200 4050
F 0 "C2" H 5291 4096 50  0000 L CNN
F 1 "0.1uF" H 5291 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5200 4050 50  0001 C CNN
F 3 "~" H 5200 4050 50  0001 C CNN
	1    5200 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5EAEBDAE
P 7750 4050
F 0 "C3" H 7841 4096 50  0000 L CNN
F 1 "0.1uF" H 7841 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7750 4050 50  0001 C CNN
F 3 "~" H 7750 4050 50  0001 C CNN
	1    7750 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5EAEC952
P 9950 4050
F 0 "C4" H 10041 4096 50  0000 L CNN
F 1 "0.1uF" H 10041 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9950 4050 50  0001 C CNN
F 3 "~" H 9950 4050 50  0001 C CNN
	1    9950 4050
	1    0    0    -1  
$EndComp
Connection ~ 8600 4300
Text Notes 3300 4700 0    50   ~ 0
I2C configurable hall sensors, not just a switch.\nSilicon Labs SI7210-B-01-IVR through 04-IVR\nLow (push-pull) up to 20 mT, SOT23-5\nhttps://www.digikey.com/product-detail/en/silicon-labs/SI7210-B-04-IVR/336-4129-1-ND/7648844
Text Notes 2350 2750 0    50   ~ 0
DIGITAL\nLOGIC\nGROUND
Text GLabel 9000 1300 2    50   Input ~ 0
SAO_GPIO1
Text GLabel 9000 2450 2    50   Input ~ 0
SAO_GPIO2
Text GLabel 8550 1300 0    50   Input ~ 0
3V3_800mA
Text GLabel 8550 1050 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 8600 2450 0    50   BiDi ~ 0
I2C_CLOCK
Wire Wire Line
	8800 2100 8800 2450
Wire Wire Line
	8800 2450 8600 2450
Wire Wire Line
	8900 2100 8900 2450
Wire Wire Line
	8900 2450 9000 2450
Wire Wire Line
	8850 1400 8850 1300
Wire Wire Line
	8750 1400 8750 1050
Wire Wire Line
	8750 1050 8550 1050
Wire Wire Line
	8550 1300 8650 1300
Wire Wire Line
	8650 1300 8650 1400
Wire Wire Line
	8850 1300 9000 1300
Text GLabel 6700 2350 0    50   Input ~ 0
SAO_GPIO2
Text GLabel 6700 2250 0    50   Input ~ 0
SAO_GPIO1
NoConn ~ 9600 3900
NoConn ~ 7350 3900
NoConn ~ 4850 3900
NoConn ~ 2450 3900
$Comp
L LiteOn_LTR-329ALS:LTR-329ALS-01 U5
U 1 1 5F39A969
P 8400 6150
F 0 "U5" H 9200 6543 60  0000 C CNN
F 1 "LTR-329ALS-01" H 9200 6433 60  0000 C CNN
F 2 "LiteOn_LTR-329ALS:LTR-329ALS-01" H 9200 6390 60  0001 C CNN
F 3 "https://optoelectronics.liteon.com/upload/download/DS86-2014-0006/LTR-329ALS-01_DS_V1.pdf" H 9200 6433 60  0001 C CNN
	1    8400 6150
	1    0    0    -1  
$EndComp
Text Notes 8700 5700 0    50   ~ 0
SILKSCREEN: ALS I2C 0x29
$Comp
L power:GNDD #PWR05
U 1 1 5E880DFA
P 2450 2300
F 0 "#PWR05" H 2450 2050 50  0001 C CNN
F 1 "GNDD" H 2454 2145 50  0000 C CNN
F 2 "" H 2450 2300 50  0001 C CNN
F 3 "" H 2450 2300 50  0001 C CNN
	1    2450 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2350 6950 2350
Text Notes 8850 1200 0    50   ~ 0
SILKSCREEN FRONT AND BACK: \nSAO#2, GNDD, 3V3, SDA,SCL\nGPIO1, GPIO2
$Comp
L Device:C C5
U 1 1 5F432D69
P 7900 6200
F 0 "C5" H 8015 6247 50  0000 L CNN
F 1 "1uF" H 8015 6154 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7938 6050 50  0001 C CNN
F 3 "~" H 7900 6200 50  0001 C CNN
	1    7900 6200
	1    0    0    -1  
$EndComp
Text Notes 8350 6700 0    50   ~ 0
DIGITAL LOGIC GROUND
$Comp
L power:GNDD #PWR0101
U 1 1 5F433F9B
P 8150 6550
F 0 "#PWR0101" H 8150 6300 50  0001 C CNN
F 1 "GNDD" H 8154 6395 50  0000 C CNN
F 2 "" H 8150 6550 50  0001 C CNN
F 3 "" H 8150 6550 50  0001 C CNN
	1    8150 6550
	1    0    0    -1  
$EndComp
Text Notes 7550 5550 0    100  ~ 0
AUTOMATIC LIGHT SENSOR I2C 0x29
Text Notes 3900 6900 0    100  ~ 0
SILKSCREEN GRAPHICS
Wire Wire Line
	8150 6450 8400 6450
Wire Wire Line
	8400 6450 8400 6250
Wire Wire Line
	8150 6450 8150 6550
Wire Wire Line
	8400 6150 8400 5950
Wire Wire Line
	8400 5950 8150 5950
Wire Wire Line
	7900 5950 7900 6050
Text GLabel 8050 5800 0    50   Input ~ 0
3V3_800mA
Text GLabel 10000 6250 2    50   BiDi ~ 0
I2C_DATA
Text GLabel 10000 6150 2    50   BiDi ~ 0
I2C_CLOCK
Wire Wire Line
	8150 5950 8150 5800
Wire Wire Line
	8150 5800 8050 5800
Connection ~ 8150 5950
Wire Wire Line
	8150 5950 7900 5950
Text Notes 600  3100 0    100  ~ 0
HALL SENSORS
Wire Wire Line
	8150 6450 7900 6450
Wire Wire Line
	7900 6450 7900 6350
Connection ~ 8150 6450
Text Notes 600  700  0    100  ~ 0
CORE MATRIX
Text Notes 7900 700  0    100  ~ 0
[OPTIONAL] SAO #2 EXPANSION
Text Notes 1600 3200 0    50   ~ 0
SILKSCREEN: 0x30
Text Notes 4000 3200 0    50   ~ 0
SILKSCREEN: 0x31
Text Notes 6500 3200 0    50   ~ 0
SILKSCREEN: 0x32
Text Notes 8750 3200 0    50   ~ 0
SILKSCREEN: 0x33
Wire Wire Line
	2450 4100 2600 4100
Wire Wire Line
	1450 4000 1450 4300
Wire Wire Line
	3850 4300 2800 4300
Connection ~ 3850 4300
Connection ~ 1450 4300
Wire Wire Line
	1450 4300 1450 4350
Wire Wire Line
	2800 4200 2800 4300
Connection ~ 2800 4300
Wire Wire Line
	2800 4300 1450 4300
Wire Wire Line
	2800 3900 2800 3800
Wire Wire Line
	2800 3800 2600 3800
Connection ~ 2600 3800
Wire Wire Line
	2600 3800 2600 3250
Wire Wire Line
	3850 4300 5200 4300
Wire Wire Line
	4850 4100 5000 4100
Wire Wire Line
	5200 4200 5200 4300
Connection ~ 5200 4300
Wire Wire Line
	5200 4300 6350 4300
Wire Wire Line
	5200 3900 5200 3800
Wire Wire Line
	5200 3800 5000 3800
Connection ~ 5000 3800
Wire Wire Line
	5000 3800 5000 3250
Text Notes 2900 3900 0    50   ~ 0
Ceramic
Wire Wire Line
	6350 4300 7750 4300
Wire Wire Line
	7350 4100 7550 4100
Wire Wire Line
	7750 4200 7750 4300
Connection ~ 7750 4300
Wire Wire Line
	7750 4300 8600 4300
Wire Wire Line
	7750 3900 7750 3800
Wire Wire Line
	7750 3800 7550 3800
Connection ~ 7550 3800
Wire Wire Line
	7550 3800 7550 4100
Wire Wire Line
	9600 4100 9750 4100
Wire Wire Line
	9950 3900 9950 3750
Wire Wire Line
	9950 3750 9750 3750
Connection ~ 9750 3750
Wire Wire Line
	9750 3750 9750 3250
Wire Wire Line
	9950 4200 9950 4300
Wire Wire Line
	8600 4300 9950 4300
Text Notes 2800 1550 0    50   ~ 0
SILKSCREEN:\nPixel 0-7 ->
Text Notes 5400 1550 0    50   ~ 0
SILKSCREEN:\n<-bit 63-56
Text Notes 5400 2200 0    50   ~ 0
SILKSCREEN:\n<-bit 7-0
Text Notes 2800 2250 0    50   ~ 0
SILKSCREEN:\nPixel 56-63->
Text Notes 550  7250 0    50   ~ 0
CORE BOARD   V0.4-NP   [REL. DATE].  ANDY GEPPERT   \nCore64.MachineIdeas.com\nInteractive Core Memory
$Comp
L power:GNDD #PWR0102
U 1 1 5F5DFB1F
P 8700 2100
F 0 "#PWR0102" H 8700 1850 50  0001 C CNN
F 1 "GNDD" H 8704 1945 50  0000 C CNN
F 2 "" H 8700 2100 50  0001 C CNN
F 3 "" H 8700 2100 50  0001 C CNN
	1    8700 2100
	1    0    0    -1  
$EndComp
Text Notes 5300 3900 0    50   ~ 0
Ceramic
Text Notes 7850 3900 0    50   ~ 0
Ceramic
Text Notes 10050 3850 0    50   ~ 0
Ceramic
Text Notes 8000 6400 0    50   ~ 0
Ceramic
Wire Wire Line
	6950 2250 6700 2250
Text Notes 550  6900 0    100  ~ 0
SILKSCREEN MISC.
Text Notes 8200 2300 0    50   ~ 0
DIGITAL\nLOGIC\nGROUND
$Comp
L Core_64_KiCad_Library:Core_Memory_8x8_Array_Front_Facing CM1
U 1 1 5FC0CBB5
P 4300 1850
F 0 "CM1" H 3550 2450 50  0000 L CNN
F 1 "Core_Memory_8x8_Array_Front_Facing" H 4000 900 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:core_64_0.3in_spacing_front_facing" H 4350 1900 50  0001 C CNN
F 3 "" H 4350 1900 50  0001 C CNN
	1    4300 1850
	1    0    0    -1  
$EndComp
$Comp
L badgelife_shitty_addon_v169bis:SAO_conn_SFH11-NBPC-D03-ST-BK X1
U 1 1 5FC1B970
P 8800 1700
F 0 "X1" H 8981 1697 50  0000 L CNN
F 1 "SAO_conn_SFH11-NBPC-D03-ST-BK" H 8981 1604 50  0000 L CNN
F 2 "badgelife_sao_v169bis:Badgelife-SAOv169-BADGE-2x3" H 8800 1900 50  0001 C CNN
F 3 "" H 8800 1900 50  0001 C CNN
	1    8800 1700
	1    0    0    -1  
$EndComp
$Comp
L Core_64_KiCad_Library:Core_64_Logo_9mm_tall L1
U 1 1 5FC25016
P 3900 7100
F 0 "L1" H 3925 7147 50  0000 L CNN
F 1 "Core_64_Logo_9mm_tall" H 3925 7054 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Core64_Logo_9mm_tall" H 3900 7100 50  0001 C CNN
F 3 "" H 3900 7100 50  0001 C CNN
	1    3900 7100
	1    0    0    -1  
$EndComp
$Comp
L Core_64_KiCad_Library:Core_64_M-+S_Buttons_4mm L2
U 1 1 5FC25826
P 3900 7450
F 0 "L2" H 3925 7497 50  0000 L CNN
F 1 "Core_64_M-+S_Buttons_4mm" H 3950 7400 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Core64-M_-_+_S_Buttons" H 3900 7450 50  0001 C CNN
F 3 "" H 3900 7450 50  0001 C CNN
	1    3900 7450
	1    0    0    -1  
$EndComp
NoConn ~ 6950 2450
NoConn ~ 6950 2550
NoConn ~ 1500 2300
NoConn ~ 1500 2400
NoConn ~ 1500 2500
NoConn ~ 1500 2600
Text Notes 5600 7250 0    50   ~ 0
NEON\nPIXELS\nEDITION
Text Notes 7950 900  0    50   ~ 0
SIMPLE ADD ONS see:\nhttps://hackaday.io/project/175182-simple-add-ons-sao
$EndSCHEMATC
