EESchema Schematic File Version 4
LIBS:Core64 LB v0.4-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 5 5
Title "Core 64 - Power Schematic"
Date "2020-08-27"
Rev "0.4"
Comp "Andy Geppert - Machine Ideas, LLC"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
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
P 1450 7550
AR Path="/5E7548ED/5D30A5B6" Ref="#PWR0104"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5D30A5B6" Ref="#PWR?"  Part="1" 
F 0 "#PWR0104" H 1450 7400 50  0001 C CNN
F 1 "-BATT" H 1465 7723 50  0000 C CNN
F 2 "" H 1450 7550 50  0001 C CNN
F 3 "" H 1450 7550 50  0001 C CNN
	1    1450 7550
	-1   0    0    1   
$EndComp
Text Notes 8650 4450 0    50   ~ 0
CORES AND ACCESSORIES
$Comp
L Switch:SW_SPDT SW1
U 1 1 5E9AF194
P 1450 5250
AR Path="/5E7548ED/5E9AF194" Ref="SW1"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E9AF194" Ref="SW?"  Part="1" 
F 0 "SW1" H 1500 5550 50  0000 C CNN
F 1 "JS102011SAQN" H 1500 5450 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPDT_CK-JS102011SAQN" H 1450 5250 50  0001 C CNN
F 3 "~" H 1450 5250 50  0001 C CNN
	1    1450 5250
	-1   0    0    -1  
$EndComp
Text Notes 750  1700 0    50   ~ 0
SOURCE 1 “ON (BAT)”\n  BUILT-IN BATTERY PACK (Keystone 2482CN) WITH 4X “AAA” Primary/Alkaline Cells\n  OK to use Energizer Ultimate Lithium (light weight!) with open cell 7.2V, loaded will be <7V.\n  Battery Pack includes wires and 3-pin plug.\n  \n  Socket: TH, Side Entry, JST PA S03B-PASK-2(LF)(SN), Digikey 455-1848-ND ($0.44/ea)\n  Socket: SMT, Top Entry, JST PA BM03B-PASS-1-TFT(LF)(SN), Digikey 455-2638-1-ND ($0.80)  \n  Socket: SMT, Side Entry, Keystone 976, Digikey 36-976CT-ND ($2.71/ea)
Text Notes 750  2950 0    50   ~ 0
SOURCE 2 “OFF (USB)”\n  USB 5V supplied through Teensy 3.2 \n  With the VIN-VUSB trace cut on the back of the Teensy, the TEENSY_5VUSB\n  is routed directly from the USB Port, to the VUSB pin on the back \n  of the Teensy, over to one side of the SPDT switch. In this position\n  the VUSB goes back to the Teensy through the 5V regulator.
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5E78F60B
P 9350 3350
AR Path="/5E7548ED/5E78F60B" Ref="J2"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E78F60B" Ref="J?"  Part="1" 
F 0 "J2" H 9350 3450 50  0000 C CNN
F 1 "0.1\" 2-PIN" H 9350 3150 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical_SMD_Pin1Left" H 9350 3350 50  0001 C CNN
F 3 "~" H 9350 3350 50  0001 C CNN
	1    9350 3350
	1    0    0    -1  
$EndComp
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
$Comp
L power:+BATT #PWR0107
U 1 1 5E795118
P 10100 3350
AR Path="/5E7548ED/5E795118" Ref="#PWR0107"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E795118" Ref="#PWR?"  Part="1" 
F 0 "#PWR0107" H 10100 3200 50  0001 C CNN
F 1 "+BATT" H 10115 3523 50  0000 C CNN
F 2 "" H 10100 3350 50  0001 C CNN
F 3 "" H 10100 3350 50  0001 C CNN
	1    10100 3350
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR0108
U 1 1 5E79511E
P 10100 3450
AR Path="/5E7548ED/5E79511E" Ref="#PWR0108"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E79511E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0108" H 10100 3300 50  0001 C CNN
F 1 "-BATT" H 10115 3623 50  0000 C CNN
F 2 "" H 10100 3450 50  0001 C CNN
F 3 "" H 10100 3450 50  0001 C CNN
	1    10100 3450
	-1   0    0    1   
$EndComp
Text Notes 650  1000 0    50   ~ 0
TWO POWER INPUT SOURCES SELECTED BY SPDT SWITCH
Wire Wire Line
	850  4950 850  5150
Wire Wire Line
	1550 2250 2150 2250
Wire Wire Line
	9550 3350 10100 3350
Wire Wire Line
	9550 3450 10100 3450
Wire Notes Line style solid
	600  850  5000 850 
Wire Notes Line style solid
	5000 850  5000 3000
Wire Notes Line style solid
	5000 3000 600  3000
Wire Notes Line style solid
	600  3000 600  850 
