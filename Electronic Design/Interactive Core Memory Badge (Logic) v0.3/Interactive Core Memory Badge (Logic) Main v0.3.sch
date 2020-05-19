EESchema Schematic File Version 4
LIBS:Interactive Core Memory Badge (Logic) Main v0.3-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title "Core 64 - Main Sheet Index"
Date "2020-05-18"
Rev "0.3"
Comp "Andy Geppert - Machine Ideas, LLC"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 6100 1000 2250 300 
U 5E755AC8
F0 "Core Array Driver" 50
F1 "Interactive Core Memory Badge (Logic) Driver v0.3.sch" 50
$EndSheet
Text Notes 2650 750  0    118  ~ 0
CORE 64 INTERACTIVE CORE MEMORY BADGE V0.3 DUAL BOARD (LOGIC)
$Sheet
S 8750 1000 2250 300 
U 5E75D6AB
F0 "SENSE" 50
F1 "Interactive Core Memory Badge (Logic) Sense v0.3.sch" 50
$EndSheet
$Sheet
S 3300 1000 2250 300 
U 5EA63449
F0 "IO Expansion" 50
F1 "Interactive Core Memory Badge (Logic) IO Expansion V0.3.sch" 50
$EndSheet
$Comp
L Teensy:Teensy-LC U?
U 1 1 5EA2C7B7
P 3100 3350
AR Path="/5E755787/5EA2C7B7" Ref="U?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA2C7B7" Ref="U?"  Part="1" 
AR Path="/5EA2C7B7" Ref="U2"  Part="1" 
F 0 "U2" H 3125 4587 60  0000 C CNN
F 1 "Teensy-LC" H 3125 4481 60  0000 C CNN
F 2 "Teensy:Teensy30_31_32_LC_SMD_SOCKETS" H 3100 2800 60  0001 C CNN
F 3 "" H 3100 2800 60  0000 C CNN
	1    3100 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2600 2050 2600
Wire Wire Line
	1900 2700 2050 2700
Text GLabel 4350 3000 2    50   Output ~ 0
TEENSY_VUSB
NoConn ~ 4200 2500
NoConn ~ 4200 2600
Wire Wire Line
	5100 3200 4200 3200
Text Notes 5400 3650 0    50   ~ 0
Reads 1/2 +VSW (battery) voltage
Text Notes 700  2000 0    50   ~ 10
Teensy LC has incoming USB power/programming on board.\n*** CUT THE USB-VIN bridge. ***
Wire Wire Line
	4350 3900 4200 3900
Wire Wire Line
	4200 3800 4350 3800
Wire Wire Line
	1900 2500 2050 2500
Wire Wire Line
	1900 2800 2050 2800
Wire Wire Line
	1900 2900 2050 2900
Wire Wire Line
	1900 3000 2050 3000
Wire Wire Line
	1900 3300 2050 3300
Wire Wire Line
	1900 3400 2050 3400
Wire Wire Line
	1900 3500 2050 3500
Wire Wire Line
	1900 3600 2050 3600
Wire Wire Line
	1900 3700 2050 3700
Wire Wire Line
	1900 4300 2050 4300
Wire Wire Line
	4200 4300 4350 4300
Wire Wire Line
	4200 3700 4350 3700
Wire Wire Line
	4200 3600 4350 3600
Wire Wire Line
	4200 3500 4350 3500
Wire Wire Line
	4200 2700 4350 2700
NoConn ~ 2050 3900
Text GLabel 4350 3300 2    50   Output ~ 0
TEENSY_3V3
Text GLabel 4350 3100 2    50   Input ~ 0
TEENSY_VIN
Text GLabel 4350 3600 2    50   Input ~ 0
VSW_HALF_VOL_MONITOR
Wire Wire Line
	4200 2800 4350 2800
Wire Wire Line
	4200 3000 4350 3000
Wire Wire Line
	4200 3100 4350 3100
Wire Wire Line
	4200 2900 4350 2900
Wire Wire Line
	4200 3300 4350 3300
Text GLabel 4350 2900 2    50   Input ~ 0
TEENSY_3V3
Text GLabel 4350 3800 2    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 4350 3900 2    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	4200 4000 4650 4000
Text GLabel 4750 4000 2    50   Output ~ 0
LED_MATRIX_3V3_SIG
Text GLabel 9750 2600 2    50   Output ~ 0
LED_MATRIX_+VSW_SIG
$Comp
L Device:R R?
U 1 1 5EA33CBB
P 9500 2600
AR Path="/5E755787/5EA33CBB" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA33CBB" Ref="R?"  Part="1" 
AR Path="/5EA33CBB" Ref="R5"  Part="1" 
F 0 "R5" V 9400 2600 50  0000 L CNN
F 1 "300" V 9300 2550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9430 2600 50  0001 C CNN
F 3 "~" H 9500 2600 50  0001 C CNN
	1    9500 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9650 2600 9750 2600
