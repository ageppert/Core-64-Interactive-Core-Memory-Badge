EESchema Schematic File Version 4
LIBS:Core64 LB v0.6-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 4 5
Title "Core 64 - Power Schematic"
Date "2021-11-09"
Rev "0.6"
Comp "Concept and design by Andy Geppert @ www.MachineIdeas.com"
Comment1 "Visit www.Core64.io for information on assembly and optional features."
Comment2 "As released"
Comment3 ""
Comment4 "All non-polarized capacitors are X7R or X5R ceramic unless otherwise noted."
$EndDescr
$Comp
L power:+BATT #PWR0101
U 1 1 5D2956F9
P 850 4950
AR Path="/5E7548ED/5D2956F9" Ref="#PWR0101"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5D2956F9" Ref="#PWR?"  Part="1" 
F 0 "#PWR0101" H 850 4800 50  0001 C CNN
F 1 "+BATT" H 865 5123 50  0000 C CNN
F 2 "" H 850 4950 50  0001 C CNN
F 3 "" H 850 4950 50  0001 C CNN
	1    850  4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 5250 1900 5250
$Comp
L power:-BATT #PWR0104
U 1 1 5D30A5B6
P 1500 7550
AR Path="/5E7548ED/5D30A5B6" Ref="#PWR0104"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5D30A5B6" Ref="#PWR?"  Part="1" 
F 0 "#PWR0104" H 1500 7400 50  0001 C CNN
F 1 "-BATT" H 1515 7723 50  0000 C CNN
F 2 "" H 1500 7550 50  0001 C CNN
F 3 "" H 1500 7550 50  0001 C CNN
	1    1500 7550
	-1   0    0    1   
$EndComp
Text Notes 8100 4550 0    50   ~ 0
CORES, ACCESSORIES, ALL LOGIC
$Comp
L Switch:SW_SPDT SW1
U 1 1 5E9AF194
P 1450 5250
AR Path="/5E7548ED/5E9AF194" Ref="SW1"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E9AF194" Ref="SW?"  Part="1" 
F 0 "SW1" H 1500 5550 50  0000 C CNN
F 1 "JS102011SAQN" H 1500 5450 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPDT_CK-JS102011SAQN_Core64_Recessed" H 1450 5250 50  0001 C CNN
F 3 "~" H 1450 5250 50  0001 C CNN
F 4 "Yes" H 1450 5250 50  0001 C CNN "Insert?"
F 5 "SWITCH SLIDE SPDT 300MA 6V" H 1450 5250 50  0001 C CNN "Description"
F 6 "JS102011SAQN" H 1450 5250 50  0001 C CNN "MPN"
F 7 "C&K" H 1450 5250 50  0001 C CNN "Manufacturer_Name"
	1    1450 5250
	-1   0    0    -1  
$EndComp
Text Notes 750  1550 0    50   ~ 0
SOURCE 1 “ON (BAT)”\n  BUILT-IN BATTERY PACK (Keystone 2482 or 2482CN) WITH 4X “AAA” primary/Alkaline Cells\n  OK to use Energizer Ultimate Lithium (light weight!) with open cell 7.2V, loaded will be <7V.\n  Battery Pack includes wires and may or may not have a 3-pin plug.\n    \n  Optional Socket: TH, Side Entry, JST PA S03B-PASK-2(LF)(SN), Digikey 455-1848-ND\n
Text Notes 750  2950 0    50   ~ 0
SOURCE 2 “OFF (USB)”\n  USB 5V supplied through Teensy and optional LiPo Charger USB port.\n  With the VIN-VUSB trace cut on the back of the Teensy, the TEENSY_VUSB is taken off of the\n  Teensy Board and routed on the Core64 LB to the lower position of the power switch. From\n  here, it powers the whole Core64 system and routes back to the TEENSY_VIN after passing\n  through the 5V LDO regulator.
$Comp
L power:+BATT #PWR0105
U 1 1 5E791B5B
P 2150 2050
AR Path="/5E7548ED/5E791B5B" Ref="#PWR0105"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E791B5B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0105" H 2150 1900 50  0001 C CNN
F 1 "+BATT" H 2165 2223 50  0000 C CNN
F 2 "" H 2150 2050 50  0001 C CNN
F 3 "" H 2150 2050 50  0001 C CNN
	1    2150 2050
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR0106
U 1 1 5E792BE2
P 2150 2250
AR Path="/5E7548ED/5E792BE2" Ref="#PWR0106"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E792BE2" Ref="#PWR?"  Part="1" 
F 0 "#PWR0106" H 2150 2100 50  0001 C CNN
F 1 "-BATT" H 2165 2423 50  0000 C CNN
F 2 "" H 2150 2250 50  0001 C CNN
F 3 "" H 2150 2250 50  0001 C CNN
	1    2150 2250
	-1   0    0    1   
$EndComp
Text Notes 650  1000 0    50   ~ 0
TWO POWER INPUT SOURCES SELECTED BY SPDT SWITCH
Wire Wire Line
	850  4950 850  5150
Wire Wire Line
	1550 2250 2150 2250
Wire Notes Line style solid
	600  850  5000 850 
Wire Notes Line style solid
	5000 850  5000 3000
Wire Notes Line style solid
	5000 3000 600  3000
Wire Notes Line style solid
	600  3000 600  850 
Text Notes 600  750  0    100  ~ 0
STANDARD KIT CONFIGURATION - AS MANUFACTURED
Text Notes 5200 750  0    100  ~ 0
ALTERNATE 1S LIPO BATTERY - USER SUPPLIED
Text GLabel 10200 4800 2    50   Output ~ 0
3V3
Text Notes 750  4450 0    118  ~ 0
POWER SWITCH, RPP, V & I MONITOR
Text Notes 7800 4450 0    118  ~ 0
3.3V POWER SUPPLY
Wire Notes Line
	5200 4150 10350 4150
Wire Notes Line
	10350 850  5200 850 
Text Notes 5000 4550 0    50   ~ 0
LED ARRAY, TEENSY VIN, OPTIONAL TFT & COLOR OLED
$Comp
L Device:R R?
U 1 1 5E800BC1
P 3850 6000
AR Path="/5E755787/5E800BC1" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E800BC1" Ref="R?"  Part="1" 
AR Path="/5E7548ED/5E800BC1" Ref="R42"  Part="1" 
F 0 "R42" H 3920 6046 50  0000 L CNN
F 1 "10K" H 3920 5955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3780 6000 50  0001 C CNN
F 3 "~" H 3850 6000 50  0001 C CNN
F 4 "RES 10K OHM" H 3850 6000 50  0001 C CNN "Description"
F 5 "20%" H 3850 6000 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 3850 6000 50  0001 C CNN "Insert?"
	1    3850 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E800BC7