Text Notes 600  750  0    100  ~ 0
STANDARD MANUFACTURED KIT CONFIGURATION
Text Notes 5200 750  0    100  ~ 0
ALTERNATE 1S LIPO BATTERY - USER SUPPLIED
Wire Wire Line
	4100 5250 3850 5250
Text GLabel 10100 5550 2    50   Output ~ 0
3V3
Text Notes 600  4450 0    118  ~ 0
POWER SWITCH, RPP, V & I MONITOR
Text Notes 7800 4350 0    118  ~ 0
3.3V POWER SUPPLY
$Comp
L power:GND #PWR0116
U 1 1 5E8C4F56
P 9550 6400
AR Path="/5E7548ED/5E8C4F56" Ref="#PWR0116"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E8C4F56" Ref="#PWR?"  Part="1" 
F 0 "#PWR0116" H 9550 6150 50  0001 C CNN
F 1 "GND" H 9555 6225 50  0000 C CNN
F 2 "" H 9550 6400 50  0001 C CNN
F 3 "" H 9550 6400 50  0001 C CNN
	1    9550 6400
	-1   0    0    -1  
$EndComp
Wire Notes Line
	5200 850  5200 3750
Wire Notes Line
	5200 3750 10350 3750
Wire Notes Line
	10350 3750 10350 850 
Wire Notes Line
	10350 850  5200 850 
Connection ~ 3850 5250
Text Notes 9300 6550 2    50   ~ 0
HIGH POWER SYSTEM GROUND
Text Notes 5650 4550 0    50   ~ 0
LED ARRAY, TEENSY VIN
$Comp
L Device:R R?
U 1 1 5E800BC1
P 3850 5400
AR Path="/5E755787/5E800BC1" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E800BC1" Ref="R?"  Part="1" 
AR Path="/5E7548ED/5E800BC1" Ref="R51"  Part="1" 
F 0 "R51" H 3920 5446 50  0000 L CNN
F 1 "33k" H 3920 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3780 5400 50  0001 C CNN
F 3 "~" H 3850 5400 50  0001 C CNN
	1    3850 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E800BC7
P 3850 5700
AR Path="/5E755787/5E800BC7" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E800BC7" Ref="R?"  Part="1" 
AR Path="/5E7548ED/5E800BC7" Ref="R52"  Part="1" 
F 0 "R52" H 3920 5746 50  0000 L CNN
F 1 "11k" H 3920 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3780 5700 50  0001 C CNN
F 3 "~" H 3850 5700 50  0001 C CNN
	1    3850 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 5550 3850 5550
Text GLabel 4100 5550 2    50   Output ~ 0
V_MON
Text Notes 600  6850 0    118  ~ 0
ALL SYSTEM STAR GROUNDING
Text Notes 9200 2950 0    50   ~ 0
ALTERNATE CONNECTOR\nGeneric 2-pin header 0.1”
Wire Wire Line
	1550 2050 2150 2050
$Comp
L Connector:Conn_01x08_Female J?
U 1 1 5E8E7260
P 4950 7900
AR Path="/5E75D6AB/5E8E7260" Ref="J?"  Part="1" 
AR Path="/5E7548ED/5E8E7260" Ref="J3"  Part="1" 
F 0 "J3" V 4750 8700 50  0000 L CNN
F 1 "Conn_01x08_Female" V 4850 8350 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 4950 7900 50  0001 C CNN
F 3 "~" H 4950 7900 50  0001 C CNN
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
RPP
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
P 1700 7200
F 0 "H2" H 1800 7250 50  0000 L CNN
F 1 "GND PAD" H 1800 7157 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 1700 7200 50  0001 C CNN
F 3 "~" H 1700 7200 50  0001 C CNN
	1    1700 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5E8DD364
P 1200 7200
F 0 "H1" H 1000 7250 50  0000 L CNN
F 1 "GND PAD" H 800 7150 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 1200 7200 50  0001 C CNN
F 3 "~" H 1200 7200 50  0001 C CNN
	1    1200 7200
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
	1450 7450 1450 7550
Wire Wire Line
	2250 7550 2250 7450
Text Notes 1700 7950 0    50   ~ 0
HIGH POWER\nSYSTEM GROUND
$Comp
L power:GND #PWR0115
U 1 1 5E8C20D5
P 2250 7550
AR Path="/5E7548ED/5E8C20D5" Ref="#PWR0115"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E8C20D5" Ref="#PWR?"  Part="1" 
F 0 "#PWR0115" H 2250 7300 50  0001 C CNN
F 1 "GND" H 2255 7375 50  0000 C CNN
F 2 "" H 2250 7550 50  0001 C CNN
F 3 "" H 2250 7550 50  0001 C CNN
	1    2250 7550
	1    0    0    -1  
$EndComp
Text Notes 600  7950 0    50   ~ 0
DIGITAL\nLOGIC GROUND
Connection ~ 1450 7450
Wire Wire Line
	1450 7450 2250 7450
