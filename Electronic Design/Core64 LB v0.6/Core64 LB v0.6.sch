EESchema Schematic File Version 4
LIBS:Core64 LB v0.6-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 5
Title "Core 64 - Main Sheet Index"
Date "2021-11-09"
Rev "0.6"
Comp "Concept and design by Andy Geppert @ www.MachineIdeas.com"
Comment1 "Visit www.Core64.io for information on assembly and optional features."
Comment2 "As released"
Comment3 ""
Comment4 "All non-polarized capacitors are X7R or X5R ceramic unless otherwise noted."
$EndDescr
Text Notes 2650 700  0    118  ~ 0
CORE 64 INTERACTIVE CORE MEMORY BADGE V0.6 LOGIC BOARD
$Sheet
S 6150 850  1500 250 
U 5E75D6AB
F0 "Sense_LEDs_ID" 50
F1 "Core64 LB v0.6 Sense_LEDs_ID.sch" 50
$EndSheet
$Sheet
S 8750 850  1500 250 
U 5EA63449
F0 "Expansion" 50
F1 "Core64 LB v0.6 Expansion.sch" 50
$EndSheet
Wire Wire Line
	5250 3050 5300 3050
Text Notes 8450 5800 0    50   ~ 0
Reads 1/4 voltage of\n+VSW (after RPP) \nbefore regulators.
Text Notes 7950 1750 0    50   ~ 10
Teensy LC has incoming USB power/programming on board.
Wire Wire Line
	4250 4050 5650 4050
Wire Wire Line
	4250 3950 5650 3950
Wire Wire Line
	7650 4550 7900 4550
Text GLabel 7950 5700 2    50   Input ~ 0
BAT_MON
Wire Wire Line
	7650 4750 7800 4750
Wire Wire Line
	7650 4650 7750 4650
Wire Wire Line
	7650 5050 7750 5050
Text GLabel 1450 5150 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 5250 5350 0    50   Output ~ 0
LED_MATRIX_3V3_SIG
$Sheet
S 750  850  1450 250 
U 5E7548ED
F0 "Power" 50
F1 "Core64 LB v0.6 Power.sch" 50
$EndSheet
Text Notes 650  2400 0    236  ~ 0
TEENSY 3.2 MCU\nCONNECTIONS
Text GLabel 4250 4650 0    50   Output ~ 0
SPI_CLK
Text GLabel 2150 4050 0    50   Input ~ 0
SD_SPI_CD
$Comp
L CORE_64_LIBRARY:Core_64_Logo L1
U 1 1 5EC1FCB7
P 1900 6850
F 0 "L1" H 1925 6897 50  0000 L CNN
F 1 "Core_64_Logo" H 2050 6900 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Core64_Logo" H 1900 6850 50  0001 C CNN
F 3 "" H 1900 6850 50  0001 C CNN
F 4 "No" H 1900 6850 50  0001 C CNN "Insert?"
	1    1900 6850
	1    0    0    -1  
$EndComp
$Comp
L CORE_64_LIBRARY:Core_64_Logo L2
U 1 1 5EC30987
P 1950 7850
F 0 "L2" H 1975 7897 50  0000 L CNN
F 1 "Core_64_Logo" H 2000 7800 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Core64_Logo_9mm_tall" H 1950 7850 50  0001 C CNN
F 3 "" H 1950 7850 50  0001 C CNN
F 4 "No" H 1950 7850 50  0001 C CNN "Insert?"
	1    1950 7850
	1    0    0    -1  
$EndComp
Text Notes 800  1600 0    217  ~ 43
*** MUST CUT THE USB-VIN on back of TEENSY 3.2 ***
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
L Teensy:Teensy3.2 U7
U 1 1 5F49143E
P 6650 4050
F 0 "U7" H 6650 5648 60  0000 C CNN
F 1 "Teensy3.2" H 6650 5538 60  0000 C CNN
F 2 "Teensy:Teensy30_31_32_LC_SMD_SOCKETS" H 6650 3250 60  0001 C CNN
F 3 "" H 6650 3250 60  0000 C CNN
F 4 "No" H 6650 4050 50  0001 C CNN "Insert?"
F 5 "TEENSY 3.2" H 6650 4050 50  0001 C CNN "Description"
	1    6650 4050
	1    0    0    -1  
