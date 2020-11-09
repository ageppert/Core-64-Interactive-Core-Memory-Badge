EESchema Schematic File Version 4
LIBS:Core64 LB v0.4-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 5
Title "Core 64 - Main Sheet Index"
Date "2020-08-27"
Rev "0.4"
Comp "Andy Geppert - Machine Ideas, LLC"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3450 850  1550 250 
U 5E755AC8
F0 "Driver" 50
F1 "Core64 LB v0.4 Driver.sch" 50
$EndSheet
Text Notes 2650 700  0    118  ~ 0
CORE 64 INTERACTIVE CORE MEMORY BADGE V0.4 LOGIC BOARD
$Sheet
S 6150 850  1500 250 
U 5E75D6AB
F0 "Sense_LEDs_ID" 50
F1 "Core64 LB v0.4 Sense_LEDs_ID.sch" 50
$EndSheet
$Sheet
S 8750 850  1500 250 
U 5EA63449
F0 "Expansion" 50
F1 "Core64 LB v0.4 Expansion.sch" 50
$EndSheet
Wire Wire Line
	5250 3050 5300 3050
Text Notes 8900 5750 0    50   ~ 0
Reads 1/4 voltage of +VSW\n(after RPP) before regulators.
Text Notes 7950 1750 0    50   ~ 10
Teensy LC has incoming USB power/programming on board.
Wire Wire Line
	1400 5150 5650 5150
Wire Wire Line
	5650 5250 1400 5250
Wire Wire Line
	5250 3150 5300 3150
Wire Wire Line
	4250 4050 5650 4050
Wire Wire Line
	4250 3950 5650 3950
Wire Wire Line
	7650 4550 7900 4550
Text GLabel 8400 5700 2    50   Input ~ 0
VBAT_MON
Wire Wire Line
	7650 4750 7800 4750
Wire Wire Line
	7650 4650 7750 4650
Wire Wire Line
	7650 5050 7750 5050
Text GLabel 1400 5150 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 5250 5050 0    50   Output ~ 0
LED_ARRAY_3V3_SIG
$Sheet
S 750  850  1450 250 
U 5E7548ED
F0 "Power" 50
F1 "Core64 LB v0.4 Power.sch" 50
$EndSheet
Text Notes 650  2400 0    236  ~ 0
TEENSY 3.2 MCU\nCONNECTIONS
Text Notes 6350 7100 0    50   ~ 10
BOM TO DO: TEENSY requires at least three headers\nthat do not get auto populated in the BOM from KiCAD.
Text GLabel 4250 4650 0    50   Output ~ 0
SPI_CLK
Text GLabel 8900 4450 2    50   Input ~ 0
SD_SPI_CD
$Comp
L CORE_64_LIBRARY:Core_64_Logo L1
U 1 1 5EC1FCB7
P 1550 6900
F 0 "L1" H 1575 6947 50  0000 L CNN
F 1 "Core_64_Logo" H 1600 6850 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Core64_Logo" H 1550 6900 50  0001 C CNN
F 3 "" H 1550 6900 50  0001 C CNN
	1    1550 6900
	1    0    0    -1  
$EndComp
$Comp
L CORE_64_LIBRARY:Core_64_Logo L2
U 1 1 5EC30987
P 5300 7450
F 0 "L2" H 5325 7497 50  0000 L CNN
F 1 "Core_64_Logo" H 5325 7404 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Core64_Logo" H 5300 7450 50  0001 C CNN
F 3 "" H 5300 7450 50  0001 C CNN
	1    5300 7450
	1    0    0    -1  
$EndComp
$Comp
L CORE_64_LIBRARY:Core_64_Github_Link L3
U 1 1 5EC378E3
P 5300 7750
F 0 "L3" H 5325 7797 50  0000 L CNN
F 1 "Core_64_Github_Link" H 5350 7700 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Github_Link_Large" H 5300 7750 50  0001 C CNN
F 3 "" H 5300 7750 50  0001 C CNN
	1    5300 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5050 5300 5050