P 3850 6300
AR Path="/5E755787/5E800BC7" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E800BC7" Ref="R?"  Part="1" 
AR Path="/5E7548ED/5E800BC7" Ref="R43"  Part="1" 
F 0 "R43" H 3920 6346 50  0000 L CNN
F 1 "10K" H 3920 6255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3780 6300 50  0001 C CNN
F 3 "~" H 3850 6300 50  0001 C CNN
F 4 "RES 10K OHM" H 3850 6300 50  0001 C CNN "Description"
F 5 "20%" H 3850 6300 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 3850 6300 50  0001 C CNN "Insert?"
	1    3850 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 6150 3850 6150
Text GLabel 4100 6150 2    50   Output ~ 0
BAT_MON
Text Notes 650  6850 0    118  ~ 0
ALL SYSTEM GROUND
Wire Wire Line
	1550 2050 2150 2050
$Comp
L Connector:Conn_01x08_Female J?
U 1 1 5E8E7260
P 4950 7900
AR Path="/5E75D6AB/5E8E7260" Ref="J?"  Part="1" 
AR Path="/5E7548ED/5E8E7260" Ref="J12"  Part="1" 
F 0 "J12" V 4750 8700 50  0000 L CNN
F 1 "Power Rails" V 4850 8350 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 4950 7900 50  0001 C CNN
F 3 "~" H 4950 7900 50  0001 C CNN
F 4 "No" H 4950 7900 50  0001 C CNN "Insert?"
	1    4950 7900
	0    -1   1    0   
$EndComp
Text GLabel 5250 7450 1    50   Input ~ 0
3V3
Wire Wire Line
	850  5150 1250 5150
$Comp
L power:+BATT #PWR0157
U 1 1 5E8F0624
P 4500 7450
AR Path="/5E7548ED/5E8F0624" Ref="#PWR0157"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E8F0624" Ref="#PWR?"  Part="1" 
F 0 "#PWR0157" H 4500 7300 50  0001 C CNN
F 1 "+BATT" H 4550 7600 50  0000 C CNN
F 2 "" H 4500 7450 50  0001 C CNN
F 3 "" H 4500 7450 50  0001 C CNN
	1    4500 7450
	-1   0    0    -1  
$EndComp
Text GLabel 3000 4950 2    50   Output ~ 0
+RPP
Text GLabel 4950 7450 1    50   Output ~ 0
+VSW
Wire Wire Line
	4500 7450 4500 7650
Wire Wire Line
	4650 7650 4650 7700
Wire Wire Line
	4650 7450 4650 7600
Wire Wire Line
	4750 7600 4750 7700
Wire Wire Line
	4800 7450 4800 7550
Wire Wire Line
	4850 7550 4850 7700
Wire Wire Line
	5250 7450 5250 7550
Wire Wire Line
	5250 7550 5150 7550
Wire Wire Line
	5150 7550 5150 7700
Wire Wire Line
	5400 7450 5400 7600
Wire Wire Line
	5400 7600 5250 7600
Wire Wire Line
	5250 7600 5250 7700
Wire Wire Line
	5550 7700 5550 7650
Wire Wire Line
	5550 7650 5350 7650
Wire Wire Line
	5350 7650 5350 7700
Wire Wire Line
	5050 7500 5050 7700
$Comp
L power:GND #PWR0161
U 1 1 5E91E931
P 5550 7700
AR Path="/5E7548ED/5E91E931" Ref="#PWR0161"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E91E931" Ref="#PWR?"  Part="1" 
F 0 "#PWR0161" H 5550 7450 50  0001 C CNN
F 1 "GND" H 5550 7550 50  0000 C CNN
F 2 "" H 5550 7700 50  0001 C CNN
F 3 "" H 5550 7700 50  0001 C CNN
	1    5550 7700
	-1   0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5E8DC4AA
P 1750 7200
F 0 "H2" H 1850 7250 50  0000 L CNN
F 1 "GND PAD" H 1850 7157 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 1750 7200 50  0001 C CNN
F 3 "~" H 1750 7200 50  0001 C CNN
F 4 "No" H 1750 7200 50  0001 C CNN "Insert?"
	1    1750 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5E8DD364
P 1250 7200
F 0 "H1" H 1050 7250 50  0000 L CNN
F 1 "GND PAD" H 850 7150 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 1250 7200 50  0001 C CNN
F 3 "~" H 1250 7200 50  0001 C CNN
F 4 "No" H 1250 7200 50  0001 C CNN "Insert?"
	1    1250 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4950 2900 5250
Connection ~ 2900 5250
Wire Wire Line
	2900 5250 3250 5250
Text Notes 4400 6850 0    118  ~ 0
POWER RAILS
Wire Wire Line
	5050 7500 5100 7500
Wire Wire Line
	5100 7500 5100 7450
Wire Wire Line
	1500 7450 1500 7550
Wire Wire Line
	2300 7550 2300 7450
Text Notes 1750 7950 0    50   ~ 0
HIGH POWER\nSYSTEM GROUND
$Comp
L power:GND #PWR0115
U 1 1 5E8C20D5
P 2300 7550
AR Path="/5E7548ED/5E8C20D5" Ref="#PWR0115"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E8C20D5" Ref="#PWR?"  Part="1" 
F 0 "#PWR0115" H 2300 7300 50  0001 C CNN
F 1 "GND" H 2305 7375 50  0000 C CNN
F 2 "" H 2300 7550 50  0001 C CNN
F 3 "" H 2300 7550 50  0001 C CNN
	1    2300 7550
	1    0    0    -1  
$EndComp
Text Notes 650  7950 0    50   ~ 0
DIGITAL\nLOGIC GROUND
Connection ~ 1500 7450
Wire Wire Line
	1500 7450 2300 7450
$Comp
L power:GND #PWR0167
U 1 1 5E93E34A
P 3850 6500
AR Path="/5E7548ED/5E93E34A" Ref="#PWR0167"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E93E34A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0167" H 3850 6250 50  0001 C CNN
F 1 "GND" H 3855 6325 50  0000 C CNN
F 2 "" H 3850 6500 50  0001 C CNN
F 3 "" H 3850 6500 50  0001 C CNN
	1    3850 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 6450 3850 6500