$Comp
L power:GND #PWR0167
U 1 1 5E93E34A
P 3850 5900
AR Path="/5E7548ED/5E93E34A" Ref="#PWR0167"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E93E34A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0167" H 3850 5650 50  0001 C CNN
F 1 "GND" H 3855 5725 50  0000 C CNN
F 2 "" H 3850 5900 50  0001 C CNN
F 3 "" H 3850 5900 50  0001 C CNN
	1    3850 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5850 3850 5900
$Comp
L Device:C C?
U 1 1 5EBB7068
P 7750 6150
AR Path="/5E755787/5EBB7068" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EBB7068" Ref="C?"  Part="1" 
AR Path="/5EA63449/5EBB7068" Ref="C?"  Part="1" 
AR Path="/5E7548ED/5EBB7068" Ref="C3"  Part="1" 
F 0 "C3" H 7841 6196 50  0000 L CNN
F 1 "1uF" H 7841 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7750 6150 50  0001 C CNN
F 3 "~" H 7750 6150 50  0001 C CNN
	1    7750 6150
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EBB706E
P 9550 5000
AR Path="/5E755787/5EBB706E" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EBB706E" Ref="C?"  Part="1" 
AR Path="/5EA63449/5EBB706E" Ref="C?"  Part="1" 
AR Path="/5E7548ED/5EBB706E" Ref="C2"  Part="1" 
F 0 "C2" H 9641 5046 50  0000 L CNN
F 1 "1uF" H 9641 4955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9550 5000 50  0001 C CNN
F 3 "~" H 9550 5000 50  0001 C CNN
	1    9550 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 7300 1200 7350
Wire Wire Line
	700  7450 1450 7450
Wire Wire Line
	700  7450 700  7550
$Comp
L Device:Q_PMOS_DGS Q22
U 1 1 5F522D96
P 2250 5350
F 0 "Q22" V 2596 5350 50  0000 C CNN
F 1 "BSS315PH6327XTSA1" V 2503 5350 50  0000 C CNN
F 2 "Digikey:SOT-23-3" H 2450 5450 50  0001 C CNN
F 3 "https://www.infineon.com/dgdl/BSS315P_Rev2.3.pdf?folderId=db3a304314dca38901154a72e3951a65&fileId=db3a304330f686060130ff61f31b7f06" H 2250 5350 50  0001 C CNN
	1    2250 5350
	0    -1   -1   0   
$EndComp
Text Notes 2050 5400 0    50   ~ 0
D
Text Notes 2300 5550 0    50   ~ 0
G
Text Notes 2400 5400 0    50   ~ 0
S
Wire Wire Line
	2250 5550 2250 5600
Wire Wire Line
	2250 5600 2600 5600
Wire Wire Line
	2600 5600 2600 5550
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
	1900 5950 1900 5750
Wire Wire Line
	1900 5450 1900 5250
Wire Wire Line
	1900 5250 2050 5250
Connection ~ 1900 5250
$Comp
L Jumper:SolderJumper_2_Bridged JP1
U 1 1 5F553296
P 950 5350
F 0 "JP1" H 950 5500 50  0000 C CNN
F 1 "USB_Power_Enable" H 850 5600 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 950 5350 50  0001 C CNN
F 3 "~" H 950 5350 50  0001 C CNN
	1    950  5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	650  5100 650  5350
Wire Wire Line
	650  5350 800  5350
Wire Wire Line
	1100 5350 1250 5350
Text Notes 600  6550 0    50   ~ 0
OPTIONAL USB BYPASS:\nAs shipped, switch in\nOFF position connects\nto USB power through\nthe Teensy.\nOPTIONAL:\nCut SJ if you want the \nOFF position to not\nbe powered from\nTeensy USB connector.
Text Notes 1050 4850 0    50   ~ 0
SILKSCREEN: ON (BAT) / OFF (USB)
Text GLabel 4100 5250 2    50   Output ~ 0
+VSW
Text GLabel 4900 4800 1    50   Input ~ 0
+VSW
$Comp
L power:GND #PWR0113
U 1 1 5F56E724
P 5500 6400
AR Path="/5E7548ED/5F56E724" Ref="#PWR0113"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5F56E724" Ref="#PWR?"  Part="1" 
F 0 "#PWR0113" H 5500 6150 50  0001 C CNN
F 1 "GND" H 5505 6225 50  0000 C CNN
F 2 "" H 5500 6400 50  0001 C CNN
F 3 "" H 5500 6400 50  0001 C CNN
	1    5500 6400
	1    0    0    -1  