Text Notes 550  1600 0    236  ~ 47
*** MUST CUT THE USB-VIN bridge on TEENSY 3.2 ***
$Comp
L power:GNDD #PWR?
U 1 1 5F4EB827
P 7700 5600
AR Path="/5EA63449/5F4EB827" Ref="#PWR?"  Part="1" 
AR Path="/5F4EB827" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 7700 5350 50  0001 C CNN
F 1 "GNDD" H 7704 5444 50  0000 C CNN
F 2 "" H 7700 5600 50  0001 C CNN
F 3 "" H 7700 5600 50  0001 C CNN
	1    7700 5600
	1    0    0    -1  
$EndComp
$Comp
L Teensy:Teensy3.2 U2
U 1 1 5F49143E
P 6650 4050
F 0 "U2" H 6650 5648 60  0000 C CNN
F 1 "Teensy3.2" H 6650 5538 60  0000 C CNN
F 2 "Teensy:Teensy30_31_32_LC_SMD_SOCKETS" H 6650 3250 60  0001 C CNN
F 3 "" H 6650 3250 60  0000 C CNN
	1    6650 4050
	1    0    0    -1  
$EndComp
Text GLabel 7950 2100 2    50   Output ~ 0
TEENSY_VUSB
Text Notes 6300 6750 0    50   ~ 0
All non-polarized capacitors are X7R or X5R ceramic unless otherwise noted.
Text GLabel 5250 3050 0    50   Output ~ 0
Q1P
Text GLabel 5250 3150 0    50   Output ~ 0
Q1N
Text GLabel 8050 5250 2    50   Input ~ 0
SENSE_PULSE
Text GLabel 5250 3250 0    50   Output ~ 0
Q2P
Text GLabel 5250 3350 0    50   Output ~ 0
Q2N
Text GLabel 5250 3450 0    50   Output ~ 0
Q3P
Text GLabel 5250 3550 0    50   Output ~ 0
Q3N
Text GLabel 5250 3650 0    50   Output ~ 0
Q4P
Text GLabel 5250 3750 0    50   Output ~ 0
Q4N
Text GLabel 5250 5350 0    50   Output ~ 0
Q5P
Text GLabel 8050 4150 2    50   Output ~ 0
Q6P
Text GLabel 8050 4050 2    50   Output ~ 0
Q6N
Text GLabel 8050 3950 2    50   Output ~ 0
Q7P
Text GLabel 8050 3550 2    50   Output ~ 0
Q9P
Text GLabel 8050 3650 2    50   Output ~ 0
Q8N
Text GLabel 8050 3750 2    50   Output ~ 0
Q8P
Text GLabel 8050 3850 2    50   Output ~ 0
Q7N
Text GLabel 8050 3250 2    50   Output ~ 0
Q10N
Text GLabel 8050 3350 2    50   Output ~ 0
Q10P
Text GLabel 8050 3450 2    50   Output ~ 0
Q9N
Text GLabel 5250 4950 0    50   Output ~ 0
SENSE_RESET
Text GLabel 8050 5150 2    50   Output ~ 0
WRITE_ENABLE
Text GLabel 9650 4350 2    50   Input ~ 0
SPARE_ANA_7
Text GLabel 3550 4750 0    50   BiDi ~ 0
SPARE_3_or_CP_ADDR_2
Wire Notes Line
	6650 4100 5850 4100
Wire Notes Line
	6650 4600 5850 4600
Wire Notes Line
	7450 4800 6650 4800
Wire Notes Line
	6650 2650 6650 4800
Wire Notes Line
	7450 4400 6650 4400
Wire Notes Line
	7450 3700 6650 3700
Text GLabel 4000 2850 0    50   BiDi ~ 0
SAO_G1_or_SPARE_1_or_CP_ADDR_0
Wire Wire Line
	5650 2750 5600 2750
Wire Wire Line
	5600 2750 5600 4350
Wire Wire Line
	7700 5500 7700 4950
Wire Wire Line
	7700 4250 7650 4250
Wire Wire Line
	7700 5500 7700 5600
Wire Wire Line
	7650 4950 7700 4950
Connection ~ 7700 4950
Wire Wire Line
	7700 4950 7700 4250
