EESchema Schematic File Version 4
LIBS:Core64 CB v0.4-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Core64 CB (Core Board)"
Date "2020-08-22"
Rev "0.4"
Comp "Core64.MachineIdeas.com"
Comment1 "As prototyped 22AUG2020"
Comment2 "Andy Geppert"
Comment3 ""
Comment4 ""
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
H_XT0-4
Text GLabel 6700 1250 0    50   Output ~ 0
H_XT1-5
Text GLabel 6700 1150 0    50   Output ~ 0
H_XT2-6
Text GLabel 6700 1050 0    50   Output ~ 0
H_XT3-7
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
H_YL1
Text GLabel 2150 1100 2    50   Output ~ 0
H_YL0
Text GLabel 2150 1300 2    50   Output ~ 0
H_YL2
Text GLabel 2150 1400 2    50   Output ~ 0
H_YL3
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
Text Notes 1150 2550 2    50   ~ 0
SILKSCREEN:\nYL0\nYL1\nYL2\nYL3\nYL4,6\nYL5,7\nSEN1\nSEN2\nSCL\nSDA\n3V3\nGNDD\nP8\nP7\nP6\nP5
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
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical_SMD_and_TH_Pin1Right" H 7150 1750 50  0001 C CNN
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
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical_SMD_and_TH_Pin1Right" H 1300 1800 50  0001 C CNN
F 3 "~" H 1300 1800 50  0001 C CNN
	1    1300 1800
	1    0    0    -1  
$EndComp
Text Notes 7300 2500 0    50   ~ 0
SILKSCREEN:\nXT3,7\nXT2,6\nXT1,5\nXT0,4\nXB0\nXB1\nXB2\nXB3\nXB4\nXB5\nXB6\nXB7\nP1/IO1\nP2/IO2\nP3\nP4
$Comp
L CORE_64_LIBRARY:Core_Memory_8x8_Array_Front_Facing CM1
U 1 1 5E79BDE1
P 4300 1850
F 0 "CM1" H 3650 2500 50  0000 C CNN
F 1 "Core_Memory_8x8_Array_Front_Facing" H 4300 900 50  0000 C CNN
F 2 "Core_Memory_8x8_Array:core_64_x6.7_y6.5mm_v0.3_front_facing" H 4350 1900 50  0001 C CNN
F 3 "" H 4350 1900 50  0001 C CNN
	1    4300 1850
	1    0    0    -1  
$EndComp
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
	1500 2300 1900 2300
Wire Wire Line
	1900 2400 1500 2400
Wire Wire Line
	1500 2500 1900 2500
Wire Wire Line
	1900 2600 1500 2600
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
$Comp
L Core64-CB-v0.4-rescue:Badgelife_sao_connector_v169bis-badgelife_shitty_addon_v169bis-Interactive-Core-Memory-Badge-(Cores)-v0.3-rescue X1
U 1 1 5E90E5F7
P 9100 2100
F 0 "X1" H 9279 2097 50  0000 L CNN
F 1 "SFH11-NBPC-D03-ST-BK" H 9279 2004 50  0000 L CNN
F 2 "badgelife_sao_v169bis:Badgelife-SAOv169-BADGE-2x3" H 9100 2300 50  0001 C CNN
F 3 "" H 9100 2300 50  0001 C CNN
	1    9100 2100
	1    0    0    -1  
$EndComp
Text GLabel 9300 1700 2    50   Input ~ 0
SAO_GPIO1
Text GLabel 9300 2850 2    50   Input ~ 0
SAO_GPIO2
Text GLabel 8850 1700 0    50   Input ~ 0
3V3_800mA
Text GLabel 8850 1450 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 8900 2850 0    50   BiDi ~ 0
I2C_CLOCK
Wire Wire Line
	9100 2500 9100 2850
Wire Wire Line
	9100 2850 8900 2850
Wire Wire Line
	9200 2500 9200 2850
Wire Wire Line
	9200 2850 9300 2850
Wire Wire Line
	9150 1800 9150 1700
Wire Wire Line
	9050 1800 9050 1450
Wire Wire Line
	9050 1450 8850 1450
Wire Wire Line
	8850 1700 8950 1700
Wire Wire Line
	8950 1700 8950 1800
Wire Wire Line
	9150 1700 9300 1700
Text GLabel 6950 2700 2    50   Input ~ 0
SAO_GPIO2
Text GLabel 6950 2850 2    50   Input ~ 0
SAO_GPIO1
Wire Wire Line
	6850 2700 6950 2700
