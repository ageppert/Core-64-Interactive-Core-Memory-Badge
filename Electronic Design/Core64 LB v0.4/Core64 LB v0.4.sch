EESchema Schematic File Version 4
LIBS:Core64 LB v0.4-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 5
Title "Core 64 - Main Sheet Index"
Date "2020-08-27"
Rev "0.4"
Comp "Andy Geppert - Machine Ideas, LLC"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 6150 850  1550 250 
U 5E755AC8
F0 "Driver" 50
F1 "Core64 LB v0.4 Driver.sch" 50
$EndSheet
Text Notes 2650 700  0    118  ~ 0
CORE 64 INTERACTIVE CORE MEMORY BADGE V0.4 LOGIC BOARD
$Sheet
S 8800 850  1500 250 
U 5E75D6AB
F0 "Sense" 50
F1 "Core64 LB v0.4 Sense.sch" 50
$EndSheet
$Sheet
S 3350 850  1500 250 
U 5EA63449
F0 "Expansion" 50
F1 "Core64 LB v0.4 Expansion.sch" 50
$EndSheet
Wire Wire Line
	4300 3150 4350 3150
Text Notes 7600 2550 0    50   ~ 0
Reads 1/4 voltage of +VSW\n(after RPP) before regulators.
Text Notes 800  2050 0    50   ~ 10
Teensy LC has incoming USB power/programming on board.
Wire Wire Line
	4300 5250 4700 5250
Wire Wire Line
	4700 5350 4300 5350
Wire Wire Line
	4300 3250 4700 3250
Wire Wire Line
	2550 4150 4700 4150
Wire Wire Line
	2550 4050 4700 4050
Wire Wire Line
	6700 4650 6950 4650
Text GLabel 7100 2450 2    50   Input ~ 0
VBAT_MON
Wire Wire Line
	6700 4850 6850 4850
Wire Wire Line
	6700 4750 6800 4750
Wire Wire Line
	6700 5150 6800 5150
Text GLabel 4300 5350 0    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 4300 5250 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 4300 5150 0    50   Output ~ 0
LED_ARRAY_3V3_SIG
Text GLabel 2350 6900 2    50   Output ~ 0
LED_ARRAY_5V0_SIG
$Comp
L Device:R R?
U 1 1 5EA33CBB
P 2250 7200
AR Path="/5E755787/5EA33CBB" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA33CBB" Ref="R?"  Part="1" 
AR Path="/5EA33CBB" Ref="R5"  Part="1" 
F 0 "R5" H 2300 7250 50  0000 L CNN
F 1 "470" H 2300 7150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2180 7200 50  0001 C CNN
F 3 "~" H 2250 7200 50  0001 C CNN
	1    2250 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 6900 2350 6900
Text GLabel 1350 6900 0    50   Input ~ 0
LED_ARRAY_3V3_SIG
Wire Wire Line
	1400 7400 1450 7400
Wire Wire Line
	1850 7100 1850 7000
$Sheet
S 750  850  1450 250 
U 5E7548ED
F0 "Power" 50
F1 "Core64 LB v0.4 Power.sch" 50
$EndSheet
$Comp
L Logic_LevelTranslator:SN74LV1T125DBVR U4
U 1 1 5E84BF19
P 1850 7400
F 0 "U4" H 1550 7650 50  0000 L CNN
F 1 "SN74LV1T125DBVR" H 950 7150 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1850 6700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lv1t125.pdf" H 1850 6800 50  0001 C CNN
	1    1850 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 7700 1750 7750
Wire Wire Line
	1750 7750 1850 7750
Wire Wire Line
	1950 7700 1950 7750
Wire Wire Line
	1950 7750 1850 7750
Connection ~ 1850 7750
Text Notes 550  6800 0    118  ~ 0
LED ARRAY DRIVE AND LEVEL SHIFT
Text Notes 800  1850 0    118  ~ 0
TEENSY 3.2 MCU CONNECTIONS
Text Notes 8800 4700 0    50   ~ 0
All 7-bit addresses should be greater\nthan 0x07 and less than 0x78 (120).
Text Notes 5400 7050 0    50   ~ 10
BOM TO DO: TEENSY requires at least three headers\nthat do not get auto populated in the BOM from KiCAD.
Text GLabel 2550 4700 0    50   Output ~ 0
SPI_CLK
Text GLabel 7900 4550 2    50   Input ~ 0
SD_SPI_CD
Wire Wire Line
	2250 7400 2250 7350
