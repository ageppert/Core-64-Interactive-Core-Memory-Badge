EESchema Schematic File Version 4
LIBS:Interactive Core Memory Badge (Logic) Main v0.3-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
Title "Core 64 - MCU Logic"
Date "2020-03-15"
Rev "0.3"
Comp "Andy Geppert - Machine Ideas, LLC"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Teensy:Teensy-LC U2
U 1 1 5D260953
P 2850 2900
AR Path="/5E755787/5D260953" Ref="U2"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5D260953" Ref="U?"  Part="1" 
F 0 "U2" H 2875 4137 60  0000 C CNN
F 1 "Teensy-LC" H 2875 4031 60  0000 C CNN
F 2 "Teensy:Teensy30_31_32_LC" H 2850 2350 60  0001 C CNN
F 3 "" H 2850 2350 60  0000 C CNN
	1    2850 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2150 1800 2150
Wire Wire Line
	1650 2250 1800 2250
Wire Wire Line
	5300 1650 5300 2650
Wire Wire Line
	5300 2650 3950 2650
Text GLabel 5000 1700 1    50   Output ~ 0
TEENSY_VUSB
NoConn ~ 3950 2050
NoConn ~ 3950 2150
Wire Wire Line
	5000 4200 5000 2750
Wire Wire Line
	5000 1700 5000 2550
Wire Wire Line
	5000 2550 3950 2550
Wire Wire Line
	5000 2750 3950 2750
Wire Wire Line
	5650 2850 3950 2850
Wire Wire Line
	3950 2450 5650 2450
Wire Wire Line
	5650 2450 5650 2850
$Comp
L Device:R R4
U 1 1 5D32CB70
P 5300 3400
AR Path="/5E755787/5D32CB70" Ref="R4"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5D32CB70" Ref="R?"  Part="1" 
F 0 "R4" H 5370 3446 50  0000 L CNN
F 1 "10k" H 5370 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5230 3400 50  0001 C CNN
F 3 "~" H 5300 3400 50  0001 C CNN
	1    5300 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5D32E04D
P 5300 3700
AR Path="/5E755787/5D32E04D" Ref="R5"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5D32E04D" Ref="R?"  Part="1" 
F 0 "R5" H 5370 3746 50  0000 L CNN
F 1 "10k" H 5370 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5230 3700 50  0001 C CNN
F 3 "~" H 5300 3700 50  0001 C CNN
	1    5300 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3850 5300 4200
Wire Wire Line
	5300 2650 5300 3250
Connection ~ 5300 2650
Text Notes 4750 1000 0    50   ~ 0
Battery Voltage Monitor for +VSW\nAnalog reads 1/2 battery voltage
Text Notes 900  900  0    50   ~ 0
Teensy LC has incoming USB power/programming on board.\n\n*** CUT THE USB-VIN bridge. ***
Text Notes 5750 1300 0    50   ~ 0
Use +3V3 for low power accessories:\nHall sensors, sense circuit, MCU
Text GLabel 7000 3900 2    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 7000 4300 2    50   BiDi ~ 0
I2C_DATA
$Comp
L Device:R R7
U 1 1 5D35152C
P 6350 3700
AR Path="/5E755787/5D35152C" Ref="R7"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5D35152C" Ref="R?"  Part="1" 
F 0 "R7" H 6420 3746 50  0000 L CNN
F 1 "4K7" H 6420 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6280 3700 50  0001 C CNN
F 3 "~" H 6350 3700 50  0001 C CNN
	1    6350 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5D3522EA
P 6050 4100
AR Path="/5E755787/5D3522EA" Ref="R6"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5D3522EA" Ref="R?"  Part="1" 
F 0 "R6" H 6120 4146 50  0000 L CNN
F 1 "4K7" H 6120 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5980 4100 50  0001 C CNN
F 3 "~" H 6050 4100 50  0001 C CNN
	1    6050 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4000 4700 3450
Wire Wire Line
	4700 3450 3950 3450