Text GLabel 8400 2600 0    50   Input ~ 0
LED_MATRIX_3V3_SIG
Wire Wire Line
	8400 2600 8450 2600
$Comp
L power:GND #PWR?
U 1 1 5EA33CDC
P 8850 3050
AR Path="/5E755787/5EA33CDC" Ref="#PWR?"  Part="1" 
AR Path="/5EA33CDC" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 8850 2800 50  0001 C CNN
F 1 "GND" H 8855 2875 50  0000 C CNN
F 2 "" H 8850 3050 50  0001 C CNN
F 3 "" H 8850 3050 50  0001 C CNN
	1    8850 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3050 8850 2950
Wire Wire Line
	8850 2300 8850 2200
$Comp
L power:+VSW #PWR?
U 1 1 5EA33CE6
P 8850 2200
AR Path="/5E755787/5EA33CE6" Ref="#PWR?"  Part="1" 
AR Path="/5EA33CE6" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 8850 2050 50  0001 C CNN
F 1 "+VSW" H 8865 2375 50  0000 C CNN
F 2 "" H 8850 2200 50  0001 C CNN
F 3 "" H 8850 2200 50  0001 C CNN
	1    8850 2200
	1    0    0    -1  
$EndComp
$Sheet
S 700  1000 2250 300 
U 5E7548ED
F0 "Power" 50
F1 "Interactive Core Memory Badge (Logic) Power v0.3.sch" 50
$EndSheet
Text GLabel 1900 2500 0    50   BiDi ~ 0
SAO1_GPIO2(RX)
Wire Wire Line
	2050 2400 1150 2400
Text GLabel 1900 2600 0    50   BiDi ~ 0
SAO1_GPIO1(TX)
Text GLabel 5750 4000 2    50   BiDi ~ 0
SAO3_GPIO1
Text GLabel 5750 4200 2    50   BiDi ~ 0
SAO3_GPIO2
Wire Wire Line
	4200 3400 4350 3400
NoConn ~ 2050 4100
NoConn ~ 2050 4200
NoConn ~ 2050 4000
NoConn ~ 2050 3800
$Comp
L Logic_LevelTranslator:SN74LV1T125DBVR U4
U 1 1 5E84BF19
P 8850 2600
F 0 "U4" H 8350 2850 50  0000 L CNN
F 1 "SN74LV1T125DBVR" H 7800 2350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 8850 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lv1t125.pdf" H 8850 2000 50  0001 C CNN
	1    8850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2900 8750 2950
Wire Wire Line
	8750 2950 8850 2950
Wire Wire Line
	8950 2900 8950 2950
Wire Wire Line
	8950 2950 8850 2950
Connection ~ 8850 2950
Text Notes 7700 1850 0    118  ~ 0
LED ARRAY DRIVE LEVEL SHIFT
Text Notes 650  1800 0    118  ~ 0
TEENSY MCU CONNECTIONS
Text GLabel 1900 2700 0    50   Input ~ 0
IOEXP_ID32_INT_A
Text GLabel 1900 2800 0    50   Input ~ 0
IOEXP_ID32_INT_B
Text GLabel 1900 2900 0    50   Input ~ 0
IOEXP_ID33_INT_A
Text GLabel 1900 3000 0    50   Input ~ 0
IOEXP_ID33_INT_B
Text Notes 650  7600 0    50   ~ 0
I2C ADDRESS TABLE\nRequired\n  IO EXPANDER 1: 0x26 (38 decimal)\n  IO EXPANDER 2: 0x27 (39 decimal)\n  HALL SENSOR 1: 0x30 (48 decimal)\n  HALL SENSOR 2: 0x31 (49 decimal)\n  HALL SENSOR 3: 0x32 (50 decimal)\n  HALL SENSOR 4: 0x33 (51 decimal)\n  EEPROM: 0b1010111, 0x57 (87 decimal)\nOptional\n  OLED: 0x3C (60 decimal)\n  AND!XOR GPIO Expander MCP23017 0x20 (32 decimal)\n  AND!XOR EEPROM AT24C32r 0x50 (80 decimal)\n\nAll 7-bit addresses should be greater than 0x07 and less than 0x78 (120).
Text Notes 700  4100 0    50   ~ 0
Try not to use any of these\nto avoid the need to populate\nthis end row header on the PCB.
Wire Notes Line
	1900 3800 650  3800