Wire Wire Line
	5650 4350 5600 4350
Text GLabel 2400 3050 0    50   Output ~ 0
OLED_SPI_CS
Text GLabel 2400 3150 0    50   Output ~ 0
OLED_SPI_DC
Text Notes 600  6300 0    98   ~ 0
QxP is normally high, low to activate matrix transistor.\nQxN is normally low, high to activate matrix transistor.
Text GLabel 2400 3250 0    50   Output ~ 0
TOUCH_SPI_CS
Text GLabel 1350 3350 0    50   Output ~ 0
IR_OUT
Text GLabel 4250 3650 0    50   Output ~ 0
TFT_SPI_CS
Text GLabel 4250 3750 0    50   Output ~ 0
TFT_SPI_DC
Wire Wire Line
	7850 4850 7850 2400
Wire Wire Line
	7650 4850 7850 4850
Wire Wire Line
	5650 4250 5550 4250
Wire Wire Line
	5550 4250 5550 1800
Wire Wire Line
	7750 5050 7750 4650
Connection ~ 7750 4650
Wire Wire Line
	7750 4650 7750 3150
Wire Wire Line
	7650 3150 7750 3150
Text Notes 5900 2200 0    50   ~ 0
Teensy 3V3 is only used for AREF and\nTeensyView. Current is limited, do not\nuse for anything else.
Text GLabel 4250 5050 0    50   Output ~ 0
TFT_BACKLIGHT
Wire Wire Line
	7800 4750 7800 2100
Wire Wire Line
	7800 2100 7950 2100
Wire Wire Line
	7900 4550 7900 5700
Wire Wire Line
	7900 5700 8400 5700
Connection ~ 7750 3150
Wire Wire Line
	7750 3150 7750 1800
Text GLabel 9650 3050 2    50   Input ~ 0
SPARE_ANA_8
Text GLabel 4250 4050 0    50   Input ~ 0
SPI_SDI
Text GLabel 4250 3950 0    50   Output ~ 0
SPI_SDO
Wire Wire Line
	5650 3450 5300 3450
Wire Wire Line
	5650 3550 5250 3550
Wire Wire Line
	5650 3750 5300 3750
Wire Wire Line
	5650 3850 2450 3850
Wire Notes Line
	5350 2650 5350 5500
Wire Notes Line
	4350 5500 4350 2650
Text Notes 4600 2650 0    50   ~ 0
PRIMARY USE\n1 Core Plane
Wire Notes Line
	7950 5500 7950 2650
Wire Notes Line
	8750 2650 8750 5500
Text GLabel 1400 4550 0    50   BiDi ~ 0
SPARE_ADC_DAC
Text GLabel 1400 4850 0    50   BiDi ~ 0
SPARE_5
Text GLabel 1400 3850 0    50   BiDi ~ 0
SPARE_4_IR_IN
Wire Wire Line
	3550 4750 5650 4750
Wire Wire Line
	5300 5050 5300 5100
Wire Wire Line
	4400 5100 4400 5050
Wire Wire Line
	5300 5050 5250 5050
Wire Wire Line
	5650 2850 4000 2850
Wire Wire Line
	5650 2950 4000 2950
Wire Wire Line
	7650 4150 8050 4150
Wire Wire Line
	7650 4050 8050 4050
Wire Wire Line
	7650 3950 8050 3950
Wire Wire Line
	7650 3850 8050 3850
Wire Wire Line
	7650 3750 8050 3750
Wire Wire Line
	7650 3650 8050 3650
Wire Wire Line
	7650 3550 8050 3550
Wire Wire Line
	7650 3450 8050 3450
Wire Wire Line
	7650 3350 8050 3350
Wire Wire Line
	7650 3250 8050 3250
Wire Wire Line
	7650 3050 9650 3050
Wire Wire Line
	7650 4350 9650 4350
Wire Wire Line
	8900 4450 8800 4450
Wire Wire Line
	7650 5250 8050 5250
Wire Wire Line
	7650 5150 8050 5150
