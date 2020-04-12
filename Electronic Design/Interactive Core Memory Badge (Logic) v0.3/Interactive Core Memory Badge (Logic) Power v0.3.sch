EESchema Schematic File Version 4
LIBS:Interactive Core Memory Badge (Logic) Main v0.3-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title "Core 64 - Power Schematic"
Date "2020-03-15"
Rev "0.3"
Comp "Andy Geppert - Machine Ideas, LLC"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+BATT #PWR0101
U 1 1 5D2956F9
P 1650 4500
AR Path="/5E7548ED/5D2956F9" Ref="#PWR0101"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5D2956F9" Ref="#PWR?"  Part="1" 
F 0 "#PWR0101" H 1650 4350 50  0001 C CNN
F 1 "+BATT" H 1665 4673 50  0000 C CNN
F 2 "" H 1650 4500 50  0001 C CNN
F 3 "" H 1650 4500 50  0001 C CNN
	1    1650 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:Polyfuse F1
U 1 1 5D3009B0
P 3000 4800
AR Path="/5E7548ED/5D3009B0" Ref="F1"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5D3009B0" Ref="F?"  Part="1" 
F 0 "F1" V 2775 4800 50  0000 C CNN
F 1 "Polyfuse" V 2866 4800 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric" H 3050 4600 50  0001 L CNN
F 3 "~" H 3000 4800 50  0001 C CNN
	1    3000 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 4800 2850 4800
$Comp
L power:+VSW #PWR0102
U 1 1 5D305A98
P 4900 4600
AR Path="/5E7548ED/5D305A98" Ref="#PWR0102"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5D305A98" Ref="#PWR?"  Part="1" 
F 0 "#PWR0102" H 4900 4450 50  0001 C CNN
F 1 "+VSW" H 5050 4700 50  0000 C CNN
F 2 "" H 4900 4600 50  0001 C CNN
F 3 "" H 4900 4600 50  0001 C CNN
	1    4900 4600
	1    0    0    -1  
$EndComp
Text GLabel 1000 4900 0    50   Input ~ 0
5V_USB
$Comp
L power:-BATT #PWR0104
U 1 1 5D30A5B6
P 900 6850
AR Path="/5E7548ED/5D30A5B6" Ref="#PWR0104"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5D30A5B6" Ref="#PWR?"  Part="1" 
F 0 "#PWR0104" H 900 6700 50  0001 C CNN
F 1 "-BATT" H 915 7023 50  0000 C CNN
F 2 "" H 900 6850 50  0001 C CNN
F 3 "" H 900 6850 50  0001 C CNN
	1    900  6850
	-1   0    0    1   
$EndComp
Text Notes 7800 4400 0    50   ~ 0
CORES AND ACCESSORIES
$Comp
L Switch:SW_SPDT SW1
U 1 1 5E9AF194
P 2550 4800
AR Path="/5E7548ED/5E9AF194" Ref="SW1"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E9AF194" Ref="SW?"  Part="1" 
F 0 "SW1" H 2550 4471 50  0000 C CNN
F 1 "JS102011SAQN" H 2550 4564 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPDT_CK-JS102011SAQN" H 2550 4800 50  0001 C CNN
F 3 "~" H 2550 4800 50  0001 C CNN
	1    2550 4800
	-1   0    0    1   
$EndComp
Text Notes 2800 5000 0    50   ~ 0
Reverse polarity protection
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U1
U 1 1 5E7B5B14
P 7650 4900
AR Path="/5E7548ED/5E7B5B14" Ref="U1"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E7B5B14" Ref="U?"  Part="1" 
F 0 "U1" H 7650 5145 50  0000 C CNN
F 1 "LD1117S33TR_SOT223" H 7650 5052 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 7650 5100 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 7750 4650 50  0001 C CNN
	1    7650 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4900 7350 4900
