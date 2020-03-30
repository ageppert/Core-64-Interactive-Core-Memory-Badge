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
P 3650 4700
AR Path="/5E755787/5EA2C7B7" Ref="U?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA2C7B7" Ref="U?"  Part="1" 
AR Path="/5EA2C7B7" Ref="U2"  Part="1" 
F 0 "U2" H 3675 5937 60  0000 C CNN
F 1 "Teensy-LC" H 3675 5831 60  0000 C CNN
F 2 "Teensy:Teensy30_31_32_LC_SMD_SOCKETS" H 3650 4150 60  0001 C CNN
F 3 "" H 3650 4150 60  0000 C CNN
	1    3650 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3950 2600 3950
Wire Wire Line
	2450 4050 2600 4050
Text GLabel 4900 4350 2    50   Output ~ 0
TEENSY_VUSB
NoConn ~ 4750 3850
NoConn ~ 4750 3950
Wire Wire Line
	6150 4650 6150 4550
Wire Wire Line
	6150 4550 4750 4550
Text Notes 5950 5000 0    50   ~ 0
Reads 1/2 +VSW (battery) voltage
Text Notes 1150 2150 0    50   ~ 0
Teensy LC has incoming USB power/programming on board.\n\n*** CUT THE USB-VIN bridge. ***
Wire Wire Line
	4900 5250 4750 5250
Wire Wire Line
	4750 5150 4900 5150
Wire Wire Line
	2450 3850 2600 3850
Wire Wire Line
	2450 4150 2600 4150
Wire Wire Line
	2450 4250 2600 4250
Wire Wire Line
	2450 4350 2600 4350
Wire Wire Line
	2450 4450 2600 4450
Wire Wire Line
	2450 4550 2600 4550
Wire Wire Line
	2450 4650 2600 4650
Wire Wire Line
	2450 4750 2600 4750
Wire Wire Line
	2450 4850 2600 4850
Wire Wire Line
	2450 4950 2600 4950
Wire Wire Line
	2450 5050 2600 5050
$Comp
L power:GNDD #PWR?
U 1 1 5EA2C7D3
P 1600 3800
AR Path="/5E755787/5EA2C7D3" Ref="#PWR?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA2C7D3" Ref="#PWR?"  Part="1" 
AR Path="/5EA2C7D3" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 1600 3550 50  0001 C CNN
F 1 "GNDD" H 1604 3645 50  0000 C CNN
F 2 "" H 1600 3800 50  0001 C CNN
F 3 "" H 1600 3800 50  0001 C CNN
	1    1600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5650 2600 5650
Wire Wire Line
	4750 5650 4900 5650
Wire Wire Line
	4750 5550 4900 5550
Wire Wire Line
	4750 5450 4900 5450
Wire Wire Line
	4750 5050 4900 5050
Wire Wire Line
	4750 4950 4900 4950
Wire Wire Line
	4750 4850 4900 4850
Wire Wire Line
	4750 4050 4900 4050
NoConn ~ 2600 5250
Text Notes 1150 2650 0    50   ~ 0
CONNECTORS\nTEENSY LC: Qty 2, 14 pins each side (does not include end/center pins)\nFEATHER: one row 12 pins, one row 16 pins
$Comp
L power:GNDD #PWR?
U 1 1 5EA2C7F1
P 6150 4650
AR Path="/5E755787/5EA2C7F1" Ref="#PWR?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA2C7F1" Ref="#PWR?"  Part="1" 
AR Path="/5EA2C7F1" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 6150 4400 50  0001 C CNN
F 1 "GNDD" H 6154 4495 50  0000 C CNN
F 2 "" H 6150 4650 50  0001 C CNN
F 3 "" H 6150 4650 50  0001 C CNN
	1    6150 4650
	1    0    0    -1  
$EndComp
Text GLabel 4900 4650 2    50   Output ~ 0
TEENSY_3V3
Text GLabel 4900 4450 2    50   Input ~ 0
TEENSY_VIN
Text GLabel 4900 4950 2    50   Input ~ 0
VSW_HALF_VOL_MONITOR
Wire Wire Line
	4750 4150 4900 4150
