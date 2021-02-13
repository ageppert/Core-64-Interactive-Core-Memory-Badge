EESchema Schematic File Version 4
LIBS:Core64 LM v0.1-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 2 2
Title "Core 64 LED Matrix - Expansion"
Date "2021-02-12"
Rev "0.1"
Comp "www.Core64.io"
Comment1 "Work in progress"
Comment2 "Andy Geppert"
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2300 4000 0    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 2300 3900 0    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	2300 3900 2550 3900
Text Notes 650  3450 0    118  ~ 0
OLED MONOCHROME I2C
Wire Wire Line
	2550 4200 2550 3900
Wire Wire Line
	2450 4000 2450 4200
Wire Wire Line
	2450 4000 2300 4000
Wire Wire Line
	1650 4100 2350 4100
Wire Wire Line
	2350 4100 2350 4200
Wire Wire Line
	2250 4150 2250 4200
Text Notes 700  3800 0    50   ~ 0
0.96” (128x64)\nI2C 4-pins, ADDRESS: 0x3C (60 decimal)\nAlternate is 0x3D, not 0x7A or 0x78 (wrong 8-bit)!\nMust choose power polarity by soldering SJS.
$Comp
L Jumper:SolderJumper_3_Open JP2
U 1 1 5E81A96A
P 1800 4350
F 0 "JP2" V 1650 4400 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 1400 3900 50  0001 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm_NumberLabels" H 1800 4350 50  0001 C CNN
F 3 "~" H 1800 4350 50  0001 C CNN
	1    1800 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 4150 2250 4150
Wire Wire Line
	1950 4350 2000 4350
Wire Wire Line
	2000 4350 2000 4150
Wire Wire Line
	1650 4250 1650 4100
Wire Wire Line
	1500 4550 1500 4450
Connection ~ 1500 4550
Wire Wire Line
	1500 4550 1800 4550
Wire Wire Line
	1800 4050 1800 4150
Text GLabel 900  4050 0    50   Input ~ 0
3V3
Text Notes 5900 3400 0    118  ~ 0
QWIIC I2C
Text GLabel 6700 3800 2    50   Input ~ 0
3V3
Text GLabel 6700 3600 2    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 6700 3700 2    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	6500 3600 6700 3600
Wire Wire Line
	6500 3700 6700 3700
Wire Wire Line
	6500 3900 6700 3900
Wire Wire Line
	6500 3800 6700 3800
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 5E82F3CE
P 1500 4250
F 0 "JP1" V 1600 4300 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 850 4150 50  0001 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm_NumberLabels" H 1500 4250 50  0001 C CNN
F 3 "~" H 1500 4250 50  0001 C CNN
	1    1500 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	800  4550 1500 4550
Wire Wire Line
	900  4050 1500 4050
Text Notes 750  5050 0    50   ~ 0
SILKSCREEN: 3V3 ONLY, 3V3/GNDD sides of jumpers,\nI2C OLED and pin names
Text Notes 6300 6750 0    50   ~ 0
All non-polarized capacitors are X7R or X5R ceramic unless otherwise noted.
Connection ~ 1500 4050
Wire Wire Line
	1500 4050 1800 4050
Text Notes 2100 4700 0    50   ~ 0
4-pin 0.1” header
Text Notes 6150 4300 0    50   ~ 0
SILKSCREEN: 3V3 ONLY\nQWIIC I2C and pin names
$Comp
L Connector_Generic:Conn_01x04 XLM3
U 1 1 5E87C9AB
P 6300 3800
F 0 "XLM3" H 6600 3650 50  0000 R CNN
F 1 "QWIIC" H 6600 3800 50  0000 R CNN
F 2 "Connector_JST:JST_SH_SM04B-SRSS-TB_1x04-1MP_P1.00mm_Horizontal" H 6300 3800 50  0001 C CNN
F 3 "~" H 6300 3800 50  0001 C CNN
	1    6300 3800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 603B1745
P 7100 5750
AR Path="/603B1745" Ref="J?"  Part="1" 
AR Path="/603A0E05/603B1745" Ref="XLM4"  Part="1" 
F 0 "XLM4" H 7073 5681 50  0000 R CNN
F 1 "Conn_01x03_Male" H 7073 5774 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7100 5750 50  0001 C CNN
F 3 "~" H 7100 5750 50  0001 C CNN
	1    7100 5750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 603B174B
P 6750 5850
AR Path="/603B174B" Ref="#PWR?"  Part="1" 
AR Path="/603A0E05/603B174B" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 6750 5600 50  0001 C CNN
F 1 "GND" H 6755 5673 50  0000 C CNN
F 2 "" H 6750 5850 50  0001 C CNN
F 3 "" H 6750 5850 50  0001 C CNN
	1    6750 5850
	1    0    0    -1  