$EndComp
Text GLabel 7950 2100 2    50   Output ~ 0
TEENSY_VUSB
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
Text GLabel 5250 4950 0    50   Output ~ 0
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
Text GLabel 8050 5350 2    50   Output ~ 0
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
Text GLabel 8850 5150 2    50   Output ~ 0
OLED_SPI_DC
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
Text GLabel 4250 5350 0    50   Output ~ 0
TFT_BACKLIGHT
Wire Wire Line
	7800 4750 7800 2100
Wire Wire Line
	7800 2100 7950 2100
Wire Wire Line
	7900 4550 7900 5700
Wire Wire Line
	7900 5700 7950 5700
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
	3550 4750 3650 4750
Wire Wire Line
	4400 5400 4400 5350
Wire Wire Line
	5650 2850 4300 2850
Wire Wire Line
	5650 2950 4300 2950
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
	7650 3050 9600 3050
Wire Wire Line
	7650 4350 9600 4350
Wire Wire Line
	7650 5250 8050 5250
Wire Wire Line
	7650 5150 8000 5150
Text GLabel 4000 2950 0    50   BiDi ~ 0
SAO_G2_or_SPARE_2_or_CP_ADDR_1
Text Notes 8100 2650 0    50   ~ 0
PRIMARY USE\n1 Core Plane
Text Notes 3600 5800 0    50   ~ 0
3.2” TFT as LED\nArray Replacement\n[OPTIONAL]
Wire Notes Line
	4350 3500 3600 3500
Text Notes 2750 2650 0    50   ~ 0
8 Core Plane Selector [OPTIONAL]\nRequires other modifications.
Wire Wire Line
	5300 3050 5300 3100
Wire Wire Line
	5300 3100 5000 3100
Wire Wire Line
	5000 3100 5000 3050
Wire Wire Line
	5000 3050 2400 3050
Wire Wire Line
	5650 4550 2250 4550
Text Notes 3300 6700 0    118  ~ 0
SILKSCREEN BACK
Text Notes 5800 2400 0    50   ~ 0
SILKSCREEN UNDER TEENSY: CUT VIN-BUSB
Connection ~ 5600 4350
Wire Wire Line
	5600 4350 5600 5500
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
AR Path="/5F73FDF3" Ref="R47"  Part="1" 
F 0 "R47" H 5250 2100 50  0000 L CNN
F 1 "10k" H 5250 2000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5380 2000 50  0001 C CNN
F 3 "~" H 5450 2000 50  0001 C CNN
F 4 "RES 10K OHM" H 5450 2000 50  0001 C CNN "Description"
F 5 "Yes" H 5450 2000 50  0001 C CNN "Insert?"
F 6 "20%" H 5450 2000 50  0001 C CNN "Value_Modifier"
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
Text Notes 5900 6400 0    50   ~ 0
To use the Teensy 3.2 RTC you must add three things:\n1) Crystal: 32.768 kHz, 12.5 pF Citizen CFS-206, Digi-Key 300-8763-ND (5ppm)\n     (on bottom side of the Teensy board, not shown in this schematic)\n2) Battery Holder: MPD BC-2003, Digi-Key BC-2003-TR-CT-ND\n3) Battery: 3V CR2032 Digi-Key P189-ND\n     (battery and holder on backside of logic board)\n
Connection ~ 7700 5500
Wire Wire Line
	5600 5500 5750 5500
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5F7507F8
P 5050 2200
AR Path="/5E7548ED/5F7507F8" Ref="J?"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5F7507F8" Ref="J?"  Part="1" 
AR Path="/5F7507F8" Ref="J13"  Part="1" 
F 0 "J13" H 5050 2300 50  0000 C CNN
F 1 "PRG" H 5200 2200 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 5050 2200 50  0001 C CNN
F 3 "~" H 5050 2200 50  0001 C CNN
F 4 "No" H 5050 2200 50  0001 C CNN "Insert?"
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
F 4 "No" H 5500 6100 50  0001 C CNN "Insert?"
F 5 "Battery Cell Holder, CR2032" H 5500 6100 50  0001 C CNN "Description"
F 6 "MPD BC-2003" H 5500 6100 50  0001 C CNN "MPN"
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
AR Path="/5F9FB501" Ref="J14"  Part="1" 
F 0 "J14" V 9400 2000 50  0000 R CNN
F 1 "TEENSY Cur. Mon." V 9300 2000 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 9400 2200 50  0001 C CNN
F 3 "~" H 9400 2200 50  0001 C CNN
F 4 "No" H 9400 2200 50  0001 C CNN "Insert?"
	1    9400 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7850 2400 9400 2400
