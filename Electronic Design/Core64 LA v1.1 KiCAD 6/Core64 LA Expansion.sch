EESchema Schematic File Version 4
LIBS:Core64 LA-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 2 2
Title "Core64 LED ARRAY (LA)"
Date "2023-03-06"
Rev "1.1"
Comp "Concept and design by Andy Geppert | www.MachineIdeas.com"
Comment1 "Visit www.Core64.io for information on assembly and optional features."
Comment2 ""
Comment3 ""
Comment4 "All capacitors ceramic X7R unless otherwise noted."
$EndDescr
Text GLabel 2400 4000 0    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 2400 3900 0    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	2400 3900 2650 3900
Text Notes 750  1300 0    118  ~ 24
OLED MONOCHROME I2C - TOP
Wire Wire Line
	2650 4200 2650 3900
Wire Wire Line
	2550 4000 2550 4200
Wire Wire Line
	2550 4000 2400 4000
Wire Wire Line
	2450 4100 2450 4200
Wire Wire Line
	2350 4150 2350 4200
Text Notes 800  3800 0    50   ~ 0
0.96” (128x64)\nI2C 4-pins, ADDRESS: 0x3C (60 decimal)\nAlternate is 0x3D, not 0x7A or 0x78 (wrong 8-bit)!\nMust choose power polarity by soldering SJs.
$Comp
L Jumper:SolderJumper_3_Open JP2
U 1 1 5E81A96A
P 1900 4350
F 0 "JP2" V 1750 4400 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 1500 3900 50  0001 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm_NumberLabels" H 1900 4350 50  0001 C CNN
F 3 "~" H 1900 4350 50  0001 C CNN
F 4 "NO" H 1900 4350 50  0001 C CNN "INSERT?"
	1    1900 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2100 4150 2350 4150
Wire Wire Line
	2050 4350 2100 4350
Wire Wire Line
	2100 4350 2100 4150
Wire Wire Line
	1600 4550 1600 4500
Connection ~ 1600 4550
Wire Wire Line
	1600 4550 1900 4550
Wire Wire Line
	1900 4050 1900 4150
Text GLabel 1000 4050 0    50   Input ~ 0
3V3
Text Notes 750  5550 0    118  ~ 24
QWIIC I2C
Text GLabel 1800 5950 2    50   Input ~ 0
3V3
Text GLabel 1800 5750 2    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 1800 5850 2    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	1600 5750 1800 5750
Wire Wire Line
	1600 5850 1800 5850
Wire Wire Line
	1600 6050 1800 6050
Wire Wire Line
	1600 5950 1800 5950
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 5E82F3CE
P 1600 4300
F 0 "JP1" V 1700 4350 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 950 4200 50  0001 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm_NumberLabels" H 1600 4300 50  0001 C CNN
F 3 "~" H 1600 4300 50  0001 C CNN
F 4 "NO" H 1600 4300 50  0001 C CNN "INSERT?"
	1    1600 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	900  4550 1600 4550
Text Notes 850  5050 0    50   ~ 0
SILKSCREEN: 3V3 ONLY, 3V3/GNDD sides of jumpers,\nI2C OLED and pin names
Text Notes 2200 4700 0    50   ~ 0
4-pin 0.1” header
Text Notes 1250 6450 0    50   ~ 0
SILKSCREEN: 3V3 ONLY\nQWIIC I2C and pin names
$Comp
L Connector_Generic:Conn_01x04 XLM4
U 1 1 5E87C9AB
P 1400 5950
F 0 "XLM4" H 1700 5800 50  0000 R CNN
F 1 "QWIIC" H 1700 5950 50  0000 R CNN
F 2 "Connector_JST:JST_SH_SM04B-SRSS-TB_1x04-1MP_P1.00mm_Horizontal" H 1400 5950 50  0001 C CNN
F 3 "~" H 1400 5950 50  0001 C CNN
F 4 "NO" H 1400 5950 50  0001 C CNN "INSERT?"
	1    1400 5950
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 603B1757
P 2450 4400
AR Path="/603B1757" Ref="J?"  Part="1" 
AR Path="/603A0E05/603B1757" Ref="XLM2"  Part="1" 
F 0 "XLM2" V 2400 4650 50  0000 R CNN
F 1 "Conn_01x04_Male" V 2300 4650 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2450 4400 50  0001 C CNN
F 3 "~" H 2450 4400 50  0001 C CNN
F 4 "NO" H 2450 4400 50  0001 C CNN "INSERT?"
	1    2450 4400
	0    -1   -1   0   