Text Notes 8750 5350 0    118  ~ 0
BOARD ID AND S/N
$Comp
L Memory_EEPROM:M24C01-RMN U3
U 1 1 5EA6E6DA
P 9650 6050
AR Path="/5EA6E6DA" Ref="U3"  Part="1" 
AR Path="/5EA63449/5EA6E6DA" Ref="U?"  Part="1" 
F 0 "U3" H 9350 6350 50  0000 C CNN
F 1 "M24C01-RMN" H 10000 6350 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9650 6400 50  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/b0/d8/50/40/5a/85/49/6f/DM00071904.pdf/files/DM00071904.pdf/jcr:content/translations/en.DM00071904.pdf" H 9700 5550 50  0001 C CNN
	1    9650 6050
	1    0    0    -1  
$EndComp
Text GLabel 10050 5950 2    50   BiDi ~ 0
I2C_DATA
Text GLabel 10050 6050 2    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 10050 5600 2    50   Input ~ 0
3V3
$Comp
L power:GNDD #PWR?
U 1 1 5EA6E6E3
P 9650 6400
AR Path="/5EA63449/5EA6E6E3" Ref="#PWR?"  Part="1" 
AR Path="/5EA6E6E3" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 9650 6150 50  0001 C CNN
F 1 "GNDD" H 9654 6244 50  0000 C CNN
F 2 "" H 9650 6400 50  0001 C CNN
F 3 "" H 9650 6400 50  0001 C CNN
	1    9650 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 5950 9250 6050
Connection ~ 9250 6050
Wire Wire Line
	9250 6050 9250 6150
Wire Wire Line
	9650 6350 9650 6400
Connection ~ 9650 6350
Wire Wire Line
	10050 6150 10050 6350
Wire Wire Line
	10050 6350 9650 6350
Wire Wire Line
	9650 5750 9650 5600
Wire Wire Line
	9650 5600 10050 5600
$Comp
L Device:C C?
U 1 1 5EA6E6F2
P 8900 6100
AR Path="/5E755787/5EA6E6F2" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA6E6F2" Ref="C?"  Part="1" 
AR Path="/5EA63449/5EA6E6F2" Ref="C?"  Part="1" 
AR Path="/5EA6E6F2" Ref="C4"  Part="1" 
F 0 "C4" H 8991 6146 50  0000 L CNN
F 1 "0.1uF" H 8991 6055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8900 6100 50  0001 C CNN
F 3 "~" H 8900 6100 50  0001 C CNN
	1    8900 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 5600 9250 5600
Wire Wire Line
	8900 5600 8900 5950
Connection ~ 9650 5600
Wire Wire Line
	8900 6250 8900 6350
Text Notes 8750 5500 0    50   ~ 0
EEPROM I2C ADDRESS: 0b1010111, 0x57 (87)
Wire Wire Line
	8900 6350 9650 6350
Wire Wire Line
	9250 5950 9250 5600
Connection ~ 9250 5950
Connection ~ 9250 5600
Wire Wire Line
	9250 5600 8900 5600
$Comp
L Device:R R?
U 1 1 5EA7ABC7
P 9900 2600
AR Path="/5E755787/5EA7ABC7" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA7ABC7" Ref="R?"  Part="1" 
AR Path="/5EA7ABC7" Ref="R2"  Part="1" 
AR Path="/5EA63449/5EA7ABC7" Ref="R?"  Part="1" 
F 0 "R2" H 9970 2646 50  0000 L CNN
F 1 "4K7" H 9970 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9830 2600 50  0001 C CNN
F 3 "~" H 9900 2600 50  0001 C CNN
	1    9900 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EA7ABCD
P 10300 2800
AR Path="/5E755787/5EA7ABCD" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA7ABCD" Ref="R?"  Part="1" 
AR Path="/5EA7ABCD" Ref="R3"  Part="1" 
AR Path="/5EA63449/5EA7ABCD" Ref="R?"  Part="1" 
F 0 "R3" H 10370 2846 50  0000 L CNN
F 1 "4K7" H 10370 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10230 2800 50  0001 C CNN
F 3 "~" H 10300 2800 50  0001 C CNN
	1    10300 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 2800 9900 2800
Wire Wire Line
	9900 2750 9900 2800