$EndComp
Text Notes 5850 6550 0    50   ~ 0
HIGH POWER SYSTEM GROUND
Connection ~ 3850 5550
Text Notes 3500 2200 0    157  ~ 31
7.5V MAX !!!
Text Notes 3750 1900 0    50   ~ 0
SILKSCREEN: +/- pins
Text GLabel 4800 7450 1    50   Input ~ 0
RPP
Wire Wire Line
	3550 5250 3850 5250
$Comp
L Jumper:SolderJumper_2_Bridged JP2
U 1 1 5F4B1331
P 3400 5250
F 0 "JP2" H 3400 5350 50  0000 C CNN
F 1 "Opt. Cur. Mon." H 3400 5100 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 3400 5250 50  0001 C CNN
F 3 "~" H 3400 5250 50  0001 C CNN
	1    3400 5250
	1    0    0    -1  
$EndComp
Text Notes 2900 6050 0    50   ~ 0
OPTIONAL CUR. MON.:\n1) Open Cur. Mon. SJ\n2) Insert 0.01 Ohm\n    -or-\n2) Ammeter current\nbetween RPP & +VSW 
Text Notes 4850 4450 0    118  ~ 0
5V POWER SUPPLY
Wire Wire Line
	2900 4950 3000 4950
Text GLabel 7150 4600 2    50   Output ~ 0
5V0
Text GLabel 5100 7450 1    50   Input ~ 0
5V0
Text GLabel 4650 7450 1    50   Input ~ 0
TEENSY_VUSB
Text GLabel 650  5100 1    50   Input ~ 0
TEENSY_VUSB
Wire Wire Line
	1450 7350 1200 7350
$Comp
L power:GNDD #PWR0103
U 1 1 5D31E05B
P 700 7550
AR Path="/5E7548ED/5D31E05B" Ref="#PWR0103"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5D31E05B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0103" H 700 7300 50  0001 C CNN
F 1 "GNDD" H 704 7395 50  0000 C CNN
F 2 "" H 700 7550 50  0001 C CNN
F 3 "" H 700 7550 50  0001 C CNN
	1    700  7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 7350 1450 7450
Wire Wire Line
	1450 7350 1700 7350
Wire Wire Line
	1700 7350 1700 7300
Connection ~ 1450 7350
Text Notes 4150 5750 0    50   ~ 0
1%
Text Notes 4150 5450 0    50   ~ 0
1%
Text Notes 1950 5500 0    50   ~ 0
P-FET
Text Notes 750  4100 0    157  ~ 31
*** ALL CONFIGURATIONS REQUIRED CUTTING VIN-VUSB TRACE ON TEENSY ***
Text GLabel 5400 7450 1    50   Output ~ 0
V_MON
Text Notes 8900 2200 0    157  ~ 31
1S ONLY !!!
Text Notes 6800 3050 0    50   ~ 0
ALTERNATE CONNECTOR - JST-PH 2-PIN SMT\nAdafruit 1769 Right Angle Battery Cable Socket\nJST S2B-PH-SM4-TB(LF)(SN), Digi-Key 455-1749-1-ND
$Comp
L CORE_64_LIBRARY:Micro_LiPo_Charger U6
U 1 1 5F54D780
P 5800 3000
F 0 "U6" V 5650 3200 50  0000 L CNN
F 1 "Micro_LiPo_Charger" V 5500 2650 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Micro_LiPo_Charger" H 5800 3000 50  0001 C CNN
F 3 "" H 5800 3000 50  0001 C CNN
	1    5800 3000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0150
U 1 1 5F5509C3
P 5900 3450
AR Path="/5E7548ED/5F5509C3" Ref="#PWR0150"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5F5509C3" Ref="#PWR?"  Part="1" 
F 0 "#PWR0150" H 5900 3200 50  0001 C CNN
F 1 "GND" H 5905 3275 50  0000 C CNN
F 2 "" H 5900 3450 50  0001 C CNN
F 3 "" H 5900 3450 50  0001 C CNN
	1    5900 3450
	1    0    0    -1  
$EndComp
Text GLabel 6500 3300 2    50   Input ~ 0
TEENSY_VUSB
$Comp
L power:-BATT #PWR0153
U 1 1 5F5623DF
P 5600 3450
AR Path="/5E7548ED/5F5623DF" Ref="#PWR0153"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5F5623DF" Ref="#PWR?"  Part="1" 
F 0 "#PWR0153" H 5600 3300 50  0001 C CNN
F 1 "-BATT" H 5615 3623 50  0000 C CNN
F 2 "" H 5600 3450 50  0001 C CNN
F 3 "" H 5600 3450 50  0001 C CNN
	1    5600 3450
	-1   0    0    1   
$EndComp
$Comp
L power:+BATT #PWR0154
U 1 1 5F56292A
P 5350 3300
AR Path="/5E7548ED/5F56292A" Ref="#PWR0154"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5F56292A" Ref="#PWR?"  Part="1" 
F 0 "#PWR0154" H 5350 3150 50  0001 C CNN
F 1 "+BATT" H 5365 3473 50  0000 C CNN
F 2 "" H 5350 3300 50  0001 C CNN
F 3 "" H 5350 3300 50  0001 C CNN
	1    5350 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3300 5600 3300
