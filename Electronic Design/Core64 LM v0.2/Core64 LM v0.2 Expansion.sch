EESchema Schematic File Version 4
LIBS:Core64 LM v0.2-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 2 2
Title "Core64 LM (LED MATRIX)"
Date "2021-03-21"
Rev "0.2"
Comp "Concept and design by Andy Geppert @ www.MachineIdeas.com"
Comment1 "Visit www.Core64.io for information on assembly and optional features."
Comment2 "*** As released 2021-03-21 ***"
Comment3 ""
Comment4 "All capacitors ceramic X7R unless otherwise noted."
$EndDescr
Text GLabel 2450 4000 0    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 2450 3900 0    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	2450 3900 2700 3900
Text Notes 800  1300 0    118  ~ 0
OLED MONOCHROME I2C - TOP
Wire Wire Line
	2700 4200 2700 3900
Wire Wire Line
	2600 4000 2600 4200
Wire Wire Line
	2600 4000 2450 4000
Wire Wire Line
	1800 4100 2500 4100
Wire Wire Line
	2500 4100 2500 4200
Wire Wire Line
	2400 4150 2400 4200
Text Notes 850  3800 0    50   ~ 0
0.96” (128x64)\nI2C 4-pins, ADDRESS: 0x3C (60 decimal)\nAlternate is 0x3D, not 0x7A or 0x78 (wrong 8-bit)!\nMust choose power polarity by soldering SJs.
$Comp
L Jumper:SolderJumper_3_Open JP2
U 1 1 5E81A96A
P 1950 4350
F 0 "JP2" V 1800 4400 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 1550 3900 50  0001 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm_NumberLabels" H 1950 4350 50  0001 C CNN
F 3 "~" H 1950 4350 50  0001 C CNN
	1    1950 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2150 4150 2400 4150
Wire Wire Line
	2100 4350 2150 4350
Wire Wire Line
	2150 4350 2150 4150
Wire Wire Line
	1800 4250 1800 4100
Wire Wire Line
	1650 4550 1650 4450
Connection ~ 1650 4550
Wire Wire Line
	1650 4550 1950 4550
Wire Wire Line
	1950 4050 1950 4150
Text GLabel 1050 4050 0    50   Input ~ 0
3V3
Text Notes 800  5650 0    118  ~ 0
QWIIC I2C
Text GLabel 1600 6050 2    50   Input ~ 0
3V3
Text GLabel 1600 5850 2    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 1600 5950 2    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	1400 5850 1600 5850
Wire Wire Line
	1400 5950 1600 5950
Wire Wire Line
	1400 6150 1600 6150
Wire Wire Line
	1400 6050 1600 6050
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 5E82F3CE
P 1650 4250
F 0 "JP1" V 1750 4300 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 1000 4150 50  0001 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm_NumberLabels" H 1650 4250 50  0001 C CNN
F 3 "~" H 1650 4250 50  0001 C CNN
	1    1650 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	950  4550 1650 4550
Wire Wire Line
	1050 4050 1650 4050
Text Notes 900  5050 0    50   ~ 0
SILKSCREEN: 3V3 ONLY, 3V3/GNDD sides of jumpers,\nI2C OLED and pin names
Connection ~ 1650 4050
Wire Wire Line
	1650 4050 1950 4050
Text Notes 2250 4700 0    50   ~ 0
4-pin 0.1” header
Text Notes 1050 6550 0    50   ~ 0
SILKSCREEN: 3V3 ONLY\nQWIIC I2C and pin names
$Comp
L Connector_Generic:Conn_01x04 XLM4
U 1 1 5E87C9AB
P 1200 6050
F 0 "XLM4" H 1500 5900 50  0000 R CNN
F 1 "QWIIC" H 1500 6050 50  0000 R CNN
F 2 "Connector_JST:JST_SH_SM04B-SRSS-TB_1x04-1MP_P1.00mm_Horizontal" H 1200 6050 50  0001 C CNN
F 3 "~" H 1200 6050 50  0001 C CNN
	1    1200 6050
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 603B1757
P 2500 4400
AR Path="/603B1757" Ref="J?"  Part="1" 
AR Path="/603A0E05/603B1757" Ref="XLM2"  Part="1" 
F 0 "XLM2" V 2450 4650 50  0000 R CNN
F 1 "Conn_01x04_Male" V 2350 4650 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2500 4400 50  0001 C CNN
F 3 "~" H 2500 4400 50  0001 C CNN
	1    2500 4400
	0    -1   -1   0   
