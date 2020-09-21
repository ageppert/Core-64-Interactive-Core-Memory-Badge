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
Text Notes 7450 2550 0    50   ~ 0
Reads 1/4 voltage of +VSW\n(after RPP) before regulators.
Text Notes 800  2050 0    50   ~ 10
Teensy LC has incoming USB power/programming on board.
Wire Wire Line
	4300 5250 4550 5250
Wire Wire Line
	4550 5350 4300 5350
Wire Wire Line
	4300 3250 4550 3250
Wire Wire Line
	4300 3350 4550 3350
Wire Wire Line
	4300 3450 4550 3450
Wire Wire Line
	2550 4150 4550 4150
Wire Wire Line
	2550 4050 4550 4050
Wire Wire Line
	6550 4650 6800 4650
Text GLabel 6950 2450 2    50   Input ~ 0
VBAT_MON
Wire Wire Line
	6550 4850 6700 4850
Wire Wire Line
	6550 4750 6650 4750
Wire Wire Line
	6550 5150 6650 5150
Text GLabel 4300 5350 0    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 4300 5250 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 4300 5150 0    50   Output ~ 0
LED_ARRAY_3V3_SIG
Text GLabel 3100 6750 2    50   Output ~ 0
LED_ARRAY_5V0_SIG
$Comp
L Device:R R?
U 1 1 5EA33CBB
P 2850 6750
AR Path="/5E755787/5EA33CBB" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA33CBB" Ref="R?"  Part="1" 
AR Path="/5EA33CBB" Ref="R5"  Part="1" 
F 0 "R5" V 2750 6750 50  0000 L CNN
F 1 "470" V 2650 6700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2780 6750 50  0001 C CNN
F 3 "~" H 2850 6750 50  0001 C CNN
	1    2850 6750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 6750 3100 6750
Text GLabel 1750 6750 0    50   Input ~ 0
LED_ARRAY_3V3_SIG
Wire Wire Line
	1750 6750 1800 6750
$Comp
L power:GND #PWR?
U 1 1 5EA33CDC
P 2200 7200
AR Path="/5E755787/5EA33CDC" Ref="#PWR?"  Part="1" 
AR Path="/5EA33CDC" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 2200 6950 50  0001 C CNN
F 1 "GND" H 2205 7025 50  0000 C CNN
F 2 "" H 2200 7200 50  0001 C CNN
F 3 "" H 2200 7200 50  0001 C CNN
	1    2200 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 7200 2200 7100
Wire Wire Line
	2200 6450 2200 6350
$Sheet
S 750  850  1450 250 
U 5E7548ED
F0 "Power" 50
F1 "Core64 LB v0.4 Power.sch" 50
$EndSheet
$Comp
L Logic_LevelTranslator:SN74LV1T125DBVR U4
U 1 1 5E84BF19
P 2200 6750
F 0 "U4" H 1700 7000 50  0000 L CNN
F 1 "SN74LV1T125DBVR" H 1150 6500 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2200 6050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lv1t125.pdf" H 2200 6150 50  0001 C CNN
	1    2200 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 7050 2100 7100
Wire Wire Line
	2100 7100 2200 7100
Wire Wire Line
	2300 7050 2300 7100
Wire Wire Line
	2300 7100 2200 7100
Connection ~ 2200 7100
Text Notes 550  6150 0    118  ~ 0
LED ARRAY DRIVE AND LEVEL SHIFT
Text Notes 800  1850 0    118  ~ 0
TEENSY 3.2 MCU CONNECTIONS
Text Notes 8700 4700 0    50   ~ 0
All 7-bit addresses should be greater\nthan 0x07 and less than 0x78 (120).
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J4
U 1 1 5E92C31C
P 4300 7100
F 0 "J4" H 4350 6700 50  0000 C CNN
F 1 "TSM-106-03-T-DV‎" H 4350 7550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x07_P2.54mm_Vertical_SMD_and_TH" H 4300 7100 50  0001 C CNN
F 3 "~" H 4300 7100 50  0001 C CNN
	1    4300 7100
	-1   0    0    1   
$EndComp
Text GLabel 3900 6900 0    50   Input ~ 0
LED_ARRAY_5V0_SIG
$Comp
L power:GND #PWR?
U 1 1 5E92D5BA
P 4650 7100
AR Path="/5E755787/5E92D5BA" Ref="#PWR?"  Part="1" 
AR Path="/5E92D5BA" Ref="#PWR0162"  Part="1" 
F 0 "#PWR0162" H 4650 6850 50  0001 C CNN
F 1 "GND" H 4655 6925 50  0000 C CNN
F 2 "" H 4650 7100 50  0001 C CNN
F 3 "" H 4650 7100 50  0001 C CNN
	1    4650 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 7400 3700 7400
