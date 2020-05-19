EESchema Schematic File Version 4
LIBS:Interactive Core Memory Badge (Logic) Main v0.3-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title "Core 64 - IO Expansion"
Date "2020-05-18"
Rev "v0.3"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2900 4850 2    50   Output ~ 0
Q1P
Text GLabel 2900 4950 2    50   Output ~ 0
Q1N
Text GLabel 2900 4650 2    50   Input ~ 0
SENSE_PULSE
Text GLabel 2900 5050 2    50   Output ~ 0
Q2P
Text GLabel 2900 5150 2    50   Output ~ 0
Q2N
Text GLabel 2950 1700 2    50   Output ~ 0
Q3P
Text GLabel 2950 1800 2    50   Output ~ 0
Q3N
Text GLabel 2950 1900 2    50   Output ~ 0
Q4P
Text GLabel 2950 2000 2    50   Output ~ 0
Q4N
Text GLabel 2950 2200 2    50   Output ~ 0
Q5P
Text GLabel 2950 2300 2    50   Output ~ 0
Q5N
Text GLabel 2950 2400 2    50   Output ~ 0
Q6P
Text GLabel 2950 2500 2    50   Output ~ 0
Q6N
Text GLabel 2950 2600 2    50   Output ~ 0
Q7P
Text GLabel 2950 1300 2    50   Output ~ 0
Q9P
Text GLabel 2950 2900 2    50   Output ~ 0
Q8N
Text GLabel 2950 2800 2    50   Output ~ 0
Q8P
Text GLabel 2950 2700 2    50   Output ~ 0
Q7N
Text GLabel 2950 1600 2    50   Output ~ 0
Q10N
Text GLabel 2950 1500 2    50   Output ~ 0
Q10P
Text GLabel 2950 1400 2    50   Output ~ 0
Q9N
Text GLabel 2900 5250 2    50   Input ~ 0
HALL_SWITCH_1
Text GLabel 2900 4550 2    50   Output ~ 0
SENSE_RESET
Text Notes 550  700  0    118  ~ 0
IO EXPANDER FOR CORE DRIVE ARRAY
Text GLabel 2900 5350 2    50   Input ~ 0
HALL_SWITCH_2
Text GLabel 2900 5450 2    50   Input ~ 0
HALL_SWITCH_3
Text GLabel 2900 5550 2    50   Input ~ 0
HALL_SWITCH_4
Text GLabel 2900 4450 2    50   Output ~ 0
WRITE_ENABLE
Text GLabel 2650 6900 2    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 2650 7050 2    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	2650 7050 2600 7050
Text Notes 6250 4400 0    118  ~ 0
SUPERIOR ADD-ON SOCKET (OPTIONAL)
$Comp
L power:GND #PWR?
U 1 1 5EAA9421
P 800 7500
AR Path="/5E755787/5EAA9421" Ref="#PWR?"  Part="1" 
AR Path="/5EA63449/5EAA9421" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 800 7250 50  0001 C CNN
F 1 "GND" H 805 7325 50  0000 C CNN
F 2 "" H 800 7500 50  0001 C CNN
F 3 "" H 800 7500 50  0001 C CNN
	1    800  7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  7500 800  7450
Text GLabel 2900 4150 2    50   Input ~ 0
SPARE_3
Text GLabel 2900 4250 2    50   Input ~ 0
SPARE_4
Text GLabel 2900 4350 2    50   Input ~ 0
SPARE_5
$Comp
L power:GNDD #PWR0130
U 1 1 5E892DA1
P 1950 5850
F 0 "#PWR0130" H 1950 5600 50  0001 C CNN
F 1 "GNDD" H 1954 5694 50  0000 C CNN
F 2 "" H 1950 5850 50  0001 C CNN
F 3 "" H 1950 5850 50  0001 C CNN
	1    1950 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0154
U 1 1 5E8936A9
P 1900 3200
F 0 "#PWR0154" H 1900 2950 50  0001 C CNN
F 1 "GNDD" H 1904 3044 50  0000 C CNN
F 2 "" H 1900 3200 50  0001 C CNN
F 3 "" H 1900 3200 50  0001 C CNN
	1    1900 3200
	1    0    0    -1  