Wire Wire Line
	5800 3300 5800 3400
Wire Wire Line
	5800 3400 5900 3400
Wire Wire Line
	5900 3400 5900 3450
Wire Wire Line
	5700 3300 5700 3400
Wire Wire Line
	5700 3400 5600 3400
Wire Wire Line
	5600 3400 5600 3450
$Comp
L Connector:Conn_01x02_Male J9
U 1 1 5F5849A5
P 7450 3350
F 0 "J9" H 7450 3450 50  0000 C CNN
F 1 "JST-PH 2-PIN" H 7500 3150 50  0000 C CNN
F 2 "Connector_JST:JST_PH_S2B-PH-SM4-TB_1x02-1MP_P2.00mm_Horizontal" H 7450 3350 50  0001 C CNN
F 3 "~" H 7450 3350 50  0001 C CNN
	1    7450 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0156
U 1 1 5F586B8B
P 8200 3350
AR Path="/5E7548ED/5F586B8B" Ref="#PWR0156"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5F586B8B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0156" H 8200 3200 50  0001 C CNN
F 1 "+BATT" H 8215 3523 50  0000 C CNN
F 2 "" H 8200 3350 50  0001 C CNN
F 3 "" H 8200 3350 50  0001 C CNN
	1    8200 3350
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR0159
U 1 1 5F586B91
P 8200 3450
AR Path="/5E7548ED/5F586B91" Ref="#PWR0159"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5F586B91" Ref="#PWR?"  Part="1" 
F 0 "#PWR0159" H 8200 3300 50  0001 C CNN
F 1 "-BATT" H 8215 3623 50  0000 C CNN
F 2 "" H 8200 3450 50  0001 C CNN
F 3 "" H 8200 3450 50  0001 C CNN
	1    8200 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	7650 3350 8200 3350
Wire Wire Line
	7650 3450 8200 3450
Text Notes 1850 6550 0    50   ~ 0
OPTIONAL FET PROTECT:\n1) .1uF Cap. on left\n2) 100k Res. on bottom\n3) 10V Zener on right
Wire Wire Line
	2450 5250 2600 5250
$Comp
L Jumper:SolderJumper_2_Bridged JP7
U 1 1 5F5C5752
P 2250 5800
F 0 "JP7" V 2300 5650 50  0000 C CNN
F 1 "Opt. Res." V 2200 5550 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 2250 5800 50  0001 C CNN
F 3 "~" H 2250 5800 50  0001 C CNN
	1    2250 5800
	0    -1   -1   0   
$EndComp
Connection ~ 2250 5950
$Comp
L Jumper:SolderJumper_2_Open JP5
U 1 1 5F5C8845
P 2600 5400
F 0 "JP5" V 2553 5473 50  0000 L CNN
F 1 "Opt. Zen." V 2646 5473 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2600 5400 50  0001 C CNN
F 3 "~" H 2600 5400 50  0001 C CNN
	1    2600 5400
	0    1    1    0   
$EndComp
Connection ~ 2600 5250
Wire Wire Line
	2600 5250 2900 5250
$Comp
L Jumper:SolderJumper_2_Open JP6
U 1 1 5F5C90A9
P 1900 5600
F 0 "JP6" V 1800 5400 50  0000 L CNN
F 1 "Opt. Cap." V 1900 5200 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 1900 5600 50  0001 C CNN
F 3 "~" H 1900 5600 50  0001 C CNN
	1    1900 5600
	0    1    1    0   
$EndComp
$Comp
L S03B-PASK-2_LF__SN_:S03B-PASK-2_LF__SN_ J8
U 1 1 5F4CF3FA
P 1550 2250
F 0 "J8" H 1840 1782 50  0000 C CNN
F 1 "S03B-PASK-2_LF__SN_" H 1840 1875 50  0000 C CNN
F 2 "JST_S03B-PASK-2_LF__SN_:S03BPASK2LFSN" H 2200 2350 50  0001 L CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/ePA-F.pdf" H 2200 2250 50  0001 L CNN
F 4 "JST (JAPAN SOLDERLESS TERMINALS) - S03B-PASK-2(LF)(SN) - HEADER, PA, 3WAY, SIDE, 2MM" H 2200 2150 50  0001 L CNN "Description"
F 5 "6.5" H 2200 2050 50  0001 L CNN "Height"
F 6 "JST (JAPAN SOLDERLESS TERMINALS)" H 2200 1950 50  0001 L CNN "Manufacturer_Name"
F 7 "S03B-PASK-2(LF)(SN)" H 2200 1850 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "S03B-PASK-2(LF)(SN)" H 2200 1750 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/s03b-pask-2-lf-sn/jst-manufacturing" H 2200 1650 50  0001 L CNN "Arrow Price/Stock"
F 10 "" H 2200 1550 50  0001 L CNN "Mouser Part Number"
F 11 "" H 2200 1450 50  0001 L CNN "Mouser Price/Stock"
	1    1550 2250
	-1   0    0    1   