Wire Wire Line
	4000 6900 3900 6900
Wire Wire Line
	4500 7000 4650 7000
Wire Wire Line
	4650 7000 4650 7100
Text Notes 5400 7050 0    50   ~ 10
BOM TO DO: TEENSY requires at least three headers\nthat do not get auto populated in the BOM from KiCAD.
NoConn ~ 4000 7300
NoConn ~ 4000 7200
NoConn ~ 4000 7100
NoConn ~ 4000 7000
NoConn ~ 4500 6900
NoConn ~ 4500 7100
NoConn ~ 4500 7200
NoConn ~ 4500 7300
NoConn ~ 4500 7400
Text GLabel 2550 4700 0    50   Output ~ 0
SPI_CLK
Text GLabel 7750 4550 2    50   Input ~ 0
SD_SPI_CD
Wire Wire Line
	2600 6750 2700 6750
Text Notes 8650 5350 0    118  ~ 0
BOARD ID AND S/N
$Comp
L Memory_EEPROM:M24C01-RMN U3
U 1 1 5EA6E6DA
P 9550 6050
AR Path="/5EA6E6DA" Ref="U3"  Part="1" 
AR Path="/5EA63449/5EA6E6DA" Ref="U?"  Part="1" 
F 0 "U3" H 9250 6350 50  0000 C CNN
F 1 "M24C01-RMN" H 9900 6350 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9550 6400 50  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/b0/d8/50/40/5a/85/49/6f/DM00071904.pdf/files/DM00071904.pdf/jcr:content/translations/en.DM00071904.pdf" H 9600 5550 50  0001 C CNN
	1    9550 6050
	1    0    0    -1  
$EndComp
Text GLabel 9950 5950 2    50   BiDi ~ 0
I2C_DATA
Text GLabel 9950 6050 2    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 9950 5600 2    50   Input ~ 0
3V3
$Comp
L power:GNDD #PWR?
U 1 1 5EA6E6E3
P 9550 6400
AR Path="/5EA63449/5EA6E6E3" Ref="#PWR?"  Part="1" 
AR Path="/5EA6E6E3" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 9550 6150 50  0001 C CNN
F 1 "GNDD" H 9554 6244 50  0000 C CNN
F 2 "" H 9550 6400 50  0001 C CNN
F 3 "" H 9550 6400 50  0001 C CNN
	1    9550 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 5950 9150 6050
Connection ~ 9150 6050
Wire Wire Line
	9150 6050 9150 6150
Wire Wire Line
	9550 6350 9550 6400
Connection ~ 9550 6350
Wire Wire Line
	9950 6150 9950 6350
Wire Wire Line
	9950 6350 9550 6350
Wire Wire Line
	9550 5750 9550 5600
Wire Wire Line
	9550 5600 9950 5600
$Comp
L Device:C C?
U 1 1 5EA6E6F2
P 8800 6100
AR Path="/5E755787/5EA6E6F2" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA6E6F2" Ref="C?"  Part="1" 
AR Path="/5EA63449/5EA6E6F2" Ref="C?"  Part="1" 
AR Path="/5EA6E6F2" Ref="C4"  Part="1" 
F 0 "C4" H 8891 6146 50  0000 L CNN
F 1 "0.1uF" H 8891 6055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8800 6100 50  0001 C CNN
F 3 "~" H 8800 6100 50  0001 C CNN
	1    8800 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5600 9150 5600
Wire Wire Line
	8800 5600 8800 5950
Connection ~ 9550 5600
Wire Wire Line
	8800 6250 8800 6350
Text Notes 8650 5500 0    50   ~ 0
EEPROM I2C ADDRESS: 0b1010111, 0x57 (87)
Wire Wire Line
	8800 6350 9550 6350
Wire Wire Line
	9150 5950 9150 5600
Connection ~ 9150 5950
Connection ~ 9150 5600
Wire Wire Line
	9150 5600 8800 5600
$Comp
L Device:R R?
U 1 1 5EA7ABC7
P 9750 2600
AR Path="/5E755787/5EA7ABC7" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA7ABC7" Ref="R?"  Part="1" 
AR Path="/5EA7ABC7" Ref="R2"  Part="1" 
AR Path="/5EA63449/5EA7ABC7" Ref="R?"  Part="1" 
F 0 "R2" H 9820 2646 50  0000 L CNN
F 1 "4K7" H 9820 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9680 2600 50  0001 C CNN
F 3 "~" H 9750 2600 50  0001 C CNN
	1    9750 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EA7ABCD