$EndComp
Text Notes 700  6350 0    118  ~ 0
OLED DISPLAY (OPTIONAL)
$Comp
L Connector:Conn_01x04_Female X1
U 1 1 5E830BC9
P 2400 7300
F 0 "X1" V 2300 6950 50  0000 L CNN
F 1 "SSW-104-22-L-S-VS" V 2500 6850 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical_SMD_and_TH_Pin1Left" H 2400 7300 50  0001 C CNN
F 3 "~" H 2400 7300 50  0001 C CNN
	1    2400 7300
	0    -1   1    0   
$EndComp
Wire Wire Line
	2600 7100 2600 7050
Wire Wire Line
	2500 6900 2500 7100
Wire Wire Line
	2500 6900 2650 6900
Wire Wire Line
	1700 7000 2400 7000
Wire Wire Line
	2400 7000 2400 7100
Wire Wire Line
	2300 7050 2300 7100
Text Notes 750  6650 0    50   ~ 0
0.96” (128x64)\nI2C 4-pins, ADDRESS: 0x3C (60 decimal)\nAlternate is 0x3D, not 0x7A or 0x78 (wrong 8-bit)!
$Comp
L badgelife_shitty_addon_v169bis:SAO_conn_SFH11-NBPC-D03-ST-BK X4
U 1 1 5E88FF30
P 7200 4950
F 0 "X4" H 7379 4947 50  0000 L CNN
F 1 "SAO_conn_SFH11-NBPC-D03-ST-BK" H 7379 4854 50  0000 L CNN
F 2 "badgelife_sao_v169bis:Badgelife-SAOv169-BADGE-2x3" H 7200 5150 50  0001 C CNN
F 3 "" H 7200 5150 50  0001 C CNN
	1    7200 4950
	1    0    0    -1  
$EndComp
$Comp
L Interface_Expansion:MCP23017_SO U6
U 1 1 5E900DF7
P 2200 4750
F 0 "U6" H 1750 5750 50  0000 C CNN
F 1 "MCP23017_SO" H 2100 5250 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 2400 3750 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 2400 3650 50  0001 L CNN
	1    2200 4750
	1    0    0    -1  
$EndComp
Text GLabel 6900 4800 0    50   Input ~ 0
3V3_800mA
$Comp
L power:GND #PWR?
U 1 1 5E90735C
P 6750 5100
AR Path="/5E755787/5E90735C" Ref="#PWR?"  Part="1" 
AR Path="/5EA63449/5E90735C" Ref="#PWR0158"  Part="1" 
F 0 "#PWR0158" H 6750 4850 50  0001 C CNN
F 1 "GND" H 6755 4925 50  0000 C CNN
F 2 "" H 6750 5100 50  0001 C CNN
F 3 "" H 6750 5100 50  0001 C CNN
	1    6750 5100
	1    0    0    -1  