$EndComp
Text GLabel 7150 5900 2    50   BiDi ~ 0
5VUSB
$Comp
L power:GNDD #PWR?
U 1 1 60D59160
P 900 4550
AR Path="/60D59160" Ref="#PWR?"  Part="1" 
AR Path="/603A0E05/60D59160" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 900 4300 50  0001 C CNN
F 1 "GNDD" H 905 4394 50  0000 C CNN
F 2 "" H 900 4550 50  0001 C CNN
F 3 "" H 900 4550 50  0001 C CNN
	1    900  4550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 60D597FA
P 1800 6050
AR Path="/60D597FA" Ref="#PWR?"  Part="1" 
AR Path="/603A0E05/60D597FA" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 1800 5800 50  0001 C CNN
F 1 "GNDD" H 1805 5894 50  0000 C CNN
F 2 "" H 1800 6050 50  0001 C CNN
F 3 "" H 1800 6050 50  0001 C CNN
	1    1800 6050
	1    0    0    -1  
$EndComp
Text Notes 4400 5600 0    118  ~ 24
LIPO BATTERY CONNECTION AND USB CHARGER
Text Notes 1950 850  0    157  ~ 31
USER-PROVIDED OPTIONAL ADD-ONS AND BATTERY PACK
$Comp
L Jumper:SolderJumper_2_Open JP5
U 1 1 60311F75
P 6600 5900
F 0 "JP5" H 6600 6111 50  0000 C CNN
F 1 "Logic_Board_5V0_Connect" H 6600 6018 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 6600 5900 50  0001 C CNN
F 3 "~" H 6600 5900 50  0001 C CNN
F 4 "NO" H 6600 5900 50  0001 C CNN "INSERT?"
	1    6600 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5900 6450 5900
Wire Wire Line
	6750 5900 7150 5900
Text Notes 4350 2600 0    118  ~ 24
OPTIONAL 1S LIPO BATTERY - USER SUPPLIED
Text Notes 4350 3150 0    157  Italic 31
!!! 1S LIPO ONLY !!!\n!!! 7.5V ABSOLUTE MAXIMUM !!!
Text Notes 7950 6150 0    50   ~ 0
SILKSCREEN:\nLIPO CHARGER\nSILKSCREEN: BAT. + BAT. -\nSILKSCREEN: +/- pins\n1S ONLY\nADAFRUIT #4410 USB C
Text Notes 4450 6100 0    50   ~ 0
Mounting\n5x 0.1” holes
Text Notes 4400 5350 0    50   ~ 0
* Do not connect AAAs to a LiPo charger! You will destroy it.\n\n1) Remove the 4x “AAA” battery pack from the Logic Board or LED Matrix Board. It is no longer needed and is not compatible with the LiPo charger.\n\n2) Purchase and install a LiPo charge manager.\n     a) The logic board is designed to accept this one: https://www.adafruit.com/product/4410 (USB C).\n     b) Solder the charge manager directly to the board without headers to keep a low profile.\n\n3) Purchase and install a 1S LiPo using double-sided tape. \n     a) Choose a 1S Lipo with built-in cell over/under voltage protection. Largest recommended:\n          2500mAh https://www.adafruit.com/product/328   2.0” x 2.4” x 0.3” (50mm x 61mm x 7mm)\n     b) Make sure no part of the LiPo foil pouch can short-out adjacent pins or pads in the area. Insulate it with Kapton tape or similar.\n\n\nConfiguration of the Logic_Board_5V0_Connect Solder Jumper (SJ):\nA) DEFAULT SJ OPEN:\n       If you do NOT want the system to be powered from the USB port of the charger, leave the Logic_Board_Power_Enable SJ open.\n       Connecting a USB cable to the LiPo charger will ONLY charge the battery and power the system when the power switch is ON (BAT).\n       Connecting a USB cable to the Logic Board will NOT charge the battery.\n\nB) OPTIONAL SJ CLOSED:\n       The LiPo charger 5V pin (Lipo Charger USB port) is connected to the Logic Board USB port through 5VUSB.\n       Connecting a USB cable to the LiPo charger will charge the battery and power the system even when the Power Switch is OFF (USB). USB data\n            lines are not connected through though.\n       Connecting a USB cable to the Logic Board will power the Core64/c board and charge the battery and connect to the serial port of the MCU.\n   
Text Notes 750  3400 0    118  ~ 24
OLED MONOCHROME I2C - BOTTOM
Text GLabel 2400 1900 0    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 2400 1800 0    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	2400 1800 2650 1800
Wire Wire Line
	2650 2100 2650 1800