Wire Wire Line
	4700 4000 5800 4000
Wire Wire Line
	5800 4000 5800 4300
Wire Wire Line
	3950 3350 4800 3350
Wire Wire Line
	4800 3350 4800 3900
Wire Wire Line
	1650 2050 1800 2050
Wire Wire Line
	1650 2350 1800 2350
Wire Wire Line
	1650 2450 1800 2450
Wire Wire Line
	1650 2550 1800 2550
Wire Wire Line
	1650 2650 1800 2650
Wire Wire Line
	1650 2750 1800 2750
Wire Wire Line
	1650 2850 1800 2850
Wire Wire Line
	1650 2950 1800 2950
Wire Wire Line
	1650 3050 1800 3050
Wire Wire Line
	1650 3150 1800 3150
Wire Wire Line
	1650 3250 1800 3250
$Comp
L power:GNDD #PWR0125
U 1 1 5D3AFD5B
P 1000 4250
AR Path="/5E755787/5D3AFD5B" Ref="#PWR0125"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5D3AFD5B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0125" H 1000 4000 50  0001 C CNN
F 1 "GNDD" H 1004 4095 50  0000 C CNN
F 2 "" H 1000 4250 50  0001 C CNN
F 3 "" H 1000 4250 50  0001 C CNN
	1    1000 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1950 1000 1950
Wire Wire Line
	1000 1950 1000 3550
Wire Wire Line
	1800 3550 1000 3550
Connection ~ 1000 3550
Wire Wire Line
	1650 3850 1800 3850
Wire Wire Line
	3950 3850 4100 3850
Wire Wire Line
	3950 3750 4100 3750
Wire Wire Line
	3950 2350 5150 2350
Wire Wire Line
	5150 2350 5150 3550
Wire Wire Line
	5150 3550 5300 3550
Wire Wire Line
	3950 3650 4100 3650
Wire Wire Line
	3950 3550 4100 3550
Wire Wire Line
	3950 3250 4100 3250
Wire Wire Line
	3950 3150 4100 3150
Wire Wire Line
	3950 3050 4100 3050
Wire Wire Line
	3950 2250 4100 2250
NoConn ~ 1800 3450
Wire Wire Line
	1650 3750 1800 3750
Text GLabel 2800 4750 2    50   Input ~ 0
LED_MATRIX
$Comp
L Connector:TestPoint TP13
U 1 1 5D477EF0
P 6900 3800
AR Path="/5E755787/5D477EF0" Ref="TP13"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5D477EF0" Ref="TP?"  Part="1" 
F 0 "TP13" H 6958 3918 50  0000 L CNN
F 1 "I2C_Clock" H 6958 3827 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 7100 3800 50  0001 C CNN
F 3 "~" H 7100 3800 50  0001 C CNN
	1    6900 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3800 6900 3900
Connection ~ 6900 3900
Wire Wire Line
	6900 3900 7000 3900
$Comp
L Connector:TestPoint TP14
U 1 1 5D48220A
P 6900 4200
AR Path="/5E755787/5D48220A" Ref="TP14"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5D48220A" Ref="TP?"  Part="1" 
F 0 "TP14" H 6958 4318 50  0000 L CNN
F 1 "I2C_Data" H 6958 4227 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 7100 4200 50  0001 C CNN
F 3 "~" H 7100 4200 50  0001 C CNN
	1    6900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4200 6900 4300
Connection ~ 6900 4300
Wire Wire Line
	6900 4300 7000 4300
$Comp
L Connector:TestPoint TP10
U 1 1 5D4CBC8F
P 1950 4550
AR Path="/5E755787/5D4CBC8F" Ref="TP10"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5D4CBC8F" Ref="TP?"  Part="1" 
F 0 "TP10" H 2008 4668 50  0000 L CNN
F 1 "LED_MATRIX" H 2008 4577 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 2150 4550 50  0001 C CNN
F 3 "~" H 2150 4550 50  0001 C CNN
	1    1950 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D4CBADA