$EndComp
Text Notes 9150 1900 0    50   ~ 0
SILKSCREEN: +/- pins
Text Notes 5300 2450 0    50   ~ 0
TWO OPTIONS\n\n1) 1S LiPo + Charger (most convenient)\n     A) Choose a 1S Lipo with built-in cell over/under voltage protection. Recommended \n     B) Choose a charger. The logic board is designed to accept this one: https://www.adafruit.com/product/1904\n     C) 4-pin header to connector charger to the logic board. Or solder direct to logic board.\n\n2) 1S LiPo only (flexible, choose your own connector)\n     A) Choose a 1S LiPo with protection circuit, up to 50 x 55 x 12mm\n\nINSTRUCTIONS\nA) Remove the 4x “AAA” battery pack. Reuse the connector if you want to.\nB) Install the charge manager if you want to.\nC) Install the 1S LiPo with double-sided tape.\n\n* The LiPo charger 5V pin is also connected to the Teensy USB port.\n* Connecting a USB cable to the Teensy will power the board, charge the battery\n* and connect to the serial port of the Teensy. Connecting a USB cable to the LiPO\n* charger will ONLY charge the battery and power the logic board.
Wire Wire Line
	4500 7650 4650 7650
Wire Wire Line
	4650 7600 4750 7600
Wire Wire Line
	4800 7550 4850 7550
Wire Wire Line
	4950 7450 4950 7700
$Comp
L Jumper:SolderJumper_2_Bridged JP8
U 1 1 5F4F1B0D
P 6250 3300
F 0 "JP8" H 6250 3200 50  0000 C CNN
F 1 "Teensy_Charge_Enable" H 6050 3400 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 6250 3300 50  0001 C CNN
F 3 "~" H 6250 3300 50  0001 C CNN
	1    6250 3300
	-1   0    0    1   
$EndComp
Text Notes 6050 3700 0    50   ~ 0
OPT: Open SJ to\ndisable charging\nfrom Teensy USB.
Wire Wire Line
	5900 3300 6100 3300
Wire Wire Line
	6400 3300 6500 3300
Text Notes 6300 6750 0    50   ~ 0
All non-polarized capacitors are ceramic unless otherwise noted.
$Comp
L NCP176AMX330TCG:NCP176AMX330TCG IC1
U 1 1 5F5A7E01
P 9250 6000
F 0 "IC1" H 9850 6268 50  0000 C CNN
F 1 "NCP176AMX330TCG" H 9850 6175 50  0000 C CNN
F 2 "NCP176AMX330TCG:NCP176AMX330TCG" H 10300 6100 50  0001 L CNN
F 3 "https://www.mouser.com/datasheet/2/308/NCP176-D-1551588.pdf" H 10300 6000 50  0001 L CNN
F 4 "ON Semiconductor NCP176AMX330TCG, LDO Voltage Regulator, 500mA, 3.3 V +/-0.8%, 1.4  5.5 Vin, 6-Pin XDFN" H 10300 5900 50  0001 L CNN "Description"
F 5 "0.45" H 10300 5800 50  0001 L CNN "Height"
F 6 "ON Semiconductor" H 10300 5700 50  0001 L CNN "Manufacturer_Name"
F 7 "NCP176AMX330TCG" H 10300 5600 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "NCP176AMX330TCG" H 10300 5500 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/ncp176amx330tcg/on-semiconductor" H 10300 5400 50  0001 L CNN "Arrow Price/Stock"
F 10 "863-NCP176AMX330TCG" H 10300 5300 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.com/Search/Refine.aspx?Keyword=863-NCP176AMX330TCG" H 10300 5200 50  0001 L CNN "Mouser Price/Stock"
	1    9250 6000
	-1   0    0    -1  