$EndComp
Text GLabel 8200 4500 2    50   Input ~ 0
5VUSB
Text GLabel 6750 4900 2    50   BiDi ~ 0
+BATT
Wire Wire Line
	6550 4900 6750 4900
Text Notes 7750 5100 2    50   ~ 0
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
P 950 4550
AR Path="/60D59160" Ref="#PWR?"  Part="1" 
AR Path="/603A0E05/60D59160" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 950 4300 50  0001 C CNN
F 1 "GNDD" H 955 4394 50  0000 C CNN
F 2 "" H 950 4550 50  0001 C CNN
F 3 "" H 950 4550 50  0001 C CNN
	1    950  4550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 60D597FA
P 1600 6150
AR Path="/60D597FA" Ref="#PWR?"  Part="1" 
AR Path="/603A0E05/60D597FA" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 1600 5900 50  0001 C CNN
F 1 "GNDD" H 1605 5994 50  0000 C CNN
F 2 "" H 1600 6150 50  0001 C CNN
F 3 "" H 1600 6150 50  0001 C CNN
	1    1600 6150
	1    0    0    -1  
$EndComp
Text Notes 4300 4200 0    118  ~ 0
LIPO BATTERY CONNECTION AND USB CHARGER
Text Notes 2300 800  0    118  ~ 0
EVERYTHING ON THIS SHEET IS USER-PROVIDED OPTIONAL ADD-ONS
Wire Wire Line
	7300 4800 7300 4900
Text Notes 4300 4800 0    50   ~ 0
SILKSCREEN:\n1S ONLY\nADAFRUIT #4410 USB C
$Comp
L Jumper:SolderJumper_2_Open JP5
U 1 1 60311F75
P 7650 4500
F 0 "JP5" H 7650 4711 50  0000 C CNN
F 1 "Teensy_Charge_Enable" H 7650 4618 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 7650 4500 50  0001 C CNN
F 3 "~" H 7650 4500 50  0001 C CNN
	1    7650 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4500 7500 4500
Wire Wire Line
	7800 4500 8200 4500
Text Notes 4300 1300 0    118  ~ 0
ALTERNATE 1S LIPO BATTERY - USER SUPPLIED
Text Notes 5000 6100 0    157  ~ 31
1S LIPO ONLY !!!\n7.5V ABSOLUTE MAXIMUM !!!
Text Notes 5500 5450 0    50   ~ 0
SILKSCREEN: +/- pins
Text Notes 5500 5150 0    50   ~ 0
SILKSCREEN: LIPO CHARGER
Text Notes 5500 5300 0    50   ~ 0
SILKSCREEN: BAT. + BAT. -
Text Notes 5500 4700 0    50   ~ 0
Mounting\n5x 0.1” holes
Text Notes 4300 3650 0    50   ~ 0
* Do not connect AAAs to a LiPo charger! You will destroy it.\n\n1) Remove the 4x “AAA” battery pack.\n\n2) Purchase and install a LiPo charge manager.\n     a) The logic board is designed to accept this one: https://www.adafruit.com/product/4410 (USB C).\n     b) Solder the the charge manager directly to the board without headers to keep a low profile.\n\n3) Purchase and install a 1S LiPo using double-sided tape. \n     a) Choose a 1S Lipo with built-in cell over/under voltage protection. Largest recommended:\n          2500mAh https://www.adafruit.com/product/328   2.0” x 2.4” x 0.3” (50mm x 61mm x 7mm)\n     b) Make sure no part of the LiPo foil pouch can short-out adjacent pins or pads in the area. Insulate it with Kapton tape or similar.\n\n\nConfiguration of the Teensy_Charge_Enable Solder Jumper (SJ):\nA) DEFAULT SJ OPEN:\n       If you do NOT want the system to be powered from the USB port of the charger, leave the Teensy_Charge_Enable SJ open.\n       Connecting a USB cable to the LiPo charger will ONLY charge the battery and power the system when the power switch is ON (up position).\n       Connecting a USB cable to the Teensy will NOT charge the battery.\n\nB) OPTIONAL SJ CLOSED:\n       The LiPo charger 5V pin (Lipo Charger USB port) may be connected to the Teensy USB port through TEENSY_VUSB. Close the SJ to connect them.\n       Connecting a USB cable to the LiPo charger will charge the battery and power the system \n       Connecting a USB cable to the Teensy will power the Core64 board, charge the battery and connect to the serial port of the Teensy.\n   
Text Notes 800  3400 0    118  ~ 0
OLED MONOCHROME I2C - BOTTOM
Text GLabel 2450 1900 0    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 2450 1800 0    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	2450 1800 2700 1800
Wire Wire Line
	2700 2100 2700 1800