Text Notes 750  2200 0    50   ~ 0
MODE 1\n  BUILT-IN BATTERY PACK (Keystone 2482CN) WITH 4X “AAA” ALKALINE OR NIMH CELLS\n  …or 3-4 “AA” alkaline/NiMh, or 1S LiPo, but the logic board does not recharge these batteries automatically from USB power.\n  CONNECTED TO 3 PIN input for Battery Pack\n  On PCB: SMT CONN, 3 TERM, HORZ, 2mm spacing, detent lock\n  Such as: Keystone 976, JST PA BM03B-PASS-1-TFT(LF)(SN), Adafruit 4391 (JST PH 3-pin aka STEMMA)\n  from KAWEEI Technology CW2001-03T-H01-BD-A, 
Text Notes 800  3250 0    50   ~ 0
MODE 2\n  USB 5V through Teensy LC or 3.2 \n  VUSB is 5V from USB cable.
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5E78F60B
P 4200 2700
AR Path="/5E7548ED/5E78F60B" Ref="J4"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E78F60B" Ref="J?"  Part="1" 
F 0 "J4" H 4308 2885 50  0000 C CNN
F 1 "Conn_01x02_Male" H 4308 2792 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical_SMD_Pin1Left" H 4200 2700 50  0001 C CNN
F 3 "~" H 4200 2700 50  0001 C CNN
	1    4200 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0105
U 1 1 5E791B5B
P 2400 2550
AR Path="/5E7548ED/5E791B5B" Ref="#PWR0105"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E791B5B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0105" H 2400 2400 50  0001 C CNN
F 1 "+BATT" H 2415 2723 50  0000 C CNN
F 2 "" H 2400 2550 50  0001 C CNN
F 3 "" H 2400 2550 50  0001 C CNN
	1    2400 2550
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR0106
U 1 1 5E792BE2
P 2400 2750
AR Path="/5E7548ED/5E792BE2" Ref="#PWR0106"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E792BE2" Ref="#PWR?"  Part="1" 
F 0 "#PWR0106" H 2400 2600 50  0001 C CNN
F 1 "-BATT" H 2415 2923 50  0000 C CNN
F 2 "" H 2400 2750 50  0001 C CNN
F 3 "" H 2400 2750 50  0001 C CNN
	1    2400 2750
	-1   0    0    1   
$EndComp
$Comp
L power:+BATT #PWR0107
U 1 1 5E795118
P 4950 2700
AR Path="/5E7548ED/5E795118" Ref="#PWR0107"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E795118" Ref="#PWR?"  Part="1" 
F 0 "#PWR0107" H 4950 2550 50  0001 C CNN
F 1 "+BATT" H 4965 2873 50  0000 C CNN
F 2 "" H 4950 2700 50  0001 C CNN
F 3 "" H 4950 2700 50  0001 C CNN
	1    4950 2700
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR0108
U 1 1 5E79511E
P 4950 2800
AR Path="/5E7548ED/5E79511E" Ref="#PWR0108"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E79511E" Ref="#PWR?"  Part="1" 
F 0 "#PWR0108" H 4950 2650 50  0001 C CNN
F 1 "-BATT" H 4965 2973 50  0000 C CNN
F 2 "" H 4950 2800 50  0001 C CNN
F 3 "" H 4950 2800 50  0001 C CNN
	1    4950 2800
	-1   0    0    1   
$EndComp
Text Notes 650  1550 0    50   ~ 0
TWO POWER MODES SELECTED BY DOUBLE-THROW SWITCH:
Text GLabel 4450 3800 0    50   Input ~ 0
TEENSY_VIN
Text GLabel 1600 3550 0    50   Input ~ 0
TEENSY_GND
Wire Wire Line
	1650 4500 1650 4700
Wire Wire Line
	1600 3400 2050 3400
Wire Wire Line
	1800 2750 2400 2750
Wire Wire Line
	1600 3550 2050 3550
Wire Wire Line
	4400 2700 4950 2700
Wire Wire Line
	4400 2800 4950 2800
Text GLabel 1600 3400 0    50   Input ~ 0
TEENSY_VUSB
Text GLabel 2050 3400 2    50   Output ~ 0
5V_USB
Wire Notes Line style solid
	600  1400 5900 1400