$EndComp
$Comp
L TPS7A0533PDBVR:TPS7A0533PDBVR IC2
U 1 1 5F5B23D2
P 8350 5000
F 0 "IC2" H 8850 5268 50  0000 C CNN
F 1 "TPS7A0533PDBVR" H 8850 5175 50  0000 C CNN
F 2 "TPS7A0533PDBVR:SOT95P280X145-5N" H 9200 5100 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/tps7a05" H 9200 5000 50  0001 L CNN
F 4 "1-A, ultra-low-IQ, 200-mA low-dropout (LDO) regulator in a small-sized package" H 9200 4900 50  0001 L CNN "Description"
F 5 "1.45" H 9200 4800 50  0001 L CNN "Height"
F 6 "Texas Instruments" H 9200 4700 50  0001 L CNN "Manufacturer_Name"
F 7 "TPS7A0533PDBVR" H 9200 4600 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "TPS7A0533PDBVR" H 9200 4500 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/tps7a0533pdbvr/texas-instruments" H 9200 4400 50  0001 L CNN "Arrow Price/Stock"
F 10 "595-TPS7A0533PDBVR" H 9200 4300 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TPS7A0533PDBVR?qs=vdi0iO8H4N0h9F4GOtQJBA%3D%3D" H 9200 4200 50  0001 L CNN "Mouser Price/Stock"
	1    8350 5000
	1    0    0    -1  
$EndComp
Text Notes 8250 5650 0    50   ~ 0
Preferred, TINY
Text Notes 8550 4650 0    50   ~ 0
Alternate, larger
Wire Wire Line
	7900 5850 7900 5950
$Comp
L power:GND #PWR0119
U 1 1 5F5C202C
P 8050 5300
AR Path="/5E7548ED/5F5C202C" Ref="#PWR0119"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5F5C202C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0119" H 8050 5050 50  0001 C CNN
F 1 "GND" H 8055 5125 50  0000 C CNN
F 2 "" H 8050 5300 50  0001 C CNN
F 3 "" H 8050 5300 50  0001 C CNN
	1    8050 5300
	1    0    0    -1  
$EndComp
Text Notes 8300 5400 0    50   ~ 0
HIGH POWER SYSTEM GROUND
Wire Wire Line
	9250 6100 9300 6100
Wire Wire Line
	9300 6100 9300 6000
Wire Wire Line
	9300 6000 9250 6000
Connection ~ 9300 6000
$Comp
L Device:C C?
U 1 1 5F5D4D85
P 9550 6200
AR Path="/5E755787/5F5D4D85" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5F5D4D85" Ref="C?"  Part="1" 
AR Path="/5EA63449/5F5D4D85" Ref="C?"  Part="1" 
AR Path="/5E7548ED/5F5D4D85" Ref="C14"  Part="1" 
F 0 "C14" H 9641 6246 50  0000 L CNN
F 1 "1uF" H 9641 6155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9550 6200 50  0001 C CNN
F 3 "~" H 9550 6200 50  0001 C CNN
	1    9550 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F5DC13F
P 8050 5000
AR Path="/5E755787/5F5DC13F" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5F5DC13F" Ref="C?"  Part="1" 
AR Path="/5EA63449/5F5DC13F" Ref="C?"  Part="1" 
AR Path="/5E7548ED/5F5DC13F" Ref="C12"  Part="1" 
F 0 "C12" H 8141 5046 50  0000 L CNN
F 1 "1uF" H 8141 4955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8050 5000 50  0001 C CNN
F 3 "~" H 8050 5000 50  0001 C CNN
	1    8050 5000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9250 6300 9400 6300
Wire Wire Line
	9400 6300 9400 5850
Wire Wire Line
	9300 6000 9550 6000
Text GLabel 9400 5850 1    50   Input ~ 0
+VSW
Wire Wire Line
	9550 6000 9550 6050
Connection ~ 9550 6000
Wire Wire Line
	9550 6350 9550 6400
$Comp
L power:GND #PWR0125
U 1 1 5F5EF2E5
P 7900 6400
AR Path="/5E7548ED/5F5EF2E5" Ref="#PWR0125"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5F5EF2E5" Ref="#PWR?"  Part="1" 
F 0 "#PWR0125" H 7900 6150 50  0001 C CNN
F 1 "GND" H 7905 6225 50  0000 C CNN
F 2 "" H 7900 6400 50  0001 C CNN
F 3 "" H 7900 6400 50  0001 C CNN
	1    7900 6400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8050 6100 7900 6100
Wire Wire Line
	8050 6200 7900 6200
Wire Wire Line
	7900 6200 7900 6350
Wire Wire Line
	7750 6000 7750 5950
Wire Wire Line
	7750 5950 7900 5950
Connection ~ 7900 5950
Wire Wire Line
	7900 5950 7900 6100
Wire Wire Line
	7750 6300 7750 6350
Wire Wire Line
	7750 6350 7900 6350
Connection ~ 7900 6350
Wire Wire Line
	7900 6350 7900 6400
Wire Wire Line
	9350 5100 9400 5100
$Comp
L power:GND #PWR0160
U 1 1 5F5FF918
P 9550 5250
AR Path="/5E7548ED/5F5FF918" Ref="#PWR0160"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5F5FF918" Ref="#PWR?"  Part="1" 
F 0 "#PWR0160" H 9550 5000 50  0001 C CNN
F 1 "GND" H 9555 5075 50  0000 C CNN
F 2 "" H 9550 5250 50  0001 C CNN
F 3 "" H 9550 5250 50  0001 C CNN
	1    9550 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 5100 9400 4750