Wire Wire Line
	6850 2350 6850 2700
Wire Wire Line
	6950 2850 6650 2850
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
	6350 2450 6950 2450
Wire Wire Line
	6350 2350 6850 2350
Connection ~ 6850 2350
Wire Wire Line
	6850 2350 6950 2350
Wire Wire Line
	6350 2550 6950 2550
Text Notes 9150 1600 0    50   ~ 0
SILKSCREEN FRONT AND BACK: \nSAO, GNDD, 3V3, SDA,SCL\nGPIO1, GPIO2
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
Text Notes 3900 7650 0    100  ~ 0
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
Text Notes 8100 1050 0    100  ~ 0
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
Text Notes 550  5400 0    100  ~ 0
[OPTIONAL] CORE PLANE SELECT
Text Notes 2800 1550 0    50   ~ 0
SILKSCREEN:\nPixel 0-7 ->
Text Notes 5400 1550 0    50   ~ 0
SILKSCREEN:\n<-bit 63-56
Text Notes 5400 2200 0    50   ~ 0
SILKSCREEN:\n<-bit 7-0
Text Notes 2800 2250 0    50   ~ 0
SILKSCREEN:\nPixel 56-63->
Text Notes 550  8000 0    50   ~ 0
CORE BOARD   V0.4   [REL. DATE].  ANDY GEPPERT   \nCore64.MachineIdeas.com\nInteractive Core Memory
$Comp
L power:GNDD #PWR0102
U 1 1 5F5DFB1F
P 9000 2500
F 0 "#PWR0102" H 9000 2250 50  0001 C CNN
F 1 "GNDD" H 9004 2345 50  0000 C CNN
F 2 "" H 9000 2500 50  0001 C CNN
F 3 "" H 9000 2500 50  0001 C CNN
	1    9000 2500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP9
U 1 1 5F609BD5
P 2300 5750
F 0 "JP9" H 2300 5850 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 2300 5870 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2300 5750 50  0001 C CNN
F 3 "~" H 2300 5750 50  0001 C CNN
	1    2300 5750
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP10
U 1 1 5F61B113
P 2300 5950
F 0 "JP10" H 2300 6050 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 2300 6070 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2300 5950 50  0001 C CNN
F 3 "~" H 2300 5950 50  0001 C CNN
	1    2300 5950
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
Text GLabel 1900 2300 2    50   Output ~ 0
PLANE_8
Text GLabel 1900 2400 2    50   Output ~ 0
PLANE_7
Text GLabel 1900 2500 2    50   Output ~ 0
PLANE_6
Text GLabel 1900 2600 2    50   Output ~ 0
PLANE_5
Text GLabel 6350 2550 0    50   Output ~ 0
PLANE_4
Text GLabel 6350 2450 0    50   Output ~ 0
PLANE_3
Text GLabel 6350 2350 0    50   Output ~ 0
PLANE_2
Text GLabel 6350 2250 0    50   Output ~ 0
PLANE_1
Wire Wire Line
	6950 2250 6650 2250
Wire Wire Line
	6650 2850 6650 2250
Connection ~ 6650 2250
Wire Wire Line
	6650 2250 6350 2250
$Comp
L Device:C C6
U 1 1 5F3B6DC2
P 4100 5900
F 0 "C6" H 4191 5946 50  0000 L CNN
F 1 "0.1uF" H 4191 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4100 5900 50  0001 C CNN
F 3 "~" H 4100 5900 50  0001 C CNN
	1    4100 5900
	1    0    0    -1  
$EndComp
Text Notes 4150 6050 0    50   ~ 0
Ceramic
Text GLabel 3750 5750 0    50   Input ~ 0
3V3_800mA
$Comp
L power:GNDD #PWR0103
U 1 1 5F3B722A
P 3050 6850
F 0 "#PWR0103" H 3050 6600 50  0001 C CNN
F 1 "GNDD" H 3054 6695 50  0000 C CNN
F 2 "" H 3050 6850 50  0001 C CNN
F 3 "" H 3050 6850 50  0001 C CNN
	1    3050 6850
	1    0    0    -1  