Text Notes 550  6700 0    118  ~ 0
SILKSCREEN FRONT
Text Notes 3300 7600 0    50   ~ 0
Core 64 Logo\nInteractive Core Memory\nMaker, Assembler, S/N\nRTC Battery CR2032\nPCB Maker\nP/N\nREV\nDESCRIPTION   VERSION   [REL. DATE].  ANDY GEPPERT   \nDesigned by Andy Geppert  |  www.MachineIdeas.com\nwww.Core64.io
Text Notes 550  6900 0    50   ~ 0
Interactive Core Memory\nAll logic is 3V3 Level\n
Wire Wire Line
	1550 3900 2450 3900
Wire Wire Line
	5250 5350 5300 5350
Text GLabel 5250 5050 0    50   Output ~ 0
Q5N
Wire Wire Line
	7650 5350 8000 5350
Wire Wire Line
	9400 2400 9500 2400
Connection ~ 9400 2400
Connection ~ 9500 2400
Wire Wire Line
	9500 2400 10350 2400
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
	5150 6450 5150 5850
Text Notes 5900 5800 0    50   ~ 0
RTC CLOCK BATTERY [OPTIONAL]
Wire Wire Line
	4300 4850 5650 4850
Wire Wire Line
	4250 4650 5650 4650
Text GLabel 8850 5350 2    50   Output ~ 0
TEENSYVIEW_SPI_DC
Wire Wire Line
	5000 3400 5000 3350
Wire Wire Line
	5300 3400 5000 3400
Wire Wire Line
	5000 3500 5300 3500
Wire Wire Line
	5000 3450 5000 3500
Wire Wire Line
	2400 3450 5000 3450
Text GLabel 2400 3450 0    50   Output ~ 0
SD_SPI_CS
Wire Wire Line
	4400 5350 4250 5350
Wire Wire Line
	5300 5400 4400 5400
Wire Notes Line
	650  5000 2550 5000
Text Notes 700  5450 0    50   ~ 0
I2C
Wire Notes Line
	2550 2650 2550 5500
Wire Notes Line
	1500 2650 1500 5000
Wire Notes Line
	650  5500 5350 5500
Wire Notes Line
	650  2650 650  5500
Text GLabel 1450 5250 0    50   BiDi ~ 0
I2C_CLOCK
Wire Wire Line
	1550 3900 1550 3850
Wire Wire Line
	1550 3850 1450 3850
$Comp
L Graphic:Logo_Open_Hardware_Small L4
U 1 1 60308F85
P 2300 7300
F 0 "L4" H 2300 7575 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 2300 7075 50  0001 C CNN
F 2 "Symbol:OSHW-Logo2_7.3x6mm_SilkScreen" H 2300 7300 50  0001 C CNN
F 3 "~" H 2300 7300 50  0001 C CNN
F 4 "No" H 2300 7300 50  0001 C CNN "Insert?"
	1    2300 7300
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
Text Notes 6150 4200 0    50   ~ 0
Bottom Edge
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
Text Notes 700  6400 0    79   ~ 0
QxP (PNP) is normally high, low to activate matrix transistor.\nQxN (NPN) is normally low, high to activate matrix transistor.
Text Notes 8700 2250 0    50   ~ 0
3.6-6.0V
Text Notes 9650 4200 0    50   ~ 0
All analog-only\npins (A10-A14),\nAREF, Program\nand Reset are\n3.3V only.
Text Notes 800  4450 0    50   ~ 0
All analog-only\npins (A10-A14),\nAREF, Program\nand Reset are\n3.3V only.
Wire Wire Line
	5250 5050 5650 5050