$Comp
L Device:C C?
U 1 1 5EBB706E
P 9400 5000
AR Path="/5E755787/5EBB706E" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EBB706E" Ref="C?"  Part="1" 
AR Path="/5EA63449/5EBB706E" Ref="C?"  Part="1" 
AR Path="/5E7548ED/5EBB706E" Ref="C11"  Part="1" 
F 0 "C11" H 9491 5046 50  0000 L CNN
F 1 "1uF" H 9491 4955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9400 5000 50  0001 C CNN
F 3 "~" H 9400 5000 50  0001 C CNN
F 4 "Yes" H 9400 5000 50  0001 C CNN "Insert?"
F 5 "CAP" H 9400 5000 50  0001 C CNN "Description"
	1    9400 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 7300 1250 7350
Wire Wire Line
	750  7450 1500 7450
Wire Wire Line
	750  7450 750  7550
Text Notes 2050 5400 0    50   ~ 0
D
Text Notes 2300 5550 0    50   ~ 0
G
Text Notes 2400 5400 0    50   ~ 0
S
Wire Wire Line
	2250 5550 2250 5600
Wire Wire Line
	2250 5600 2550 5600
Wire Wire Line
	2550 5600 2550 5550
Connection ~ 2250 5600
Wire Wire Line
	2250 5600 2250 5650
$Comp
L power:GND #PWR0110
U 1 1 5F53E985
P 2250 5950
AR Path="/5E7548ED/5F53E985" Ref="#PWR0110"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5F53E985" Ref="#PWR?"  Part="1" 
F 0 "#PWR0110" H 2250 5700 50  0001 C CNN
F 1 "GND" H 2255 5775 50  0000 C CNN
F 2 "" H 2250 5950 50  0001 C CNN
F 3 "" H 2250 5950 50  0001 C CNN
	1    2250 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 5950 1900 5950
Wire Wire Line
	1900 5950 1900 5650
Wire Wire Line
	1900 5350 1900 5250
Wire Wire Line
	1900 5250 2050 5250
Connection ~ 1900 5250
$Comp
L Jumper:SolderJumper_2_Bridged JP6
U 1 1 5F553296
P 950 5350
F 0 "JP6" H 950 5500 50  0000 C CNN
F 1 "USB_Power_Enable" H 850 5600 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 950 5350 50  0001 C CNN
F 3 "~" H 950 5350 50  0001 C CNN
F 4 "No" H 950 5350 50  0001 C CNN "Insert?"
	1    950  5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	650  5350 800  5350
Wire Wire Line
	1100 5350 1250 5350
Text Notes 650  6550 0    50   ~ 0
OPTIONAL USB BYPASS:\nAs shipped, power switch\nin OFF position connects\nto USB power through\nthe Teensy.\nOPTIONAL:\nCut SJ if you want the \nOFF position to not\nbe powered from\nTeensy USB connector.
Text Notes 1050 4800 0    79   ~ 0
SILKSCREEN: ON (BAT) / OFF (USB)
Text GLabel 4100 5250 2    50   Output ~ 0
+VSW
Text GLabel 5000 4800 0    50   Input ~ 0
+VSW
$Comp
L power:GND #PWR0113
U 1 1 5F56E724
P 6050 5850
AR Path="/5E7548ED/5F56E724" Ref="#PWR0113"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5F56E724" Ref="#PWR?"  Part="1" 
F 0 "#PWR0113" H 6050 5600 50  0001 C CNN
F 1 "GND" H 6055 5675 50  0000 C CNN
F 2 "" H 6050 5850 50  0001 C CNN
F 3 "" H 6050 5850 50  0001 C CNN
	1    6050 5850
	1    0    0    -1  
$EndComp
Connection ~ 3850 6150
Text Notes 3500 2200 0    157  ~ 31
7.5V MAX !!!
Text Notes 2200 2150 0    50   ~ 0
SILKSCREEN: BAT. +/- pins
Text GLabel 4800 7450 1    50   Input ~ 0
+RPP
$Comp
L Jumper:SolderJumper_2_Bridged JP7
U 1 1 5F4B1331
P 3400 5250
F 0 "JP7" H 3400 5350 50  0000 C CNN
F 1 "Sys. Cur. Mon." H 3450 5450 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3400 5250 50  0001 C CNN
F 3 "~" H 3400 5250 50  0001 C CNN
F 4 "No" H 3400 5250 50  0001 C CNN "Insert?"
	1    3400 5250
	1    0    0    -1  
$EndComp
Text Notes 2900 6100 0    50   ~ 0
OPTIONAL CUR. MON.:\n1) Open Cur. Mon. SJ\n2) Insert 0.01 Ohm\n    -or-\n2) Ammeter current\nbetween RPP & +VSW 
Text Notes 5000 4450 0    118  ~ 0
5V POWER SUPPLY
Wire Wire Line
	2900 4950 3000 4950
Text GLabel 7150 5000 2    50   Output ~ 0
5V0
Text GLabel 5100 7450 1    50   Input ~ 0
5V0
Text GLabel 4650 7450 1    50   Input ~ 0
TEENSY_VUSB
Wire Wire Line
	1500 7350 1250 7350
$Comp
L power:GNDD #PWR0103
U 1 1 5D31E05B
P 750 7550
AR Path="/5E7548ED/5D31E05B" Ref="#PWR0103"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5D31E05B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0103" H 750 7300 50  0001 C CNN
F 1 "GNDD" H 754 7395 50  0000 C CNN
F 2 "" H 750 7550 50  0001 C CNN
F 3 "" H 750 7550 50  0001 C CNN
	1    750  7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 7350 1500 7450
Wire Wire Line
	1500 7350 1750 7350
Wire Wire Line
	1750 7350 1750 7300
Connection ~ 1500 7350
Text Notes 1900 5200 0    50   ~ 0
P-CHNL
Text Notes 900  3950 0    146  ~ 29
*** ALL CONFIGURATIONS REQUIRE\nCUTTING VIN-VUSB TRACE ON\nBACK OF TEENSY ***
Text GLabel 5400 7450 1    50   Output ~ 0
BAT_MON
Text Notes 7100 3500 0    98   ~ 20
1S LIPO ONLY !!!\nDo NOT connect AAAs to a LiPo charger!\nYou will destroy the charging chip.
$Comp
L CORE_64_LIBRARY:Micro_LiPo_Charger X1
U 1 1 5F54D780
P 6050 3400
F 0 "X1" V 5900 3600 50  0000 L CNN
F 1 "Micro_LiPo_Charger" V 5750 3050 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Micro_LiPo_Charger_CornerSMD" H 6050 3400 50  0001 C CNN
F 3 "" H 6050 3400 50  0001 C CNN
F 4 "No" H 6050 3400 50  0001 C CNN "Insert?"
F 5 "LIPO CHARGE MODULE" H 6050 3400 50  0001 C CNN "Description"
	1    6050 3400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0150
