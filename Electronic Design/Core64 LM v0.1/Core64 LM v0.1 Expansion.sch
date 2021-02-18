EESchema Schematic File Version 4
LIBS:Core64 LM v0.1-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 2 2
Title "Core64 LM (LED MATRIX)"
Date "2021-02-17"
Rev "0.1"
Comp "Concept and design by Andy Geppert @ www.MachineIdeas.com"
Comment1 "Visit www.Core64.io for information on assembly and optional features."
Comment2 "*** Work in progress ***"
Comment3 ""
Comment4 "All capacitors ceramic X7R unless otherwise noted."
$EndDescr
Text GLabel 2450 1850 0    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 2450 1750 0    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	2450 1750 2700 1750
Text Notes 800  1300 0    118  ~ 0
OLED MONOCHROME I2C
Wire Wire Line
	2700 2050 2700 1750
Wire Wire Line
	2600 1850 2600 2050
Wire Wire Line
	2600 1850 2450 1850
Wire Wire Line
	1800 1950 2500 1950
Wire Wire Line
	2500 1950 2500 2050
Wire Wire Line
	2400 2000 2400 2050
Text Notes 850  1650 0    50   ~ 0
0.96” (128x64)\nI2C 4-pins, ADDRESS: 0x3C (60 decimal)\nAlternate is 0x3D, not 0x7A or 0x78 (wrong 8-bit)!\nMust choose power polarity by soldering SJs.
$Comp
L Jumper:SolderJumper_3_Open JP2
U 1 1 5E81A96A
P 1950 2200
F 0 "JP2" V 1800 2250 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 1550 1750 50  0001 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm_NumberLabels" H 1950 2200 50  0001 C CNN
F 3 "~" H 1950 2200 50  0001 C CNN
	1    1950 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2150 2000 2400 2000
Wire Wire Line
	2100 2200 2150 2200
Wire Wire Line
	2150 2200 2150 2000
Wire Wire Line
	1800 2100 1800 1950
Wire Wire Line
	1650 2400 1650 2300
Connection ~ 1650 2400
Wire Wire Line
	1650 2400 1950 2400
Wire Wire Line
	1950 1900 1950 2000
Text GLabel 1050 1900 0    50   Input ~ 0
3V3
Text Notes 800  3550 0    118  ~ 0
QWIIC I2C
Text GLabel 1600 3950 2    50   Input ~ 0
3V3
Text GLabel 1600 3750 2    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 1600 3850 2    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	1400 3750 1600 3750
Wire Wire Line
	1400 3850 1600 3850
Wire Wire Line
	1400 4050 1600 4050
Wire Wire Line
	1400 3950 1600 3950
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 5E82F3CE
P 1650 2100
F 0 "JP1" V 1750 2150 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 1000 2000 50  0001 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm_NumberLabels" H 1650 2100 50  0001 C CNN
F 3 "~" H 1650 2100 50  0001 C CNN
	1    1650 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	950  2400 1650 2400
Wire Wire Line
	1050 1900 1650 1900
Text Notes 900  2900 0    50   ~ 0
SILKSCREEN: 3V3 ONLY, 3V3/GNDD sides of jumpers,\nI2C OLED and pin names
Connection ~ 1650 1900
Wire Wire Line
	1650 1900 1950 1900
Text Notes 2250 2550 0    50   ~ 0
4-pin 0.1” header
Text Notes 1050 4450 0    50   ~ 0
SILKSCREEN: 3V3 ONLY\nQWIIC I2C and pin names
$Comp
L Connector_Generic:Conn_01x04 XLM3
U 1 1 5E87C9AB
P 1200 3950
F 0 "XLM3" H 1500 3800 50  0000 R CNN
F 1 "QWIIC" H 1500 3950 50  0000 R CNN
F 2 "Connector_JST:JST_SH_SM04B-SRSS-TB_1x04-1MP_P1.00mm_Horizontal" H 1200 3950 50  0001 C CNN
F 3 "~" H 1200 3950 50  0001 C CNN
	1    1200 3950
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 603B1745
P 1850 7500
AR Path="/603B1745" Ref="J?"  Part="1" 
AR Path="/603A0E05/603B1745" Ref="XLM4"  Part="1" 
F 0 "XLM4" H 1823 7431 50  0000 R CNN
F 1 "Conn_01x03_Male" H 1823 7524 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1850 7500 50  0001 C CNN
F 3 "~" H 1850 7500 50  0001 C CNN
	1    1850 7500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 603B174B