Text GLabel 9800 2950 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 9800 2800 0    50   BiDi ~ 0
I2C_CLOCK
Text Notes 9000 1950 0    118  ~ 0
I2C PULL-UPS
Text GLabel 9900 2150 0    50   Input ~ 0
3V3
Wire Wire Line
	10300 2350 10300 2650
Wire Wire Line
	9800 2950 10300 2950
Wire Wire Line
	10100 2150 9900 2150
Wire Wire Line
	9900 2350 9900 2450
Wire Wire Line
	10100 2150 10100 2350
Wire Wire Line
	4700 4750 3400 4750
$Comp
L Device:C C?
U 1 1 5EBC469C
P 650 7450
AR Path="/5E755787/5EBC469C" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EBC469C" Ref="C?"  Part="1" 
AR Path="/5EA63449/5EBC469C" Ref="C?"  Part="1" 
AR Path="/5EBC469C" Ref="C5"  Part="1" 
F 0 "C5" H 741 7496 50  0000 L CNN
F 1 "0.1uF" H 741 7405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 650 7450 50  0001 C CNN
F 3 "~" H 650 7450 50  0001 C CNN
	1    650  7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  7300 650  7250
$Comp
L power:GND #PWR?
U 1 1 5EBCCC45
P 650 7650
AR Path="/5E755787/5EBCCC45" Ref="#PWR?"  Part="1" 
AR Path="/5EBCCC45" Ref="#PWR0155"  Part="1" 
F 0 "#PWR0155" H 650 7400 50  0001 C CNN
F 1 "GND" H 655 7475 50  0000 C CNN
F 2 "" H 650 7650 50  0001 C CNN
F 3 "" H 650 7650 50  0001 C CNN
	1    650  7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  7650 650  7600
$Comp
L CORE_64_LIBRARY:Core_64_Logo L1
U 1 1 5EC1FCB7
P 5400 7900
F 0 "L1" H 5425 7947 50  0000 L CNN
F 1 "Core_64_Logo" H 5450 7850 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Core64_Logo" H 5400 7900 50  0001 C CNN
F 3 "" H 5400 7900 50  0001 C CNN
	1    5400 7900
	1    0    0    -1  
$EndComp
$Comp
L CORE_64_LIBRARY:Core_64_Logo L2
U 1 1 5EC30987
P 5400 7650
F 0 "L2" H 5425 7697 50  0000 L CNN
F 1 "Core_64_Logo" H 5425 7604 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Core64_Logo" H 5400 7650 50  0001 C CNN
F 3 "" H 5400 7650 50  0001 C CNN
	1    5400 7650
	1    0    0    -1  
$EndComp
$Comp
L CORE_64_LIBRARY:Core_64_Github_Link L3
U 1 1 5EC378E3
P 5400 7400
F 0 "L3" H 5425 7447 50  0000 L CNN
F 1 "Core_64_Github_Link" H 5425 7354 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Github_Link_Large" H 5400 7400 50  0001 C CNN
F 3 "" H 5400 7400 50  0001 C CNN
	1    5400 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2350 10100 2350
Connection ~ 10100 2350
Wire Wire Line
	10100 2350 10300 2350
Wire Wire Line
	4700 5150 4350 5150
Text Notes 1150 1600 0    236  ~ 47
*** CUT THE USB-VIN bridge on TEENSY 3.2 ***
Text Notes 7350 2300 0    50   ~ 0
VIN (5V) must be supplied TO the Teensy\nbecause VIN-VUSB is cut. The \nLogic Board provides it here.
$Comp
L power:GNDD #PWR?
U 1 1 5F4EB827
P 6750 5700
AR Path="/5EA63449/5F4EB827" Ref="#PWR?"  Part="1" 
AR Path="/5F4EB827" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 6750 5450 50  0001 C CNN
F 1 "GNDD" H 6754 5544 50  0000 C CNN
F 2 "" H 6750 5700 50  0001 C CNN
F 3 "" H 6750 5700 50  0001 C CNN
	1    6750 5700
	1    0    0    -1  
$EndComp
$Comp
L Teensy:Teensy3.2 U2
U 1 1 5F49143E
P 5700 4150
F 0 "U2" H 5700 5748 60  0000 C CNN
F 1 "Teensy3.2" H 5700 5638 60  0000 C CNN
F 2 "Teensy:Teensy30_31_32_LC_SMD_SOCKETS" H 5700 3350 60  0001 C CNN
F 3 "" H 5700 3350 60  0000 C CNN
	1    5700 4150
	1    0    0    -1  