Wire Notes Line
	650  3800 650  4200
Wire Notes Line
	650  4200 1900 4200
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J4
U 1 1 5E92C31C
P 9050 4250
F 0 "J4" H 9100 4670 50  0000 C CNN
F 1 "TSM-106-03-T-DV‎" H 9100 4577 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical_SMD_and_TH" H 9050 4250 50  0001 C CNN
F 3 "~" H 9050 4250 50  0001 C CNN
	1    9050 4250
	1    0    0    -1  
$EndComp
Text GLabel 9450 4550 2    50   Output ~ 0
LED_MATRIX_+VSW_SIG
$Comp
L power:GND #PWR?
U 1 1 5E92D5BA
P 8700 4550
AR Path="/5E755787/5E92D5BA" Ref="#PWR?"  Part="1" 
AR Path="/5E92D5BA" Ref="#PWR0162"  Part="1" 
F 0 "#PWR0162" H 8700 4300 50  0001 C CNN
F 1 "GND" H 8705 4375 50  0000 C CNN
F 2 "" H 8700 4550 50  0001 C CNN
F 3 "" H 8700 4550 50  0001 C CNN
	1    8700 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+VSW #PWR?
U 1 1 5E92E36E
P 9750 4050
AR Path="/5E755787/5E92E36E" Ref="#PWR?"  Part="1" 
AR Path="/5E92E36E" Ref="#PWR0163"  Part="1" 
F 0 "#PWR0163" H 9750 3900 50  0001 C CNN
F 1 "+VSW" H 9765 4225 50  0000 C CNN
F 2 "" H 9750 4050 50  0001 C CNN
F 3 "" H 9750 4050 50  0001 C CNN
	1    9750 4050
	1    0    0    -1  
$EndComp
Text Notes 7700 3700 0    118  ~ 0
LED ARRAY (PARTIAL RASPI HEADER)
Wire Wire Line
	9350 4050 9750 4050
Wire Wire Line
	9350 4550 9450 4550
Wire Wire Line
	8850 4450 8700 4450
Wire Wire Line
	8700 4450 8700 4550
Text Notes 4600 2200 0    50   ~ 10
BOM TO DO: TEENSY requires at least three headers\nthat do not get auto populated in the BOM from KiCAD.
Wire Wire Line
	4650 4000 4650 4100
Wire Wire Line
	4650 4100 5700 4100
Wire Wire Line
	5700 4100 5700 4000
Wire Wire Line
	5700 4000 5750 4000
Connection ~ 4650 4000
Wire Wire Line
	4650 4000 4750 4000
Wire Wire Line
	4200 4100 4600 4100
NoConn ~ 9350 4150
NoConn ~ 9350 4250
NoConn ~ 9350 4350
NoConn ~ 9350 4450
NoConn ~ 8850 4550
NoConn ~ 8850 4350
NoConn ~ 8850 4250
NoConn ~ 8850 4150
NoConn ~ 8850 4050
Text GLabel 1900 3300 0    50   Input ~ 0
SENSE_OUT_A
Text GLabel 1900 3400 0    50   Input ~ 0
SENSE_OUT_B
Wire Wire Line
	4600 4100 4600 4200
Wire Wire Line
	4600 4200 5750 4200
Text GLabel 1900 3500 0    50   Output ~ 0
SD_CS
Text GLabel 1900 3600 0    50   Output ~ 0
SD_DI
Text GLabel 1900 3700 0    50   Input ~ 0
SD_DO
Text GLabel 3000 5100 0    50   Output ~ 0
SD_CLK
Text GLabel 4250 4200 2    50   Input ~ 0
SD_CD
Wire Wire Line
	9250 2600 9350 2600
NoConn ~ 4350 2700
NoConn ~ 4350 2800
NoConn ~ 4350 3400
NoConn ~ 4350 3500
NoConn ~ 4350 3700
Text Notes 8850 5150 0    118  ~ 0
BOARD I.D. AND S/N
$Comp
L Memory_EEPROM:M24C01-RMN U3
U 1 1 5EA6E6DA
P 9750 5850
AR Path="/5EA6E6DA" Ref="U3"  Part="1" 
AR Path="/5EA63449/5EA6E6DA" Ref="U?"  Part="1" 
F 0 "U3" H 9450 6150 50  0000 C CNN
F 1 "M24C01-RMN" H 10100 6150 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9750 6200 50  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/b0/d8/50/40/5a/85/49/6f/DM00071904.pdf/files/DM00071904.pdf/jcr:content/translations/en.DM00071904.pdf" H 9800 5350 50  0001 C CNN
	1    9750 5850
	1    0    0    -1  