Text GLabel 4000 2950 0    50   BiDi ~ 0
SAO_G2_or_SPARE_2_or_CP_ADDR_1
Text Notes 8100 2650 0    50   ~ 0
PRIMARY USE\n1 Core Plane
Text Notes 3600 5800 0    50   ~ 0
3.2” TFT as LED\nArray Replacement\n[OPTIONAL]
Wire Notes Line
	4350 3500 3600 3500
Text Notes 2750 2650 0    50   ~ 0
8 Core Plane Selector [OPTIONAL]\nRequires other modificaitons.
Wire Wire Line
	5300 3050 5300 3100
Wire Wire Line
	5300 3100 5000 3100
Wire Wire Line
	5000 3100 5000 3050
Wire Wire Line
	5000 3050 2400 3050
Wire Wire Line
	5650 4550 1400 4550
Text Notes 3300 6700 0    118  ~ 0
SILKSCREEN BACK
Text Notes 5800 2400 0    50   ~ 0
SILKSCREEN UNDER TEENSY: CUT VIN-BUSB
Connection ~ 5600 4350
Wire Wire Line
	5600 4350 5600 5500
Connection ~ 5300 5050
Wire Wire Line
	5250 3350 5300 3350
Wire Wire Line
	5250 3250 5300 3250
Connection ~ 5300 3050
Wire Wire Line
	5300 3050 5650 3050
Wire Wire Line
	5650 4450 5450 4450
Wire Wire Line
	5450 4450 5450 2200
$Comp
L Device:R R?
U 1 1 5F73FDF3
P 5450 2000
AR Path="/5E755787/5F73FDF3" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5F73FDF3" Ref="R?"  Part="1" 
AR Path="/5F73FDF3" Ref="R5"  Part="1" 
F 0 "R5" H 5250 2100 50  0000 L CNN
F 1 "10K" H 5250 2000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5380 2000 50  0001 C CNN
F 3 "~" H 5450 2000 50  0001 C CNN
	1    5450 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4150 5500 4150
Wire Wire Line
	5450 1850 5450 1800
Wire Wire Line
	5450 1800 5550 1800
Connection ~ 5550 1800
Wire Wire Line
	5550 1800 6350 1800
Wire Wire Line
	5250 2200 5450 2200
Connection ~ 5450 2200
Wire Wire Line
	5450 2200 5450 2150
Text Notes 6500 6400 0    50   ~ 0
To use the Teensy 3.2 RTC you must add two things:\n1) Crystal: 32.768 kHz, 12.5 pF Citizen CFS-206, Digi-Key 300-8763-ND (5ppm)\n     (on bottom side of the Teensy board, not shown in this schematic)\n2) Battery Holder: MPD BC-2003, Digi-Key BC-2003-TR-CT-ND\n3) Battery: 3V CR2032 Digi-Key P189-ND\n     (battery and holder on backside of logic board)\n
Connection ~ 7700 5500
Wire Wire Line
	5600 5500 5750 5500
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5F7507F8
P 5050 2200
AR Path="/5E7548ED/5F7507F8" Ref="J?"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5F7507F8" Ref="J?"  Part="1" 
AR Path="/5F7507F8" Ref="J4"  Part="1" 
F 0 "J4" H 5050 2300 50  0000 C CNN
F 1 "PRG" H 5200 2200 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 5050 2200 50  0001 C CNN
F 3 "~" H 5050 2200 50  0001 C CNN
	1    5050 2200
	-1   0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5F7F611E
P 5500 6100
F 0 "BT1" H 5200 6200 50  0000 L CNN
F 1 "3V" H 5250 6100 50  0000 L CNN
F 2 "Battery:BatteryHolder_MPD_BC2003_1x2032" V 5500 6160 50  0001 C CNN
F 3 "~" V 5500 6160 50  0001 C CNN
	1    5500 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 6200 5750 6200
Text Notes 5200 6400 0    50   ~ 0
SILKSCREEN:\nRTC BAT. CR2032
Wire Wire Line
	5650 4950 5250 4950
Text GLabel 4250 4850 0    50   Output ~ 0
SPI_RESET
Wire Wire Line
	4300 4850 4300 4900