Wire Wire Line
	5300 5400 5300 5350
Connection ~ 5300 5350
Wire Wire Line
	5300 5350 5650 5350
Wire Wire Line
	1350 3350 5000 3350
Wire Wire Line
	8000 5350 8000 5400
Wire Wire Line
	8000 5400 8700 5400
Wire Wire Line
	8700 5400 8700 5350
Wire Wire Line
	8700 5350 8850 5350
Connection ~ 8000 5350
Wire Wire Line
	8000 5350 8050 5350
Text Notes 8900 2650 0    50   ~ 0
SPI Devices\n[OPTIONAL]
Wire Wire Line
	8700 5150 8700 5200
Wire Wire Line
	8700 5200 8000 5200
Wire Wire Line
	8000 5200 8000 5150
Connection ~ 8000 5150
Wire Wire Line
	8000 5150 8050 5150
Wire Wire Line
	5250 3150 5650 3150
Wire Wire Line
	8700 5150 8850 5150
$Sheet
S 3450 850  1550 250 
U 5E755AC8
F0 "Driver" 50
F1 "Core64 LB v0.6 Driver.sch" 50
$EndSheet
Text GLabel 900  2850 0    50   Input ~ 0
HS1
Text GLabel 900  2950 0    50   Input ~ 0
HS2
Text GLabel 900  4750 0    50   Input ~ 0
HS3
Text GLabel 900  3750 0    50   Input ~ 0
HS4
Wire Wire Line
	4300 2850 4300 2900
Wire Wire Line
	4300 2900 1450 2900
Wire Wire Line
	1450 2900 1450 2850
Wire Wire Line
	1450 2850 900  2850
Connection ~ 4300 2850
Wire Wire Line
	4300 2850 4000 2850
Wire Wire Line
	900  2950 1450 2950
Wire Wire Line
	1450 2950 1450 3000
Wire Wire Line
	1450 3000 4300 3000
Wire Wire Line
	4300 3000 4300 2950
Connection ~ 4300 2950
Wire Wire Line
	4300 2950 4000 2950
Wire Wire Line
	5000 3650 4250 3650
Wire Wire Line
	1450 3850 1450 3750
Wire Wire Line
	1450 3750 900  3750
Connection ~ 1450 3850
Wire Wire Line
	1450 3850 1400 3850
Wire Wire Line
	3750 4850 2350 4850
Wire Wire Line
	3650 4750 3650 4800
Wire Wire Line
	1450 4800 1450 4750
Wire Wire Line
	1450 4750 900  4750
Connection ~ 3650 4750
Wire Wire Line
	3650 4750 5650 4750
Text GLabel 3150 5750 2    50   Input ~ 0
5V0_MON
Text GLabel 3150 5900 2    50   Input ~ 0
3V3_MON
Wire Wire Line
	2350 4850 2350 5900
Wire Wire Line
	2350 5900 2450 5900
Connection ~ 2350 4850
Wire Wire Line
	2350 4850 1400 4850
Text GLabel 10150 5050 0    50   Input ~ 0
TC0_MON
Text GLabel 10150 4750 0    50   Input ~ 0
BC0_MON
Wire Notes Line
	9550 5150 10350 5150
Wire Notes Line
	9550 5150 9550 2650
Wire Wire Line
	9600 4350 9600 4600
Wire Wire Line
	9600 4600 9700 4600
Connection ~ 9600 4350
Wire Wire Line
	9600 4350 9650 4350
