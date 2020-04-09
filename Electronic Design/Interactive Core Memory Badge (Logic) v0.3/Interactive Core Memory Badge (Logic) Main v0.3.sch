EESchema Schematic File Version 4
LIBS:Interactive Core Memory Badge (Logic) Main v0.3-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title "Core 64 - Main Sheet Index"
Date "2020-03-20"
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
Text Notes 2900 750  0    118  ~ 0
CORE 64 INTERACTIVE CORE MEMORY BADGE V0.3 DUAL BOARD
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
	5600 3300 5600 3200
Wire Wire Line
	5600 3200 4200 3200
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
	1900 3100 2050 3100
Wire Wire Line
	1900 3200 2050 3200
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
$Comp
L power:GNDD #PWR?
U 1 1 5EA2C7D3
P 1050 2450
AR Path="/5E755787/5EA2C7D3" Ref="#PWR?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA2C7D3" Ref="#PWR?"  Part="1" 
AR Path="/5EA2C7D3" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 1050 2200 50  0001 C CNN
F 1 "GNDD" H 1054 2295 50  0000 C CNN
F 2 "" H 1050 2450 50  0001 C CNN
F 3 "" H 1050 2450 50  0001 C CNN
	1    1050 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4300 2050 4300
Wire Wire Line
	4200 4300 4350 4300
Wire Wire Line
	4200 4200 4350 4200
Wire Wire Line
	4200 4100 4350 4100
Wire Wire Line
	4200 3700 4350 3700
Wire Wire Line
	4200 3600 4350 3600
Wire Wire Line
	4200 3500 4350 3500
Wire Wire Line
	4200 2700 4350 2700
NoConn ~ 2050 3900
Text Notes 1050 5200 0    50   ~ 0
CONNECTORS\nTEENSY LC: Qty 2, 14 pins each side (does not include end/center pins)\nFEATHER: one row 12 pins, one row 16 pins
$Comp
L power:GNDD #PWR?
U 1 1 5EA2C7F1
P 5600 3300
AR Path="/5E755787/5EA2C7F1" Ref="#PWR?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA2C7F1" Ref="#PWR?"  Part="1" 
AR Path="/5EA2C7F1" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 5600 3050 50  0001 C CNN
F 1 "GNDD" H 5604 3145 50  0000 C CNN
F 2 "" H 5600 3300 50  0001 C CNN
F 3 "" H 5600 3300 50  0001 C CNN
	1    5600 3300
	1    0    0    -1  
$EndComp
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
	4200 4000 4350 4000
Text GLabel 4350 4000 2    50   Output ~ 0
LED_MATRIX_3V3
Text GLabel 9950 2950 2    50   Output ~ 0
LED_MATRIX_+VSW
$Comp
L Connector:TestPoint TP?
U 1 1 5EA33CB4
P 9550 2850
AR Path="/5E755787/5EA33CB4" Ref="TP?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA33CB4" Ref="TP?"  Part="1" 
AR Path="/5EA33CB4" Ref="TP10"  Part="1" 
F 0 "TP10" H 9608 2968 50  0000 L CNN
F 1 "LED_MATRIX" H 9608 2877 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 9750 2850 50  0001 C CNN
F 3 "~" H 9750 2850 50  0001 C CNN
	1    9550 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EA33CBB
P 9750 2950
AR Path="/5E755787/5EA33CBB" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA33CBB" Ref="R?"  Part="1" 
AR Path="/5EA33CBB" Ref="R5"  Part="1" 
F 0 "R5" V 9650 2950 50  0000 L CNN
F 1 "300" V 9550 2900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9680 2950 50  0001 C CNN
F 3 "~" H 9750 2950 50  0001 C CNN
	1    9750 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9550 2850 9550 2950
Connection ~ 9550 2950
Wire Wire Line
	9550 2950 9600 2950
Wire Wire Line
	9900 2950 9950 2950
Wire Wire Line
	9500 2950 9550 2950
Text GLabel 8650 2950 0    50   Input ~ 0
LED_MATRIX_3V3
Wire Wire Line
	8650 2950 8700 2950
$Comp
L power:GND #PWR?
U 1 1 5EA33CDC
P 9100 3400
AR Path="/5E755787/5EA33CDC" Ref="#PWR?"  Part="1" 
AR Path="/5EA33CDC" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 9100 3150 50  0001 C CNN
F 1 "GND" H 9105 3225 50  0000 C CNN
F 2 "" H 9100 3400 50  0001 C CNN
F 3 "" H 9100 3400 50  0001 C CNN
	1    9100 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3400 9100 3300
Wire Wire Line
	9100 2650 9100 2550