$EndComp
Text Notes 2950 7150 0    50   ~ 0
DIGITAL LOGIC GROUND
Text GLabel 3050 6450 0    50   Output ~ 0
H_YL1
Text GLabel 3050 6250 0    50   Output ~ 0
H_YL0
Text GLabel 3900 6850 2    50   Output ~ 0
H_YL2
Text GLabel 3900 6550 2    50   Output ~ 0
H_YL3
Text GLabel 4900 6250 0    50   Output ~ 0
H_XT0-4
Text GLabel 4900 6450 0    50   Output ~ 0
H_XT1-5
Text GLabel 5750 6850 2    50   Output ~ 0
H_XT2-6
Text GLabel 5750 6550 2    50   Output ~ 0
H_XT3-7
Text GLabel 3900 6650 2    50   Input ~ 0
YL3
Text GLabel 3900 6750 2    50   Input ~ 0
YL2
Text GLabel 3050 6550 0    50   Input ~ 0
YL1
Text GLabel 3050 6350 0    50   Input ~ 0
YL0
Text GLabel 5750 6650 2    50   Input ~ 0
XT3-7
Text GLabel 5750 6750 2    50   Input ~ 0
XT2-6
Text GLabel 4900 6550 0    50   Input ~ 0
XT1-5
Text GLabel 4900 6350 0    50   Input ~ 0
XT0-4
$Comp
L Jumper:SolderJumper_2_Open JP11
U 1 1 5F3DE109
P 2300 6150
F 0 "JP11" H 2300 6250 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 2300 6270 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2300 6150 50  0001 C CNN
F 3 "~" H 2300 6150 50  0001 C CNN
	1    2300 6150
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP12
U 1 1 5F3EE7F3
P 2300 6350
F 0 "JP12" H 2300 6450 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 2300 6470 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2300 6350 50  0001 C CNN
F 3 "~" H 2300 6350 50  0001 C CNN
	1    2300 6350
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP13
U 1 1 5F3EEE26
P 2300 6550
F 0 "JP13" H 2300 6650 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 2300 6670 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2300 6550 50  0001 C CNN
F 3 "~" H 2300 6550 50  0001 C CNN
	1    2300 6550
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP14
U 1 1 5F3EF22B
P 2300 6750
F 0 "JP14" H 2300 6850 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 2300 6870 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2300 6750 50  0001 C CNN
F 3 "~" H 2300 6750 50  0001 C CNN
	1    2300 6750
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP15
U 1 1 5F3EF630
P 2300 6950
F 0 "JP15" H 2300 7050 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 2300 7070 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2300 6950 50  0001 C CNN
F 3 "~" H 2300 6950 50  0001 C CNN
	1    2300 6950
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP16
U 1 1 5F3EFB4C
P 2300 7150
F 0 "JP16" H 2300 7250 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 2300 7270 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2300 7150 50  0001 C CNN
F 3 "~" H 2300 7150 50  0001 C CNN
	1    2300 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 7150 2450 6950
Wire Wire Line
	2450 6950 2450 6750
Connection ~ 2450 6950
Wire Wire Line
	2450 6550 2450 6750
Connection ~ 2450 6750
Connection ~ 2450 6550
Wire Wire Line
	2450 6150 2450 6350
Connection ~ 2450 6350
Wire Wire Line
	2450 5950 2450 6150
Connection ~ 2450 6150
Wire Wire Line
	2450 5750 2450 5950
Connection ~ 2450 5950
Text GLabel 2550 5750 2    50   Output ~ 0
ENABLE
Text GLabel 3050 6650 0    50   Input ~ 0
ENABLE
Text GLabel 3050 6750 0    50   Input ~ 0
ENABLE
Text GLabel 3900 6350 2    50   Input ~ 0
ENABLE
Text GLabel 3900 6450 2    50   Input ~ 0
ENABLE
$Comp
L power:GNDD #PWR0104
U 1 1 5F4A6774
P 4100 6050
F 0 "#PWR0104" H 4100 5800 50  0001 C CNN
F 1 "GNDD" H 4100 5900 50  0000 C CNN
F 2 "" H 4100 6050 50  0001 C CNN
F 3 "" H 4100 6050 50  0001 C CNN
	1    4100 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 6250 3950 6250
Wire Wire Line
	3950 5750 3950 6250
Wire Wire Line
	3750 5750 3950 5750
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5F4D0671
P 1100 5750
F 0 "JP1" H 1100 5850 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 1100 5870 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 1100 5750 50  0001 C CNN
F 3 "~" H 1100 5750 50  0001 C CNN
	1    1100 5750
	1    0    0    -1  
$EndComp
$Comp
L TI_TS3A4751PWR:TS3A4751PWR U7
U 1 1 5F4D3C77
P 4750 6250
F 0 "U7" H 5350 6500 60  0000 C CNN
F 1 "TS3A4751PWR" H 5350 6400 60  0000 C CNN
F 2 "TI_TS3A4751PWR:TS3A4751PWR" H 5950 6490 60  0001 C CNN
F 3 "" H 4750 6250 60  0000 C CNN
	1    4750 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0105