Wire Wire Line
	9500 4450 9500 4900
Connection ~ 9500 4450
Wire Wire Line
	9500 4450 9650 4450
Text GLabel 10150 3350 0    50   Input ~ 0
LR0_MON
Wire Wire Line
	9600 3050 9600 3200
Connection ~ 9600 3050
Wire Wire Line
	9600 3050 9650 3050
Text GLabel 3150 6050 2    50   Input ~ 0
RR0_MON
Wire Wire Line
	2350 6050 2250 6050
Wire Wire Line
	2250 6050 2250 4550
Connection ~ 2250 4550
Wire Wire Line
	2250 4550 1400 4550
Wire Wire Line
	2650 6050 3150 6050
Wire Wire Line
	2750 5900 3150 5900
Wire Notes Line
	9200 5850 9200 6450
Wire Notes Line
	5150 5850 9200 5850
Wire Notes Line
	9200 6450 5150 6450
Wire Wire Line
	10000 3200 10250 3200
Wire Wire Line
	10250 3200 10250 3350
Wire Wire Line
	10250 3350 10150 3350
Wire Wire Line
	9600 3200 9700 3200
Wire Wire Line
	10000 4600 10250 4600
Wire Wire Line
	10250 4600 10250 4750
Wire Wire Line
	10250 4750 10150 4750
Wire Wire Line
	9500 4900 9700 4900
Wire Wire Line
	10000 4900 10250 4900
Wire Wire Line
	10250 4900 10250 5050
Wire Wire Line
	10250 5050 10150 5050
Wire Wire Line
	2500 4750 2450 4750
Wire Wire Line
	3650 4800 2500 4800
Wire Wire Line
	2500 4800 2500 4750
Wire Wire Line
	2450 4750 2450 5750
Connection ~ 2450 4750
Wire Wire Line
	2450 4750 2100 4750
Wire Wire Line
	2100 4750 2100 4800
Wire Wire Line
	2100 4800 1450 4800
Connection ~ 2100 4750
Wire Wire Line
	7650 4450 9500 4450
$Comp
L Jumper:SolderJumper_2_Open JP8
U 1 1 604A327B
P 2000 4400
F 0 "JP8" H 2000 4611 50  0000 C CNN
F 1 "SD CARD DETECT" H 2000 4518 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 2000 4400 50  0001 C CNN
F 3 "~" H 2000 4400 50  0001 C CNN
F 4 "No" H 2000 4400 50  0001 C CNN "Insert?"
	1    2000 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4050 2400 4050
Wire Wire Line
	2400 4050 2400 4400
Wire Wire Line
	2400 4400 2150 4400
Wire Wire Line
	1850 4400 1700 4400
Wire Wire Line
	1700 4400 1700 4750
Wire Wire Line
	1700 4750 2100 4750
$Comp
L Device:R R?
U 1 1 61998E01
P 1800 5150
AR Path="/5E755787/61998E01" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/61998E01" Ref="R?"  Part="1" 
AR Path="/61998E01" Ref="R48"  Part="1" 
AR Path="/5EA63449/61998E01" Ref="R?"  Part="1" 
F 0 "R48" V 1900 5000 50  0000 L CNN
F 1 "68" V 1900 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1730 5150 50  0001 C CNN
F 3 "~" H 1800 5150 50  0001 C CNN
F 4 "RES 68 OHM" H 1800 5150 50  0001 C CNN "Description"
F 5 "10%" H 1800 5150 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 1800 5150 50  0001 C CNN "Insert?"
	1    1800 5150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 61998E07
P 1800 5250
AR Path="/5E755787/61998E07" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/61998E07" Ref="R?"  Part="1" 
AR Path="/61998E07" Ref="R49"  Part="1" 
AR Path="/5EA63449/61998E07" Ref="R?"  Part="1" 
F 0 "R49" V 1900 5250 50  0000 L CNN
F 1 "68" V 1900 5100 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1730 5250 50  0001 C CNN
F 3 "~" H 1800 5250 50  0001 C CNN
F 4 "RES 68 OHM" H 1800 5250 50  0001 C CNN "Description"
F 5 "10%" H 1800 5250 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 1800 5250 50  0001 C CNN "Insert?"
	1    1800 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 5150 1950 5150