Wire Wire Line
	2600 1900 2600 2100
Wire Wire Line
	2600 1900 2450 1900
Wire Wire Line
	1800 2000 2500 2000
Wire Wire Line
	2500 2000 2500 2100
Wire Wire Line
	2400 2050 2400 2100
Text Notes 850  1700 0    50   ~ 0
0.96” (128x64)\nI2C 4-pins, ADDRESS: 0x3C (60 decimal)\nAlternate is 0x3D, not 0x7A or 0x78 (wrong 8-bit)!\nMust choose power polarity by soldering SJs.
$Comp
L Jumper:SolderJumper_3_Open JP4
U 1 1 605100AA
P 1950 2250
F 0 "JP4" V 1800 2300 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 1550 1800 50  0001 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm_NumberLabels" H 1950 2250 50  0001 C CNN
F 3 "~" H 1950 2250 50  0001 C CNN
	1    1950 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2150 2050 2400 2050
Wire Wire Line
	2100 2250 2150 2250
Wire Wire Line
	2150 2250 2150 2050
Wire Wire Line
	1800 2150 1800 2000
Wire Wire Line
	1650 2450 1650 2350
Connection ~ 1650 2450
Wire Wire Line
	1650 2450 1950 2450
Wire Wire Line
	1950 1950 1950 2050
Text GLabel 1050 1950 0    50   Input ~ 0
3V3
$Comp
L Jumper:SolderJumper_3_Open JP3
U 1 1 605100B9
P 1650 2150
F 0 "JP3" V 1750 2200 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 1000 2050 50  0001 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm_NumberLabels" H 1650 2150 50  0001 C CNN
F 3 "~" H 1650 2150 50  0001 C CNN
	1    1650 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	950  2450 1650 2450
Wire Wire Line
	1050 1950 1650 1950
Text Notes 900  2950 0    50   ~ 0
SILKSCREEN: 3V3 ONLY, 3V3/GNDD sides of jumpers,\nI2C OLED and pin names
Connection ~ 1650 1950
Wire Wire Line
	1650 1950 1950 1950
Text Notes 2250 2600 0    50   ~ 0
4-pin 0.1” header
$Comp
L Connector:Conn_01x04_Male XLM?
U 1 1 605100C5
P 2500 2300
AR Path="/605100C5" Ref="XLM?"  Part="1" 
AR Path="/603A0E05/605100C5" Ref="XLM3"  Part="1" 
F 0 "XLM3" V 2450 2550 50  0000 R CNN
F 1 "Conn_01x04_Male" V 2350 2550 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2500 2300 50  0001 C CNN
F 3 "~" H 2500 2300 50  0001 C CNN
	1    2500 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 605100CB
P 950 2450
AR Path="/605100CB" Ref="#PWR?"  Part="1" 
AR Path="/603A0E05/605100CB" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 950 2200 50  0001 C CNN
F 1 "GNDD" H 955 2294 50  0000 C CNN
F 2 "" H 950 2450 50  0001 C CNN
F 3 "" H 950 2450 50  0001 C CNN
	1    950  2450
	1    0    0    -1  