$EndComp
Text GLabel 1850 7000 1    50   Input ~ 0
5V0
Text GLabel 650  7250 1    50   Input ~ 0
5V0
Text GLabel 7100 2100 2    50   Input ~ 0
5V0
Text GLabel 6950 1850 2    50   Output ~ 0
TEENSY_VUSB
Text Notes 6300 6750 0    50   ~ 0
All non-polarized capacitors are X7R or X5R ceramic unless otherwise noted.
Text GLabel 4300 3150 0    50   Output ~ 0
Q1P
Text GLabel 4300 3250 0    50   Output ~ 0
Q1N
Text GLabel 7100 5350 2    50   Input ~ 0
SENSE_PULSE
Text GLabel 4300 3350 0    50   Output ~ 0
Q2P
Text GLabel 4300 3450 0    50   Output ~ 0
Q2N
Text GLabel 4300 3550 0    50   Output ~ 0
Q3P
Text GLabel 4300 3650 0    50   Output ~ 0
Q3N
Text GLabel 4300 3750 0    50   Output ~ 0
Q4P
Text GLabel 4300 3850 0    50   Output ~ 0
Q4N
Text GLabel 4300 5450 0    50   Output ~ 0
Q5P
Text GLabel 7100 5450 2    50   Output ~ 0
Q5N
Text GLabel 7100 4250 2    50   Output ~ 0
Q6P
Text GLabel 7100 4150 2    50   Output ~ 0
Q6N
Text GLabel 7100 4050 2    50   Output ~ 0
Q7P
Text GLabel 7100 3650 2    50   Output ~ 0
Q9P
Text GLabel 7100 3750 2    50   Output ~ 0
Q8N
Text GLabel 7100 3850 2    50   Output ~ 0
Q8P
Text GLabel 7100 3950 2    50   Output ~ 0
Q7N
Text GLabel 7100 3350 2    50   Output ~ 0
Q10N
Text GLabel 7100 3450 2    50   Output ~ 0
Q10P
Text GLabel 7100 3550 2    50   Output ~ 0
Q9N
Text GLabel 4300 4950 0    50   Output ~ 0
SENSE_RESET
Text GLabel 7100 5250 2    50   Output ~ 0
WRITE_ENABLE
Text GLabel 7900 4450 2    50   Input ~ 0
SPARE_ANA_6
Text GLabel 3250 4850 0    50   BiDi ~ 0
SPARE_3_or_CP_ADDR_2
Wire Notes Line
	5700 4200 4900 4200
Wire Notes Line
	5700 4700 4900 4700
Wire Notes Line
	6500 4900 5700 4900
Wire Notes Line
	5700 2750 5700 4900
Wire Notes Line
	6550 4500 5700 4500
Wire Notes Line
	6500 3800 5700 3800
Text GLabel 3250 2950 0    50   BiDi ~ 0
SAO_G1_or_SPARE_1_or_CP_ADDR_0
Wire Wire Line
	4700 2850 4650 2850
Wire Wire Line
	4650 2850 4650 4450
Wire Wire Line
	6750 5600 6750 5050
Wire Wire Line
	6750 4350 6700 4350
Wire Wire Line
	6750 5600 6750 5700
Wire Wire Line
	6700 5050 6750 5050
Connection ~ 6750 5050
Wire Wire Line
	6750 5050 6750 4350
Wire Wire Line
	4700 4450 4650 4450
Text GLabel 1750 3150 0    50   Output ~ 0
OLED_SPI_CS
Text GLabel 1750 3250 0    50   Output ~ 0
OLED_SPI_DC
Text Notes 800  2300 0    50   ~ 10
QxP is normally high, goes low to activate matrix transistor.\nQxN is normally low, goes high to activate matrix transistor.
Text GLabel 1750 3350 0    50   Output ~ 0
TOUCH_SPI_CS
Text GLabel 900  3450 0    50   Output ~ 0
IR_MOD
Text GLabel 2550 3750 0    50   Output ~ 0
TFT_SPI_CS
Text GLabel 2550 3850 0    50   Output ~ 0
TFT_SPI_DC
Text GLabel 1750 3950 0    50   Output ~ 0
TEENSYVIEW_SPI_CS
Wire Wire Line
	6900 4950 6900 2100
Wire Wire Line
	6900 2100 7100 2100