Connection ~ 4300 4850
Wire Wire Line
	4300 4850 4250 4850
Wire Wire Line
	3750 4900 3750 4850
Wire Wire Line
	3750 4850 1400 4850
Text GLabel 6450 1900 2    50   Output ~ 0
TEENSY_3V3
Wire Wire Line
	6450 1900 6350 1900
Wire Wire Line
	6350 1900 6350 1800
Connection ~ 6350 1800
Wire Wire Line
	6350 1800 7750 1800
Wire Wire Line
	3750 4900 4300 4900
Text GLabel 2400 3850 0    50   Output ~ 0
TEENSYVIEW_SPI_CS
Wire Wire Line
	2450 3850 2450 3900
Connection ~ 2450 3850
Wire Wire Line
	2450 3850 2400 3850
Wire Wire Line
	5300 3750 5300 3800
Wire Wire Line
	5300 3800 5000 3800
Wire Wire Line
	5000 3800 5000 3750
Wire Wire Line
	5000 3750 4250 3750
Connection ~ 5300 3750
Wire Wire Line
	5300 3750 5250 3750
Connection ~ 5300 3650
Wire Wire Line
	5300 3150 5300 3200
Wire Wire Line
	5300 3200 5000 3200
Wire Wire Line
	5000 3200 5000 3150
Wire Wire Line
	5000 3150 2400 3150
Connection ~ 5300 3150
Wire Wire Line
	5300 3150 5650 3150
Wire Wire Line
	2400 3250 5000 3250
Wire Wire Line
	5000 3250 5000 3300
Wire Wire Line
	5000 3300 5300 3300
Wire Wire Line
	5300 3300 5300 3250
Connection ~ 5300 3250
Wire Wire Line
	5300 3250 5650 3250
Wire Wire Line
	5300 3350 5300 3400
Connection ~ 5300 3350
Wire Wire Line
	5300 3350 5650 3350
Wire Wire Line
	5300 3500 5300 3450
Connection ~ 5300 3450
Wire Wire Line
	5300 3450 5250 3450
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5F9FB501
P 9400 2200
AR Path="/5E7548ED/5F9FB501" Ref="J?"  Part="1" 
AR Path="/5F9FB501" Ref="J12"  Part="1" 
F 0 "J12" V 9400 2000 50  0000 R CNN
F 1 "TEENSY Cur. Mon." V 9300 2000 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 9400 2200 50  0001 C CNN
F 3 "~" H 9400 2200 50  0001 C CNN
	1    9400 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7850 2400 9400 2400
Text Notes 550  6700 0    118  ~ 0
SILKSCREEN FRONT
Text Notes 3300 6950 0    50   ~ 0
1) Serial Number Sticker Zone\n2) Board name, version, date, Machine Ideas
Text Notes 550  6900 0    50   ~ 0
1) 
Wire Wire Line
	1350 3350 1550 3350
Wire Wire Line
	1550 3900 2450 3900
Wire Wire Line
	5250 5350 5650 5350
Text GLabel 8050 5350 2    50   Output ~ 0
Q5N
Wire Wire Line
	7650 5350 8050 5350
Wire Wire Line
	9400 2400 9500 2400
Connection ~ 9400 2400
Connection ~ 9500 2400
Wire Wire Line
	9500 2400 10350 2400
Wire Notes Line
	9550 2650 9550 5500
Text Notes 8900 2650 0    50   ~ 0
SD Card Detect\n[OPTIONAL]
Wire Notes Line
	10350 2650 10350 5500
Text Notes 9700 2600 0    50   ~ 0
Spare Analog
Wire Notes Line
	7950 2650 10350 2650
Wire Notes Line
	7950 5500 10350 5500
Text Notes 900  2600 0    50   ~ 0
Spare IO
Wire Notes Line
	650  2650 5350 2650
Wire Notes Line
	3600 3500 3600 5500
Wire Wire Line
	5300 3650 5250 3650
Wire Wire Line
	5650 3650 5300 3650
Wire Wire Line
	5300 3650 5300 3700
Wire Wire Line
	5000 3650 4250 3650