$EndComp
$Comp
L CORE_64_LIBRARY:Micro_LiPo_Charger-USB-C XLM1
U 1 1 6051A813
P 6250 4600
F 0 "XLM1" H 6308 4931 50  0000 C CNN
F 1 "Micro_LiPo_Charger-USB-C" H 6308 4838 50  0000 C CNN
F 2 "Core_Memory_8x8_Array:Micro_LiPo_Charger_USB-C_CornerSMD" H 6250 4600 50  0001 C CNN
F 3 "" H 6250 4600 50  0001 C CNN
	1    6250 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4800 7300 4800
NoConn ~ 6550 4600
NoConn ~ 6550 4700
$Comp
L Connector:Conn_01x01_Male J6
U 1 1 60516F1B
P 4200 7550
F 0 "J6" H 4309 7737 50  0000 C CNN
F 1 "Conn_01x01_Male" H 4309 7644 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical_No_Registration" H 4200 7550 50  0001 C CNN
F 3 "~" H 4200 7550 50  0001 C CNN
	1    4200 7550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J4
U 1 1 6051423B
P 2500 7550
F 0 "J4" H 2609 7737 50  0000 C CNN
F 1 "Conn_01x01_Male" H 2609 7644 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical_No_Registration" H 2500 7550 50  0001 C CNN
F 3 "~" H 2500 7550 50  0001 C CNN
	1    2500 7550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J3
U 1 1 6051203C
P 1650 7550
F 0 "J3" H 1759 7737 50  0000 C CNN
F 1 "Conn_01x01_Male" H 1759 7644 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical_No_Registration" H 1650 7550 50  0001 C CNN
F 3 "~" H 1650 7550 50  0001 C CNN
	1    1650 7550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J5
U 1 1 60515800
P 3350 7550
F 0 "J5" H 3459 7737 50  0000 C CNN
F 1 "Conn_01x01_Male" H 3459 7644 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical_No_Registration" H 3350 7550 50  0001 C CNN
F 3 "~" H 3350 7550 50  0001 C CNN
	1    3350 7550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607ECE86
P 1850 7550
AR Path="/607ECE86" Ref="#PWR?"  Part="1" 
AR Path="/603A0E05/607ECE86" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 1850 7300 50  0001 C CNN
F 1 "GND" H 1855 7373 50  0000 C CNN
F 2 "" H 1850 7550 50  0001 C CNN
F 3 "" H 1850 7550 50  0001 C CNN
	1    1850 7550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607EDA9C
P 2700 7550
AR Path="/607EDA9C" Ref="#PWR?"  Part="1" 
AR Path="/603A0E05/607EDA9C" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 2700 7300 50  0001 C CNN
F 1 "GND" H 2705 7373 50  0000 C CNN
F 2 "" H 2700 7550 50  0001 C CNN
F 3 "" H 2700 7550 50  0001 C CNN
	1    2700 7550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607EE7C2
P 3550 7550
AR Path="/607EE7C2" Ref="#PWR?"  Part="1" 
AR Path="/603A0E05/607EE7C2" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 3550 7300 50  0001 C CNN
F 1 "GND" H 3555 7373 50  0000 C CNN
F 2 "" H 3550 7550 50  0001 C CNN
F 3 "" H 3550 7550 50  0001 C CNN
	1    3550 7550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607EF44F
P 4400 7550
AR Path="/607EF44F" Ref="#PWR?"  Part="1" 
AR Path="/603A0E05/607EF44F" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 4400 7300 50  0001 C CNN
F 1 "GND" H 4405 7373 50  0000 C CNN
F 2 "" H 4400 7550 50  0001 C CNN
F 3 "" H 4400 7550 50  0001 C CNN
	1    4400 7550
	1    0    0    -1  
$EndComp
Text Notes 7700 4750 0    50   ~ 0
SILKSCREEN:\nTEENSY CHARGE ENABLE
Text Notes 800  7200 0    118  ~ 0
Diffuser layer alignment or mounting points
$EndSCHEMATC