P 1500 7600
AR Path="/603B174B" Ref="#PWR?"  Part="1" 
AR Path="/603A0E05/603B174B" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 1500 7350 50  0001 C CNN
F 1 "GND" H 1505 7423 50  0000 C CNN
F 2 "" H 1500 7600 50  0001 C CNN
F 3 "" H 1500 7600 50  0001 C CNN
	1    1500 7600
	1    0    0    -1  
$EndComp
Text GLabel 1550 7500 0    50   Output ~ 0
LED_MATRIX_5V0_SIG
Text GLabel 1550 7400 0    50   Output ~ 0
5V0
Wire Wire Line
	1550 7400 1650 7400
Wire Wire Line
	1550 7500 1650 7500
Wire Wire Line
	1500 7600 1650 7600
Text Notes 1700 7800 0    50   ~ 0
SILKSCREEN F/B:\n5V0, LSIG, GND
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 603B1757
P 2500 2250
AR Path="/603B1757" Ref="J?"  Part="1" 
AR Path="/603A0E05/603B1757" Ref="XLM2"  Part="1" 
F 0 "XLM2" V 2450 2500 50  0000 R CNN
F 1 "Conn_01x04_Male" V 2350 2500 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2500 2250 50  0001 C CNN
F 3 "~" H 2500 2250 50  0001 C CNN
	1    2500 2250
	0    -1   -1   0   
$EndComp
$Comp
L CORE_64_LIBRARY:Micro_LiPo_Charger U?
U 1 1 604D3DFB
P 6300 4600
AR Path="/604D3DFB" Ref="U?"  Part="1" 
AR Path="/603A0E05/604D3DFB" Ref="XLM1"  Part="1" 
F 0 "XLM1" H 6358 4931 50  0000 C CNN
F 1 "Micro_LiPo_Charger" H 6358 4838 50  0000 C CNN
F 2 "Core_Memory_8x8_Array:Micro_LiPo_Charger_CornerSMD" H 6300 4600 50  0001 C CNN
F 3 "" H 6300 4600 50  0001 C CNN
	1    6300 4600
	1    0    0    -1  
$EndComp
Text GLabel 8200 4500 2    50   Input ~ 0
5VUSB
Text GLabel 6750 4800 2    50   BiDi ~ 0
+BATT
Wire Wire Line
	6600 4800 6750 4800
Text Notes 7200 5150 2    50   ~ 0
POWER\nGROUND
$Comp
L power:GND #PWR?
U 1 1 604D3E08
P 7300 4900
AR Path="/604D3E08" Ref="#PWR?"  Part="1" 
AR Path="/603A0E05/604D3E08" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 7300 4650 50  0001 C CNN
F 1 "GND" H 7305 4723 50  0000 C CNN
F 2 "" H 7300 4900 50  0001 C CNN
F 3 "" H 7300 4900 50  0001 C CNN
	1    7300 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 60D59160
P 950 2400
AR Path="/60D59160" Ref="#PWR?"  Part="1" 
AR Path="/603A0E05/60D59160" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 950 2150 50  0001 C CNN
F 1 "GNDD" H 955 2244 50  0000 C CNN
F 2 "" H 950 2400 50  0001 C CNN
F 3 "" H 950 2400 50  0001 C CNN
	1    950  2400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 60D597FA
P 1600 4050
AR Path="/60D597FA" Ref="#PWR?"  Part="1" 
AR Path="/603A0E05/60D597FA" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 1600 3800 50  0001 C CNN
F 1 "GNDD" H 1605 3894 50  0000 C CNN
F 2 "" H 1600 4050 50  0001 C CNN
F 3 "" H 1600 4050 50  0001 C CNN
	1    1600 4050
	1    0    0    -1  