U 1 1 5F5509C3
P 6150 3850
AR Path="/5E7548ED/5F5509C3" Ref="#PWR0150"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5F5509C3" Ref="#PWR?"  Part="1" 
F 0 "#PWR0150" H 6150 3600 50  0001 C CNN
F 1 "GND" H 6155 3675 50  0000 C CNN
F 2 "" H 6150 3850 50  0001 C CNN
F 3 "" H 6150 3850 50  0001 C CNN
	1    6150 3850
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR0153
U 1 1 5F5623DF
P 5850 3850
AR Path="/5E7548ED/5F5623DF" Ref="#PWR0153"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5F5623DF" Ref="#PWR?"  Part="1" 
F 0 "#PWR0153" H 5850 3700 50  0001 C CNN
F 1 "-BATT" H 5865 4023 50  0000 C CNN
F 2 "" H 5850 3850 50  0001 C CNN
F 3 "" H 5850 3850 50  0001 C CNN
	1    5850 3850
	-1   0    0    1   
$EndComp
$Comp
L power:+BATT #PWR0154
U 1 1 5F56292A
P 5600 3700
AR Path="/5E7548ED/5F56292A" Ref="#PWR0154"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5F56292A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0154" H 5600 3550 50  0001 C CNN
F 1 "+BATT" H 5615 3873 50  0000 C CNN
F 2 "" H 5600 3700 50  0001 C CNN
F 3 "" H 5600 3700 50  0001 C CNN
	1    5600 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3700 5850 3700
Wire Wire Line
	6050 3700 6050 3800
Wire Wire Line
	6050 3800 6150 3800
Wire Wire Line
	6150 3800 6150 3850
Wire Wire Line
	5950 3700 5950 3800
Wire Wire Line
	5950 3800 5850 3800
Wire Wire Line
	5850 3800 5850 3850
Text Notes 1850 6550 0    50   ~ 0
OPTIONAL FET PROTECT:\n1) 10nF Cap. on left\n2) 10V Zener on right
$Comp
L S03B-PASK-2_LF__SN_:S03B-PASK-2_LF__SN_ J7
U 1 1 5F4CF3FA
P 1550 2250
F 0 "J7" H 1840 1782 50  0000 C CNN
F 1 "S03B-PASK-2_LF__SN_" H 1840 1875 50  0000 C CNN
F 2 "JST_S03B-PASK-2_LF__SN_:S03BPASK2LFSN_.075in_holes" H 2200 2350 50  0001 L CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/ePA-F.pdf" H 2200 2250 50  0001 L CNN
F 4 "JST (JAPAN SOLDERLESS TERMINALS) - S03B-PASK-2(LF)(SN) - HEADER, PA, 3WAY, SIDE, 2MM" H 2200 2150 50  0001 L CNN "Description"
F 5 "6.5" H 2200 2050 50  0001 L CNN "Height"
F 6 "JST (JAPAN SOLDERLESS TERMINALS)" H 2200 1950 50  0001 L CNN "Manufacturer_Name"
F 7 "S03B-PASK-2(LF)(SN)" H 2200 1850 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "S03B-PASK-2(LF)(SN)" H 2200 1750 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/s03b-pask-2-lf-sn/jst-manufacturing" H 2200 1650 50  0001 L CNN "Arrow Price/Stock"
F 10 "No" H 1550 2250 50  0001 C CNN "Insert?"
	1    1550 2250
	-1   0    0    1   
$EndComp
Text Notes 8450 4000 0    50   ~ 0
SILKSCREEN: +/- pins
Text Notes 5250 2950 0    50   ~ 0
1) Remove the 4x “AAA” battery pack AND the battery connector, if installed.\n2) Purchase and install a LiPo charge manager.\n     a) The Logic Board accepts https://www.adafruit.com/product/1904 (Micro USB) and LED Matrix #4410 (USB C).\n     b) Solder the the charge manager directly to the board to keep a low profile.\n3) Purchase and install a 1S LiPo using double-sided tape. \n     a) Choose a 1S Lipo with built-in cell over/under voltage protection. Recommended:\n          2500mAh https://www.adafruit.com/product/328   1.8” x 2.4” x 0.26” (47mm x 61mm x 6.7mm)\n          2000mAh https://www.adafruit.com/product/2011  2.4” x 1.4” x 0.3” (60mm x 36mm x 7mm)\n          1200mAh https://www.adafruit.com/product/258    1.3” x 2.4” x 0.2” (34mm x 62mm x 5mm)\n     b) The LiPo can be up to 50 x 65 x 14mm maximum.\n     c) Make sure no part of the LiPo foil pouch can short-out adjacent pins or pads in the area. Insulate with Kapton tape.\n\nConfiguration of the Teensy_Charge_Enable Solder Jumper (SJ):\nA) DEFAULT SJ OPEN:\n     If you do NOT want the system to be powered from the USB port of the charger, leave the SJ open.\n     Connecting a USB cable to the LiPo charger will ONLY charge the battery and power the system when the power switch is in\n        ON (up/battery) position.\n     Connecting a USB cable to the Teensy will NOT charge the battery, but it will power the system when the power switch is in\n        OFF (down/USB) position.\nB) OPTIONAL SJ CLOSED:\n      The LiPo charger 5V pin (LiPo Charger USB port) may be connected to the Teensy USB port by closing the SJ.\n      Connecting a USB cable to the LiPo charger will charge the battery and power the system. It will not connect to the serial\n         port of the Teensy.\n      Connecting a USB cable to the Teensy will power the board and charge the battery and connect to the serial port of the\n         Teensy.
Wire Wire Line
	4500 7650 4650 7650
Wire Wire Line
	4650 7600 4750 7600
Wire Wire Line
	4800 7550 4850 7550
Wire Wire Line
	4950 7450 4950 7700
