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
S 6100 1000 1550 250 
U 5E755AC8
F0 "Core Array Driver" 50
F1 "Core64 LB v0.4 Driver.sch" 50
$EndSheet
Text Notes 2650 750  0    118  ~ 0
CORE 64 INTERACTIVE CORE MEMORY BADGE V0.4 DUAL BOARD (LOGIC)
$Sheet
S 8750 1000 1500 250 
U 5E75D6AB
F0 "SENSE" 50
F1 "Core64 LB v0.4 Sense.sch" 50
$EndSheet
$Sheet
S 3300 1000 1500 250 
U 5EA63449
F0 "IO Expansion" 50
F1 "Core64 LB v0.4 Expansion.sch" 50
$EndSheet
Wire Wire Line
	2950 3300 3100 3300
Wire Wire Line
	5250 4500 5100 4500
Text Notes 6200 4850 0    50   ~ 0
Reads 1/4 voltage of +VSW\n(after RPP)
Text Notes 650  2000 0    50   ~ 10
Teensy LC has incoming USB power/programming on board.
Wire Wire Line
	2950 5400 3100 5400
Wire Wire Line
	3100 5500 2950 5500
Wire Wire Line
	1200 3100 2150 3100
Wire Wire Line
	2950 3400 3100 3400
Wire Wire Line
	2950 3500 3100 3500
Wire Wire Line
	2950 3600 3100 3600
Wire Wire Line
	2550 3700 2700 3700
Wire Wire Line
	2650 4300 3100 4300
Wire Wire Line
	2650 4200 3100 4200
Wire Wire Line
	5100 4800 5250 4800
Text GLabel 5250 5300 2    50   Output ~ 0
TEENSY_3V3
Text GLabel 5250 4800 2    50   Input ~ 0
V_MON
Wire Wire Line
	5100 5000 5250 5000
Wire Wire Line
	5100 5100 5250 5100
Wire Wire Line
	5100 4900 5250 4900
Wire Wire Line
	5100 5300 5250 5300
Text GLabel 5250 4900 2    50   Input ~ 0
TEENSY_3V3
Text GLabel 2950 5500 0    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 2950 5400 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 2950 5300 0    50   Output ~ 0
LED_MATRIX_3V3_SIG
Text GLabel 9650 2550 2    50   Output ~ 0
LED_MATRIX_5V0_SIG
$Comp
L Device:R R?
U 1 1 5EA33CBB
P 9400 2550
AR Path="/5E755787/5EA33CBB" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA33CBB" Ref="R?"  Part="1" 
AR Path="/5EA33CBB" Ref="R5"  Part="1" 
F 0 "R5" V 9300 2550 50  0000 L CNN
F 1 "300" V 9200 2500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9330 2550 50  0001 C CNN
F 3 "~" H 9400 2550 50  0001 C CNN
	1    9400 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9550 2550 9650 2550
Text GLabel 8300 2550 0    50   Input ~ 0
LED_MATRIX_3V3_SIG
Wire Wire Line
	8300 2550 8350 2550
$Comp
L power:GND #PWR?
U 1 1 5EA33CDC
P 8750 3000
AR Path="/5E755787/5EA33CDC" Ref="#PWR?"  Part="1" 
AR Path="/5EA33CDC" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 8750 2750 50  0001 C CNN
F 1 "GND" H 8755 2825 50  0000 C CNN
F 2 "" H 8750 3000 50  0001 C CNN
F 3 "" H 8750 3000 50  0001 C CNN
	1    8750 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3000 8750 2900
Wire Wire Line
	8750 2250 8750 2150
$Sheet
S 700  1000 1450 250 
U 5E7548ED
F0 "Power" 50
F1 "Core64 LB v0.4 Power.sch" 50
$EndSheet
Text GLabel 1200 3100 0    50   BiDi ~ 0
SAO1_GPIO2(RX)
Wire Wire Line
	1850 2550 1850 2600
Text GLabel 1200 3400 0    50   BiDi ~ 0
SAO1_GPIO1(TX)
$Comp
L Logic_LevelTranslator:SN74LV1T125DBVR U4
U 1 1 5E84BF19
P 8750 2550
F 0 "U4" H 8250 2800 50  0000 L CNN
F 1 "SN74LV1T125DBVR" H 7700 2300 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 8750 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lv1t125.pdf" H 8750 1950 50  0001 C CNN
	1    8750 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2850 8650 2900
Wire Wire Line
	8650 2900 8750 2900
Wire Wire Line
	8850 2850 8850 2900
Wire Wire Line
	8850 2900 8750 2900