Wire Wire Line
	1650 5150 1450 5150
Wire Wire Line
	1450 5250 1650 5250
Wire Wire Line
	5650 5250 1950 5250
$Comp
L Jumper:SolderJumper_2_Bridged JP?
U 1 1 61B618D6
P 2700 5750
AR Path="/5E7548ED/61B618D6" Ref="JP?"  Part="1" 
AR Path="/61B618D6" Ref="JP9"  Part="1" 
F 0 "JP9" H 2550 5800 50  0000 C CNN
F 1 "5V0 MON" H 2950 5800 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 2700 5750 50  0001 C CNN
F 3 "~" H 2700 5750 50  0001 C CNN
F 4 "No" H 2700 5750 50  0001 C CNN "Insert?"
	1    2700 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5750 2550 5750
Wire Wire Line
	2850 5750 3150 5750
$Comp
L Jumper:SolderJumper_2_Bridged JP?
U 1 1 61BC2A0E
P 2600 5900
AR Path="/5E7548ED/61BC2A0E" Ref="JP?"  Part="1" 
AR Path="/61BC2A0E" Ref="JP10"  Part="1" 
F 0 "JP10" H 2450 5950 50  0000 C CNN
F 1 "3V3 MON" H 2850 5950 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 2600 5900 50  0001 C CNN
F 3 "~" H 2600 5900 50  0001 C CNN
F 4 "No" H 2600 5900 50  0001 C CNN "Insert?"
	1    2600 5900
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP?
U 1 1 61BC2DF2
P 2500 6050
AR Path="/5E7548ED/61BC2DF2" Ref="JP?"  Part="1" 
AR Path="/61BC2DF2" Ref="JP11"  Part="1" 
F 0 "JP11" H 2350 6100 50  0000 C CNN
F 1 "RR0 MON" H 2800 6100 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 2500 6050 50  0001 C CNN
F 3 "~" H 2500 6050 50  0001 C CNN
F 4 "No" H 2500 6050 50  0001 C CNN "Insert?"
	1    2500 6050
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP?
U 1 1 61C35ED3
P 9850 3200
AR Path="/5E7548ED/61C35ED3" Ref="JP?"  Part="1" 
AR Path="/61C35ED3" Ref="JP12"  Part="1" 
F 0 "JP12" H 9700 3250 50  0000 C CNN
F 1 "LR0 MON" H 10100 3250 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 9850 3200 50  0001 C CNN
F 3 "~" H 9850 3200 50  0001 C CNN
F 4 "No" H 9850 3200 50  0001 C CNN "Insert?"
	1    9850 3200
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP?
U 1 1 61C4788B
P 9850 4600
AR Path="/5E7548ED/61C4788B" Ref="JP?"  Part="1" 
AR Path="/61C4788B" Ref="JP13"  Part="1" 
F 0 "JP13" H 9700 4650 50  0000 C CNN
F 1 "BC0 MON" H 10100 4650 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 9850 4600 50  0001 C CNN
F 3 "~" H 9850 4600 50  0001 C CNN
F 4 "No" H 9850 4600 50  0001 C CNN "Insert?"
	1    9850 4600
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP?
U 1 1 61C5666B
P 9850 4900
AR Path="/5E7548ED/61C5666B" Ref="JP?"  Part="1" 
AR Path="/61C5666B" Ref="JP14"  Part="1" 
F 0 "JP14" H 9700 4950 50  0000 C CNN
F 1 "TC0 MON" H 10100 4950 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 9850 4900 50  0001 C CNN
F 3 "~" H 9850 4900 50  0001 C CNN
F 4 "No" H 9850 4900 50  0001 C CNN "Insert?"
	1    9850 4900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