Wire Notes Line style solid
	5900 1400 5900 3950
Wire Notes Line style solid
	5900 3950 600  3950
Wire Notes Line style solid
	600  3950 600  1400
Text Notes 600  1200 0    100  ~ 0
TEENSY LC OR 3.2 AND ALKALINE/NIMH BATTERY PACK\n*** MUST CUT VIN-VUSB TRACE ON TEENSY ***\nTHIS IS THE STANDARD MANUFACTURED KIT CONFIGURATION
Text Notes 6150 1900 0    50   ~ 0
HACKER UPGRADE TO USE FEATHER-TEENSY ADAPTER BOARD REQUIRES:\nA) REPLACE THE ALKALINE/NIMH BATTERY PACK WITH 1S LIPO IN THE SAME POWER PORT, OR THE ALTERNATE PORT.\n  -or-\nB) REMOVE THE ALKALINE/NIMH BATTERY PACK AND CONNECT 1S LIPO DIRECTLY TO FEATHER JST-PH BATTERY/CHARGING PORT.
Text Notes 6050 1200 0    100  ~ 0
HACKER POWER OPTION: ADAFRUIT FEATHER WITH REQUIRED LIPO\n*** MUST REMOVE ALKALINE/NIMH BATTERY PACK ***\nUSER MODIFICATION REQUIRED
Wire Wire Line
	4450 3800 4750 3800
Wire Wire Line
	4900 4600 4900 4800
$Comp
L power:+VSW #PWR0110
U 1 1 5E849F38
P 4750 3800
AR Path="/5E7548ED/5E849F38" Ref="#PWR0110"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E849F38" Ref="#PWR?"  Part="1" 
F 0 "#PWR0110" H 4750 3650 50  0001 C CNN
F 1 "+VSW" H 4765 3973 50  0000 C CNN
F 2 "" H 4750 3800 50  0001 C CNN
F 3 "" H 4750 3800 50  0001 C CNN
	1    4750 3800
	1    0    0    -1  
$EndComp
Text Notes 3950 3500 0    50   ~ 0
BOTH MODES REQUIRE:\nVIN must be supplied TO the Teensy\n(because VIN-VUSB is cut) and the \nCore 64 Logic Board provides it here.
$Comp
L power:+VSW #PWR0113
U 1 1 5E8659D4
P 9750 5250
AR Path="/5E7548ED/5E8659D4" Ref="#PWR0113"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E8659D4" Ref="#PWR?"  Part="1" 
F 0 "#PWR0113" H 9750 5100 50  0001 C CNN
F 1 "+VSW" H 9765 5423 50  0000 C CNN
F 2 "" H 9750 5250 50  0001 C CNN
F 3 "" H 9750 5250 50  0001 C CNN
	1    9750 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4650 7200 4900
Text GLabel 8300 4900 2    50   Input ~ 0
3V3_800mA
Text Notes 600  4250 0    118  ~ 0
POWER SWITCH, POWER PROTECTION, VOLTAGE & CURRENT MONITOR
Text Notes 7050 4250 0    118  ~ 0
3.3V POWER SUPPLY
$Comp
L power:+VSW #PWR0114
U 1 1 5E89D125
P 1850 6450
AR Path="/5E7548ED/5E89D125" Ref="#PWR0114"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E89D125" Ref="#PWR?"  Part="1" 
F 0 "#PWR0114" H 1850 6300 50  0001 C CNN
F 1 "+VSW" H 1865 6623 50  0000 C CNN
F 2 "" H 1850 6450 50  0001 C CNN
F 3 "" H 1850 6450 50  0001 C CNN
	1    1850 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5E8C4F56
P 7650 5350
AR Path="/5E7548ED/5E8C4F56" Ref="#PWR0116"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E8C4F56" Ref="#PWR?"  Part="1" 
F 0 "#PWR0116" H 7650 5100 50  0001 C CNN
F 1 "GND" H 7655 5175 50  0000 C CNN
F 2 "" H 7650 5350 50  0001 C CNN
F 3 "" H 7650 5350 50  0001 C CNN
	1    7650 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5200 7650 5350