Connection ~ 8750 2900
Text Notes 7100 1850 0    118  ~ 0
LED ARRAY DRIVE AND LEVEL SHIFT
Text Notes 650  1800 0    118  ~ 0
TEENSY 3.2 MCU CONNECTIONS
Text Notes 550  7950 0    50   ~ 0
I2C ADDRESS TABLE\nRequired\n  AMBIENT LIGHT SENSOR: 0X29 (47 decimal)\n  HALL SENSOR 1: 0x30 (48 decimal)\n  HALL SENSOR 2: 0x31 (49 decimal)\n  HALL SENSOR 3: 0x32 (50 decimal)\n  HALL SENSOR 4: 0x33 (51 decimal)\n  EEPROM: 0b1010111, 0x57 (87 decimal)\nOptional\n  OLED: 0x3C (60 decimal)\n  AND!XOR GPIO Expander MCP23017 0x20 (32 decimal)\n  AND!XOR EEPROM AT24C32r 0x50 (80 decimal)\n\nAll 7-bit addresses should be greater than 0x07 and less than 0x78 (120).
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J4
U 1 1 5E92C31C
P 10900 3050
F 0 "J4" H 10950 3470 50  0000 C CNN
F 1 "TSM-106-03-T-DV‎" H 10950 3377 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical_SMD_and_TH" H 10900 3050 50  0001 C CNN
F 3 "~" H 10900 3050 50  0001 C CNN
	1    10900 3050
	-1   0    0    1   
$EndComp
Text GLabel 10500 2750 0    50   Input ~ 0
LED_MATRIX_5V0_SIG
$Comp
L power:GND #PWR?
U 1 1 5E92D5BA
P 11250 2950
AR Path="/5E755787/5E92D5BA" Ref="#PWR?"  Part="1" 
AR Path="/5E92D5BA" Ref="#PWR0162"  Part="1" 
F 0 "#PWR0162" H 11250 2700 50  0001 C CNN
F 1 "GND" H 11255 2775 50  0000 C CNN
F 2 "" H 11250 2950 50  0001 C CNN
F 3 "" H 11250 2950 50  0001 C CNN
	1    11250 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 3250 10300 3250
Wire Wire Line
	10600 2750 10500 2750
Wire Wire Line
	11100 2850 11250 2850
Wire Wire Line
	11250 2850 11250 2950
Text Notes -1750 1750 0    50   ~ 10
BOM TO DO: TEENSY requires at least three headers\nthat do not get auto populated in the BOM from KiCAD.
NoConn ~ 10600 3150
NoConn ~ 10600 3050
NoConn ~ 10600 2950
NoConn ~ 10600 2850
NoConn ~ 11100 2750
NoConn ~ 11100 2950
NoConn ~ 11100 3050
NoConn ~ 11100 3150
NoConn ~ 11100 3250
Text GLabel 2550 3700 0    50   Output ~ 0
SD_CS
Text GLabel 2650 4300 0    50   Output ~ 0
SD_DI
Text GLabel 2650 4200 0    50   Input ~ 0
SD_DO
Text GLabel 2650 4900 0    50   Output ~ 0
SD_CLK
Text GLabel 2650 4650 0    50   Input ~ 0
SD_CD
Wire Wire Line
	9150 2550 9250 2550
Text Notes 8300 5400 0    118  ~ 0
BOARD I.D. AND S/N
$Comp
L Memory_EEPROM:M24C01-RMN U3
U 1 1 5EA6E6DA
P 9200 6100
AR Path="/5EA6E6DA" Ref="U3"  Part="1" 
AR Path="/5EA63449/5EA6E6DA" Ref="U?"  Part="1" 
F 0 "U3" H 8900 6400 50  0000 C CNN
F 1 "M24C01-RMN" H 9550 6400 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9200 6450 50  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/b0/d8/50/40/5a/85/49/6f/DM00071904.pdf/files/DM00071904.pdf/jcr:content/translations/en.DM00071904.pdf" H 9250 5600 50  0001 C CNN
	1    9200 6100
	1    0    0    -1  
$EndComp
Text GLabel 9600 6000 2    50   BiDi ~ 0
I2C_DATA
Text GLabel 9600 6100 2    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 9600 5650 2    50   Input ~ 0
3V3
$Comp
L power:GNDD #PWR?
U 1 1 5EA6E6E3
P 9200 6450
AR Path="/5EA63449/5EA6E6E3" Ref="#PWR?"  Part="1" 
AR Path="/5EA6E6E3" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 9200 6200 50  0001 C CNN
F 1 "GNDD" H 9204 6294 50  0000 C CNN
F 2 "" H 9200 6450 50  0001 C CNN
F 3 "" H 9200 6450 50  0001 C CNN
	1    9200 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 6000 8800 6100