P 700 2700
AR Path="/5E755787/5D4CBADA" Ref="R2"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5D4CBADA" Ref="R?"  Part="1" 
F 0 "R2" H 770 2746 50  0000 L CNN
F 1 "4K7" H 770 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 630 2700 50  0001 C CNN
F 3 "~" H 700 2700 50  0001 C CNN
	1    700  2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  2850 700  3650
Wire Wire Line
	700  3650 1800 3650
Wire Wire Line
	4800 3900 6350 3900
$Comp
L Device:R R3
U 1 1 5E768FF3
P 2550 4750
AR Path="/5E755787/5E768FF3" Ref="R3"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E768FF3" Ref="R?"  Part="1" 
F 0 "R3" H 2620 4796 50  0000 L CNN
F 1 "300" H 2620 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2480 4750 50  0001 C CNN
F 3 "~" H 2550 4750 50  0001 C CNN
	1    2550 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1950 4550 1950 4750
Connection ~ 1950 4750
Wire Wire Line
	1950 4750 2400 4750
Wire Wire Line
	6350 3500 6350 3550
Wire Wire Line
	6350 3850 6350 3900
Connection ~ 6350 3900
Wire Wire Line
	6350 3900 6900 3900
Wire Wire Line
	5800 4300 6050 4300
Wire Wire Line
	6050 4250 6050 4300
Connection ~ 6050 4300
Wire Wire Line
	6050 4300 6900 4300
Wire Wire Line
	6050 3500 6050 3950
Text Notes 1650 1550 0    50   ~ 0
CONNECTORS\nTEENSY LC: Qty 2, 14 pins each side (does not include end/center pins)\nFEATHER: one row 12 pins, one row 16 pins
Wire Wire Line
	2700 4750 2800 4750
Wire Wire Line
	1700 3350 1700 4750
Wire Wire Line
	1700 3350 1800 3350
Wire Wire Line
	1700 4750 1950 4750
Wire Wire Line
	1000 3550 1000 4250
$Comp
L power:GNDD #PWR0120
U 1 1 5E79D787
P 5000 4200
AR Path="/5E755787/5E79D787" Ref="#PWR0120"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E79D787" Ref="#PWR?"  Part="1" 
F 0 "#PWR0120" H 5000 3950 50  0001 C CNN
F 1 "GNDD" H 5004 4045 50  0000 C CNN
F 2 "" H 5000 4200 50  0001 C CNN
F 3 "" H 5000 4200 50  0001 C CNN
	1    5000 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0121
U 1 1 5E7A2329
P 5300 4200
AR Path="/5E755787/5E7A2329" Ref="#PWR0121"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E7A2329" Ref="#PWR?"  Part="1" 
F 0 "#PWR0121" H 5300 3950 50  0001 C CNN
F 1 "GNDD" H 5304 4045 50  0000 C CNN
F 2 "" H 5300 4200 50  0001 C CNN
F 3 "" H 5300 4200 50  0001 C CNN
	1    5300 4200
	1    0    0    -1  
$EndComp
Connection ~ 5650 2450
Text GLabel 5650 1650 1    50   Output ~ 0
TEENSY_3V3
Wire Wire Line
	5650 1650 5650 2450
Text GLabel 700  2350 1    50   Input ~ 0
TEENSY_3V3
Wire Wire Line
	700  2550 700  2350
Text Notes 8500 900  0    50   ~ 10
TO DO: Add Feather module.
Text GLabel 5300 1650 1    50   Input ~ 0
TEENSY_VIN
Text GLabel 6050 3500 1    50   Input ~ 0
TEENSY_3V3
Text GLabel 6350 3500 1    50   Input ~ 0
TEENSY_3V3
Text Notes 2250 4200 0    50   ~ 10
TO DO: Board ID setting with analog levels for two analog pins?
Text Notes 4200 3200 0    50   ~ 10
TO DO: SD Card access?
Text Notes 4200 4950 0    50   ~ 10
TO DO: Magnetic or NFC connection.
$EndSCHEMATC