Wire Wire Line
	6700 4950 6900 4950
Wire Wire Line
	4700 4350 4600 4350
Wire Wire Line
	4600 4350 4600 2000
Wire Wire Line
	6800 5150 6800 4750
Connection ~ 6800 4750
Wire Wire Line
	6800 4750 6800 3250
Wire Wire Line
	6700 3250 6800 3250
Text Notes 5150 2300 0    50   ~ 0
Teensy 3V3 is only used for AREF.\nCurrent is limited, do not use for\nanything else.
Text GLabel 2550 5050 0    50   Output ~ 0
TFT_SPI_RESET
Text GLabel 2550 5150 0    50   Output ~ 0
TFT_BACKLIGHT
Text GLabel 1750 5450 0    50   Output ~ 0
SPARE_SPI_CS
Text GLabel 7900 5450 2    50   Output ~ 0
SPARE_SPI_DC
Text Notes 7550 1950 0    50   ~ 0
VUSB provides power to main\nLogic Board power switch.
Wire Wire Line
	6850 4850 6850 1850
Wire Wire Line
	6850 1850 6950 1850
Wire Wire Line
	6950 4650 6950 2450
Wire Wire Line
	6950 2450 7100 2450
Connection ~ 6800 3250
Wire Wire Line
	6800 3250 6800 2000
Text GLabel 7900 3150 2    50   Input ~ 0
SPARE_ANA_7
Text GLabel 2550 4150 0    50   Input ~ 0
SPI_SDI
Text GLabel 2550 4050 0    50   Output ~ 0
SPI_SDO
Wire Wire Line
	4700 3550 4300 3550
Wire Wire Line
	4700 3650 4300 3650
Wire Wire Line
	4700 3750 4300 3750
Wire Wire Line
	4700 3850 4300 3850
Wire Wire Line
	4700 3950 1750 3950
Wire Notes Line
	4400 2750 4400 5600
Wire Notes Line
	4400 5600 3450 5600
Wire Notes Line
	3450 5600 3450 2750
Wire Notes Line
	3450 2750 4400 2750
Text Notes 3650 2750 0    50   ~ 0
Primary Use\n1 Core Plane
Wire Notes Line
	7000 5600 7000 2750
Wire Notes Line
	7000 2750 7800 2750
Wire Notes Line
	7800 2750 7800 5600
Wire Notes Line
	7800 5600 7000 5600
Wire Wire Line
	4700 4950 4300 4950
Wire Wire Line
	4300 5450 4700 5450
Wire Notes Line
	3350 2750 3350 4950
Wire Notes Line
	1850 2750 3350 2750
Text GLabel 1750 3450 0    50   Output ~ 0
TEENSYVIEW_SPI_DC
Text GLabel 1750 3550 0    50   Output ~ 0
SD_SPI_CS
Text GLabel 1450 4650 0    50   BiDi ~ 0
SPARE_ADC_DAC
Text GLabel 900  5050 0    50   BiDi ~ 0
SPARE_5
Text GLabel 900  3950 0    50   BiDi ~ 0
SPARE_4
Wire Wire Line
	3250 4850 4700 4850
Wire Wire Line
	4700 5050 2550 5050
Wire Wire Line
	4350 5150 4350 5200
Wire Wire Line
	4350 5200 2600 5200
Wire Wire Line
	2600 5200 2600 5150
Wire Wire Line
	2600 5150 2550 5150
Wire Wire Line
	4350 5150 4300 5150
Wire Wire Line
	4700 2950 3250 2950
Wire Wire Line
	4700 3050 3250 3050
Wire Wire Line
	6700 4250 7100 4250
Wire Wire Line
	6700 4150 7100 4150
Wire Wire Line
	6700 4050 7100 4050
Wire Wire Line
	6700 3950 7100 3950
Wire Wire Line
	6700 3850 7100 3850
Wire Wire Line
	6700 3750 7100 3750
Wire Wire Line
	6700 3650 7100 3650
Wire Wire Line
	6700 3550 7100 3550
Wire Wire Line
	6700 3450 7100 3450
Wire Wire Line
	6700 3350 7100 3350
Wire Wire Line
	6700 3150 7900 3150
Wire Wire Line
	6700 4450 7900 4450
Wire Wire Line
	7900 4550 6700 4550
Wire Wire Line
	6700 5450 7050 5450
Wire Wire Line
	6700 5350 7100 5350