Connection ~ 8800 6100
Wire Wire Line
	8800 6100 8800 6200
Wire Wire Line
	9200 6400 9200 6450
Connection ~ 9200 6400
Wire Wire Line
	9600 6200 9600 6400
Wire Wire Line
	9600 6400 9200 6400
Wire Wire Line
	9200 5800 9200 5650
Wire Wire Line
	9200 5650 9600 5650
$Comp
L Device:C C?
U 1 1 5EA6E6F2
P 8450 6150
AR Path="/5E755787/5EA6E6F2" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA6E6F2" Ref="C?"  Part="1" 
AR Path="/5EA63449/5EA6E6F2" Ref="C?"  Part="1" 
AR Path="/5EA6E6F2" Ref="C4"  Part="1" 
F 0 "C4" H 8541 6196 50  0000 L CNN
F 1 "0.1uF" H 8541 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8450 6150 50  0001 C CNN
F 3 "~" H 8450 6150 50  0001 C CNN
	1    8450 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 5650 8800 5650
Wire Wire Line
	8450 5650 8450 6000
Connection ~ 9200 5650
Wire Wire Line
	8450 6300 8450 6400
Text Notes 8300 5550 0    50   ~ 0
EEPROM I2C ADDRESS: 0b1010111, 0x57 (87 decimal)
Wire Wire Line
	8450 6400 9200 6400
Wire Wire Line
	8800 6000 8800 5650
Connection ~ 8800 6000
Connection ~ 8800 5650
Wire Wire Line
	8800 5650 8450 5650
$Comp
L Device:R R?
U 1 1 5EA7ABC7
P 8850 4700
AR Path="/5E755787/5EA7ABC7" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA7ABC7" Ref="R?"  Part="1" 
AR Path="/5EA7ABC7" Ref="R2"  Part="1" 
AR Path="/5EA63449/5EA7ABC7" Ref="R?"  Part="1" 
F 0 "R2" H 8920 4746 50  0000 L CNN
F 1 "4K7" H 8920 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8780 4700 50  0001 C CNN
F 3 "~" H 8850 4700 50  0001 C CNN
	1    8850 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EA7ABCD
P 9250 4900
AR Path="/5E755787/5EA7ABCD" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA7ABCD" Ref="R?"  Part="1" 
AR Path="/5EA7ABCD" Ref="R3"  Part="1" 
AR Path="/5EA63449/5EA7ABCD" Ref="R?"  Part="1" 
F 0 "R3" H 9320 4946 50  0000 L CNN
F 1 "4K7" H 9320 4855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9180 4900 50  0001 C CNN
F 3 "~" H 9250 4900 50  0001 C CNN
	1    9250 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4900 8850 4900
Wire Wire Line
	8850 4850 8850 4900
Text GLabel 8750 5050 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 8750 4900 0    50   BiDi ~ 0
I2C_CLOCK
Text Notes 7950 4050 0    118  ~ 0
I2C PULL-UPS
Text GLabel 8850 4250 0    50   Input ~ 0
3V3
Wire Wire Line
	9250 4450 9250 4750
Wire Wire Line
	8750 5050 9250 5050
Wire Wire Line
	9050 4250 8850 4250
Wire Wire Line
	8850 4450 8850 4550
Wire Wire Line
	9050 4250 9050 4450
Wire Wire Line
	3100 4900 2650 4900
$Comp
L Device:C C?
U 1 1 5EBC469C
P 8250 3350
AR Path="/5E755787/5EBC469C" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EBC469C" Ref="C?"  Part="1" 
AR Path="/5EA63449/5EBC469C" Ref="C?"  Part="1" 
AR Path="/5EBC469C" Ref="C5"  Part="1" 
F 0 "C5" H 8341 3396 50  0000 L CNN
F 1 "0.1uF" H 8341 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8250 3350 50  0001 C CNN
F 3 "~" H 8250 3350 50  0001 C CNN
	1    8250 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3200 8250 3150
$Comp
L power:GND #PWR?
U 1 1 5EBCCC45
P 8250 3550
AR Path="/5E755787/5EBCCC45" Ref="#PWR?"  Part="1" 
AR Path="/5EBCCC45" Ref="#PWR0155"  Part="1" 
F 0 "#PWR0155" H 8250 3300 50  0001 C CNN
F 1 "GND" H 8255 3375 50  0000 C CNN
F 2 "" H 8250 3550 50  0001 C CNN
F 3 "" H 8250 3550 50  0001 C CNN
	1    8250 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3550 8250 3500