$Comp
L Jumper:SolderJumper_2_Open JP5
U 1 1 5F4F1B0D
P 6500 3700
F 0 "JP5" H 6500 3600 50  0000 C CNN
F 1 "Teensy_Charge_Enable" H 6300 3800 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6500 3700 50  0001 C CNN
F 3 "~" H 6500 3700 50  0001 C CNN
F 4 "No" H 6500 3700 50  0001 C CNN "Insert?"
	1    6500 3700
	-1   0    0    1   
$EndComp
Text Notes 6300 4100 0    50   ~ 0
OPT: Close SJ to run board\nwhile it is charging with the\nLiPo charger USB port.
Wire Wire Line
	6150 3700 6350 3700
$Comp
L TPS7A0533PDBVR:TPS7A0533PDBVR U6
U 1 1 5F5B23D2
P 8150 5050
F 0 "U6" H 8650 5318 50  0000 C CNN
F 1 "TPS7A0533PDBVR" H 8650 5225 50  0000 C CNN
F 2 "TPS7A0533PDBVR:SOT95P280X145-5N" H 9000 5150 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/tps7a05" H 9000 5050 50  0001 L CNN
F 4 "Linear Voltage Regulator IC Positive Fixed 1 Output 200mA SOT-23-5" H 9000 4950 50  0001 L CNN "Description"
F 5 "1.45" H 9000 4850 50  0001 L CNN "Height"
F 6 "Texas Instruments" H 9000 4750 50  0001 L CNN "Manufacturer_Name"
F 7 "TPS7A0533PDBVR" H 9000 4650 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "TPS7A0533PDBVR" H 9000 4550 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/tps7a0533pdbvr/texas-instruments" H 9000 4450 50  0001 L CNN "Arrow Price/Stock"
F 10 "595-TPS7A0533PDBVR" H 9000 4350 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TPS7A0533PDBVR?qs=vdi0iO8H4N0h9F4GOtQJBA%3D%3D" H 9000 4250 50  0001 L CNN "Mouser Price/Stock"
F 12 "TPS7A0533PDBVR" H 8150 5050 50  0001 C CNN "MPN"
F 13 "Yes" H 8150 5050 50  0001 C CNN "Insert?"
F 14 "TPS7A0533PDBVT" H 8150 5050 50  0001 C CNN "MPN(Secondary)"
F 15 "Texas Instruments" H 8150 5050 50  0001 C CNN "Manufacturer(Secondary)"
	1    8150 5050
	1    0    0    -1  
$EndComp
Text Notes 8250 4750 0    50   ~ 0
SOT-23-5\n0.24V DROP @ 200mA
$Comp
L power:GND #PWR0119
U 1 1 5F5C202C
P 7850 5300
AR Path="/5E7548ED/5F5C202C" Ref="#PWR0119"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5F5C202C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0119" H 7850 5050 50  0001 C CNN
F 1 "GND" H 7855 5125 50  0000 C CNN
F 2 "" H 7850 5300 50  0001 C CNN
F 3 "" H 7850 5300 50  0001 C CNN
	1    7850 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F5DC13F
P 7850 5000
AR Path="/5E755787/5F5DC13F" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5F5DC13F" Ref="C?"  Part="1" 
AR Path="/5EA63449/5F5DC13F" Ref="C?"  Part="1" 
AR Path="/5E7548ED/5F5DC13F" Ref="C10"  Part="1" 
F 0 "C10" H 7941 5046 50  0000 L CNN
F 1 "1uF" H 7941 4955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7850 5000 50  0001 C CNN
F 3 "~" H 7850 5000 50  0001 C CNN
F 4 "Yes" H 7850 5000 50  0001 C CNN "Insert?"
F 5 "CAP" H 7850 5000 50  0001 C CNN "Description"
	1    7850 5000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9150 5150 9250 5150
$Comp
L power:GND #PWR0160
U 1 1 5F5FF918
P 9400 5250
AR Path="/5E7548ED/5F5FF918" Ref="#PWR0160"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5F5FF918" Ref="#PWR?"  Part="1" 
F 0 "#PWR0160" H 9400 5000 50  0001 C CNN
F 1 "GND" H 9405 5075 50  0000 C CNN
F 2 "" H 9400 5250 50  0001 C CNN
F 3 "" H 9400 5250 50  0001 C CNN
	1    9400 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 5150 9250 4800
Wire Wire Line
	9250 4800 9400 4800
Wire Wire Line
	9400 4800 9400 4850
Connection ~ 9400 4800
Wire Wire Line
	9400 5150 9400 5250
Wire Wire Line
	7850 4850 7850 4800
Wire Wire Line
	7850 4800 8100 4800
Wire Wire Line
	8100 5050 8150 5050
Wire Wire Line
	8100 5050 8100 5250
Wire Wire Line
	8100 5250 8150 5250
Connection ~ 8100 5050
Connection ~ 8100 4800
Wire Wire Line
	8100 4800 8100 5050
Wire Wire Line
	8150 5150 8000 5150
Wire Wire Line
	8000 5150 8000 5250
Wire Wire Line
	7850 5150 7850 5250
Wire Wire Line
	8000 5250 7850 5250
Connection ~ 7850 5250
Wire Wire Line
	7850 5250 7850 5300
Text GLabel 8000 4650 0    50   Input ~ 0
5V0
$Comp
L Device:CP1 C?
U 1 1 5F69BA6F
P 7100 5250
AR Path="/5E755787/5F69BA6F" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5F69BA6F" Ref="C?"  Part="1" 
AR Path="/5EA63449/5F69BA6F" Ref="C?"  Part="1" 
AR Path="/5E7548ED/5F69BA6F" Ref="C9"  Part="1" 
F 0 "C9" H 7191 5296 50  0000 L CNN
F 1 "470uF" H 7191 5205 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 7100 5250 50  0001 C CNN
F 3 "" H 7100 5250 50  0001 C CNN
F 4 "565-EMHL100ARA471MHA0GCT-ND" H 7100 5250 50  0001 C CNN "Digikey"
F 5 "Yes" H 7100 5250 50  0001 C CNN "Insert?"
F 6 "CAP ALUM 470UF 20% 10V SMD" H 7100 5250 50  0001 C CNN "Description"
F 7 "6.3SEV330M6.3X8" H 7100 5250 50  0001 C CNN "MPN(Secondary)"
F 8 "Rubycon" H 7100 5250 50  0001 C CNN "Manufacturer(Secondary)"
F 9 "330UF 20% 6.3V" H 7100 5250 50  0001 C CNN "Value_Modifier"
F 10 "EEE-FTA471XAL" H 7100 5250 50  0001 C CNN "MPN"
F 11 "Panasonic" H 7100 5250 50  0001 C CNN "Manufacturer_Name"
	1    7100 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F69C890