$EndComp
Text GLabel 10150 5750 2    50   BiDi ~ 0
I2C_DATA
Text GLabel 10150 5850 2    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 10150 5400 2    50   Input ~ 0
3V3_800mA
$Comp
L power:GNDD #PWR?
U 1 1 5EA6E6E3
P 9750 6200
AR Path="/5EA63449/5EA6E6E3" Ref="#PWR?"  Part="1" 
AR Path="/5EA6E6E3" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 9750 5950 50  0001 C CNN
F 1 "GNDD" H 9754 6044 50  0000 C CNN
F 2 "" H 9750 6200 50  0001 C CNN
F 3 "" H 9750 6200 50  0001 C CNN
	1    9750 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 5750 9350 5850
Connection ~ 9350 5850
Wire Wire Line
	9350 5850 9350 5950
Wire Wire Line
	9750 6150 9750 6200
Connection ~ 9750 6150
Wire Wire Line
	10150 5950 10150 6150
Wire Wire Line
	10150 6150 9750 6150
Wire Wire Line
	9750 5550 9750 5400
Wire Wire Line
	9750 5400 10150 5400
$Comp
L Device:CP1_Small C?
U 1 1 5EA6E6F2
P 9000 5900
AR Path="/5E755787/5EA6E6F2" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA6E6F2" Ref="C?"  Part="1" 
AR Path="/5EA63449/5EA6E6F2" Ref="C?"  Part="1" 
AR Path="/5EA6E6F2" Ref="C4"  Part="1" 
F 0 "C4" H 9091 5946 50  0000 L CNN
F 1 "0.1uF" H 9091 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9000 5900 50  0001 C CNN
F 3 "~" H 9000 5900 50  0001 C CNN
	1    9000 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 5400 9350 5400
Wire Wire Line
	9000 5400 9000 5800
Connection ~ 9750 5400
Wire Wire Line
	9000 6000 9000 6150
Text Notes 8850 5300 0    50   ~ 0
EEPROM I2C ADDRESS: 0b1010111, 0x57 (87 decimal)
Wire Wire Line
	9000 6150 9750 6150
Wire Wire Line
	9350 5750 9350 5400
Connection ~ 9350 5750
Connection ~ 9350 5400
Wire Wire Line
	9350 5400 9000 5400
$Comp
L Device:R R?
U 1 1 5EA7ABC7
P 7800 5800
AR Path="/5E755787/5EA7ABC7" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA7ABC7" Ref="R?"  Part="1" 
AR Path="/5EA7ABC7" Ref="R2"  Part="1" 
AR Path="/5EA63449/5EA7ABC7" Ref="R?"  Part="1" 
F 0 "R2" H 7870 5846 50  0000 L CNN
F 1 "4K7" H 7870 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7730 5800 50  0001 C CNN
F 3 "~" H 7800 5800 50  0001 C CNN
	1    7800 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EA7ABCD
P 8200 6000
AR Path="/5E755787/5EA7ABCD" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA7ABCD" Ref="R?"  Part="1" 
AR Path="/5EA7ABCD" Ref="R3"  Part="1" 
AR Path="/5EA63449/5EA7ABCD" Ref="R?"  Part="1" 
F 0 "R3" H 8270 6046 50  0000 L CNN
F 1 "4K7" H 8270 5955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8130 6000 50  0001 C CNN
F 3 "~" H 8200 6000 50  0001 C CNN
	1    8200 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 6000 7800 6000
Wire Wire Line
	7800 5950 7800 6000
Text GLabel 7700 6150 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 7700 6000 0    50   BiDi ~ 0
I2C_CLOCK
Text Notes 6900 5150 0    118  ~ 0
I2C PULL-UPS
Text GLabel 7800 5350 0    50   Input ~ 0
3V3_800mA
Wire Wire Line
	8200 5550 8200 5850
$Comp
L Jumper:SolderJumper_3_Bridged123 JP?
U 1 1 5EA7ABDA
P 8000 5550
AR Path="/5EA63449/5EA7ABDA" Ref="JP?"  Part="1" 
AR Path="/5EA7ABDA" Ref="JP2"  Part="1" 
F 0 "JP2" H 8000 5665 50  0000 C CNN
F 1 "SolderJumper_3_Bridged123" H 8600 5500 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged123_Pad1.0x1.5mm_NumberLabels" H 8000 5550 50  0001 C CNN
F 3 "~" H 8000 5550 50  0001 C CNN
	1    8000 5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	7700 6150 8200 6150
Wire Wire Line
	8000 5350 7800 5350