$EndComp
Text Notes 700  7200 0    118  ~ 0
ALTERNATE PIMORONI UNICORN HAT LED MATRIX
Text Notes 4300 4200 0    118  ~ 0
LIPO BATTERY CONNECTION AND USB CHARGER
Text Notes 2300 800  0    118  ~ 0
EVERYTHING ON THIS SHEET IS USER-PROVIDED OPTIONAL ADD-ONS
Wire Wire Line
	6600 4600 6700 4600
Wire Wire Line
	7300 4600 7300 4900
Wire Wire Line
	6600 4700 6700 4700
Wire Wire Line
	6700 4700 6700 4600
Connection ~ 6700 4600
Wire Wire Line
	6700 4600 7300 4600
Text Notes 4300 4800 0    50   ~ 0
SILKSCREEN:\n1S ONLY\nADAFRUIT #1904 MICRO USB\nADAFRUIT #4410 USB C
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 60311F75
P 7650 4500
F 0 "JP3" H 7650 4711 50  0000 C CNN
F 1 "Teensy_Charge_Enable" H 7650 4618 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 7650 4500 50  0001 C CNN
F 3 "~" H 7650 4500 50  0001 C CNN
	1    7650 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4500 7500 4500
Wire Wire Line
	7800 4500 8200 4500
Text Notes 4300 1300 0    118  ~ 0
ALTERNATE 1S LIPO BATTERY - USER SUPPLIED
Text Notes 5800 5800 0    157  ~ 31
1S LIPO ONLY !!!
Text Notes 5500 5350 0    50   ~ 0
SILKSCREEN: +/- pins
Text Notes 5500 5050 0    50   ~ 0
SILKSCREEN: LIPO CHARGER
Text Notes 5500 5200 0    50   ~ 0
SILKSCREEN: BAT. + BAT. -
Text Notes 5500 4700 0    50   ~ 0
Mounting\n4x 0.1” holes
Text Notes 4300 3900 0    50   ~ 0
* Do not connect AAAs to a LiPo charger! You will destroy it.\n\n1) Remove the 4x “AAA” battery pack.\n\n2) Purchase and install a LiPo charge manager.\n     a) The logic board is designed to accept this one: https://www.adafruit.com/product/1904 (Micro USB) or 4410 (USB C).\n     b) Solder the the charge manager directly to the board without headers to keep a low profile.\n\n3) Purchase and install a 1S LiPo using double-sided tape. \n     a) Choose a 1S Lipo with built-in cell over/under voltage protection. Recommended:\n          2500mAh https://www.adafruit.com/product/328   1.8” x 2.4” x 0.26” (47mm x 61mm x 6.7mm)\n          2000mAh https://www.adafruit.com/product/2011  2.4” x 1.4” x 0.3” (60mm x 36mm x 7mm)\n          1200mAh https://www.adafruit.com/product/258    1.3” x 2.4” x 0.2” (34mm x 62mm x 5mm)\n     b) Make sure no part of the LiPo foil pouch can short-out adjacent pins or pads in the area. Insulate it with Kapton tape or similar.\n\n\nConfiguration of the Teensy_Charge_Enable Solder Jumper (SJ):\nA) DEFAULT SJ OPEN:\n       If you do NOT want the system to be powered from the USB port of the charger, leave the Teensy_Charge_Enable SJ open.\n       Connecting a USB cable to the LiPo charger will ONLY charge the battery and power the system when the power switch is ON (up position).\n       Connecting a USB cable to the Teensy will NOT charge the battery.\n\nB) OPTIONAL SJ CLOSED:\n       The LiPo charger 5V pin (Lipo Charger USB port) may be connected to the Teensy USB port through TEENSY_VUSB. Close the SJ to connect them.\n       Connecting a USB cable to the LiPo charger will charge the battery and power the system \n       Connecting a USB cable to the Teensy will power the Core64 board, charge the battery and connect to the serial port of the Teensy.\n   
$EndSCHEMATC