Wire Wire Line
	5300 3700 5000 3700
Wire Wire Line
	5000 3700 5000 3650
Text Notes 1800 2650 0    50   ~ 0
SPI Devices\n[OPTIONAL]
Wire Wire Line
	5500 4150 5500 5900
Wire Wire Line
	5750 6200 5750 5500
Connection ~ 5750 5500
Wire Wire Line
	5750 5500 7700 5500
Wire Notes Line
	5150 5850 9800 5850
Wire Notes Line
	9800 5850 9800 6450
Wire Notes Line
	9800 6450 5150 6450
Wire Notes Line
	5150 6450 5150 5850
Text Notes 5900 5800 0    50   ~ 0
RTC CLOCK BATTERY [OPTIONAL]
Wire Wire Line
	4300 4850 5650 4850
Wire Wire Line
	4250 4650 5650 4650
Wire Wire Line
	5000 3350 2450 3350
Text GLabel 2400 3350 0    50   Output ~ 0
TEENSYVIEW_SPI_DC
Wire Wire Line
	5000 3400 5000 3350
Wire Wire Line
	5300 3400 5000 3400
Wire Wire Line
	1550 3350 1550 3400
Wire Wire Line
	5000 3500 5300 3500
Wire Wire Line
	5000 3450 5000 3500
Wire Wire Line
	2400 3450 5000 3450
Text GLabel 2400 3450 0    50   Output ~ 0
SD_SPI_CS
Wire Wire Line
	2450 3350 2450 3400
Wire Wire Line
	2450 3400 1550 3400
Connection ~ 2450 3350
Wire Wire Line
	2450 3350 2400 3350
Wire Wire Line
	4400 5050 4250 5050
Wire Wire Line
	5300 5100 4400 5100
Wire Notes Line
	650  5000 2550 5000
Text Notes 1000 5650 0    50   ~ 0
I2C here, there, and everywhere.
Wire Notes Line
	2550 2650 2550 5500
Wire Notes Line
	1500 2650 1500 5000
Wire Notes Line
	650  5500 5350 5500
Wire Notes Line
	650  2650 650  5500
Text GLabel 1400 5250 0    50   BiDi ~ 0
I2C_CLOCK
Wire Wire Line
	1550 3900 1550 3850
Wire Wire Line
	1550 3850 1400 3850
$Comp
L Graphic:Logo_Open_Hardware_Small L4
U 1 1 60308F85
P 5750 7200
F 0 "L4" H 5750 7475 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 5750 6975 50  0001 C CNN
F 2 "Symbol:OSHW-Logo2_7.3x6mm_SilkScreen" H 5750 7200 50  0001 C CNN
F 3 "~" H 5750 7200 50  0001 C CNN
	1    5750 7200
	1    0    0    -1  
$EndComp
Text Notes 7950 2000 0    50   ~ 0
Because VIN-VUSB is cut on the back of the Teensy, power \ninto the Teensy’s USB port is routed in this order:\nTEENSY VUSB -> ON/OFF & LIPO -> 5V REG -> TEENSY VIN\n
Wire Wire Line
	9200 2100 10350 2100
Wire Wire Line
	10350 2100 10350 2400
Text GLabel 9200 2100 0    50   Input ~ 0
TEENSY_VIN
Text Notes 6250 2750 0    50   ~ 0
Left Edge
Text Notes 6200 4200 0    50   ~ 0
Short Edge
Text Notes 6650 4900 0    50   ~ 0
Right Edge
Text Notes 6650 4500 0    50   ~ 0
Back 1x4
Text Notes 6650 3800 0    50   ~ 0
Back L7
Text Notes 6650 2950 0    50   ~ 0
Back R7
Text GLabel 9650 4450 2    50   Input ~ 0
SPARE_ANA_6
Wire Wire Line
	8800 4450 8800 4500
Wire Wire Line
	8800 4500 9400 4500
Wire Wire Line
	9400 4500 9400 4450
Wire Wire Line
	9400 4450 9650 4450
Connection ~ 8800 4450
Wire Wire Line
	8800 4450 7650 4450
$EndSCHEMATC