P 5100 5400
AR Path="/5E755787/5F69C890" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5F69C890" Ref="C?"  Part="1" 
AR Path="/5EA63449/5F69C890" Ref="C?"  Part="1" 
AR Path="/5E7548ED/5F69C890" Ref="C8"  Part="1" 
F 0 "C8" H 5191 5446 50  0000 L CNN
F 1 "68uF" H 5191 5355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5100 5400 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C3216X5R1A686M160AC" H 5100 5400 50  0001 C CNN
F 4 "Yes" H 5100 5400 50  0001 C CNN "Insert?"
F 5 "CAP" H 5100 5400 50  0001 C CNN "Description"
F 6 "C3216X5R1A686M160AC" H 5100 5400 50  0001 C CNN "MPN"
F 7 "DK" H 5100 5400 50  0001 C CNN "MPN(Secondary)"
F 8 "TDK" H 5100 5400 50  0001 C CNN "Manufacturer_Name"
	1    5100 5400
	-1   0    0    -1  
$EndComp
$Comp
L LP3961EMP-5.0:LP3961EMP-5.0 U5
U 1 1 5F69DC3B
P 5850 5250
F 0 "U5" H 6350 5550 50  0000 C CNN
F 1 "LP3961EMP-5.0" H 6350 5450 50  0000 C CNN
F 2 "LP3961EMP-5.0:SOT150P696X180-5N" H 6900 5350 50  0001 L CNN
F 3 "https://4donline.ihs.com/images/VipMasterIC/IC/NATL/NATLS08520/NATLS08520-1.pdf?hkey=EC6BD57738AE6E33B588C5F9AD3CEFA7" H 6900 5250 50  0001 L CNN
F 4 "Fast Ultra Low Dropout Linear Regulators" H 6900 5150 50  0001 L CNN "Description"
F 5 "Texas Instruments" H 6900 4950 50  0001 L CNN "Manufacturer_Name"
F 6 "LP3961EMP-5.0" H 6900 4850 50  0001 L CNN "Manufacturer_Part_Number"
F 7 "LP3961EMP-5.0" H 6900 4750 50  0001 L CNN "Arrow Part Number"
F 8 "https://www.arrow.com/en/products/lp3961emp-5.0/texas-instruments" H 6900 4650 50  0001 L CNN "Arrow Price/Stock"
F 9 "926-LP3961EMP-50" H 6900 4550 50  0001 L CNN "Mouser Part Number"
F 10 "https://www.mouser.com/Search/Refine.aspx?Keyword=926-LP3961EMP-50" H 6900 4450 50  0001 L CNN "Mouser Price/Stock"
F 11 "LP3961EMP-5.0/NOPB" H 5850 5250 50  0001 C CNN "MPN"
F 12 "YesYes" H 5850 5250 50  0001 C CNN "Insert?"
	1    5850 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5400 5800 5400
Wire Wire Line
	6850 5500 7100 5500
Wire Wire Line
	6850 5300 6900 5300
Wire Wire Line
	6900 5000 6900 5100
Wire Wire Line
	6900 5100 7100 5100
Wire Wire Line
	7100 5400 7100 5500
Connection ~ 7100 5500
Wire Wire Line
	8000 4650 8100 4650
Wire Wire Line
	8100 4650 8100 4800
Wire Wire Line
	7100 5500 7100 5750
Wire Wire Line
	5100 5550 5100 5750
Wire Wire Line
	5100 5750 5800 5750
Wire Wire Line
	6050 5750 6050 5850
Wire Wire Line
	5000 4800 5100 4800
Connection ~ 5100 4800
Wire Wire Line
	5850 5250 5800 5250
Wire Wire Line
	5800 5250 5800 5150
Wire Wire Line
	5800 4800 5800 4850
$Comp
L Device:R R?
U 1 1 5F535DE4
P 5800 5000
AR Path="/5E755787/5F535DE4" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5F535DE4" Ref="R?"  Part="1" 
AR Path="/5E7548ED/5F535DE4" Ref="R44"  Part="1" 
F 0 "R44" H 5870 5046 50  0000 L CNN
F 1 "10k" H 5870 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5730 5000 50  0001 C CNN
F 3 "~" H 5800 5000 50  0001 C CNN
F 4 "RES 10K OHM" H 5800 5000 50  0001 C CNN "Description"
F 5 "Yes" H 5800 5000 50  0001 C CNN "Insert?"
F 6 "20%" H 5800 5000 50  0001 C CNN "Value_Modifier"
	1    5800 5000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5100 4800 5300 4800
Wire Wire Line
	5100 4800 5100 5250
Wire Wire Line
	5300 4800 5300 5550
Wire Wire Line
	5300 5550 5850 5550
Connection ~ 5300 4800
Connection ~ 6050 5750
Wire Wire Line
	6050 5750 7100 5750
Wire Wire Line
	5800 5400 5800 5750
Connection ~ 5800 5750
Wire Wire Line
	5800 5750 6050 5750
Text Notes 4700 5950 0    50   ~ 0
CIN ESR (mΩ) / CIN (μF) ≤ 1.5\nX7R or X5R Ceramic
Text Notes 6350 5850 0    50   ~ 0
0.2Ω ≤ COUT ESR ≤ 5Ω
Text Notes 6350 6050 0    50   ~ 0
See data sheet for\ncapacitor requirements
Text Notes 800  7000 0    50   ~ 0
GND PAD 3.2 mm (.125 in) thru-hole for M3 or #4 screw
Text Notes 2250 7150 0    50   ~ 0
SILKSCREEN: GND
Text Notes 8450 4100 0    50   ~ 0
SILKSCREEN: LIPO CHARGER
Text Notes 8450 3900 0    50   ~ 0
SILKSCREEN: BAT. + BAT. -
Text Notes 4750 6950 0    50   ~ 0
SILKSCREEN: POWER
Text Notes 6250 3500 0    50   ~ 0
Mounting\n4x 0.1” holes
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 5F8E6AE3
P 6900 4800
F 0 "J8" V 7000 4800 50  0000 R CNN
F 1 "5V0 Cur. Mon." V 7100 4800 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 6900 4800 50  0001 C CNN
F 3 "~" H 6900 4800 50  0001 C CNN
F 4 "No" H 6900 4800 50  0001 C CNN "Insert?"
	1    6900 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7000 5000 7100 5000