Wire Notes Line
	6050 1400 6050 3950
Wire Notes Line
	6050 3950 11200 3950
Wire Notes Line
	11200 3950 11200 1400
Wire Notes Line
	11200 1400 6050 1400
$Comp
L power:GND #PWR0117
U 1 1 5E952F27
P 2050 3550
AR Path="/5E7548ED/5E952F27" Ref="#PWR0117"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E952F27" Ref="#PWR?"  Part="1" 
F 0 "#PWR0117" H 2050 3300 50  0001 C CNN
F 1 "GND" H 2055 3375 50  0000 C CNN
F 2 "" H 2050 3550 50  0001 C CNN
F 3 "" H 2050 3550 50  0001 C CNN
	1    2050 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 5E90E57B
P 5400 4950
AR Path="/5E755787/5E90E57B" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E90E57B" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5E90E57B" Ref="C?"  Part="1" 
AR Path="/5E7548ED/5E90E57B" Ref="C3"  Part="1" 
F 0 "C3" H 5500 5050 50  0000 L CNN
F 1 "1000uF" H 5500 4950 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x10" H 5400 4950 50  0001 C CNN
F 3 "~" H 5400 4950 50  0001 C CNN
	1    5400 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5100 5400 5050
Wire Wire Line
	4900 4800 5400 4800
Text Notes 5850 5100 0    50   ~ 0
PLACE\nCAPACITOR\nNEAR\nLED MATRIX
Connection ~ 4900 4800
Wire Wire Line
	5400 4800 5400 4850
$Comp
L power:GND #PWR0119
U 1 1 5E9A5B3C
P 5400 5100
AR Path="/5E7548ED/5E9A5B3C" Ref="#PWR0119"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E9A5B3C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0119" H 5400 4850 50  0001 C CNN
F 1 "GND" H 5405 4925 50  0000 C CNN
F 2 "" H 5400 5100 50  0001 C CNN
F 3 "" H 5400 5100 50  0001 C CNN
	1    5400 5100
	1    0    0    -1  
$EndComp
Text Notes 7650 5650 0    50   ~ 0
HIGH POWER SYSTEM GROUND
Text Notes 5350 5400 0    50   ~ 0
HIGH POWER SYSTEM GROUND
Text Notes 2050 3850 0    50   ~ 0
HIGH POWER SYSTEM GROUND
Text Notes 4950 4650 0    50   ~ 0
LED ARRAY, TEENSY VIN
$Comp
L Device:R R?
U 1 1 5E800BC1
P 4900 4950
AR Path="/5E755787/5E800BC1" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E800BC1" Ref="R?"  Part="1" 
AR Path="/5E7548ED/5E800BC1" Ref="R51"  Part="1" 
F 0 "R51" H 4970 4996 50  0000 L CNN
F 1 "10k" H 4970 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4830 4950 50  0001 C CNN
F 3 "~" H 4900 4950 50  0001 C CNN
	1    4900 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E800BC7
P 4900 5250
AR Path="/5E755787/5E800BC7" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E800BC7" Ref="R?"  Part="1" 
AR Path="/5E7548ED/5E800BC7" Ref="R52"  Part="1" 
F 0 "R52" H 4970 5296 50  0000 L CNN
F 1 "10k" H 4970 5205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4830 5250 50  0001 C CNN
F 3 "~" H 4900 5250 50  0001 C CNN
	1    4900 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5100 4900 5100
Connection ~ 4900 5100
$Comp
L power:-BATT #PWR0155
U 1 1 5E805B02
P 4900 5400
AR Path="/5E7548ED/5E805B02" Ref="#PWR0155"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E805B02" Ref="#PWR?"  Part="1" 
F 0 "#PWR0155" H 4900 5250 50  0001 C CNN
F 1 "-BATT" H 4915 5573 50  0000 C CNN
F 2 "" H 4900 5400 50  0001 C CNN
F 3 "" H 4900 5400 50  0001 C CNN
	1    4900 5400
	-1   0    0    1   