U 1 1 5F4D3C7D
P 4900 6850
F 0 "#PWR0105" H 4900 6600 50  0001 C CNN
F 1 "GNDD" H 4904 6695 50  0000 C CNN
F 2 "" H 4900 6850 50  0001 C CNN
F 3 "" H 4900 6850 50  0001 C CNN
	1    4900 6850
	1    0    0    -1  
$EndComp
Text Notes 4800 7150 0    50   ~ 0
DIGITAL LOGIC GROUND
Text GLabel 950  5950 0    50   Output ~ 0
H_YL1
Text GLabel 950  5750 0    50   Output ~ 0
H_YL0
Text GLabel 1250 5950 2    50   Input ~ 0
YL1
Text GLabel 1250 5750 2    50   Input ~ 0
YL0
Text GLabel 950  6350 0    50   Output ~ 0
H_YL3
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 5F54567B
P 1100 5950
F 0 "JP2" H 1100 6050 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 1100 6070 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 1100 5950 50  0001 C CNN
F 3 "~" H 1100 5950 50  0001 C CNN
	1    1100 5950
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 5F545ED5
P 1100 6150
F 0 "JP3" H 1100 6250 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 1100 6270 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 1100 6150 50  0001 C CNN
F 3 "~" H 1100 6150 50  0001 C CNN
	1    1100 6150
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP4
U 1 1 5F546676
P 1100 6350
F 0 "JP4" H 1100 6450 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 1100 6470 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 1100 6350 50  0001 C CNN
F 3 "~" H 1100 6350 50  0001 C CNN
	1    1100 6350
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP5
U 1 1 5F546B20
P 1100 6550
F 0 "JP5" H 1100 6650 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 1100 6670 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 1100 6550 50  0001 C CNN
F 3 "~" H 1100 6550 50  0001 C CNN
	1    1100 6550
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP6
U 1 1 5F5470D2
P 1100 6750
F 0 "JP6" H 1100 6850 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 1100 6870 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 1100 6750 50  0001 C CNN
F 3 "~" H 1100 6750 50  0001 C CNN
	1    1100 6750
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP7
U 1 1 5F547519
P 1100 6950
F 0 "JP7" H 1100 7050 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 1100 7070 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 1100 6950 50  0001 C CNN
F 3 "~" H 1100 6950 50  0001 C CNN
	1    1100 6950
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP8
U 1 1 5F54793F
P 1100 7150
F 0 "JP8" H 1100 7250 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 1100 7270 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 1100 7150 50  0001 C CNN
F 3 "~" H 1100 7150 50  0001 C CNN
	1    1100 7150
	1    0    0    -1  
$EndComp
Text GLabel 1250 6350 2    50   Input ~ 0
YL3
Text GLabel 950  6150 0    50   Output ~ 0
H_YL2
Text GLabel 1250 6150 2    50   Input ~ 0
YL2
Text GLabel 950  6550 0    50   Output ~ 0
H_XT0-4
Text GLabel 950  6750 0    50   Output ~ 0
H_XT1-5
Text GLabel 950  6950 0    50   Output ~ 0
H_XT2-6
Text GLabel 950  7150 0    50   Output ~ 0
H_XT3-7
Text GLabel 1250 7150 2    50   Input ~ 0
XT3-7
Text GLabel 1250 6950 2    50   Input ~ 0
XT2-6
Text GLabel 1250 6750 2    50   Input ~ 0
XT1-5
Text GLabel 1250 6550 2    50   Input ~ 0
XT0-4
Wire Wire Line
	2450 6350 2450 6550
Wire Wire Line
	2450 5750 2550 5750
Connection ~ 2450 5750
Text GLabel 2150 6550 0    50   Output ~ 0
PLANE_5
Text GLabel 2150 6750 0    50   Output ~ 0
PLANE_6
Text GLabel 2150 6950 0    50   Output ~ 0
PLANE_7
Text GLabel 2150 7150 0    50   Output ~ 0
PLANE_8
Text GLabel 2150 5750 0    50   Output ~ 0
PLANE_1
Text GLabel 2150 5950 0    50   Output ~ 0
PLANE_2
Text GLabel 2150 6150 0    50   Output ~ 0
PLANE_3
Text GLabel 2150 6350 0    50   Output ~ 0
PLANE_4
$Comp
L TI_TS3A4751PWR:TS3A4751PWR U6
U 1 1 5F3A173C
P 2900 6250
F 0 "U6" H 3450 6500 60  0000 C CNN
F 1 "TS3A4751PWR" H 3450 6400 60  0000 C CNN
F 2 "TI_TS3A4751PWR:TS3A4751PWR" H 4100 6490 60  0001 C CNN
F 3 "" H 2900 6250 60  0000 C CNN
	1    2900 6250
	1    0    0    -1  