$Comp
L CORE_64_LIBRARY:Core_64_Logo L1
U 1 1 5EC1FCB7
P 5350 7750
F 0 "L1" H 5375 7797 50  0000 L CNN
F 1 "Core_64_Logo" H 5375 7704 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Core64_Logo" H 5350 7750 50  0001 C CNN
F 3 "" H 5350 7750 50  0001 C CNN
	1    5350 7750
	1    0    0    -1  
$EndComp
$Comp
L CORE_64_LIBRARY:Core_64_Logo L2
U 1 1 5EC30987
P 5350 7400
F 0 "L2" H 5375 7447 50  0000 L CNN
F 1 "Core_64_Logo" H 5375 7354 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Core64_Logo" H 5350 7400 50  0001 C CNN
F 3 "" H 5350 7400 50  0001 C CNN
	1    5350 7400
	1    0    0    -1  
$EndComp
$Comp
L CORE_64_LIBRARY:Core_64_Github_Link L3
U 1 1 5EC378E3
P 5150 7050
F 0 "L3" H 5175 7097 50  0000 L CNN
F 1 "Core_64_Github_Link" H 5175 7004 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Github_Link_Large" H 5150 7050 50  0001 C CNN
F 3 "" H 5150 7050 50  0001 C CNN
	1    5150 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4450 9050 4450
Connection ~ 9050 4450
Wire Wire Line
	9050 4450 9250 4450
Wire Wire Line
	3100 5300 2950 5300
Text Notes 3250 1600 0    118  ~ 24
*** CUT THE USB-VIN bridge on TEENSY 3.2 ***
Text Notes 6100 5150 0    50   ~ 0
VIN must be supplied TO the Teensy\nbecause VIN-VUSB is cut. The \nLogic Board provides it here.
$Comp
L power:GNDD #PWR?
U 1 1 5F4EB827
P 2900 6250
AR Path="/5EA63449/5F4EB827" Ref="#PWR?"  Part="1" 
AR Path="/5F4EB827" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 2900 6000 50  0001 C CNN
F 1 "GNDD" H 2904 6094 50  0000 C CNN
F 2 "" H 2900 6250 50  0001 C CNN
F 3 "" H 2900 6250 50  0001 C CNN
	1    2900 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 5F4EC00B
P 5800 6150
AR Path="/5EA63449/5F4EC00B" Ref="#PWR?"  Part="1" 
AR Path="/5F4EC00B" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 5800 5900 50  0001 C CNN
F 1 "GNDD" H 5804 5994 50  0000 C CNN
F 2 "" H 5800 6150 50  0001 C CNN
F 3 "" H 5800 6150 50  0001 C CNN
	1    5800 6150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 5F4ED6B0
P 6200 5900
AR Path="/5EA63449/5F4ED6B0" Ref="#PWR?"  Part="1" 
AR Path="/5F4ED6B0" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 6200 5650 50  0001 C CNN
F 1 "GNDD" H 6204 5744 50  0000 C CNN
F 2 "" H 6200 5900 50  0001 C CNN
F 3 "" H 6200 5900 50  0001 C CNN
	1    6200 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F5601B7
P 1850 2600
AR Path="/5E7548ED/5F5601B7" Ref="#PWR?"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5F5601B7" Ref="#PWR?"  Part="1" 
AR Path="/5F5601B7" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 1850 2350 50  0001 C CNN
F 1 "GND" H 1855 2425 50  0000 C CNN
F 2 "" H 1850 2600 50  0001 C CNN
F 3 "" H 1850 2600 50  0001 C CNN
	1    1850 2600
	1    0    0    -1  
$EndComp
$Comp
L Teensy:Teensy3.2 U2
U 1 1 5F49143E
P 4100 4300
F 0 "U2" H 4100 5898 60  0000 C CNN
F 1 "Teensy3.2" H 4100 5788 60  0000 C CNN
F 2 "Teensy:Teensy30_31_32_LC_SMD_SOCKETS" H 4100 3500 60  0001 C CNN
F 3 "" H 4100 3500 60  0000 C CNN
	1    4100 4300
	1    0    0    -1  