$EndComp
Text GLabel 6800 5750 0    50   Output ~ 0
LED_MATRIX_5V0_SIG
Text GLabel 6800 5650 0    50   Output ~ 0
5V0
Wire Wire Line
	6800 5650 6900 5650
Wire Wire Line
	6800 5750 6900 5750
Wire Wire Line
	6750 5850 6900 5850
Text Notes 6950 6050 0    50   ~ 0
SILKSCREEN F/B:\n5V0, LSIG, GND
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 603B1757
P 2350 4400
AR Path="/603B1757" Ref="J?"  Part="1" 
AR Path="/603A0E05/603B1757" Ref="XLM2"  Part="1" 
F 0 "XLM2" V 2300 4650 50  0000 R CNN
F 1 "Conn_01x04_Male" V 2200 4650 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2350 4400 50  0001 C CNN
F 3 "~" H 2350 4400 50  0001 C CNN
	1    2350 4400
	0    -1   -1   0   
$EndComp
$Comp
L CORE_64_LIBRARY:Micro_LiPo_Charger U?
U 1 1 604D3DFB
P 1000 1950
AR Path="/604D3DFB" Ref="U?"  Part="1" 
AR Path="/603A0E05/604D3DFB" Ref="XLM1"  Part="1" 
F 0 "XLM1" H 1058 2281 50  0000 C CNN
F 1 "Micro_LiPo_Charger" H 1058 2188 50  0000 C CNN
F 2 "Core_Memory_8x8_Array:Micro_LiPo_Charger_CornerSMD" H 1000 1950 50  0001 C CNN
F 3 "" H 1000 1950 50  0001 C CNN
	1    1000 1950
	1    0    0    -1  
$EndComp
Text GLabel 2900 1850 2    50   Input ~ 0
5VUSB
Text GLabel 1450 2150 2    50   BiDi ~ 0
+BATT
Wire Wire Line
	1300 2150 1450 2150
Text Notes 1900 2500 2    50   ~ 0
POWER\nGROUND
$Comp
L power:GND #PWR?
U 1 1 604D3E08
P 2000 2250
AR Path="/604D3E08" Ref="#PWR?"  Part="1" 
AR Path="/603A0E05/604D3E08" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 2000 2000 50  0001 C CNN
F 1 "GND" H 2005 2073 50  0000 C CNN
F 2 "" H 2000 2250 50  0001 C CNN
F 3 "" H 2000 2250 50  0001 C CNN
	1    2000 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 60D59160
P 800 4550
AR Path="/60D59160" Ref="#PWR?"  Part="1" 
AR Path="/603A0E05/60D59160" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 800 4300 50  0001 C CNN
F 1 "GNDD" H 805 4394 50  0000 C CNN
F 2 "" H 800 4550 50  0001 C CNN
F 3 "" H 800 4550 50  0001 C CNN
	1    800  4550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 60D597FA
P 6700 3900
AR Path="/60D597FA" Ref="#PWR?"  Part="1" 
AR Path="/603A0E05/60D597FA" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 6700 3650 50  0001 C CNN
F 1 "GNDD" H 6705 3744 50  0000 C CNN
F 2 "" H 6700 3900 50  0001 C CNN
F 3 "" H 6700 3900 50  0001 C CNN
	1    6700 3900
	1    0    0    -1  
$EndComp
Text Notes 5950 5450 0    118  ~ 0
ALTERNATE PIMORONI UNICORN HAT LED MATRIX
Text Notes 650  1500 0    118  ~ 0
LIPO BATTERY CONNECTION AND USB CHARGER
Text Notes 2300 800  0    118  ~ 0
EVERYTHING ON THIS SHEET IS USER-PROVIDED OPTIONAL ADD-ONS
Wire Wire Line
	1300 1950 1400 1950
Wire Wire Line
	2000 1950 2000 2250
Wire Wire Line
	1300 2050 1400 2050
Wire Wire Line
	1400 2050 1400 1950
Connection ~ 1400 1950
Wire Wire Line
	1400 1950 2000 1950
Text Notes 3850 1950 0    50   ~ 0
SILKSCREEN:\n1S ONLY\nADAFRUIT #1904 MICROUSB\nADAFRUIT #4410 TYPE C USB
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 60311F75
P 2350 1850
F 0 "JP3" H 2350 2061 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 2350 1968 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2350 1850 50  0001 C CNN
F 3 "~" H 2350 1850 50  0001 C CNN
	1    2350 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1850 2200 1850
Wire Wire Line
	2500 1850 2900 1850
Text Notes 2300 2500 0    50   ~ 0
CLOSE SOLDER JUMPER TO\nENABLE CHARGING OF BATTERY\nWHEN THE MICROCONTROLLER IS\nPOWERED BY USB/PROGRAMMING\nCONNECTION.
$EndSCHEMATC