$Comp
L power:+VSW #PWR?
U 1 1 5EA33CE6
P 9100 2550
AR Path="/5E755787/5EA33CE6" Ref="#PWR?"  Part="1" 
AR Path="/5EA33CE6" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 9100 2400 50  0001 C CNN
F 1 "+VSW" H 9115 2725 50  0000 C CNN
F 2 "" H 9100 2550 50  0001 C CNN
F 3 "" H 9100 2550 50  0001 C CNN
	1    9100 2550
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
	2050 2400 1050 2400
Text GLabel 1900 2600 0    50   BiDi ~ 0
SAO1_GPIO1(TX)
Text GLabel 1900 3400 0    50   BiDi ~ 0
SAO2_GPIO2(RX)
Text GLabel 1900 3500 0    50   BiDi ~ 0
SAO2_GPIO1(TX)
Text GLabel 4350 3400 2    50   BiDi ~ 0
SAO3_GPIO1
Text GLabel 4350 3500 2    50   BiDi ~ 0
SAO3_GPIO2
Wire Wire Line
	4200 3400 4350 3400
NoConn ~ 2050 4100
NoConn ~ 2050 4200
NoConn ~ 2050 4000
Wire Wire Line
	1050 2400 1050 2450
NoConn ~ 2050 3800
$Comp
L Logic_LevelTranslator:SN74LV1T125DBVR U7
U 1 1 5E84BF19
P 9100 2950
F 0 "U7" H 8600 3200 50  0000 L CNN
F 1 "SN74LV1T125DBVR" H 8050 2700 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 9100 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lv1t125.pdf" H 9100 2350 50  0001 C CNN
	1    9100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3250 9000 3300
Wire Wire Line
	9000 3300 9100 3300
Wire Wire Line
	9200 3250 9200 3300
Wire Wire Line
	9200 3300 9100 3300
Connection ~ 9100 3300
Text Notes 7900 2200 0    118  ~ 0
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
Text Notes 800  6500 0    50   ~ 10
I2C ADDRESS TABLE\nRequired\n  IO EXPANDER 1: 32 decimal, 0x20\n  IO EXPANDER 2: 33 decimal, 0x21\n  HALL SENSOR 1: 48 decimal, 0x30\n  HALL SENSOR 2: 49 decimal, 0x31\n  HALL SENSOR 3: 50 decimal, 0x32\n  HALL SENSOR 4: 51 decimal, 0x33\n  EEPROM ID: 160 decimal, 0xA0\nOptional\n  OLED: 60 decimal, 0x3C
Text Notes 700  4100 0    50   ~ 0
Try not to use any of these\nto avoid the need to populate\nthis end row header on the PCB.
Wire Notes Line
	1900 3800 650  3800
Wire Notes Line
	650  3800 650  4200
Wire Notes Line
	650  4200 1900 4200
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J9
U 1 1 5E92C31C
P 9300 4950
F 0 "J9" H 9350 5370 50  0000 C CNN
F 1 "TSM-106-03-T-DV‎" H 9350 5277 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical_SMD_and_TH" H 9300 4950 50  0001 C CNN
F 3 "~" H 9300 4950 50  0001 C CNN
	1    9300 4950
	1    0    0    -1  
$EndComp
Text GLabel 9700 5250 2    50   Output ~ 0
LED_MATRIX_+VSW
$Comp
L power:GND #PWR?
U 1 1 5E92D5BA
P 8950 5250
AR Path="/5E755787/5E92D5BA" Ref="#PWR?"  Part="1" 
AR Path="/5E92D5BA" Ref="#PWR0162"  Part="1" 
F 0 "#PWR0162" H 8950 5000 50  0001 C CNN
F 1 "GND" H 8955 5075 50  0000 C CNN
F 2 "" H 8950 5250 50  0001 C CNN
F 3 "" H 8950 5250 50  0001 C CNN
	1    8950 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+VSW #PWR?
U 1 1 5E92E36E
P 10000 4750
AR Path="/5E755787/5E92E36E" Ref="#PWR?"  Part="1" 
AR Path="/5E92E36E" Ref="#PWR0163"  Part="1" 
F 0 "#PWR0163" H 10000 4600 50  0001 C CNN
F 1 "+VSW" H 10015 4925 50  0000 C CNN
F 2 "" H 10000 4750 50  0001 C CNN
F 3 "" H 10000 4750 50  0001 C CNN
	1    10000 4750
	1    0    0    -1  
$EndComp
Text Notes 7550 4050 0    118  ~ 0
PARTIAL RASPI HEADER FOR LED ARRAY
Wire Wire Line
	9600 4750 10000 4750
Wire Wire Line
	9600 5250 9700 5250
Wire Wire Line
	9100 5150 8950 5150
Wire Wire Line
	8950 5150 8950 5250
Text Notes 4450 2200 0    50   ~ 10
TO DO: TEENSY requires at least three headers\nthat do not get auto populated in the BOM from KiCAD.
$EndSCHEMATC