$EndComp
Text GLabel 4750 5100 0    50   Output ~ 0
VSW_HALF_VOL_MONITOR
Wire Wire Line
	1650 6750 1250 6750
$Comp
L Transistor_FET:IRLML2060 Q1
U 1 1 5E770BB5
P 1850 6650
F 0 "Q1" V 2101 6650 50  0000 C CNN
F 1 "IRLML6344TRPBF" V 2194 6650 50  0000 C CNN
F 2 "Digikey:SOT-23-3" H 2050 6575 50  0001 L CIN
F 3 "https://www.digikey.com/product-detail/en/infineon-technologies/IRLML6344TRPBF/IRLML6344TRPBFCT-ND/2538168" H 1850 6650 50  0001 L CNN
	1    1850 6650
	0    -1   1    0   
$EndComp
Text Notes 2950 6200 0    118  ~ 0
ALL SYSTEM\nSTAR GROUNDING
$Comp
L Device:R R?
U 1 1 5D4B5807
P 4000 4800
AR Path="/5D4B5807" Ref="R?"  Part="1" 
AR Path="/5D254AE8/5D4B5807" Ref="R43"  Part="1" 
AR Path="/5E7548ED/5D4B5807" Ref="R1"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5D4B5807" Ref="R?"  Part="1" 
F 0 "R1" V 4100 4800 50  0000 C CNN
F 1 "0.001" V 3900 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3930 4800 50  0001 C CNN
F 3 "~" H 4000 4800 50  0001 C CNN
	1    4000 4800
	0    -1   -1   0   
$EndComp
Text Notes 3950 2450 0    50   ~ 0
ALTERNATE CONNECTOR - Generic SMT 2-pin .1” \nheader option for everything else. 
$Comp
L BM03B-PASS-1-TFT__LF__SN_:BM03B-PASS-1-TFT__LF__SN_ J3
U 1 1 5E870E95
P 1800 2550
F 0 "J3" H 2250 2700 50  0000 C CNN
F 1 "BM03B-PASS-1-TFT__LF__SN_" H 2200 2800 50  0000 C CNN
F 2 "JST_BM03B-PASS-1-TFT:BM03BPASS1TFTLFSN" H 2550 2650 50  0001 L CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/ePA-F.pdf" H 2550 2550 50  0001 L CNN
F 4 "Conn Shrouded Header HDR 3 POS 2mm Solder ST SMD T/R" H 2550 2450 50  0001 L CNN "Description"
F 5 "8.8" H 2550 2350 50  0001 L CNN "Height"
F 6 "JST (JAPAN SOLDERLESS TERMINALS)" H 2550 2250 50  0001 L CNN "Manufacturer_Name"
F 7 "BM03B-PASS-1-TFT (LF)(SN)" H 2550 2150 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 2550 2050 50  0001 L CNN "Mouser Part Number"
F 9 "" H 2550 1950 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 2550 1850 50  0001 L CNN "RS Part Number"
F 11 "" H 2550 1750 50  0001 L CNN "RS Price/Stock"
	1    1800 2550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1800 2550 2400 2550
$Comp
L Diode:MBR0520 D1
U 1 1 5E87F7F2
P 3400 4800
F 0 "D1" H 3400 4581 50  0000 C CNN
F 1 "MBR120" H 3400 4674 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 3400 4625 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/on-semiconductor/MBR120VLSFT1G/MBR120VLSFT1GOSCT-ND/893874" H 3400 4800 50  0001 C CNN
	1    3400 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 4800 3150 4800