Wire Wire Line
	2550 1900 2550 2100
Wire Wire Line
	2550 1900 2400 1900
Wire Wire Line
	1800 2000 2450 2000
Wire Wire Line
	2450 2000 2450 2100
Wire Wire Line
	2350 2050 2350 2100
Text Notes 800  1700 0    50   ~ 0
0.96” (128x64)\nI2C 4-pins, ADDRESS: 0x3C (60 decimal)\nAlternate is 0x3D, not 0x7A or 0x78 (wrong 8-bit)!\nMust choose power polarity by soldering SJs.
$Comp
L Jumper:SolderJumper_3_Open JP4
U 1 1 605100AA
P 1900 2250
F 0 "JP4" V 1750 2300 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 1500 1800 50  0001 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm_NumberLabels" H 1900 2250 50  0001 C CNN
F 3 "~" H 1900 2250 50  0001 C CNN
F 4 "NO" H 1900 2250 50  0001 C CNN "INSERT?"
	1    1900 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2100 2050 2350 2050
Wire Wire Line
	2050 2250 2100 2250
Wire Wire Line
	2100 2250 2100 2050
Wire Wire Line
	1600 2450 1600 2400
Connection ~ 1600 2450
Wire Wire Line
	1600 2450 1900 2450
Wire Wire Line
	1900 1950 1900 2050
Text GLabel 1000 1950 0    50   Input ~ 0
3V3
$Comp
L Jumper:SolderJumper_3_Open JP3
U 1 1 605100B9
P 1600 2200
F 0 "JP3" V 1700 2250 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 950 2100 50  0001 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm_NumberLabels" H 1600 2200 50  0001 C CNN
F 3 "~" H 1600 2200 50  0001 C CNN
F 4 "NO" H 1600 2200 50  0001 C CNN "INSERT?"
	1    1600 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	900  2450 1600 2450
Text Notes 850  2950 0    50   ~ 0
SILKSCREEN: 3V3 ONLY, 3V3/GNDD sides of jumpers,\nI2C OLED and pin names
Text Notes 2200 2600 0    50   ~ 0
4-pin 0.1” header
$Comp
L Connector:Conn_01x04_Male XLM?
U 1 1 605100C5
P 2450 2300
AR Path="/605100C5" Ref="XLM?"  Part="1" 
AR Path="/603A0E05/605100C5" Ref="XLM3"  Part="1" 
F 0 "XLM3" V 2400 2550 50  0000 R CNN
F 1 "Conn_01x04_Male" V 2300 2550 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2450 2300 50  0001 C CNN
F 3 "~" H 2450 2300 50  0001 C CNN
F 4 "NO" H 2450 2300 50  0001 C CNN "INSERT?"
	1    2450 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 605100CB