Wire Wire Line
	4750 4350 4900 4350
Wire Wire Line
	4750 4450 4900 4450
Wire Wire Line
	4750 4250 4900 4250
Wire Wire Line
	4750 4650 4900 4650
Text GLabel 4900 4250 2    50   Input ~ 0
TEENSY_3V3
Text GLabel 4900 5150 2    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 4900 5250 2    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	4750 5350 4900 5350
Text GLabel 4900 5350 2    50   Output ~ 0
LED_MATRIX_3V3
$Comp
L Device:R R?
U 1 1 5EA33C99
P 8800 5550
AR Path="/5E755787/5EA33C99" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA33C99" Ref="R?"  Part="1" 
AR Path="/5EA33C99" Ref="R4"  Part="1" 
F 0 "R4" H 8870 5596 50  0000 L CNN
F 1 "4K7" H 8870 5505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8730 5550 50  0001 C CNN
F 3 "~" H 8800 5550 50  0001 C CNN
	1    8800 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EA33C9F
P 8500 5950
AR Path="/5E755787/5EA33C9F" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA33C9F" Ref="R?"  Part="1" 
AR Path="/5EA33C9F" Ref="R3"  Part="1" 
F 0 "R3" H 8570 5996 50  0000 L CNN
F 1 "4K7" H 8570 5905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8430 5950 50  0001 C CNN
F 3 "~" H 8500 5950 50  0001 C CNN
	1    8500 5950
	1    0    0    -1  
$EndComp
Text GLabel 9500 3850 2    50   Output ~ 0
LED_MATRIX_+VSW
$Comp
L Connector:TestPoint TP?
U 1 1 5EA33CA6
P 9100 5650
AR Path="/5E755787/5EA33CA6" Ref="TP?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA33CA6" Ref="TP?"  Part="1" 
AR Path="/5EA33CA6" Ref="TP11"  Part="1" 
F 0 "TP11" H 9158 5768 50  0000 L CNN
F 1 "I2C_Clock" H 9158 5677 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 9300 5650 50  0001 C CNN
F 3 "~" H 9300 5650 50  0001 C CNN
	1    9100 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5650 9100 5750
$Comp
L Connector:TestPoint TP?
U 1 1 5EA33CAD
P 9100 6050
AR Path="/5E755787/5EA33CAD" Ref="TP?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA33CAD" Ref="TP?"  Part="1" 
AR Path="/5EA33CAD" Ref="TP12"  Part="1" 
F 0 "TP12" H 9158 6168 50  0000 L CNN
F 1 "I2C_Data" H 9158 6077 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 9300 6050 50  0001 C CNN
F 3 "~" H 9300 6050 50  0001 C CNN
	1    9100 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 6050 9100 6150
$Comp
L Connector:TestPoint TP?
U 1 1 5EA33CB4
P 9100 3750
AR Path="/5E755787/5EA33CB4" Ref="TP?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA33CB4" Ref="TP?"  Part="1" 
AR Path="/5EA33CB4" Ref="TP10"  Part="1" 
F 0 "TP10" H 9158 3868 50  0000 L CNN
F 1 "LED_MATRIX" H 9158 3777 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 9300 3750 50  0001 C CNN
F 3 "~" H 9300 3750 50  0001 C CNN
	1    9100 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5750 8800 5750
$Comp
L Device:R R?
U 1 1 5EA33CBB
P 9300 3850
AR Path="/5E755787/5EA33CBB" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA33CBB" Ref="R?"  Part="1" 
AR Path="/5EA33CBB" Ref="R5"  Part="1" 
F 0 "R5" V 9200 3850 50  0000 L CNN
F 1 "300" V 9100 3800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9230 3850 50  0001 C CNN
F 3 "~" H 9300 3850 50  0001 C CNN
	1    9300 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9100 3750 9100 3850
Connection ~ 9100 3850
Wire Wire Line
	9100 3850 9150 3850
Wire Wire Line
	8800 5350 8800 5400