$EndComp
Text GLabel 7000 5500 0    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 7000 4500 0    50   BiDi ~ 0
I2C_DATA
Text Notes 6250 5800 0    50   ~ 0
SAO v1.69bis (https://hackaday.io/project/52950-shitty-add-ons) using Sullins SFH11-NBPC-D03-ST-BK female header\nhttps://www.digikey.com/product-detail/en/sullins-connector-solutions/SFH11-NBPC-D03-ST-BK/S9717-ND/4558818
Wire Wire Line
	6900 4800 6950 4800
Wire Wire Line
	6950 4600 7050 4600
Wire Wire Line
	6750 5100 6750 5050
Wire Wire Line
	6750 5050 6950 5050
Wire Wire Line
	6950 5400 7100 5400
Wire Wire Line
	7000 4500 7150 4500
Wire Wire Line
	7150 4500 7150 4650
Wire Wire Line
	7000 5500 7200 5500
Wire Wire Line
	7200 5500 7200 5350
Wire Wire Line
	7050 4600 7050 4650
Text GLabel 1550 1400 0    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 1550 1300 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 1500 4050 0    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 1500 3950 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 7450 5300 2    50   BiDi ~ 0
SAO1_GPIO2(RX)
Text GLabel 7450 4700 2    50   BiDi ~ 0
SAO1_GPIO1(TX)
Wire Wire Line
	7300 5350 7400 5350
Wire Wire Line
	7400 5350 7400 5300
Wire Wire Line
	7400 5300 7450 5300
Wire Wire Line
	7250 4650 7400 4650
Wire Wire Line
	7400 4650 7400 4700
Wire Wire Line
	7400 4700 7450 4700
Wire Wire Line
	7100 5350 7100 5400
$Comp
L Jumper:SolderJumper_3_Open JP4
U 1 1 5E81A96A
P 1850 7250
F 0 "JP4" V 1700 7300 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 1450 6800 50  0001 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm_NumberLabels" H 1850 7250 50  0001 C CNN
F 3 "~" H 1850 7250 50  0001 C CNN
	1    1850 7250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 7050 2300 7050
Wire Wire Line
	2000 7250 2050 7250
Wire Wire Line
	2050 7250 2050 7050
Wire Wire Line
	1700 7150 1700 7000
Wire Wire Line
	1550 7450 1550 7350
Connection ~ 1550 7450
Wire Wire Line
	1550 7450 1850 7450
Wire Wire Line
	1550 6950 1850 6950
Wire Wire Line
	1850 6950 1850 7050
Connection ~ 1550 6950
Text GLabel 2400 1000 2    50   Input ~ 0
3V3_800mA
Text GLabel 2350 3650 2    50   Input ~ 0
3V3_800mA
Wire Wire Line
	1550 2200 750  2200
Wire Wire Line
	750  1000 750  2200
Wire Wire Line
	2250 3200 1900 3200
Wire Wire Line
	1450 2700 1550 2700
Connection ~ 1900 3200
Wire Wire Line
	1550 2800 1450 2800
Wire Wire Line
	1450 2800 1450 2700
Wire Wire Line
	1550 2900 1450 2900
Text Notes 750  850  0    50   ~ 0
I2C ID: 0100110 (7-bit address) 0x26 (38 decimal)
Wire Wire Line
	2350 3650 2200 3650
Wire Wire Line
	2200 3650 750  3650
Wire Wire Line
	750  3650 750  4850
Wire Wire Line
	750  4850 1500 4850
Connection ~ 2200 3650
Connection ~ 750  4850
Wire Wire Line
	1500 5450 1400 5450
Connection ~ 1950 5850
Wire Wire Line
	1950 5850 2200 5850
Wire Wire Line
	1500 5350 1400 5350
Wire Wire Line
	1400 5350 1400 5450
Text GLabel 1550 2000 0    50   Output ~ 0
IOEXP_ID32_INT_A
Text GLabel 1550 1900 0    50   Output ~ 0
IOEXP_ID32_INT_B
Text GLabel 1500 4650 0    50   Output ~ 0
IOEXP_ID33_INT_A
Text GLabel 1500 4550 0    50   Output ~ 0
IOEXP_ID33_INT_B
Text GLabel 850  6800 2    50   Input ~ 0
3V3_800mA
Wire Wire Line
	800  6950 800  6800
Wire Wire Line
	800  6800 850  6800
$Comp
L Connector:Conn_01x04_Male X3
U 1 1 5E87C9AB
P 4750 5000
F 0 "X3" H 4722 4881 50  0000 R CNN
F 1 "Conn_01x04_Male" H 4722 4974 50  0000 R CNN
F 2 "Connector_JST:JST_SH_SM04B-SRSS-TB_1x04-1MP_P1.00mm_Horizontal" H 4750 5000 50  0001 C CNN
F 3 "~" H 4750 5000 50  0001 C CNN
	1    4750 5000
	1    0    0    1   
$EndComp
Text Notes 4100 4400 0    118  ~ 0
QWIIC (OPTIONAL)
Text GLabel 5150 5000 2    50   Input ~ 0
3V3_800mA
$Comp
L power:GND #PWR?
U 1 1 5E8E126F
P 5150 5100
AR Path="/5E755787/5E8E126F" Ref="#PWR?"  Part="1" 
AR Path="/5EA63449/5E8E126F" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 5150 4850 50  0001 C CNN
F 1 "GND" H 5155 4925 50  0000 C CNN
F 2 "" H 5150 5100 50  0001 C CNN
F 3 "" H 5150 5100 50  0001 C CNN
	1    5150 5100
	1    0    0    -1  
$EndComp
Text GLabel 5150 4800 2    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 5150 4900 2    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	4950 4800 5150 4800
Wire Wire Line
	4950 4900 5150 4900
Wire Wire Line
	4950 5100 5150 5100
Text Notes 4850 1450 0    50   ~ 10
IO Expansion header
$Comp
L Device:CP1_Small C?
U 1 1 5EA590CF
P 750 2600
AR Path="/5E755787/5EA590CF" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA590CF" Ref="C?"  Part="1" 
AR Path="/5EA63449/5EA590CF" Ref="C6"  Part="1" 
F 0 "C6" H 841 2646 50  0000 L CNN
F 1 "0.1uF" H 841 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 750 2600 50  0001 C CNN
F 3 "~" H 750 2600 50  0001 C CNN
	1    750  2600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 5EA5B187
P 750 5700
AR Path="/5E755787/5EA5B187" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA5B187" Ref="C?"  Part="1" 
AR Path="/5EA63449/5EA5B187" Ref="C7"  Part="1" 
F 0 "C7" H 841 5746 50  0000 L CNN
F 1 "0.1uF" H 841 5655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 750 5700 50  0001 C CNN
F 3 "~" H 750 5700 50  0001 C CNN
	1    750  5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  2200 750  2350
Connection ~ 750  2200
Wire Wire Line
	750  2700 750  3200
Wire Wire Line
	750  5800 750  5850
Wire Wire Line
	6950 4800 6950 4600
Wire Wire Line
	6950 5050 6950 5400
$Comp
L Connector:Conn_01x08_Female J5
U 1 1 5EB0C89C
P 5450 2100
F 0 "J5" H 5300 2650 50  0000 L CNN
F 1 "Conn_01x08_Female" H 5100 2550 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 5450 2100 50  0001 C CNN
F 3 "~" H 5450 2100 50  0001 C CNN
	1    5450 2100
	1    0    0    -1  
$EndComp
Text GLabel 5250 2300 0    50   Output ~ 0
WRITE_ENABLE
Text GLabel 2900 3950 2    50   Output ~ 0
SPARE_1
Text GLabel 2900 4050 2    50   Output ~ 0
SPARE_2
Text GLabel 5250 2000 0    50   Input ~ 0
SPARE_3
Text GLabel 5250 2100 0    50   Input ~ 0
SPARE_4
Text GLabel 5250 2200 0    50   Input ~ 0
SPARE_5
Wire Wire Line
	2250 1000 2400 1000
Wire Wire Line
	750  1000 2250 1000
Connection ~ 2250 1000
$Comp
L Interface_Expansion:MCP23017_SO U5
U 1 1 5E8CA59F
P 2250 2100
F 0 "U5" H 1850 3100 50  0000 C CNN
F 1 "MCP23017_SO" H 2150 2550 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 2450 1100 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 2450 1000 50  0001 L CNN
	1    2250 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3200 1900 3200
Wire Wire Line
	750  3200 1450 3200
Connection ~ 1450 3200
Wire Wire Line
	1450 3200 1450 2900
Wire Wire Line
	750  4850 750  5350
Wire Wire Line
	1450 2700 1450 2350
Wire Wire Line
	1450 2350 750  2350
Connection ~ 1450 2700
Connection ~ 750  2350
Wire Wire Line
	750  2350 750  2500
Text Notes 750  3550 0    50   ~ 0
I2C ID: 0100111 (7-bit address) 0x27 (39 decimal)
Wire Wire Line
	750  5850 1950 5850
Wire Wire Line
	1500 5550 1400 5550
Wire Wire Line
	1400 5550 1400 5450
Connection ~ 1400 5450
Wire Wire Line
	750  5350 1400 5350
Connection ~ 750  5350
Wire Wire Line
	750  5350 750  5600
Connection ~ 1400 5350
Wire Wire Line
	4950 5000 5150 5000
Text Notes 4150 6350 0    118  ~ 0
MICRO SD CARD (OPTIONAL)
Text Notes 4150 6500 0    50   ~ 0
Suggested: https://www.adafruit.com/product/254
$Comp
L power:GNDD #PWR?
U 1 1 5EAA1F5C
P 4850 7450
AR Path="/5E755787/5EAA1F5C" Ref="#PWR?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EAA1F5C" Ref="#PWR?"  Part="1" 
AR Path="/5EAA1F5C" Ref="#PWR?"  Part="1" 
AR Path="/5EA63449/5EAA1F5C" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 4850 7200 50  0001 C CNN
F 1 "GNDD" H 4854 7295 50  0000 C CNN
F 2 "" H 4850 7450 50  0001 C CNN
F 3 "" H 4850 7450 50  0001 C CNN
	1    4850 7450
	1    0    0    -1  
$EndComp
Text GLabel 5250 6700 0    50   Output ~ 0
SD_CD
Text GLabel 5250 7100 0    50   Input ~ 0
SD_CLK
Text GLabel 5250 7000 0    50   Output ~ 0
SD_DO
Text GLabel 5250 6900 0    50   Input ~ 0
SD_DI
Text GLabel 5250 6800 0    50   Input ~ 0
SD_CS
$Comp
L Connector:Conn_01x08_Female X2
U 1 1 5EAA1F67
P 5450 7000
AR Path="/5EA63449/5EAA1F67" Ref="X2"  Part="1" 
AR Path="/5EAA1F67" Ref="J?"  Part="1" 
F 0 "X2" H 5300 6500 50  0000 L CNN
F 1 "Conn_01x08_Female" H 5050 6400 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 5450 7000 50  0001 C CNN
F 3 "~" H 5450 7000 50  0001 C CNN
	1    5450 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 7400 4600 7300
$Comp
L power:+VSW #PWR?
U 1 1 5EAA1F6E
P 4600 7300
AR Path="/5E755787/5EAA1F6E" Ref="#PWR?"  Part="1" 
AR Path="/5EAA1F6E" Ref="#PWR?"  Part="1" 
AR Path="/5EA63449/5EAA1F6E" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 4600 7150 50  0001 C CNN
F 1 "+VSW" H 4615 7475 50  0000 C CNN
F 2 "" H 4600 7300 50  0001 C CNN
F 3 "" H 4600 7300 50  0001 C CNN
	1    4600 7300
	1    0    0    -1  
$EndComp
NoConn ~ 5250 7300
Wire Wire Line
	4850 7450 4850 7200
Wire Wire Line
	4850 7200 5250 7200
Wire Wire Line
	5250 7400 4600 7400
$Comp
L Jumper:SolderJumper_3_Open JP3
U 1 1 5E82F3CE
P 1550 7150
F 0 "JP3" V 1650 7200 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 900 7050 50  0001 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm_NumberLabels" H 1550 7150 50  0001 C CNN
F 3 "~" H 1550 7150 50  0001 C CNN
	1    1550 7150
	0    -1   -1   0   
$EndComp
Text GLabel 5250 1900 0    50   Input ~ 0
SPARE_2
Text GLabel 5250 1800 0    50   Input ~ 0
SPARE_1
$Comp
L power:GND #PWR?
U 1 1 5EC9F516
P 5250 2500
AR Path="/5E755787/5EC9F516" Ref="#PWR?"  Part="1" 
AR Path="/5EA63449/5EC9F516" Ref="#PWR0166"  Part="1" 
F 0 "#PWR0166" H 5250 2250 50  0001 C CNN
F 1 "GND" H 5255 2325 50  0000 C CNN
F 2 "" H 5250 2500 50  0001 C CNN
F 3 "" H 5250 2500 50  0001 C CNN
	1    5250 2500
	1    0    0    -1  
$EndComp
Text GLabel 5250 2400 0    50   Input ~ 0
3V3_800mA
Wire Wire Line
	800  7450 1550 7450
Wire Wire Line
	800  6950 1550 6950
$EndSCHEMATC