Wire Wire Line
	7800 5550 7800 5650
Wire Wire Line
	8000 5350 8000 5400
Wire Wire Line
	4200 4200 4250 4200
$Comp
L Jumper:SolderJumper_3_Bridged12 JP1
U 1 1 5EB2E7CF
P 3100 4850
F 0 "JP1" H 3100 4969 50  0000 C CNN
F 1 "SolderJumper_3_Bridged12" H 3100 5062 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged12_Pad1.0x1.5mm_NumberLabels" H 3100 4850 50  0001 C CNN
F 3 "~" H 3100 4850 50  0001 C CNN
	1    3100 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3100 5000 3100 5100
Wire Wire Line
	3100 5100 3000 5100
Wire Wire Line
	4350 4300 4350 4850
Wire Wire Line
	4350 4850 3300 4850
Wire Wire Line
	2900 4850 1900 4850
Wire Wire Line
	1900 4850 1900 4300
$Comp
L Device:CP1_Small C?
U 1 1 5EBC469C
P 10850 2600
AR Path="/5E755787/5EBC469C" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EBC469C" Ref="C?"  Part="1" 
AR Path="/5EA63449/5EBC469C" Ref="C?"  Part="1" 
AR Path="/5EBC469C" Ref="C5"  Part="1" 
F 0 "C5" H 10941 2646 50  0000 L CNN
F 1 "0.1uF" H 10941 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10850 2600 50  0001 C CNN
F 3 "~" H 10850 2600 50  0001 C CNN
	1    10850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 2500 10850 2200
$Comp
L power:+VSW #PWR?
U 1 1 5EBCA9BF
P 10850 2200
AR Path="/5E755787/5EBCA9BF" Ref="#PWR?"  Part="1" 
AR Path="/5EBCA9BF" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 10850 2050 50  0001 C CNN
F 1 "+VSW" H 10865 2375 50  0000 C CNN
F 2 "" H 10850 2200 50  0001 C CNN
F 3 "" H 10850 2200 50  0001 C CNN
	1    10850 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBCCC45
P 10850 3050
AR Path="/5E755787/5EBCCC45" Ref="#PWR?"  Part="1" 
AR Path="/5EBCCC45" Ref="#PWR0155"  Part="1" 
F 0 "#PWR0155" H 10850 2800 50  0001 C CNN
F 1 "GND" H 10855 2875 50  0000 C CNN
F 2 "" H 10850 3050 50  0001 C CNN
F 3 "" H 10850 3050 50  0001 C CNN
	1    10850 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 3050 10850 2700
$Comp
L CORE_64_LIBRARY:Core_64_Logo L1
U 1 1 5EC1FCB7
P 6250 7550
F 0 "L1" H 6275 7597 50  0000 L CNN
F 1 "Core_64_Logo" H 6275 7504 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Core64_Logo" H 6250 7550 50  0001 C CNN
F 3 "" H 6250 7550 50  0001 C CNN
	1    6250 7550
	1    0    0    -1  
$EndComp
$Comp
L CORE_64_LIBRARY:Core_64_Logo L2
U 1 1 5EC30987
P 6250 7200
F 0 "L2" H 6275 7247 50  0000 L CNN
F 1 "Core_64_Logo" H 6275 7154 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Core64_Logo" H 6250 7200 50  0001 C CNN
F 3 "" H 6250 7200 50  0001 C CNN
	1    6250 7200
	1    0    0    -1  
$EndComp
$Comp
L CORE_64_LIBRARY:Core_64_Github_Link L3
U 1 1 5EC378E3
P 6050 6850
F 0 "L3" H 6075 6897 50  0000 L CNN
F 1 "Core_64_Github_Link" H 6075 6804 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Github_Link_Large" H 6050 6850 50  0001 C CNN
F 3 "" H 6050 6850 50  0001 C CNN
	1    6050 6850
	1    0    0    -1  
$EndComp
$Comp
L CORE_64_LIBRARY:Core_64_Github_Link L4
U 1 1 5EC43F46
P 6050 6600
F 0 "L4" H 6075 6647 50  0000 L CNN
F 1 "Core_64_Github_Link" H 6075 6554 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Github_Link_Small" H 6050 6600 50  0001 C CNN
F 3 "" H 6050 6600 50  0001 C CNN
	1    6050 6600
	1    0    0    -1  
$EndComp
NoConn ~ 2050 3100
NoConn ~ 2050 3200
Text GLabel 5100 3200 2    50   Input ~ 0
TEENSY_GND
Text GLabel 1150 2400 0    50   Input ~ 0
TEENSY_GND
$EndSCHEMATC