Wire Wire Line
	6700 5250 7100 5250
Text GLabel 3250 3050 0    50   BiDi ~ 0
SAO_G2_or_SPARE_2_or_CP_ADDR_1
Text Notes 8900 4150 0    50   ~ 0
AMBIENT LIGHT SENSOR\nHALL SENSOR 1\nHALL SENSOR 2\nHALL SENSOR 3\nHALL SENSOR 4\nEEPROM (BOARD ID)
Text Notes 10050 4150 0    50   ~ 0
0X29 (47)\n0x30 (48)\n0x31 (49)\n0x32 (50)\n0x33 (51)\n0x57 (87)
Text Notes 8800 3650 0    50   ~ 0
INCLUDED:
Text Notes 8800 4250 0    50   ~ 0
OPTIONAL:
Text Notes 8900 4500 0    50   ~ 0
OLED\nAND!XOR IO Exp. MCP23017\nAND!XOR EEPROM AT24C32r
Text Notes 10050 4500 0    50   ~ 0
0x3C (60)\n0x20 (32)\n0x50 (80)
Text Notes 8750 3500 0    118  ~ 0
I2C ADDRESS TABLE
Text Notes 7150 2750 0    50   ~ 0
Primary Use\n1 Core Plane
Wire Notes Line
	2750 4750 2750 3150
Wire Notes Line
	2750 3150 1850 3150
Wire Notes Line
	1850 3150 1850 2750
Text Notes 1900 5700 0    50   ~ 0
3.2” TFT (LED replacement)
Wire Notes Line
	2650 3650 1900 3650
Wire Notes Line
	1900 3650 1900 5600
Text Notes 1850 2750 0    50   ~ 0
8 Core Plane Selector
Wire Wire Line
	4350 3150 4350 3200
Wire Wire Line
	4350 3200 1800 3200
Wire Wire Line
	1800 3200 1800 3150
Wire Wire Line
	1800 3150 1750 3150
Wire Wire Line
	4700 4650 1450 4650
Wire Wire Line
	7050 5450 7050 5500
Wire Wire Line
	7050 5500 7850 5500
Wire Wire Line
	7850 5500 7850 5450
Wire Wire Line
	7850 5450 7900 5450
Connection ~ 7050 5450
Wire Wire Line
	7050 5450 7100 5450
Text Notes 650  2900 0    50   ~ 0
SAO#1/2 GPIO1&2 shared\nwith Core Plane Addressing
Text Notes 5200 6600 0    118  ~ 0
SILKSCREEN MISC.
Text Notes 5400 7250 0    118  ~ 0
SILKSCREEN GRAPHICS
Wire Notes Line
	1900 5600 2650 5600
Wire Notes Line
	2650 4750 2650 3650
Wire Notes Line
	2250 4750 2250 4950
Wire Notes Line
	2650 4950 2650 5600
Wire Notes Line
	2250 4750 2750 4750
Wire Wire Line
	2550 4700 3400 4700
Wire Wire Line
	3400 4700 3400 4750
Wire Notes Line
	2250 4950 3350 4950
Text Notes 4950 2500 0    50   ~ 0
SILKSCREEN UNDER TEENSY: CUT VIN-BUSB
Connection ~ 4650 4450
Wire Wire Line
	4650 4450 4650 5600
Connection ~ 4350 5150
Wire Wire Line
	4300 3450 4700 3450
Wire Wire Line
	4300 3350 4700 3350
Connection ~ 4350 3150
Wire Wire Line
	4350 3150 4700 3150
Wire Wire Line
	4700 4550 4500 4550
Wire Wire Line
	4500 4550 4500 2450
$Comp
L Device:R R?
U 1 1 5F73FDF3
P 4500 2250
AR Path="/5E755787/5F73FDF3" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5F73FDF3" Ref="R?"  Part="1" 
AR Path="/5F73FDF3" Ref="R?"  Part="1" 
F 0 "R?" H 4300 2350 50  0000 L CNN
F 1 "10K" H 4300 2250 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4430 2250 50  0001 C CNN
F 3 "~" H 4500 2250 50  0001 C CNN
	1    4500 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4250 4550 4250
Wire Wire Line
	4550 4250 4550 5900
Wire Wire Line
	4500 2100 4500 2000
Wire Wire Line
	4500 2000 4600 2000
Connection ~ 4600 2000
Wire Wire Line
	4600 2000 6800 2000