P 10150 2800
AR Path="/5E755787/5EA7ABCD" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA7ABCD" Ref="R?"  Part="1" 
AR Path="/5EA7ABCD" Ref="R3"  Part="1" 
AR Path="/5EA63449/5EA7ABCD" Ref="R?"  Part="1" 
F 0 "R3" H 10220 2846 50  0000 L CNN
F 1 "4K7" H 10220 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10080 2800 50  0001 C CNN
F 3 "~" H 10150 2800 50  0001 C CNN
	1    10150 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 2800 9750 2800
Wire Wire Line
	9750 2750 9750 2800
Text GLabel 9650 2950 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 9650 2800 0    50   BiDi ~ 0
I2C_CLOCK
Text Notes 8850 1950 0    118  ~ 0
I2C PULL-UPS
Text GLabel 9750 2150 0    50   Input ~ 0
3V3
Wire Wire Line
	10150 2350 10150 2650
Wire Wire Line
	9650 2950 10150 2950
Wire Wire Line
	9950 2150 9750 2150
Wire Wire Line
	9750 2350 9750 2450
Wire Wire Line
	9950 2150 9950 2350
Wire Wire Line
	4550 4750 3400 4750
$Comp
L Device:C C?
U 1 1 5EBC469C
P 2600 7400
AR Path="/5E755787/5EBC469C" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EBC469C" Ref="C?"  Part="1" 
AR Path="/5EA63449/5EBC469C" Ref="C?"  Part="1" 
AR Path="/5EBC469C" Ref="C5"  Part="1" 
F 0 "C5" H 2691 7446 50  0000 L CNN
F 1 "0.1uF" H 2691 7355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2600 7400 50  0001 C CNN
F 3 "~" H 2600 7400 50  0001 C CNN
	1    2600 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 7250 2600 7200
$Comp
L power:GND #PWR?
U 1 1 5EBCCC45
P 2600 7600
AR Path="/5E755787/5EBCCC45" Ref="#PWR?"  Part="1" 
AR Path="/5EBCCC45" Ref="#PWR0155"  Part="1" 
F 0 "#PWR0155" H 2600 7350 50  0001 C CNN
F 1 "GND" H 2605 7425 50  0000 C CNN
F 2 "" H 2600 7600 50  0001 C CNN
F 3 "" H 2600 7600 50  0001 C CNN
	1    2600 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 7600 2600 7550
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
	9750 2350 9950 2350
Connection ~ 9950 2350
Wire Wire Line
	9950 2350 10150 2350
Wire Wire Line
	4550 5150 4350 5150
Text Notes 1150 1600 0    236  ~ 47
*** CUT THE USB-VIN bridge on TEENSY 3.2 ***
Text Notes 7200 2300 0    50   ~ 0
VIN (5V) must be supplied TO the Teensy\nbecause VIN-VUSB is cut. The \nLogic Board provides it here.
$Comp
L power:GNDD #PWR?
U 1 1 5F4EB827
P 5550 5750
AR Path="/5EA63449/5F4EB827" Ref="#PWR?"  Part="1" 
AR Path="/5F4EB827" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 5550 5500 50  0001 C CNN
F 1 "GNDD" H 5554 5594 50  0000 C CNN
F 2 "" H 5550 5750 50  0001 C CNN
F 3 "" H 5550 5750 50  0001 C CNN
	1    5550 5750
	1    0    0    -1  
$EndComp
$Comp
L Teensy:Teensy3.2 U2
U 1 1 5F49143E
P 5550 4150
F 0 "U2" H 5550 5748 60  0000 C CNN
F 1 "Teensy3.2" H 5550 5638 60  0000 C CNN
F 2 "Teensy:Teensy30_31_32_LC_SMD_SOCKETS" H 5550 3350 60  0001 C CNN
F 3 "" H 5550 3350 60  0000 C CNN
	1    5550 4150
	1    0    0    -1  
$EndComp
Text GLabel 2200 6350 1    50   Input ~ 0
5V0
Text GLabel 2600 7200 1    50   Input ~ 0
5V0
Text GLabel 3700 7300 1    50   Input ~ 0
5V0
Text GLabel 6950 2100 2    50   Input ~ 0
5V0
Text GLabel 6800 1850 2    50   Output ~ 0
TEENSY_VUSB
Wire Wire Line
	3700 7300 3700 7400