$EndComp
Connection ~ 3950 5750
Wire Wire Line
	3950 5750 4100 5750
$Comp
L Device:C C7
U 1 1 5F639843
P 5950 5900
F 0 "C7" H 6041 5946 50  0000 L CNN
F 1 "0.1uF" H 6041 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5950 5900 50  0001 C CNN
F 3 "~" H 5950 5900 50  0001 C CNN
	1    5950 5900
	1    0    0    -1  
$EndComp
Text Notes 6000 6050 0    50   ~ 0
Ceramic
Text GLabel 5600 5750 0    50   Input ~ 0
3V3_800mA
$Comp
L power:GNDD #PWR0106
U 1 1 5F63984B
P 5950 6050
F 0 "#PWR0106" H 5950 5800 50  0001 C CNN
F 1 "GNDD" H 5950 5900 50  0000 C CNN
F 2 "" H 5950 6050 50  0001 C CNN
F 3 "" H 5950 6050 50  0001 C CNN
	1    5950 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5750 5800 6250
Wire Wire Line
	5600 5750 5800 5750
Connection ~ 5800 5750
Wire Wire Line
	5800 5750 5950 5750
Wire Wire Line
	5750 6250 5800 6250
Text GLabel 5750 6350 2    50   Input ~ 0
ENABLE
Text GLabel 5750 6450 2    50   Input ~ 0
ENABLE
Text GLabel 4900 6650 0    50   Input ~ 0
ENABLE
Text GLabel 4900 6750 0    50   Input ~ 0
ENABLE
Text Notes 550  7650 0    100  ~ 0
SILKSCREEN MISC.
Text Notes 8500 2700 0    50   ~ 0
DIGITAL\nLOGIC\nGROUND
Text Notes 550  5600 0    50   ~ 0
STEP 1: Do NOT solder\nany JP1 through JP8.
Text Notes 1950 5600 0    50   ~ 0
STEP 2: Solder ONE \nplane JP9 to JP16.
Text Notes 3050 5600 0    50   ~ 0
STEP 3:\nInstall two quad switches and two decoupling caps.
Text Notes 5250 5600 0    50   ~ 0
STEP 4 (LOGIC BOARD):\nSee instructions on Logic Board.
$Comp
L CORE_64_LIBRARY:Core_64_Logo_9mm_tall L1
U 1 1 5F3DC9AF
P 3900 7800
F 0 "L1" H 3925 7847 50  0000 L CNN
F 1 "Core_64_Logo_9mm_tall" H 3925 7754 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Core64_Logo_9mm_tall" H 3900 7800 50  0001 C CNN
F 3 "" H 3900 7800 50  0001 C CNN
	1    3900 7800
	1    0    0    -1  
$EndComp
$Comp
L CORE_64_LIBRARY:Core_64_M-+S_Buttons_4mm L2
U 1 1 5F41CA57
P 4950 7800
F 0 "L2" H 4975 7847 50  0000 L CNN
F 1 "Core_64_M-+S_Buttons_4mm" H 4975 7754 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Core64-M_-_+_S_Buttons" H 4950 7800 50  0001 C CNN
F 3 "" H 4950 7800 50  0001 C CNN
	1    4950 7800
	1    0    0    -1  
$EndComp
Text Notes 550  4950 0    100  ~ 0
DEFAULT FOR ONE CORE PLANE ONLY
Text Notes 550  5150 0    50   ~ 0
STEP 1: Solder all eight header-to-matrix SJs.\nJP1 through JP8.
Text Notes 2600 5150 0    50   ~ 0
STEP 2: Do NOT solder\nany JP9 through JP16.
Text Notes 3700 5150 0    50   ~ 0
STEP 3:\nNo additional components needed.
Text Notes 5250 5150 0    50   ~ 0
STEP 4 (LOGIC BOARD):\nSee instructions on Logic Board.
Text Notes 6350 6900 0    50   ~ 0
AS PROTOTYPED 22AUG2020
Text Notes 8150 1250 0    50   ~ 0
SIMPLE ADD ONS see:\nhttps://hackaday.io/project/175182-simple-add-ons-sao
$EndSCHEMATC