Wire Wire Line
	6900 5000 7000 5000
Connection ~ 6900 5000
Connection ~ 7000 5000
Wire Wire Line
	6900 5100 6900 5300
Connection ~ 6900 5100
$Comp
L Connector_Generic:Conn_01x02 J9
U 1 1 5F9393CC
P 10000 5000
F 0 "J9" V 10100 5000 50  0000 R CNN
F 1 "3V3 Cur. Mon." V 10200 5200 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 10000 5000 50  0001 C CNN
F 3 "~" H 10000 5000 50  0001 C CNN
F 4 "SN74HC02DR" H 10000 5000 50  0001 C CNN "MPN"
F 5 "No" H 10000 5000 50  0001 C CNN "Insert?"
	1    10000 5000
	0    -1   1    0   
$EndComp
Connection ~ 7100 5000
Wire Wire Line
	7100 5000 7150 5000
Text GLabel 4050 4100 0    50   Output ~ 0
TEENSY_VIN
NoConn ~ 1550 2150
Wire Wire Line
	1500 4100 650  4100
Wire Wire Line
	4900 4100 4900 4650
Wire Wire Line
	4900 4650 7100 4650
Wire Wire Line
	7100 4650 7100 5000
Wire Wire Line
	650  4100 650  3150
Wire Wire Line
	650  3150 5100 3150
Wire Wire Line
	5100 3000 6900 3000
Wire Wire Line
	6900 3000 6900 3700
Wire Wire Line
	6650 3700 6900 3700
Connection ~ 650  4100
Text Notes 3500 1950 0    50   ~ 0
SILKSCREEN:
Text Notes 3500 2300 0    50   ~ 0
Limitation of 5V0 regulator.
Text Notes 1100 5250 0    50   ~ 0
ON
Text Notes 1100 5450 0    50   ~ 0
OFF
$Comp
L Device:C C?
U 1 1 5FB0B59C
P 1900 5500
AR Path="/5E755787/5FB0B59C" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5FB0B59C" Ref="C?"  Part="1" 
AR Path="/5EA63449/5FB0B59C" Ref="C?"  Part="1" 
AR Path="/5E7548ED/5FB0B59C" Ref="C7"  Part="1" 
F 0 "C7" H 1991 5546 50  0000 L CNN
F 1 "0.01uF" H 1991 5455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1900 5500 50  0001 C CNN
F 3 "~" H 1900 5500 50  0001 C CNN
F 4 "No" H 1900 5500 50  0001 C CNN "Insert?"
F 5 "CAP" H 1900 5500 50  0001 C CNN "Description"
	1    1900 5500
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FB0C27F
P 2250 5800
AR Path="/5E755787/5FB0C27F" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5FB0C27F" Ref="R?"  Part="1" 
AR Path="/5E7548ED/5FB0C27F" Ref="R39"  Part="1" 
F 0 "R39" H 2320 5846 50  0000 L CNN
F 1 "10k" H 2320 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2180 5800 50  0001 C CNN
F 3 "~" H 2250 5800 50  0001 C CNN
F 4 "RES 10K OHM" H 2250 5800 50  0001 C CNN "Description"
F 5 "Yes" H 2250 5800 50  0001 C CNN "Insert?"
F 6 "20%" H 2250 5800 50  0001 C CNN "Value_Modifier"
	1    2250 5800
	1    0    0    -1  
$EndComp
Connection ~ 2250 5950
$Comp
L Device:D_Zener_Small Z1
U 1 1 5FB1A9B0
P 2550 5450
F 0 "Z1" V 2503 5523 50  0000 L CNN
F 1 "PDZ10BGWX_(10V)" V 2596 5523 50  0000 L CNN
F 2 "Digikey:SOD-123" V 2550 5450 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PDZ-GW_SER.pdf" V 2550 5450 50  0001 C CNN
F 4 "No" H 2550 5450 50  0001 C CNN "Insert?"
F 5 "DIODE, ZENER" H 2550 5450 50  0001 C CNN "Description"
	1    2550 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 5250 2550 5250
Wire Wire Line
	2550 5350 2550 5250
Connection ~ 2550 5250
Wire Wire Line
	2550 5250 2900 5250
$Comp
L Device:Q_PMOS_GSD Q22
U 1 1 5F522D96
P 2250 5350
F 0 "Q22" V 2596 5350 50  0000 C CNN
F 1 "MCC_SL3401A_PMOS_GSD" V 2503 5350 50  0000 C CNN
F 2 "Digikey:SOT-23-3" H 2450 5450 50  0001 C CNN
F 3 "https://www.infineon.com/dgdl/BSS315P_Rev2.3.pdf?folderId=db3a304314dca38901154a72e3951a65&fileId=db3a304330f686060130ff61f31b7f06" H 2250 5350 50  0001 C CNN
F 4 "MOSFET P-CHNL GSD LOW RDS(ON)" H 2250 5350 50  0001 C CNN "Description"
F 5 "SL3401A-TP" H 2250 5350 50  0001 C CNN "MPN"
F 6 "Micro Commercial Co" H 2250 5350 50  0001 C CNN "Manufacturer_Name"
F 7 "DMP3125L-7" H 2250 5350 50  0001 C CNN "MPN(Secondary)"
F 8 "Diodes Inc." H 2250 5350 50  0001 C CNN "Manufacturer(Secondary)"
F 9 "Yes" H 2250 5350 50  0001 C CNN "Insert?"
	1    2250 5350
	0    -1   -1   0   
$EndComp
Text Notes 2300 5200 0    50   ~ 0
Rds(on)0.06
Text Notes 4500 5000 0    50   ~ 0
VIN MAX 7.5V
Text Notes 5700 6200 0    50   ~ 0
0.24V DROP @ 800mA
Text Notes 7300 4750 0    50   ~ 0
IN MAX 5.5V
Wire Wire Line
	5300 4800 5800 4800
Wire Wire Line
	650  4100 650  5350
Wire Wire Line
	4050 4100 4900 4100
Wire Wire Line
	10100 4800 10200 4800
Wire Wire Line
	10000 4800 10100 4800