$Comp
L Connector:Conn_01x08_Female J?
U 1 1 5E8E7260
P 10600 5150
AR Path="/5E75D6AB/5E8E7260" Ref="J?"  Part="1" 
AR Path="/5E7548ED/5E8E7260" Ref="J8"  Part="1" 
F 0 "J8" H 10550 5750 50  0000 L CNN
F 1 "Conn_01x08_Female" H 10400 5650 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 10600 5150 50  0001 C CNN
F 3 "~" H 10600 5150 50  0001 C CNN
	1    10600 5150
	1    0    0    -1  
$EndComp
Text GLabel 9850 4950 0    50   Input ~ 0
3V3_800mA
$Comp
L power:-BATT #PWR0123
U 1 1 5E8EB9C2
P 9750 4350
AR Path="/5E7548ED/5E8EB9C2" Ref="#PWR0123"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E8EB9C2" Ref="#PWR?"  Part="1" 
F 0 "#PWR0123" H 9750 4200 50  0001 C CNN
F 1 "-BATT" H 9765 4523 50  0000 C CNN
F 2 "" H 9750 4350 50  0001 C CNN
F 3 "" H 9750 4350 50  0001 C CNN
	1    9750 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	7950 4900 8300 4900
Wire Wire Line
	1650 4700 2350 4700
$Comp
L power:+BATT #PWR0157
U 1 1 5E8F0624
P 9750 5850
AR Path="/5E7548ED/5E8F0624" Ref="#PWR0157"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E8F0624" Ref="#PWR?"  Part="1" 
F 0 "#PWR0157" H 9750 5700 50  0001 C CNN
F 1 "+BATT" H 9765 6023 50  0000 C CNN
F 2 "" H 9750 5850 50  0001 C CNN
F 3 "" H 9750 5850 50  0001 C CNN
	1    9750 5850
	1    0    0    -1  
$EndComp
Text GLabel 9900 5950 0    50   Input ~ 0
5V_USB
Text GLabel 4350 4550 2    50   Output ~ 0
CUR_LOW
Text GLabel 3800 4550 2    50   Output ~ 0
CUR_HI
Wire Wire Line
	3800 4550 3700 4550
Wire Wire Line
	4250 4550 4350 4550
Text GLabel 9850 5400 0    50   Output ~ 0
CUR_LOW
Text GLabel 9850 5550 0    50   Output ~ 0
CUR_HI
Wire Wire Line
	9750 4350 10300 4350
Wire Wire Line
	10300 4350 10300 4850
Wire Wire Line
	10300 4850 10400 4850
Wire Wire Line
	9750 4650 10200 4650
Wire Wire Line
	10200 4650 10200 4950
Wire Wire Line
	10200 4950 10400 4950
Wire Wire Line
	9850 4950 10100 4950
Wire Wire Line
	10100 4950 10100 5050
Wire Wire Line
	10100 5050 10400 5050
Wire Wire Line
	9750 5250 9900 5250
Wire Wire Line
	9900 5250 9900 5150
Wire Wire Line
	9900 5150 10400 5150
Wire Wire Line
	9850 5550 10100 5550
Wire Wire Line
	10100 5550 10100 5350
Wire Wire Line
	10100 5350 10400 5350
Wire Wire Line
	9750 5850 10200 5850
Wire Wire Line
	10200 5850 10200 5450
Wire Wire Line
	10200 5450 10400 5450
Wire Wire Line
	9900 5950 10300 5950
Wire Wire Line
	10300 5950 10300 5550
Wire Wire Line
	10300 5550 10400 5550
Wire Wire Line
	10000 5250 10400 5250
$Comp
L power:+VSW #PWR0160
U 1 1 5E91C71C
P 7200 4650
AR Path="/5E7548ED/5E91C71C" Ref="#PWR0160"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E91C71C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0160" H 7200 4500 50  0001 C CNN
F 1 "+VSW" H 7215 4823 50  0000 C CNN
F 2 "" H 7200 4650 50  0001 C CNN
F 3 "" H 7200 4650 50  0001 C CNN
	1    7200 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0161