P 900 2450
AR Path="/605100CB" Ref="#PWR?"  Part="1" 
AR Path="/603A0E05/605100CB" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 900 2200 50  0001 C CNN
F 1 "GNDD" H 905 2294 50  0000 C CNN
F 2 "" H 900 2450 50  0001 C CNN
F 3 "" H 900 2450 50  0001 C CNN
	1    900  2450
	1    0    0    -1  
$EndComp
$Comp
L CORE_64_LIBRARY:Micro_LiPo_Charger-USB-C XLM1
U 1 1 6051A813
P 5200 6000
F 0 "XLM1" H 5258 6331 50  0000 C CNN
F 1 "Micro_LiPo_Charger-USB-C" H 5258 6238 50  0000 C CNN
F 2 "Core_Memory_8x8_Array:Micro_LiPo_Charger_USB-C_CornerSMD" H 5200 6000 50  0001 C CNN
F 3 "" H 5200 6000 50  0001 C CNN
F 4 "NO" H 5200 6000 50  0001 C CNN "INSERT?"
	1    5200 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 6200 5800 6200
NoConn ~ 5500 6000
NoConn ~ 5500 6100
$Comp
L Connector:Conn_01x01_Male J6
U 1 1 60516F1B
P 4150 7850
F 0 "J6" H 4259 8037 50  0000 C CNN
F 1 "Conn_01x01_Male" H 4259 7944 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical_No_Registration" H 4150 7850 50  0001 C CNN
F 3 "~" H 4150 7850 50  0001 C CNN
F 4 "NO" H 4150 7850 50  0001 C CNN "INSERT?"
	1    4150 7850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J4
U 1 1 6051423B
P 2450 7850
F 0 "J4" H 2559 8037 50  0000 C CNN
F 1 "Conn_01x01_Male" H 2559 7944 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical_No_Registration" H 2450 7850 50  0001 C CNN
F 3 "~" H 2450 7850 50  0001 C CNN
F 4 "NO" H 2450 7850 50  0001 C CNN "INSERT?"
	1    2450 7850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J3
U 1 1 6051203C
P 1600 7850
F 0 "J3" H 1709 8037 50  0000 C CNN
F 1 "Conn_01x01_Male" H 1709 7944 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical_No_Registration" H 1600 7850 50  0001 C CNN
F 3 "~" H 1600 7850 50  0001 C CNN
F 4 "NO" H 1600 7850 50  0001 C CNN "INSERT?"
	1    1600 7850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J5
U 1 1 60515800
P 3300 7850
F 0 "J5" H 3409 8037 50  0000 C CNN
F 1 "Conn_01x01_Male" H 3409 7944 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical_No_Registration" H 3300 7850 50  0001 C CNN
F 3 "~" H 3300 7850 50  0001 C CNN
F 4 "NO" H 3300 7850 50  0001 C CNN "INSERT?"
	1    3300 7850
	1    0    0    -1  
$EndComp
Text Notes 6650 6150 0    50   ~ 0
SILKSCREEN:\nLOGIC BOARD 5V0 CONNECT
Text Notes 4350 1500 0    118  ~ 24
“AAA” BATTERY PACK LOCATION\nPRIMARY FOR CORE64c, ALTERNATE FOR CORE64
Text Notes 4400 1950 0    50   ~ 0
The 4x “AAA” battery pack (or 3x “AA”) can be installed to the back side of the LED Array.\nThis configuration is not electrically or mechanically compatible with the 1S LiPo option described below.\nIf this configuration is desired, solder the battery pack wires to the B- and B+ position on the board where the 1S LiPo Charger would go. \nThread the wires up from the bottom side so the insulated part of the wire is strain-relieved in the holes adjacent to the solder pads.\nIn this schematic GND or -BATT (Ground Power) and +BATT correspond to the silk screen B- and B+ labels.
Text GLabel 4200 6800 0    50   Output ~ 0
5V0
Text Notes 750  6900 0    118  ~ 24
OPTIONAL 5V0 BUFFER CAPACITOR
Text Notes 800  7050 0    50   ~ 0
Optional 5V0 buffer capacitor.
$Comp
L Device:CP1_Small C9
U 1 1 60AD3B01
P 4350 6900
F 0 "C9" H 4441 6947 50  0000 L CNN
F 1 "470uF" H 4441 6854 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 4350 6900 50  0001 C CNN
F 3 "~" H 4350 6900 50  0001 C CNN
F 4 "NO" H 4350 6900 50  0001 C CNN "INSERT?"
	1    4350 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 7000 4350 7000