$EndComp
Text GLabel 8750 2150 1    50   Input ~ 0
5V0
Text GLabel 8250 3150 1    50   Input ~ 0
5V0
Text GLabel 10300 3150 1    50   Input ~ 0
5V0
Text GLabel 5250 5100 2    50   Input ~ 0
5V0
Text GLabel 5250 5000 2    50   Output ~ 0
TEENSY_VUSB
Wire Wire Line
	10300 3150 10300 3250
Text Notes 6300 6750 0    50   ~ 0
All non-polarized capacitors are X7R or X5R ceramic unless otherwise noted.
Text GLabel 2950 3300 0    50   Output ~ 0
Q1P
Text GLabel 2950 3400 0    50   Output ~ 0
Q1N
Text GLabel 5250 5500 2    50   Input ~ 0
SENSE_PULSE
Text GLabel 2950 3500 0    50   Output ~ 0
Q2P
Text GLabel 2950 3600 0    50   Output ~ 0
Q2N
Text GLabel 2950 3700 0    50   Output ~ 0
Q3P
Text GLabel 2950 3800 0    50   Output ~ 0
Q3N
Text GLabel 2950 3900 0    50   Output ~ 0
Q4P
Text GLabel 2950 4000 0    50   Output ~ 0
Q4N
Text GLabel -600 3650 2    50   Output ~ 0
Q5P
Text GLabel -600 3750 2    50   Output ~ 0
Q5N
Text GLabel -600 3850 2    50   Output ~ 0
Q6P
Text GLabel -600 3950 2    50   Output ~ 0
Q6N
Text GLabel -600 4050 2    50   Output ~ 0
Q7P
Text GLabel -600 2750 2    50   Output ~ 0
Q9P
Text GLabel -600 4350 2    50   Output ~ 0
Q8N
Text GLabel -600 4250 2    50   Output ~ 0
Q8P
Text GLabel -600 4150 2    50   Output ~ 0
Q7N
Text GLabel -600 3050 2    50   Output ~ 0
Q10N
Text GLabel -600 2950 2    50   Output ~ 0
Q10P
Text GLabel -600 2850 2    50   Output ~ 0
Q9N
Text GLabel 2950 5050 0    50   Output ~ 0
SENSE_RESET
Text GLabel 5250 5400 2    50   Output ~ 0
WRITE_ENABLE
Text GLabel 2100 5100 0    50   BiDi ~ 0
SPARE_3
Text GLabel -650 5700 2    50   Input ~ 0
SPARE_4
Text GLabel -650 5800 2    50   Input ~ 0
SPARE_5
Text GLabel 2100 3200 0    50   BiDi ~ 0
SPARE_1
Text GLabel 2100 3600 0    50   BiDi ~ 0
SPARE_2
Text GLabel 1650 3150 0    50   Output ~ 0
CP_ADDR_0
Text GLabel 1650 3500 0    50   Output ~ 0
CP_ADDR_1
Text GLabel 1650 5000 0    50   Output ~ 0
CP_ADDR_2
Wire Wire Line
	1650 3150 2150 3150
Wire Wire Line
	2150 3150 2150 3100
Connection ~ 2150 3100
Wire Wire Line
	2150 3100 3100 3100
Wire Wire Line
	1200 3400 2150 3400
Wire Wire Line
	2200 3400 2200 3200
Wire Wire Line
	2200 3200 3100 3200
Wire Wire Line
	2150 3400 2150 3500
Wire Wire Line
	2150 3500 1650 3500
Connection ~ 2150 3400
Wire Wire Line
	2150 3400 2200 3400
Wire Wire Line
	2100 3200 2150 3200
Wire Wire Line
	2150 3200 2150 3150
Connection ~ 2150 3150
Wire Wire Line
	2100 3600 2150 3600
Wire Wire Line
	2150 3600 2150 3500
Connection ~ 2150 3500
Wire Notes Line
	4100 4350 3300 4350
Wire Notes Line
	4100 4850 3300 4850
Wire Notes Line
	4900 5050 4100 5050
Wire Notes Line
	4100 2900 4100 5050
Wire Notes Line
	4950 4650 4100 4650
Wire Notes Line
	4900 3950 4100 3950
Wire Wire Line
	3100 5000 3000 5000
Wire Wire Line
	2100 5100 2150 5100
Wire Wire Line
	2150 5100 2150 5000
Connection ~ 2150 5000
Wire Wire Line
	2150 5000 1650 5000
Text GLabel 2100 4200 0    50   BiDi ~ 0
SPARE_6
Wire Wire Line
	2950 5050 3000 5050
Wire Wire Line
	3000 5050 3000 5000
Connection ~ 3000 5000
Wire Wire Line
	3000 5000 2150 5000
$EndSCHEMATC