Wire Wire Line
	8800 5700 8800 5750
Connection ~ 8800 5750
Wire Wire Line
	8800 5750 9100 5750
Wire Wire Line
	8300 6150 8500 6150
Wire Wire Line
	8500 6100 8500 6150
Connection ~ 8500 6150
Wire Wire Line
	8500 6150 9100 6150
Wire Wire Line
	8500 5350 8500 5800
Wire Wire Line
	9450 3850 9500 3850
Wire Wire Line
	9050 3850 9100 3850
Text GLabel 8500 5350 1    50   Input ~ 0
TEENSY_3V3
Text GLabel 8800 5350 1    50   Input ~ 0
TEENSY_3V3
Text GLabel 8300 6150 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 8300 5750 0    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 8200 3850 0    50   Input ~ 0
LED_MATRIX_3V3
Text Notes 7500 2900 0    50   ~ 10
TO DO: Level shifter (74AHCT125 or 74HCT245) not required if using ~3.7V.\nor SN74LV1T34DCKR\nIs it fast enough?
$Comp
L Logic_LevelTranslator:SN74AUP1T34DCK U?
U 1 1 5EA33CD5
P 8650 3850
AR Path="/5EA63449/5EA33CD5" Ref="U?"  Part="1" 
AR Path="/5E755787/5EA33CD5" Ref="U?"  Part="1" 
AR Path="/5EA33CD5" Ref="U7"  Part="1" 
F 0 "U7" H 8900 3600 50  0000 L CNN
F 1 "SN74AUP1T34DCK" H 8900 3500 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 8650 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74aup1t34.pdf" H 8650 3250 50  0001 C CNN
	1    8650 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3850 8250 3850
$Comp
L power:GND #PWR?
U 1 1 5EA33CDC
P 8650 4200
AR Path="/5E755787/5EA33CDC" Ref="#PWR?"  Part="1" 
AR Path="/5EA33CDC" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 8650 3950 50  0001 C CNN
F 1 "GND" H 8655 4025 50  0000 C CNN
F 2 "" H 8650 4200 50  0001 C CNN
F 3 "" H 8650 4200 50  0001 C CNN
	1    8650 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 4150 8650 4200
Text GLabel 8550 3500 1    50   Input ~ 0
TEENSY_3V3
Wire Wire Line
	8550 3550 8550 3500
Wire Wire Line
	8750 3550 8750 3250
$Comp
L power:+VSW #PWR?
U 1 1 5EA33CE6
P 8750 3250
AR Path="/5E755787/5EA33CE6" Ref="#PWR?"  Part="1" 
AR Path="/5EA33CE6" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 8750 3100 50  0001 C CNN
F 1 "+VSW" H 8765 3425 50  0000 C CNN
F 2 "" H 8750 3250 50  0001 C CNN
F 3 "" H 8750 3250 50  0001 C CNN
	1    8750 3250
	1    0    0    -1  
$EndComp
$Sheet
S 700  1000 2250 300 
U 5E7548ED
F0 "Power" 50
F1 "Interactive Core Memory Badge (Logic) Power v0.3.sch" 50
$EndSheet
Text GLabel 2450 3850 0    50   BiDi ~ 0
SAO1_GPIO2(RX)
Wire Wire Line
	2600 3750 1600 3750
Text GLabel 2450 3950 0    50   BiDi ~ 0
SAO1_GPIO1(TX)
Text GLabel 2450 4750 0    50   BiDi ~ 0
SAO2_GPIO2(RX)
Text GLabel 2450 4850 0    50   BiDi ~ 0
SAO2_GPIO1(TX)
Text GLabel 4900 4750 2    50   BiDi ~ 0
SAO3_GPIO1
Text GLabel 4900 4850 2    50   BiDi ~ 0
SAO3_GPIO2
Wire Wire Line
	4750 4750 4900 4750
NoConn ~ 2600 5450
NoConn ~ 2600 5550
NoConn ~ 2600 5350
Wire Wire Line
	1600 3750 1600 3800
NoConn ~ 2600 5150
$EndSCHEMATC