Wire Wire Line
	4200 6800 4350 6800
Text Notes 4450 6800 0    50   ~ 0
DNI
Text Notes 1650 8000 0    50   ~ 0
DNI
Text Notes 2500 8000 0    50   ~ 0
DNI
Text Notes 3350 8000 0    50   ~ 0
DNI
Text Notes 4200 8000 0    50   ~ 0
DNI
NoConn ~ 4350 7850
NoConn ~ 3500 7850
NoConn ~ 2650 7850
NoConn ~ 1800 7850
Text Notes 900  5900 0    50   ~ 0
DNI
Text Notes 5850 5750 0    50   ~ 0
DNI
Wire Notes Line
	4300 1100 4300 2000
Wire Notes Line
	4300 2000 10200 2000
Wire Notes Line
	10200 2000 10200 1100
Wire Notes Line
	10200 1100 4300 1100
Wire Wire Line
	1000 4050 1600 4050
Wire Wire Line
	1000 1950 1600 1950
Wire Wire Line
	1600 2000 1600 1950
Connection ~ 1600 1950
Wire Wire Line
	1600 1950 1900 1950
Wire Wire Line
	1600 4100 1600 4050
Connection ~ 1600 4050
Wire Wire Line
	1600 4050 1900 4050
Wire Wire Line
	1750 4300 1800 4300
Wire Wire Line
	1800 4300 1800 4100
Wire Wire Line
	1800 4100 2450 4100
Wire Wire Line
	1800 2000 1800 2200
Wire Wire Line
	1800 2200 1750 2200
Text Notes 750  7550 0    118  ~ 24
DIFFUSER LAYER ALIGNMENT OR MOUNTING POINTS
$Comp
L power:-BATT #PWR?
U 1 1 648F5667
P 6200 6350
AR Path="/648F5667" Ref="#PWR?"  Part="1" 
AR Path="/603A0E05/648F5667" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 6200 6200 50  0001 C CNN
F 1 "-BATT" H 6215 6527 50  0000 C CNN
F 2 "" H 6200 6350 50  0001 C CNN
F 3 "" H 6200 6350 50  0001 C CNN
	1    6200 6350
	-1   0    0    1   
$EndComp
$Comp
L power:-BATT #PWR?
U 1 1 648F65BA
P 4100 7000
AR Path="/648F65BA" Ref="#PWR?"  Part="1" 
AR Path="/603A0E05/648F65BA" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 4100 6850 50  0001 C CNN
F 1 "-BATT" H 4115 7177 50  0000 C CNN
F 2 "" H 4100 7000 50  0001 C CNN
F 3 "" H 4100 7000 50  0001 C CNN
	1    4100 7000
	-1   0    0    1   
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 652A2C74
P 5950 6300
AR Path="/652A2C74" Ref="#PWR?"  Part="1" 
AR Path="/603A0E05/652A2C74" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 5950 6150 50  0001 C CNN
F 1 "+BATT" H 5965 6477 50  0000 C CNN
F 2 "" H 5950 6300 50  0001 C CNN
F 3 "" H 5950 6300 50  0001 C CNN
	1    5950 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 6300 5950 6300
Wire Wire Line
	5800 6200 5800 6000
Wire Wire Line
	5800 6000 6200 6000
Wire Wire Line
	6200 6000 6200 6350
$EndSCHEMATC
