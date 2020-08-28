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
	2050 3000 2200 3000
Wire Wire Line
	2050 3100 2200 3100
Text GLabel 4350 4800 2    50   Output ~ 0
TEENSY_VUSB
Wire Wire Line
	4350 4300 4200 4300
Text Notes 3050 5900 0    50   ~ 0
Reads 1/4 voltage of +VSW\n(after RPP)
Text Notes 650  2000 0    50   ~ 10
Teensy LC has incoming USB power/programming on board.
Wire Wire Line
	2050 5200 2200 5200
Wire Wire Line
	2200 5300 2050 5300
Wire Wire Line
	2050 2900 2200 2900
Wire Wire Line
	2050 3200 2200 3200
Wire Wire Line
	2050 3300 2200 3300
Wire Wire Line
	2050 3400 2200 3400
Wire Wire Line
	1750 3700 1900 3700
Wire Wire Line
	1750 3800 1900 3800
Wire Wire Line
	1750 3900 1900 3900
Wire Wire Line
	1750 4000 1900 4000
Wire Wire Line
	1750 4100 1900 4100
Wire Wire Line
	2500 5800 2650 5800
Text GLabel 4350 5100 2    50   Output ~ 0
TEENSY_3V3
Text GLabel 4350 4900 2    50   Input ~ 0
TEENSY_VIN
Text GLabel 2650 5800 2    50   Input ~ 0
V_MON
Wire Wire Line
	4200 4800 4350 4800
Wire Wire Line
	4200 4900 4350 4900
Wire Wire Line
	4200 4700 4350 4700
Wire Wire Line
	4200 5100 4350 5100
Text GLabel 4350 4700 2    50   Input ~ 0
TEENSY_3V3
Text GLabel 2050 5300 0    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 2050 5200 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 1650 5100 0    50   Output ~ 0
LED_MATRIX_3V3_SIG
Text GLabel 9100 2900 2    50   Output ~ 0
LED_MATRIX_+VSW_SIG
$Comp
L Device:R R?
U 1 1 5EA33CBB
P 8850 2900
AR Path="/5E755787/5EA33CBB" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA33CBB" Ref="R?"  Part="1" 
AR Path="/5EA33CBB" Ref="R5"  Part="1" 
F 0 "R5" V 8750 2900 50  0000 L CNN
F 1 "300" V 8650 2850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8780 2900 50  0001 C CNN
F 3 "~" H 8850 2900 50  0001 C CNN
	1    8850 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9000 2900 9100 2900
Text GLabel 7750 2900 0    50   Input ~ 0
LED_MATRIX_3V3_SIG
Wire Wire Line
	7750 2900 7800 2900
$Comp
L power:GND #PWR?
U 1 1 5EA33CDC
P 8200 3350
AR Path="/5E755787/5EA33CDC" Ref="#PWR?"  Part="1" 
AR Path="/5EA33CDC" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 8200 3100 50  0001 C CNN
F 1 "GND" H 8205 3175 50  0000 C CNN
F 2 "" H 8200 3350 50  0001 C CNN
F 3 "" H 8200 3350 50  0001 C CNN
	1    8200 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3350 8200 3250
Wire Wire Line
	8200 2600 8200 2500
$Comp
L power:+VSW #PWR?
U 1 1 5EA33CE6
P 8200 2500
AR Path="/5E755787/5EA33CE6" Ref="#PWR?"  Part="1" 
AR Path="/5EA33CE6" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 8200 2350 50  0001 C CNN
F 1 "+VSW" H 8215 2675 50  0000 C CNN
F 2 "" H 8200 2500 50  0001 C CNN
F 3 "" H 8200 2500 50  0001 C CNN
	1    8200 2500
	1    0    0    -1  
$EndComp
$Sheet
S 700  1000 1450 250 
U 5E7548ED
F0 "Power" 50
F1 "Core64 LB v0.4 Power.sch" 50
$EndSheet
Text GLabel 2050 2900 0    50   BiDi ~ 0
SAO1_GPIO2(RX)
Wire Wire Line
	2200 2800 1050 2800