Connection ~ 10000 4800
Connection ~ 10100 4800
Text GLabel 1500 4100 2    50   Input ~ 0
TEENSY_VUSB
$Comp
L Device:R R?
U 1 1 603A6799
P 9850 6000
AR Path="/5E755787/603A6799" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/603A6799" Ref="R?"  Part="1" 
AR Path="/5E7548ED/603A6799" Ref="R45"  Part="1" 
F 0 "R45" H 9920 6046 50  0000 L CNN
F 1 "10K" H 9920 5955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9780 6000 50  0001 C CNN
F 3 "~" H 9850 6000 50  0001 C CNN
F 4 "RES 10K OHM" H 9850 6000 50  0001 C CNN "Description"
F 5 "20%" H 9850 6000 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 9850 6000 50  0001 C CNN "Insert?"
	1    9850 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 603A679F
P 9850 6300
AR Path="/5E755787/603A679F" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/603A679F" Ref="R?"  Part="1" 
AR Path="/5E7548ED/603A679F" Ref="R46"  Part="1" 
F 0 "R46" H 9920 6346 50  0000 L CNN
F 1 "10K" H 9920 6255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9780 6300 50  0001 C CNN
F 3 "~" H 9850 6300 50  0001 C CNN
F 4 "RES 10K OHM" H 9850 6300 50  0001 C CNN "Description"
F 5 "20%" H 9850 6300 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 9850 6300 50  0001 C CNN "Insert?"
	1    9850 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 6150 9850 6150
Text GLabel 10050 6150 2    50   Output ~ 0
5V0_MON
$Comp
L power:GND #PWR0159
U 1 1 603A67A7
P 9850 6500
AR Path="/5E7548ED/603A67A7" Ref="#PWR0159"  Part="1" 
AR Path="/5E755AC8/5D254AE8/603A67A7" Ref="#PWR?"  Part="1" 
F 0 "#PWR0159" H 9850 6250 50  0001 C CNN
F 1 "GND" H 9855 6325 50  0000 C CNN
F 2 "" H 9850 6500 50  0001 C CNN
F 3 "" H 9850 6500 50  0001 C CNN
	1    9850 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 6450 9850 6500
Connection ~ 9850 6150
Text GLabel 9800 5750 0    50   Output ~ 0
5V0
Wire Wire Line
	9800 5750 9850 5750
Wire Wire Line
	9850 5750 9850 5850
Wire Wire Line
	10050 5600 9800 5600
Text GLabel 10050 5600 2    50   Output ~ 0
3V3_MON
Text GLabel 9800 5600 0    50   Output ~ 0
3V3
Wire Wire Line
	5100 3150 5100 3000
Wire Notes Line
	5200 850  5200 4150
Wire Notes Line
	10350 850  10350 4150
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 61AFA726
P 7700 5950
AR Path="/5E755AC8/61AFA726" Ref="J?"  Part="1" 
AR Path="/5E7548ED/61AFA726" Ref="J10"  Part="1" 
F 0 "J10" H 7673 5881 50  0000 R CNN
F 1 "Conn_01x01_Male" H 7673 5974 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical_No_Registration" H 7700 5950 50  0001 C CNN
F 3 "~" H 7700 5950 50  0001 C CNN
F 4 "No" H 7700 5950 50  0001 C CNN "Insert?"
	1    7700 5950
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 61AFA72C
P 7700 6300
AR Path="/5E755AC8/61AFA72C" Ref="J?"  Part="1" 
AR Path="/5E7548ED/61AFA72C" Ref="J11"  Part="1" 
F 0 "J11" H 7673 6231 50  0000 R CNN
F 1 "Conn_01x01_Male" H 7673 6324 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical_No_Registration" H 7700 6300 50  0001 C CNN
F 3 "~" H 7700 6300 50  0001 C CNN
F 4 "No" H 7700 6300 50  0001 C CNN "Insert?"
	1    7700 6300
	-1   0    0    1   
$EndComp
Text Notes 7750 6450 0    50   ~ 0
GND
Text Notes 7750 6100 0    50   ~ 0
+
Text Notes 7500 6400 0    50   ~ 0
DNI
Text Notes 7500 6050 0    50   ~ 0
DNI
Text Notes 7900 6250 0    50   ~ 0
Optional: Thru hole radial lead Cap.\n2.5mm lead spacing, 6.3mm dia, 12.5mm tall
Wire Wire Line
	9400 4800 10000 4800
Wire Wire Line
	7100 5100 7500 5100
Wire Wire Line
	7500 5100 7500 5950
Connection ~ 7100 5100
$Comp
L power:GND #PWR0107
U 1 1 61B1D439
P 7500 6450
AR Path="/5E7548ED/61B1D439" Ref="#PWR0107"  Part="1" 
AR Path="/5E755AC8/5D254AE8/61B1D439" Ref="#PWR?"  Part="1" 
F 0 "#PWR0107" H 7500 6200 50  0001 C CNN
F 1 "GND" H 7505 6275 50  0000 C CNN
F 2 "" H 7500 6450 50  0001 C CNN
F 3 "" H 7500 6450 50  0001 C CNN
	1    7500 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 6300 7500 6450
Wire Wire Line
	3550 5250 3850 5250
$Comp
L Device:R R?
U 1 1 61B53BEC
P 3850 5700
AR Path="/5E755787/61B53BEC" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/61B53BEC" Ref="R?"  Part="1" 
AR Path="/5E7548ED/61B53BEC" Ref="R41"  Part="1" 
F 0 "R41" H 3920 5746 50  0000 L CNN
F 1 "10K" H 3920 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3780 5700 50  0001 C CNN
F 3 "~" H 3850 5700 50  0001 C CNN
F 4 "RES 10K OHM" H 3850 5700 50  0001 C CNN "Description"
F 5 "20%" H 3850 5700 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 3850 5700 50  0001 C CNN "Insert?"
	1    3850 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61B53FD9
P 3850 5400
AR Path="/5E755787/61B53FD9" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/61B53FD9" Ref="R?"  Part="1" 
AR Path="/5E7548ED/61B53FD9" Ref="R40"  Part="1" 
F 0 "R40" H 3920 5446 50  0000 L CNN
F 1 "10K" H 3920 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3780 5400 50  0001 C CNN
F 3 "~" H 3850 5400 50  0001 C CNN
F 4 "RES 10K OHM" H 3850 5400 50  0001 C CNN "Description"
F 5 "20%" H 3850 5400 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 3850 5400 50  0001 C CNN "Insert?"
	1    3850 5400
	1    0    0    -1  
$EndComp
Connection ~ 3850 5250
Wire Wire Line
	3850 5250 4100 5250
$EndSCHEMATC