Text GLabel 4300 2450 0    50   Output ~ 0
PRG
Wire Wire Line
	4300 2450 4500 2450
Connection ~ 4500 2450
Wire Wire Line
	4500 2450 4500 2400
Text Notes 4100 6350 0    50   ~ 0
To use the Teensy 3.2 RTC you must add two things:\n1) A 32.768 kHz, 12.5 pF crystal to the bottom side of the Teensy board. Recommended: \n  Citizen part CFS-206, Digikey part 300-8303-ND (20ppm), 300-8762-ND (10ppm), \n  300-8763-ND (5ppm), or 300-1002-ND (20ppm).\n2) A 3V coin cell battery, such as CR2032.
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5F792A50
P 5100 5800
AR Path="/5E7548ED/5F792A50" Ref="J?"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5F792A50" Ref="J?"  Part="1" 
F 0 "J?" H 5100 5900 50  0000 C CNN
F 1 "0.1\" 2-PIN" H 4700 5900 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical_SMD_Pin1Left" H 5100 5800 50  0001 C CNN
F 3 "~" H 5100 5800 50  0001 C CNN
	1    5100 5800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4900 5900 4550 5900
Wire Wire Line
	4900 5800 4650 5800
Connection ~ 4650 5600
Text Notes 5150 5950 0    50   ~ 0
SILKSCREEN: RTC BAT. [OPTIONAL]\n+ 3V (on pin 2)
Connection ~ 6750 5600
Wire Wire Line
	4650 5600 6750 5600
Wire Wire Line
	4650 5800 4650 5600
Wire Wire Line
	1350 6900 1400 6900
Wire Wire Line
	1400 6900 1400 7400
Wire Wire Line
	1850 7800 1850 7750
$Comp
L power:GND #PWR?
U 1 1 5EA33CDC
P 1850 7800
AR Path="/5E755787/5EA33CDC" Ref="#PWR?"  Part="1" 
AR Path="/5EA33CDC" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 1850 7550 50  0001 C CNN
F 1 "GND" H 1855 7625 50  0000 C CNN
F 2 "" H 1850 7800 50  0001 C CNN
F 3 "" H 1850 7800 50  0001 C CNN
	1    1850 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 7050 2250 6900
NoConn ~ 3250 6950
NoConn ~ 3750 6950
Text Notes 3000 7900 0    50   ~ 0
TSM-106 (2x6) required\nTSM-107 (2x7) alternate
Text Notes 2450 7600 0    50   ~ 0
SILKSCREEN: \n5V0 ONLY\nLED ARRAY
Wire Wire Line
	3100 7450 3100 7550
Text GLabel 3100 7450 1    50   Input ~ 0
5V0
NoConn ~ 3750 7550
NoConn ~ 3750 7450
NoConn ~ 3750 7350
NoConn ~ 3750 7250
NoConn ~ 3750 7050
NoConn ~ 3250 7150
NoConn ~ 3250 7250
NoConn ~ 3250 7350
NoConn ~ 3250 7450
Wire Wire Line
	3850 7150 3850 7250
Wire Wire Line
	3750 7150 3850 7150
Wire Wire Line
	3250 7050 3150 7050
Wire Wire Line
	3250 7550 3100 7550
$Comp
L power:GND #PWR?
U 1 1 5E92D5BA
P 3850 7250
AR Path="/5E755787/5E92D5BA" Ref="#PWR?"  Part="1" 
AR Path="/5E92D5BA" Ref="#PWR0162"  Part="1" 
F 0 "#PWR0162" H 3850 7000 50  0001 C CNN
F 1 "GND" H 3855 7075 50  0000 C CNN
F 2 "" H 3850 7250 50  0001 C CNN
F 3 "" H 3850 7250 50  0001 C CNN
	1    3850 7250
	1    0    0    -1  
$EndComp
Text GLabel 3150 7050 0    50   Input ~ 0
LED_ARRAY_5V0_SIG
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J4
U 1 1 5E92C31C
P 3550 7250
F 0 "J4" H 3600 6850 50  0000 C CNN
F 1 "TSM-106-03-T-DV‎" H 3600 7700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x07_P2.54mm_Vertical_SMD_and_TH" H 3550 7250 50  0001 C CNN
F 3 "~" H 3550 7250 50  0001 C CNN
	1    3550 7250
	-1   0    0    1   
$EndComp
$EndSCHEMATC