Wire Wire Line
	9400 4750 9550 4750
Wire Wire Line
	9550 4750 9550 4850
Connection ~ 9550 4750
Wire Wire Line
	9550 5150 9550 5250
Wire Wire Line
	8050 4850 8050 4800
Wire Wire Line
	8050 4800 8300 4800
Wire Wire Line
	8300 5000 8350 5000
Wire Wire Line
	8300 5000 8300 5200
Wire Wire Line
	8300 5200 8350 5200
Connection ~ 8300 5000
Wire Wire Line
	8300 4700 8300 4800
Connection ~ 8300 4800
Wire Wire Line
	8300 4800 8300 5000
Wire Wire Line
	8350 5100 8200 5100
Wire Wire Line
	8200 5100 8200 5250
Wire Wire Line
	8050 5150 8050 5250
Wire Wire Line
	8200 5250 8050 5250
Connection ~ 8050 5250
Wire Wire Line
	8050 5250 8050 5300
$Comp
L Jumper:SolderJumper_3_Open JP9
U 1 1 5F67458E
P 9850 5550
F 0 "JP9" V 9750 5650 50  0000 L CNN
F 1 "3V3_Select" V 9600 5100 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm" H 9850 5550 50  0001 C CNN
F 3 "~" H 9850 5550 50  0001 C CNN
	1    9850 5550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10100 5550 10000 5550
Wire Wire Line
	9850 5350 9850 4750
Wire Wire Line
	9550 4750 9850 4750
Wire Wire Line
	9850 6000 9850 5750
Wire Wire Line
	9550 6000 9850 6000
Text Notes 10000 6150 0    50   ~ 0
Must\nSelect\nOne
Text GLabel 8300 4700 1    50   Input ~ 0
5V0
Text GLabel 7900 5850 1    50   Input ~ 0
5V0
$Comp
L Device:C C?
U 1 1 5F69BA6F
P 7450 4850
AR Path="/5E755787/5F69BA6F" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5F69BA6F" Ref="C?"  Part="1" 
AR Path="/5EA63449/5F69BA6F" Ref="C?"  Part="1" 
AR Path="/5E7548ED/5F69BA6F" Ref="C7"  Part="1" 
F 0 "C7" H 7541 4896 50  0000 L CNN
F 1 "?uF" H 7541 4805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7450 4850 50  0001 C CNN
F 3 "~" H 7450 4850 50  0001 C CNN
	1    7450 4850
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F69C890
P 4900 5150
AR Path="/5E755787/5F69C890" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5F69C890" Ref="C?"  Part="1" 
AR Path="/5EA63449/5F69C890" Ref="C?"  Part="1" 
AR Path="/5E7548ED/5F69C890" Ref="C13"  Part="1" 
F 0 "C13" H 4991 5196 50  0000 L CNN
F 1 "?uF" H 4991 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4900 5150 50  0001 C CNN
F 3 "~" H 4900 5150 50  0001 C CNN
	1    4900 5150
	-1   0    0    -1  
$EndComp
$Comp
L LP3961EMP-5.0:LP3961EMP-5.0 IC3
U 1 1 5F69DC3B
P 5700 5250
F 0 "IC3" H 6300 5518 50  0000 C CNN
F 1 "LP3961EMP-5.0" H 6300 5425 50  0000 C CNN
F 2 "LP3961EMP-5.0:SOT150P696X180-5N" H 6750 5350 50  0001 L CNN
F 3 "" H 6750 5250 50  0001 L CNN
F 4 "Fast Ultra Low Dropout Linear Regulators" H 6750 5150 50  0001 L CNN "Description"
F 5 "" H 6750 5050 50  0001 L CNN "Height"
F 6 "Texas Instruments" H 6750 4950 50  0001 L CNN "Manufacturer_Name"
F 7 "LP3961EMP-5.0" H 6750 4850 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "LP3961EMP-5.0" H 6750 4750 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/lp3961emp-5.0/texas-instruments" H 6750 4650 50  0001 L CNN "Arrow Price/Stock"
F 10 "926-LP3961EMP-50" H 6750 4550 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.com/Search/Refine.aspx?Keyword=926-LP3961EMP-50" H 6750 4450 50  0001 L CNN "Mouser Price/Stock"
	1    5700 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F6A75BC
P 5200 5450
AR Path="/5E755787/5F6A75BC" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5F6A75BC" Ref="R?"  Part="1" 
AR Path="/5E7548ED/5F6A75BC" Ref="R?"  Part="1" 
F 0 "R?" H 5270 5496 50  0000 L CNN
F 1 "10k" H 5270 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5130 5450 50  0001 C CNN
F 3 "~" H 5200 5450 50  0001 C CNN
	1    5200 5450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