Text GLabel 2050 3000 0    50   BiDi ~ 0
SAO1_GPIO1(TX)
$Comp
L Logic_LevelTranslator:SN74LV1T125DBVR U4
U 1 1 5E84BF19
P 8200 2900
F 0 "U4" H 7700 3150 50  0000 L CNN
F 1 "SN74LV1T125DBVR" H 7150 2650 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 8200 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lv1t125.pdf" H 8200 2300 50  0001 C CNN
	1    8200 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3200 8100 3250
Wire Wire Line
	8100 3250 8200 3250
Wire Wire Line
	8300 3200 8300 3250
Wire Wire Line
	8300 3250 8200 3250
Connection ~ 8200 3250
Text Notes 7050 2150 0    118  ~ 0
LED ARRAY DRIVE LEVEL SHIFT
Text Notes 650  1800 0    118  ~ 0
TEENSY 3.2 MCU CONNECTIONS
Text Notes 650  7600 0    50   ~ 0
I2C ADDRESS TABLE\nRequired\n  AMBIENT LIGHT SENSOR: 0X29 (47 decimal)\n  HALL SENSOR 1: 0x30 (48 decimal)\n  HALL SENSOR 2: 0x31 (49 decimal)\n  HALL SENSOR 3: 0x32 (50 decimal)\n  HALL SENSOR 4: 0x33 (51 decimal)\n  EEPROM: 0b1010111, 0x57 (87 decimal)\nOptional\n  OLED: 0x3C (60 decimal)\n  AND!XOR GPIO Expander MCP23017 0x20 (32 decimal)\n  AND!XOR EEPROM AT24C32r 0x50 (80 decimal)\n\nAll 7-bit addresses should be greater than 0x07 and less than 0x78 (120).
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J4
U 1 1 5E92C31C
P 8450 4550
F 0 "J4" H 8500 4970 50  0000 C CNN
F 1 "TSM-106-03-T-DV‎" H 8500 4877 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical_SMD_and_TH" H 8450 4550 50  0001 C CNN
F 3 "~" H 8450 4550 50  0001 C CNN
	1    8450 4550
	1    0    0    -1  
$EndComp
Text GLabel 8850 4850 2    50   Output ~ 0
LED_MATRIX_+VSW_SIG
$Comp
L power:GND #PWR?
U 1 1 5E92D5BA
P 8100 4850
AR Path="/5E755787/5E92D5BA" Ref="#PWR?"  Part="1" 
AR Path="/5E92D5BA" Ref="#PWR0162"  Part="1" 
F 0 "#PWR0162" H 8100 4600 50  0001 C CNN
F 1 "GND" H 8105 4675 50  0000 C CNN
F 2 "" H 8100 4850 50  0001 C CNN
F 3 "" H 8100 4850 50  0001 C CNN
	1    8100 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+VSW #PWR?
U 1 1 5E92E36E
P 9150 4350
AR Path="/5E755787/5E92E36E" Ref="#PWR?"  Part="1" 
AR Path="/5E92E36E" Ref="#PWR0163"  Part="1" 
F 0 "#PWR0163" H 9150 4200 50  0001 C CNN
F 1 "+VSW" H 9165 4525 50  0000 C CNN
F 2 "" H 9150 4350 50  0001 C CNN
F 3 "" H 9150 4350 50  0001 C CNN
	1    9150 4350
	1    0    0    -1  
$EndComp
Text Notes 7100 4000 0    118  ~ 0
LED ARRAY (PARTIAL RASPI HEADER)
Wire Wire Line
	8750 4350 9150 4350
Wire Wire Line
	8750 4850 8850 4850
Wire Wire Line
	8250 4750 8100 4750
Wire Wire Line
	8100 4750 8100 4850