Text Notes 6300 6750 0    50   ~ 0
All non-polarized capacitors are X7R or X5R ceramic unless otherwise noted.
Text GLabel 4300 3150 0    50   Output ~ 0
Q1P
Text GLabel 4300 3250 0    50   Output ~ 0
Q1N
Text GLabel 6950 5350 2    50   Input ~ 0
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
Text GLabel 6950 5450 2    50   Output ~ 0
Q5N
Text GLabel 6950 4250 2    50   Output ~ 0
Q6P
Text GLabel 6950 4150 2    50   Output ~ 0
Q6N
Text GLabel 6950 4050 2    50   Output ~ 0
Q7P
Text GLabel 6950 3650 2    50   Output ~ 0
Q9P
Text GLabel 6950 3750 2    50   Output ~ 0
Q8N
Text GLabel 6950 3850 2    50   Output ~ 0
Q8P
Text GLabel 6950 3950 2    50   Output ~ 0
Q7N
Text GLabel 6950 3350 2    50   Output ~ 0
Q10N
Text GLabel 6950 3450 2    50   Output ~ 0
Q10P
Text GLabel 6950 3550 2    50   Output ~ 0
Q9N
Text GLabel 4300 4950 0    50   Output ~ 0
SENSE_RESET
Text GLabel 6950 5250 2    50   Output ~ 0
WRITE_ENABLE
Text GLabel 7750 4450 2    50   Input ~ 0
SPARE_ANA_6
Text GLabel 3250 4850 0    50   BiDi ~ 0
SPARE_3_or_CP_ADDR_2
Wire Notes Line
	5550 4200 4750 4200
Wire Notes Line
	5550 4700 4750 4700
Wire Notes Line
	6350 4900 5550 4900
Wire Notes Line
	5550 2750 5550 4900
Wire Notes Line
	6400 4500 5550 4500
Wire Notes Line
	6350 3800 5550 3800
Text Notes 4000 7900 0    50   ~ 0
SILKSCREEN: \n5V0 ONLY\nLED ARRAY
Text GLabel 3250 2950 0    50   BiDi ~ 0
SAO_G1_or_SPARE_1_or_CP_ADDR_0
Wire Wire Line
	4550 2850 4500 2850
Wire Wire Line
	4500 2850 4500 4450
Wire Wire Line
	4500 5650 5550 5650
Wire Wire Line
	6600 5650 6600 5050
Wire Wire Line
	6600 4350 6550 4350
Wire Wire Line
	5550 5650 5550 5750
Connection ~ 5550 5650
Wire Wire Line
	5550 5650 6600 5650
Wire Wire Line
	6550 5050 6600 5050
Connection ~ 6600 5050
Wire Wire Line
	6600 5050 6600 4350
Wire Wire Line
	4550 4450 4500 4450
Connection ~ 4500 4450
Wire Wire Line
	4500 4450 4500 5650
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
	6750 4950 6750 2100
Wire Wire Line
	6750 2100 6950 2100
Wire Wire Line
	6550 4950 6750 4950
Wire Wire Line
	4550 4350 4450 4350
Wire Wire Line
	4450 4350 4450 2450
Wire Wire Line
	6650 5150 6650 4750
Connection ~ 6650 4750
Wire Wire Line
	6650 4750 6650 3250
Wire Wire Line
	6550 3250 6650 3250
Wire Wire Line
	4450 2450 6650 2450
Text Notes 5000 2400 0    50   ~ 0
Teensy 3V3 is only used for AREF.\nCurrent is limited, do not use for\nanything else.
Text GLabel 2550 5050 0    50   Output ~ 0
TFT_SPI_RESET
Text GLabel 2550 5150 0    50   Output ~ 0
TFT_BACKLIGHT
Text GLabel 1750 5450 0    50   Output ~ 0
SPARE_SPI_CS
Text GLabel 7750 5450 2    50   Output ~ 0
SPARE_SPI_DC
Text Notes 7400 1950 0    50   ~ 0
VUSB provides power to main\nLogic Board power switch.
Wire Wire Line
	6700 4850 6700 1850
Wire Wire Line
	6700 1850 6800 1850
Wire Wire Line
	6800 4650 6800 2450
Wire Wire Line
	6800 2450 6950 2450
Connection ~ 6650 3250
Wire Wire Line
	6650 3250 6650 2450