U 1 1 5E91E931
P 9750 4650
AR Path="/5E7548ED/5E91E931" Ref="#PWR0161"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E91E931" Ref="#PWR?"  Part="1" 
F 0 "#PWR0161" H 9750 4400 50  0001 C CNN
F 1 "GND" H 9755 4475 50  0000 C CNN
F 2 "" H 9750 4650 50  0001 C CNN
F 3 "" H 9750 4650 50  0001 C CNN
	1    9750 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 4900 2350 4900
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5E8DC4AA
P 1250 6450
F 0 "H2" H 1350 6500 50  0000 L CNN
F 1 "GND PAD" H 1350 6407 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 1250 6450 50  0001 C CNN
F 3 "~" H 1250 6450 50  0001 C CNN
	1    1250 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 6550 1250 6750
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5E8DD364
P 700 6450
F 0 "H1" H 800 6500 50  0000 L CNN
F 1 "GND PAD" H 800 6407 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 700 6450 50  0001 C CNN
F 3 "~" H 700 6450 50  0001 C CNN
	1    700  6450
	1    0    0    -1  
$EndComp
Text Notes 600  6200 0    118  ~ 0
REVERSE POLARITY\nPROTECTION
Wire Wire Line
	700  6550 700  6750
Wire Wire Line
	700  6750 900  6750
Wire Wire Line
	900  6850 900  6750
Connection ~ 900  6750
Connection ~ 1250 6750
Wire Wire Line
	900  6750 1250 6750
Wire Wire Line
	3550 4800 3700 4800
Wire Wire Line
	4150 4800 4250 4800
Wire Wire Line
	4250 4550 4250 4800
Connection ~ 4250 4800
Wire Wire Line
	4250 4800 4900 4800
Wire Wire Line
	3700 4550 3700 4800
Connection ~ 3700 4800
Wire Wire Line
	3700 4800 3850 4800
Text Notes 9350 4250 0    118  ~ 0
POWER RAILS
Wire Wire Line
	10000 5250 10000 5400
Wire Wire Line
	10000 5400 9850 5400
Wire Wire Line
	2050 6750 3350 6750
Text Notes 600  7750 0    50   ~ 0
REVERSE POLARITY DETECTION AND SYSTEM\nCURRENT MEASUREMENT CLOSE TO BATTERY.\n\nREF: https://www.instructables.com/id/Reverse-polarity-protection-for-your-circuit-with/\nIRLML6344TRPBF https://www.digikey.com/product-detail/en/infineon-technologies/IRLML6344TRPBF/IRLML6344TRPBFCT-ND/2538168
Wire Wire Line
	3350 6750 3350 6850
Wire Wire Line
	4150 6850 4150 6750
Text Notes 3900 7250 0    50   ~ 0
HIGH POWER\nSYSTEM GROUND
$Comp
L power:GND #PWR0115
U 1 1 5E8C20D5
P 4150 6850
AR Path="/5E7548ED/5E8C20D5" Ref="#PWR0115"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5E8C20D5" Ref="#PWR?"  Part="1" 
F 0 "#PWR0115" H 4150 6600 50  0001 C CNN
F 1 "GND" H 4155 6675 50  0000 C CNN
F 2 "" H 4150 6850 50  0001 C CNN
F 3 "" H 4150 6850 50  0001 C CNN
	1    4150 6850
	1    0    0    -1  
$EndComp
Text Notes 3100 7250 0    50   ~ 0
DIGITAL\nLOGIC GROUND
$Comp
L power:GNDD #PWR0103
U 1 1 5D31E05B
P 3350 6850
AR Path="/5E7548ED/5D31E05B" Ref="#PWR0103"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5D31E05B" Ref="#PWR?"  Part="1" 
F 0 "#PWR0103" H 3350 6600 50  0001 C CNN
F 1 "GNDD" H 3354 6695 50  0000 C CNN
F 2 "" H 3350 6850 50  0001 C CNN
F 3 "" H 3350 6850 50  0001 C CNN
	1    3350 6850
	1    0    0    -1  
$EndComp
Connection ~ 3350 6750
Wire Wire Line
	3350 6750 4150 6750
$EndSCHEMATC