Text Notes -1750 1750 0    50   ~ 10
BOM TO DO: TEENSY requires at least three headers\nthat do not get auto populated in the BOM from KiCAD.
NoConn ~ 8750 4450
NoConn ~ 8750 4550
NoConn ~ 8750 4650
NoConn ~ 8750 4750
NoConn ~ 8250 4850
NoConn ~ 8250 4650
NoConn ~ 8250 4550
NoConn ~ 8250 4450
NoConn ~ 8250 4350
Text GLabel 1750 3700 0    50   Input ~ 0
SENSE_OUT_A
Text GLabel 1750 3800 0    50   Input ~ 0
SENSE_OUT_B
Text GLabel 1750 3900 0    50   Output ~ 0
SD_CS
Text GLabel 1750 4000 0    50   Output ~ 0
SD_DI
Text GLabel 1750 4100 0    50   Input ~ 0
SD_DO
Text GLabel 1800 4700 0    50   Output ~ 0
SD_CLK
Text GLabel 1700 4450 0    50   Input ~ 0
SD_CD
Wire Wire Line
	8600 2900 8700 2900
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
3V3_800mA
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
L Device:CP1_Small C?
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
	8450 5650 8450 6050
Connection ~ 9200 5650
Wire Wire Line
	8450 6250 8450 6400
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
P 7250 6050
AR Path="/5E755787/5EA7ABC7" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA7ABC7" Ref="R?"  Part="1" 
AR Path="/5EA7ABC7" Ref="R2"  Part="1" 
AR Path="/5EA63449/5EA7ABC7" Ref="R?"  Part="1" 
F 0 "R2" H 7320 6096 50  0000 L CNN
F 1 "4K7" H 7320 6005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7180 6050 50  0001 C CNN
F 3 "~" H 7250 6050 50  0001 C CNN
	1    7250 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EA7ABCD
P 7650 6250
AR Path="/5E755787/5EA7ABCD" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA7ABCD" Ref="R?"  Part="1" 
AR Path="/5EA7ABCD" Ref="R3"  Part="1" 
AR Path="/5EA63449/5EA7ABCD" Ref="R?"  Part="1" 
F 0 "R3" H 7720 6296 50  0000 L CNN
F 1 "4K7" H 7720 6205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7580 6250 50  0001 C CNN
F 3 "~" H 7650 6250 50  0001 C CNN
	1    7650 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 6250 7250 6250
Wire Wire Line
	7250 6200 7250 6250
Text GLabel 7150 6400 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 7150 6250 0    50   BiDi ~ 0
I2C_CLOCK
Text Notes 6350 5400 0    118  ~ 0
I2C PULL-UPS
Text GLabel 7250 5600 0    50   Input ~ 0
3V3_800mA
Wire Wire Line
	7650 5800 7650 6100
Wire Wire Line
	7150 6400 7650 6400
Wire Wire Line
	7450 5600 7250 5600
Wire Wire Line
	7250 5800 7250 5900
Wire Wire Line
	7450 5600 7450 5800
Wire Wire Line
	1900 4700 1800 4700
$Comp
L Device:CP1_Small C?
U 1 1 5EBC469C
P 10200 2900
AR Path="/5E755787/5EBC469C" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EBC469C" Ref="C?"  Part="1" 
AR Path="/5EA63449/5EBC469C" Ref="C?"  Part="1" 
AR Path="/5EBC469C" Ref="C5"  Part="1" 
F 0 "C5" H 10291 2946 50  0000 L CNN
F 1 "0.1uF" H 10291 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10200 2900 50  0001 C CNN
F 3 "~" H 10200 2900 50  0001 C CNN
	1    10200 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 2800 10200 2500