Text GLabel 7750 3150 2    50   Input ~ 0
SPARE_ANA_7
Text GLabel 2550 4150 0    50   Input ~ 0
SPI_SDI
Text GLabel 2550 4050 0    50   Output ~ 0
SPI_SDO
Wire Wire Line
	4550 3550 4300 3550
Wire Wire Line
	4550 3650 4300 3650
Wire Wire Line
	4550 3750 4300 3750
Wire Wire Line
	4550 3850 4300 3850
Wire Wire Line
	4550 3950 1750 3950
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
	6850 5600 6850 2750
Wire Notes Line
	6850 2750 7650 2750
Wire Notes Line
	7650 2750 7650 5600
Wire Notes Line
	7650 5600 6850 5600
Wire Wire Line
	4550 4950 4300 4950
Wire Wire Line
	4300 5450 4550 5450
Wire Notes Line
	3350 2750 3350 4950
Wire Notes Line
	1850 2750 3350 2750
NoConn ~ 4550 4250
NoConn ~ 4550 4550
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
	3250 4850 4550 4850
Wire Wire Line
	4550 5050 2550 5050
Wire Wire Line
	4350 5150 4350 5200
Wire Wire Line
	4350 5200 2600 5200
Wire Wire Line
	2600 5200 2600 5150
Wire Wire Line
	2600 5150 2550 5150
Connection ~ 4350 5150
Wire Wire Line
	4350 5150 4300 5150
Wire Wire Line
	4550 2950 3250 2950
Wire Wire Line
	4550 3050 3250 3050
Wire Wire Line
	6550 4250 6950 4250
Wire Wire Line
	6550 4150 6950 4150
Wire Wire Line
	6550 4050 6950 4050
Wire Wire Line
	6550 3950 6950 3950
Wire Wire Line
	6550 3850 6950 3850
Wire Wire Line
	6550 3750 6950 3750
Wire Wire Line
	6550 3650 6950 3650
Wire Wire Line
	6550 3550 6950 3550
Wire Wire Line
	6550 3450 6950 3450
Wire Wire Line
	6550 3350 6950 3350
Wire Wire Line
	6550 3150 7750 3150
Wire Wire Line
	6550 4450 7750 4450
Wire Wire Line
	7750 4550 6550 4550
Wire Wire Line
	6550 5450 6900 5450
Wire Wire Line
	6550 5350 6950 5350
Wire Wire Line
	6550 5250 6950 5250
Text GLabel 3250 3050 0    50   BiDi ~ 0
SAO_G2_or_SPARE_2_or_CP_ADDR_1
Text Notes 8800 4150 0    50   ~ 0
AMBIENT LIGHT SENSOR\nHALL SENSOR 1\nHALL SENSOR 2\nHALL SENSOR 3\nHALL SENSOR 4\nEEPROM (BOARD ID)
Text Notes 9950 4150 0    50   ~ 0
0X29 (47)\n0x30 (48)\n0x31 (49)\n0x32 (50)\n0x33 (51)\n0x57 (87)
Text Notes 8700 3650 0    50   ~ 0
INCLUDED:
Text Notes 8700 4250 0    50   ~ 0
OPTIONAL:
Text Notes 8800 4500 0    50   ~ 0
OLED\nAND!XOR IO Exp. MCP23017\nAND!XOR EEPROM AT24C32r
Text Notes 9950 4500 0    50   ~ 0
0x3C (60)\n0x20 (32)\n0x50 (80)
Text Notes 8650 3500 0    118  ~ 0
I2C ADDRESS TABLE
Text Notes 7000 2750 0    50   ~ 0
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
Connection ~ 4350 3150
Wire Wire Line
	4350 3150 4550 3150
Wire Wire Line
	4550 4650 1450 4650
Wire Wire Line
	6900 5450 6900 5500
Wire Wire Line
	6900 5500 7700 5500
Wire Wire Line
	7700 5500 7700 5450
Wire Wire Line
	7700 5450 7750 5450
Connection ~ 6900 5450
Wire Wire Line
	6900 5450 6950 5450
Text Notes 650  2900 0    50   ~ 0
SAO#1/2 GPIO1&2 shared\nwith Core Plane Addressing
Text Notes 5350 6250 0    118  ~ 0
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
Text Notes 5750 5800 0    50   ~ 0
SILKSCREEN UNDER TEENSY: CUT VIN-BUSB
Text Notes 3700 6550 0    50   ~ 0
TSM-106 (2x6) required\nTSM-107 (2x7) alternate
NoConn ~ 4500 6800
NoConn ~ 4000 6800
$EndSCHEMATC