$Comp
L power:+VSW #PWR?
U 1 1 5EBCA9BF
P 10200 2500
AR Path="/5E755787/5EBCA9BF" Ref="#PWR?"  Part="1" 
AR Path="/5EBCA9BF" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 10200 2350 50  0001 C CNN
F 1 "+VSW" H 10215 2675 50  0000 C CNN
F 2 "" H 10200 2500 50  0001 C CNN
F 3 "" H 10200 2500 50  0001 C CNN
	1    10200 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBCCC45
P 10200 3350
AR Path="/5E755787/5EBCCC45" Ref="#PWR?"  Part="1" 
AR Path="/5EBCCC45" Ref="#PWR0155"  Part="1" 
F 0 "#PWR0155" H 10200 3100 50  0001 C CNN
F 1 "GND" H 10205 3175 50  0000 C CNN
F 2 "" H 10200 3350 50  0001 C CNN
F 3 "" H 10200 3350 50  0001 C CNN
	1    10200 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 3350 10200 3000
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
$Comp
L CORE_64_LIBRARY:Core_64_Github_Link L4
U 1 1 5EC43F46
P 5150 6800
F 0 "L4" H 5175 6847 50  0000 L CNN
F 1 "Core_64_Github_Link" H 5175 6754 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Github_Link_Small" H 5150 6800 50  0001 C CNN
F 3 "" H 5150 6800 50  0001 C CNN
	1    5150 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 5800 7450 5800
Connection ~ 7450 5800
Wire Wire Line
	7450 5800 7650 5800
$Comp
L Teensy:Teensy3.2 U2
U 1 1 5F49143E
P 3200 4100
F 0 "U2" H 3200 5698 60  0000 C CNN
F 1 "Teensy3.2" H 3200 5588 60  0000 C CNN
F 2 "" H 3200 3300 60  0001 C CNN
F 3 "" H 3200 3300 60  0000 C CNN
	1    3200 4100
	1    0    0    -1  
$EndComp
NoConn ~ 4200 2800
NoConn ~ 4200 2900
Wire Wire Line
	2200 5100 1650 5100
Text Notes 650  2300 0    118  ~ 24
*** CUT THE USB-VIN bridge on TEENSY 3.2 ***
Text Notes 5200 4950 0    50   ~ 0
VIN must be supplied TO the Teensy\nbecause VIN-VUSB is cut. The \nLogic Board provides it here.
$Comp
L power:GNDD #PWR?
U 1 1 5F4E9C60
P 1050 2800
AR Path="/5EA63449/5F4E9C60" Ref="#PWR?"  Part="1" 
AR Path="/5F4E9C60" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1050 2550 50  0001 C CNN
F 1 "GNDD" H 1054 2644 50  0000 C CNN
F 2 "" H 1050 2800 50  0001 C CNN
F 3 "" H 1050 2800 50  0001 C CNN
	1    1050 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 5F4EB827
P 1950 4400
AR Path="/5EA63449/5F4EB827" Ref="#PWR?"  Part="1" 
AR Path="/5F4EB827" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1950 4150 50  0001 C CNN
F 1 "GNDD" H 1954 4244 50  0000 C CNN
F 2 "" H 1950 4400 50  0001 C CNN
F 3 "" H 1950 4400 50  0001 C CNN
	1    1950 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 5F4EC00B
P 5050 4300
AR Path="/5EA63449/5F4EC00B" Ref="#PWR?"  Part="1" 
AR Path="/5F4EC00B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5050 4050 50  0001 C CNN
F 1 "GNDD" H 5054 4144 50  0000 C CNN
F 2 "" H 5050 4300 50  0001 C CNN
F 3 "" H 5050 4300 50  0001 C CNN
	1    5050 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 5F4ED6B0
P 5050 5000
AR Path="/5EA63449/5F4ED6B0" Ref="#PWR?"  Part="1" 
AR Path="/5F4ED6B0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5050 4750 50  0001 C CNN
F 1 "GNDD" H 5054 4844 50  0000 C CNN
F 2 "" H 5050 5000 50  0001 C CNN
F 3 "" H 5050 5000 50  0001 C CNN
	1    5050 5000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
