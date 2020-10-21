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
	4300 3150 4350 3150
Text Notes 7600 2550 0    50   ~ 0
Reads 1/4 voltage of +VSW\n(after RPP) before regulators.
Text Notes 800  2050 0    50   ~ 10
Teensy LC has incoming USB power/programming on board.
Wire Wire Line
	4300 5250 4700 5250
Wire Wire Line
	4700 5350 4300 5350
Wire Wire Line
	4300 3250 4350 3250
Wire Wire Line
	2550 4150 4700 4150
Wire Wire Line
	2550 4050 4700 4050
Wire Wire Line
	6700 4650 6950 4650
Text GLabel 7100 2450 2    50   Input ~ 0
VBAT_MON
Wire Wire Line
	6700 4850 6850 4850
Wire Wire Line
	6700 4750 6800 4750
Wire Wire Line
	6700 5150 6800 5150
Text GLabel 4300 5350 0    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 4300 5250 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 4300 5150 0    50   Output ~ 0
LED_ARRAY_3V3_SIG
$Sheet
S 750  850  1450 250 
U 5E7548ED
F0 "Power" 50
F1 "Core64 LB v0.4 Power.sch" 50
$EndSheet
Text Notes 800  1850 0    118  ~ 0
TEENSY 3.2 MCU CONNECTIONS
Text Notes 4050 7000 0    50   ~ 10
BOM TO DO: TEENSY requires at least three headers\nthat do not get auto populated in the BOM from KiCAD.
Text GLabel 2550 4700 0    50   Output ~ 0
SPI_CLK
Text GLabel 7900 4550 2    50   Input ~ 0
SD_SPI_CD
$Comp
L Device:R R?
U 1 1 5EA7ABC7
P 9750 4650
AR Path="/5E755787/5EA7ABC7" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA7ABC7" Ref="R?"  Part="1" 
AR Path="/5EA7ABC7" Ref="R2"  Part="1" 
AR Path="/5EA63449/5EA7ABC7" Ref="R?"  Part="1" 
F 0 "R2" H 9820 4696 50  0000 L CNN
F 1 "2K2" H 9820 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9680 4650 50  0001 C CNN
F 3 "~" H 9750 4650 50  0001 C CNN
	1    9750 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EA7ABCD
P 10150 4850
AR Path="/5E755787/5EA7ABCD" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EA7ABCD" Ref="R?"  Part="1" 
AR Path="/5EA7ABCD" Ref="R3"  Part="1" 
AR Path="/5EA63449/5EA7ABCD" Ref="R?"  Part="1" 
F 0 "R3" H 10220 4896 50  0000 L CNN
F 1 "2K2" H 10220 4805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10080 4850 50  0001 C CNN
F 3 "~" H 10150 4850 50  0001 C CNN
	1    10150 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 4850 9750 4850
Wire Wire Line
	9750 4800 9750 4850
Text GLabel 9650 5000 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 9650 4850 0    50   BiDi ~ 0
I2C_CLOCK
Text Notes 9150 4100 0    118  ~ 0
I2C PULL-UPS
Text GLabel 9750 4200 0    50   Input ~ 0
3V3
Wire Wire Line
	10150 4400 10150 4700
Wire Wire Line
	9650 5000 10150 5000
Wire Wire Line
	9950 4200 9750 4200
Wire Wire Line
	9750 4400 9750 4500
Wire Wire Line
	9950 4200 9950 4400
Wire Wire Line
	4700 4750 3400 4750
$Comp
L CORE_64_LIBRARY:Core_64_Logo L1
U 1 1 5EC1FCB7
P 4050 7850
F 0 "L1" H 4075 7897 50  0000 L CNN
F 1 "Core_64_Logo" H 4100 7800 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Core64_Logo" H 4050 7850 50  0001 C CNN
F 3 "" H 4050 7850 50  0001 C CNN
	1    4050 7850
	1    0    0    -1  
$EndComp
$Comp
L CORE_64_LIBRARY:Core_64_Logo L2
U 1 1 5EC30987
P 4050 7600
F 0 "L2" H 4075 7647 50  0000 L CNN
F 1 "Core_64_Logo" H 4075 7554 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Core64_Logo" H 4050 7600 50  0001 C CNN
F 3 "" H 4050 7600 50  0001 C CNN
	1    4050 7600
	1    0    0    -1  
$EndComp
$Comp
L CORE_64_LIBRARY:Core_64_Github_Link L3
U 1 1 5EC378E3
P 4050 7350
F 0 "L3" H 4075 7397 50  0000 L CNN
F 1 "Core_64_Github_Link" H 4075 7304 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:Github_Link_Large" H 4050 7350 50  0001 C CNN
F 3 "" H 4050 7350 50  0001 C CNN
	1    4050 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 4400 9950 4400
Connection ~ 9950 4400
Wire Wire Line
	9950 4400 10150 4400
Wire Wire Line
	4700 5150 4350 5150
Text Notes 1150 1600 0    236  ~ 47
*** CUT THE USB-VIN bridge on TEENSY 3.2 ***
Text Notes 8850 2300 0    50   ~ 0
VIN (5V) must be supplied TO the Teensy\nbecause VIN-VUSB is cut. The \nLogic Board provides it here.
$Comp
L power:GNDD #PWR?
U 1 1 5F4EB827
P 6750 5700
AR Path="/5EA63449/5F4EB827" Ref="#PWR?"  Part="1" 
AR Path="/5F4EB827" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 6750 5450 50  0001 C CNN
F 1 "GNDD" H 6754 5544 50  0000 C CNN
F 2 "" H 6750 5700 50  0001 C CNN
F 3 "" H 6750 5700 50  0001 C CNN
	1    6750 5700
	1    0    0    -1  
$EndComp
$Comp
L Teensy:Teensy3.2 U2
U 1 1 5F49143E
P 5700 4150
F 0 "U2" H 5700 5748 60  0000 C CNN
F 1 "Teensy3.2" H 5700 5638 60  0000 C CNN
F 2 "Teensy:Teensy30_31_32_LC_SMD_SOCKETS" H 5700 3350 60  0001 C CNN
F 3 "" H 5700 3350 60  0000 C CNN
	1    5700 4150
	1    0    0    -1  
$EndComp
Text GLabel 8600 2150 2    50   Input ~ 0
5V0
Text GLabel 6950 1850 2    50   Output ~ 0
TEENSY_VUSB
Text Notes 6300 6750 0    50   ~ 0
All non-polarized capacitors are X7R or X5R ceramic unless otherwise noted.
Text GLabel 4300 3150 0    50   Output ~ 0
Q1P
Text GLabel 4300 3250 0    50   Output ~ 0
Q1N
Text GLabel 7100 5350 2    50   Input ~ 0
SENSE_PULSE
Text GLabel 4300 3350 0    50   Output ~ 0
Q2P
Text GLabel 4300 3450 0    50   Output ~ 0
Q2N
Text GLabel 4300 3550 0    50   Output ~ 0
Q3P
Text GLabel 4300 3650 0    50   Output ~ 0
Q3N
Text GLabel 4300 3750 0    50   Output ~ 0
Q4P
Text GLabel 4300 3850 0    50   Output ~ 0
Q4N
Text GLabel 4300 5450 0    50   Output ~ 0
Q5P
Text GLabel 7100 5450 2    50   Output ~ 0
Q5N
Text GLabel 7100 4250 2    50   Output ~ 0
Q6P
Text GLabel 7100 4150 2    50   Output ~ 0
Q6N
Text GLabel 7100 4050 2    50   Output ~ 0
Q7P
Text GLabel 7100 3650 2    50   Output ~ 0
Q9P
Text GLabel 7100 3750 2    50   Output ~ 0
Q8N
Text GLabel 7100 3850 2    50   Output ~ 0
Q8P
Text GLabel 7100 3950 2    50   Output ~ 0
Q7N
Text GLabel 7100 3350 2    50   Output ~ 0
Q10N
Text GLabel 7100 3450 2    50   Output ~ 0
Q10P
Text GLabel 7100 3550 2    50   Output ~ 0
Q9N
Text GLabel 4300 5050 0    50   Output ~ 0
SENSE_RESET
Text GLabel 7100 5250 2    50   Output ~ 0
WRITE_ENABLE
Text GLabel 7900 4450 2    50   Input ~ 0
SPARE_ANA_6
Text GLabel 3250 4850 0    50   BiDi ~ 0
SPARE_3_or_CP_ADDR_2
Wire Notes Line
	5700 4200 4900 4200
Wire Notes Line
	5700 4700 4900 4700
Wire Notes Line
	6500 4900 5700 4900
Wire Notes Line
	5700 2750 5700 4900
Wire Notes Line
	6550 4500 5700 4500
Wire Notes Line
	6500 3800 5700 3800
Text GLabel 3250 2950 0    50   BiDi ~ 0
SAO_G1_or_SPARE_1_or_CP_ADDR_0
Wire Wire Line
	4700 2850 4650 2850
Wire Wire Line
	4650 2850 4650 4450
Wire Wire Line
	6750 5600 6750 5050
Wire Wire Line
	6750 4350 6700 4350
Wire Wire Line
	6750 5600 6750 5700
Wire Wire Line
	6700 5050 6750 5050
Connection ~ 6750 5050
Wire Wire Line
	6750 5050 6750 4350
Wire Wire Line
	4700 4450 4650 4450
Text GLabel 1750 3150 0    50   Output ~ 0
OLED_SPI_CS
Text GLabel 1750 3250 0    50   Output ~ 0
OLED_SPI_DC
Text Notes 800  2300 0    50   ~ 10
QxP is normally high, goes low to activate matrix transistor.\nQxN is normally low, goes high to activate matrix transistor.
Text GLabel 1750 3350 0    50   Output ~ 0
TOUCH_SPI_CS
Text GLabel 1000 3550 0    50   Output ~ 0
IR_MOD_OUT
Text GLabel 2550 3750 0    50   Output ~ 0
TFT_SPI_CS
Text GLabel 2550 3850 0    50   Output ~ 0
TFT_SPI_DC
Wire Wire Line
	6900 4950 6900 2300
Wire Wire Line
	7300 2300 8250 2300
Wire Wire Line
	6700 4950 6900 4950
Wire Wire Line
	4700 4350 4600 4350
Wire Wire Line
	4600 4350 4600 2000
Wire Wire Line
	6800 5150 6800 4750
Connection ~ 6800 4750
Wire Wire Line
	6800 4750 6800 3250
Wire Wire Line
	6700 3250 6800 3250
Text Notes 5150 2300 0    50   ~ 0
Teensy 3V3 is only used for AREF.\nCurrent is limited, do not use for\nanything else.
Text GLabel 2550 5150 0    50   Output ~ 0
TFT_BACKLIGHT
Text Notes 7550 1950 0    50   ~ 0
VUSB provides power to main\nLogic Board power switch.
Wire Wire Line
	6850 4850 6850 1850
Wire Wire Line
	6850 1850 6950 1850
Wire Wire Line
	6950 4650 6950 2450
Wire Wire Line
	6950 2450 7100 2450
Connection ~ 6800 3250
Wire Wire Line
	6800 3250 6800 2000
Text GLabel 7900 3150 2    50   Input ~ 0
SPARE_ANA_7
Text GLabel 2550 4150 0    50   Input ~ 0
SPI_SDI
Text GLabel 2550 4050 0    50   Output ~ 0
SPI_SDO
Wire Wire Line
	4700 3550 4350 3550
Wire Wire Line
	4700 3650 4300 3650
Wire Wire Line
	4700 3750 4350 3750
Wire Wire Line
	4700 3850 4350 3850
Wire Wire Line
	4700 3950 1850 3950
Wire Notes Line
	4400 2750 4400 5600
Wire Notes Line
	4400 5600 3450 5600
Wire Notes Line
	3450 5600 3450 2750
Wire Notes Line
	3450 2750 4400 2750
Text Notes 3650 2750 0    50   ~ 0
Primary Use\n1 Core Plane
Wire Notes Line
	7000 5600 7000 2750
Wire Notes Line
	7000 2750 7800 2750
Wire Notes Line
	7800 2750 7800 5600
Wire Notes Line
	7800 5600 7000 5600
Wire Wire Line
	4300 5450 4350 5450
Wire Notes Line
	3350 2750 3350 4950
Wire Notes Line
	1850 2750 3350 2750
Text GLabel 1750 3450 0    50   Output ~ 0
TEENSYVIEW_SPI_DC
Text GLabel 1750 3550 0    50   Output ~ 0
SD_SPI_CS
Text GLabel 1450 4650 0    50   BiDi ~ 0
SPARE_ADC_DAC
Text GLabel 900  4950 0    50   BiDi ~ 0
SPARE_5
Text GLabel 900  3950 0    50   BiDi ~ 0
SPARE_4
Wire Wire Line
	3250 4850 4700 4850
Wire Wire Line
	4350 5150 4350 5200
Wire Wire Line
	4350 5200 2600 5200
Wire Wire Line
	2600 5200 2600 5150
Wire Wire Line
	2600 5150 2550 5150
Wire Wire Line
	4350 5150 4300 5150
Wire Wire Line
	4700 2950 3250 2950
Wire Wire Line
	4700 3050 3250 3050
Wire Wire Line
	6700 4250 7100 4250
Wire Wire Line
	6700 4150 7100 4150
Wire Wire Line
	6700 4050 7100 4050
Wire Wire Line
	6700 3950 7100 3950
Wire Wire Line
	6700 3850 7100 3850
Wire Wire Line
	6700 3750 7100 3750
Wire Wire Line
	6700 3650 7100 3650
Wire Wire Line
	6700 3550 7100 3550
Wire Wire Line
	6700 3450 7100 3450
Wire Wire Line
	6700 3350 7100 3350
Wire Wire Line
	6700 3150 7900 3150
Wire Wire Line
	6700 4450 7900 4450
Wire Wire Line
	7900 4550 6700 4550
Wire Wire Line
	6700 5450 7050 5450
Wire Wire Line
	6700 5350 7100 5350
Wire Wire Line
	6700 5250 7100 5250
Text GLabel 3250 3050 0    50   BiDi ~ 0
SAO_G2_or_SPARE_2_or_CP_ADDR_1
Text Notes 7150 2750 0    50   ~ 0
Primary Use\n1 Core Plane
Wire Notes Line
	2750 4750 2750 3150
Wire Notes Line
	2750 3150 1850 3150
Wire Notes Line
	1850 3150 1850 2750
Text Notes 1900 5700 0    50   ~ 0
3.2” TFT (LED replacement)
Wire Notes Line
	2650 3650 1900 3650
Wire Notes Line
	1900 3650 1900 5600
Text Notes 1850 2750 0    50   ~ 0
8 Core Plane Selector
Wire Wire Line
	4350 3150 4350 3200
Wire Wire Line
	4350 3200 1800 3200
Wire Wire Line
	1800 3200 1800 3150
Wire Wire Line
	1800 3150 1750 3150
Wire Wire Line
	4700 4650 1450 4650
Wire Wire Line
	7050 5450 7050 5500
Wire Wire Line
	7050 5500 7850 5500
Wire Wire Line
	7850 5500 7850 5450
Wire Wire Line
	7850 5450 7900 5450
Connection ~ 7050 5450
Wire Wire Line
	7050 5450 7100 5450
Text Notes 650  2900 0    50   ~ 0
SAO#1/2 GPIO1&2 shared\nwith Core Plane Addressing
Text Notes 550  7200 0    118  ~ 0
SILKSCREEN BACK
Text Notes 4050 7200 0    118  ~ 0
SILKSCREEN GRAPHICS
Wire Notes Line
	1900 5600 2650 5600
Wire Notes Line
	2650 4750 2650 3650
Wire Notes Line
	2250 4750 2250 4950
Wire Notes Line
	2650 4950 2650 5600
Wire Notes Line
	2250 4750 2750 4750
Wire Wire Line
	2550 4700 3400 4700
Wire Wire Line
	3400 4700 3400 4750
Wire Notes Line
	2250 4950 3350 4950
Text Notes 4950 2500 0    50   ~ 0
SILKSCREEN UNDER TEENSY: CUT VIN-BUSB
Connection ~ 4650 4450
Wire Wire Line
	4650 4450 4650 5600
Connection ~ 4350 5150
Wire Wire Line
	4300 3450 4350 3450
Wire Wire Line
	4300 3350 4350 3350
Connection ~ 4350 3150
Wire Wire Line
	4350 3150 4700 3150
Wire Wire Line
	4700 4550 4500 4550
Wire Wire Line
	4500 4550 4500 2450
$Comp
L Device:R R?
U 1 1 5F73FDF3
P 4500 2250
AR Path="/5E755787/5F73FDF3" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5F73FDF3" Ref="R?"  Part="1" 
AR Path="/5F73FDF3" Ref="R5"  Part="1" 
F 0 "R5" H 4300 2350 50  0000 L CNN
F 1 "10K" H 4300 2250 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4430 2250 50  0001 C CNN
F 3 "~" H 4500 2250 50  0001 C CNN
	1    4500 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4250 4550 4250
Wire Wire Line
	4550 4250 4550 5700
Wire Wire Line
	4500 2100 4500 2000
Wire Wire Line
	4500 2000 4600 2000
Connection ~ 4600 2000
Wire Wire Line
	4600 2000 5400 2000
Wire Wire Line
	4300 2450 4500 2450
Connection ~ 4500 2450
Wire Wire Line
	4500 2450 4500 2400
Text Notes 3850 6350 0    50   ~ 0
To use the Teensy 3.2 RTC you must add two things:\n1) Crystal: 32.768 kHz, 12.5 pF Citizen CFS-206, Digi-Key 300-8763-ND (5ppm)\n     (on bottom side of the Teensy board)\n2) Battery Holder: MPD BC-2003, Digi-Key BC-2003-TR-CT-ND\n3) Battery: 3V CR2032 Digi-Key P189-ND\n     (battery and holder on backside of logic board)\n
Wire Wire Line
	3550 5700 4550 5700
Wire Wire Line
	3750 5800 4650 5800
Connection ~ 4650 5600
Connection ~ 6750 5600
Wire Wire Line
	4650 5600 6750 5600
Wire Wire Line
	4650 5800 4650 5600
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 5F7507F8
P 4100 2450
AR Path="/5E7548ED/5F7507F8" Ref="J?"  Part="1" 
AR Path="/5E755AC8/5D254AE8/5F7507F8" Ref="J?"  Part="1" 
AR Path="/5F7507F8" Ref="J4"  Part="1" 
F 0 "J4" H 4100 2550 50  0000 C CNN
F 1 "PRG" H 4250 2450 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 4100 2450 50  0001 C CNN
F 3 "~" H 4100 2450 50  0001 C CNN
	1    4100 2450
	-1   0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5F7F611E
P 3550 5900
F 0 "BT1" H 3250 6000 50  0000 L CNN
F 1 "3V" H 3300 5900 50  0000 L CNN
F 2 "Battery:BatteryHolder_MPD_BC2003_1x2032" V 3550 5960 50  0001 C CNN
F 3 "~" V 3550 5960 50  0001 C CNN
	1    3550 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 6000 3750 6000
Wire Wire Line
	3750 6000 3750 5800
Text Notes 4950 5800 0    50   ~ 0
SILKSCREEN: RTC BAT. CR2032\n[OPTIONAL]
Text GLabel 7900 5450 2    50   Output ~ 0
SPARE_SPI_DC
Text GLabel 9700 6050 2    50   Output ~ 0
SPARE_SPI_CS
$Comp
L Device:R R?
U 1 1 5F832D88
P 8400 6050
AR Path="/5E755787/5F832D88" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5F832D88" Ref="R?"  Part="1" 
AR Path="/5F832D88" Ref="R44"  Part="1" 
AR Path="/5EA63449/5F832D88" Ref="R?"  Part="1" 
F 0 "R44" H 8450 6100 50  0000 L CNN
F 1 "10K" H 8450 6000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8330 6050 50  0001 C CNN
F 3 "~" H 8400 6050 50  0001 C CNN
	1    8400 6050
	-1   0    0    -1  
$EndComp
Text GLabel 9700 6450 2    50   Output ~ 0
TFT_SPI_CS
Text GLabel 9700 6250 2    50   Output ~ 0
TOUCH_SPI_CS
Text GLabel 9700 6150 2    50   Output ~ 0
OLED_SPI_CS
Text GLabel 9700 6350 2    50   Output ~ 0
SD_SPI_CS
Text GLabel 9700 6550 2    50   Output ~ 0
TEENSYVIEW_SPI_CS
$Comp
L Device:R R?
U 1 1 5F832D93
P 8650 6050
AR Path="/5E755787/5F832D93" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5F832D93" Ref="R?"  Part="1" 
AR Path="/5F832D93" Ref="R45"  Part="1" 
AR Path="/5EA63449/5F832D93" Ref="R?"  Part="1" 
F 0 "R45" H 8700 6100 50  0000 L CNN
F 1 "10K" H 8700 6000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8580 6050 50  0001 C CNN
F 3 "~" H 8650 6050 50  0001 C CNN
	1    8650 6050
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F832D99
P 8900 6050
AR Path="/5E755787/5F832D99" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5F832D99" Ref="R?"  Part="1" 
AR Path="/5F832D99" Ref="R46"  Part="1" 
AR Path="/5EA63449/5F832D99" Ref="R?"  Part="1" 
F 0 "R46" H 8950 6100 50  0000 L CNN
F 1 "10K" H 8950 6000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8830 6050 50  0001 C CNN
F 3 "~" H 8900 6050 50  0001 C CNN
	1    8900 6050
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F832D9F
P 9150 6050
AR Path="/5E755787/5F832D9F" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5F832D9F" Ref="R?"  Part="1" 
AR Path="/5F832D9F" Ref="R47"  Part="1" 
AR Path="/5EA63449/5F832D9F" Ref="R?"  Part="1" 
F 0 "R47" H 9200 6100 50  0000 L CNN
F 1 "10K" H 9200 6000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9080 6050 50  0001 C CNN
F 3 "~" H 9150 6050 50  0001 C CNN
	1    9150 6050
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F832DA5
P 8150 6050
AR Path="/5E755787/5F832DA5" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5F832DA5" Ref="R?"  Part="1" 
AR Path="/5F832DA5" Ref="R10"  Part="1" 
AR Path="/5EA63449/5F832DA5" Ref="R?"  Part="1" 
F 0 "R10" H 8200 6100 50  0000 L CNN
F 1 "10K" H 8200 6000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8080 6050 50  0001 C CNN
F 3 "~" H 8150 6050 50  0001 C CNN
	1    8150 6050
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F832DAB
P 9400 6050
AR Path="/5E755787/5F832DAB" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5F832DAB" Ref="R?"  Part="1" 
AR Path="/5F832DAB" Ref="R48"  Part="1" 
AR Path="/5EA63449/5F832DAB" Ref="R?"  Part="1" 
F 0 "R48" H 9450 6100 50  0000 L CNN
F 1 "10K" H 9450 6000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9330 6050 50  0001 C CNN
F 3 "~" H 9400 6050 50  0001 C CNN
	1    9400 6050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9700 6050 9500 6050
Wire Wire Line
	9500 6050 9500 6250
Wire Wire Line
	9500 6250 9400 6250
Wire Wire Line
	9400 6250 9400 6200
Wire Wire Line
	9700 6150 9550 6150
Wire Wire Line
	9550 6150 9550 6300
Wire Wire Line
	9550 6300 9150 6300
Wire Wire Line
	9150 6300 9150 6200
Wire Wire Line
	9700 6250 9600 6250
Wire Wire Line
	9600 6250 9600 6350
Wire Wire Line
	9600 6350 8900 6350
Wire Wire Line
	8900 6350 8900 6200
Wire Wire Line
	9700 6350 9650 6350
Wire Wire Line
	9650 6350 9650 6400
Wire Wire Line
	9650 6400 8650 6400
Wire Wire Line
	8650 6400 8650 6200
Wire Wire Line
	9700 6450 8400 6450
Wire Wire Line
	8400 6450 8400 6200
Wire Wire Line
	9700 6550 8150 6550
Wire Wire Line
	8150 6550 8150 6200
Wire Wire Line
	9400 5900 9150 5900
Connection ~ 8400 5900
Wire Wire Line
	8400 5900 8150 5900
Connection ~ 8650 5900
Wire Wire Line
	8650 5900 8750 5900
Connection ~ 8900 5900
Wire Wire Line
	8900 5900 8750 5900
Connection ~ 9150 5900
Wire Wire Line
	9150 5900 8900 5900
Text GLabel 8650 5750 0    50   Input ~ 0
3V3
Wire Wire Line
	8650 5750 8750 5750
Connection ~ 8750 5900
Wire Wire Line
	8650 5900 8400 5900
Wire Wire Line
	8750 5750 8750 5900
Text Notes 8800 5750 0    118  ~ 0
SPI CS PULL-UPS
Wire Wire Line
	4700 5050 4300 5050
Text GLabel 2550 5000 0    50   Output ~ 0
SPI_RESET
Wire Wire Line
	3400 4950 3400 5000
Wire Wire Line
	3400 5000 2700 5000
Wire Wire Line
	3400 4950 4700 4950
Wire Wire Line
	2700 5000 2700 5050
Connection ~ 2700 5000
Wire Wire Line
	2700 5000 2550 5000
Wire Wire Line
	950  5050 950  4950
Wire Wire Line
	950  4950 900  4950
Text GLabel 5500 1900 2    50   Output ~ 0
TEENSY_3V3
Wire Wire Line
	5500 1900 5400 1900
Wire Wire Line
	5400 1900 5400 2000
Connection ~ 5400 2000
Wire Wire Line
	5400 2000 6800 2000
Wire Wire Line
	950  5050 2700 5050
Text GLabel 1800 3950 0    50   Output ~ 0
TEENSYVIEW_SPI_CS
Wire Wire Line
	1850 3950 1850 4050
Wire Wire Line
	1850 4050 950  4050
Wire Wire Line
	950  4050 950  3950
Wire Wire Line
	950  3950 900  3950
Connection ~ 1850 3950
Wire Wire Line
	1850 3950 1800 3950
Wire Wire Line
	4350 3850 4350 3900
Wire Wire Line
	4350 3900 2600 3900
Wire Wire Line
	2600 3900 2600 3850
Wire Wire Line
	2600 3850 2550 3850
Connection ~ 4350 3850
Wire Wire Line
	4350 3850 4300 3850
Wire Wire Line
	4350 3750 4350 3800
Wire Wire Line
	4350 3800 2600 3800
Wire Wire Line
	2600 3800 2600 3750
Wire Wire Line
	2600 3750 2550 3750
Connection ~ 4350 3750
Wire Wire Line
	4350 3750 4300 3750
Wire Wire Line
	4350 3250 4350 3300
Wire Wire Line
	4350 3300 1800 3300
Wire Wire Line
	1800 3300 1800 3250
Wire Wire Line
	1800 3250 1750 3250
Connection ~ 4350 3250
Wire Wire Line
	4350 3250 4700 3250
Wire Wire Line
	1750 3350 1800 3350
Wire Wire Line
	1800 3350 1800 3400
Wire Wire Line
	1800 3400 4350 3400
Wire Wire Line
	4350 3400 4350 3350
Connection ~ 4350 3350
Wire Wire Line
	4350 3350 4700 3350
Wire Wire Line
	4350 3450 4350 3500
Wire Wire Line
	4350 3500 1800 3500
Wire Wire Line
	1800 3500 1800 3450
Wire Wire Line
	1800 3450 1750 3450
Connection ~ 4350 3450
Wire Wire Line
	4350 3450 4700 3450
Wire Wire Line
	1750 3550 1800 3550
Wire Wire Line
	1800 3550 1800 3600
Wire Wire Line
	4350 3600 4350 3550
Wire Wire Line
	1800 3600 4350 3600
Connection ~ 4350 3550
Wire Wire Line
	4350 3550 4300 3550
Text GLabel 1750 5450 0    50   Output ~ 0
SPARE_SPI_CS
Wire Wire Line
	4350 5450 4350 5500
Wire Wire Line
	1800 5500 1800 5450
Wire Wire Line
	1800 5450 1750 5450
Wire Wire Line
	1800 5500 4350 5500
Connection ~ 4350 5450
Wire Wire Line
	4350 5450 4700 5450
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5F9FB501
P 7200 2100
AR Path="/5E7548ED/5F9FB501" Ref="J?"  Part="1" 
AR Path="/5F9FB501" Ref="J12"  Part="1" 
F 0 "J12" V 7300 2100 50  0000 R CNN
F 1 "TEENSY Cur. Mon." V 7150 1900 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 7200 2100 50  0001 C CNN
F 3 "~" H 7200 2100 50  0001 C CNN
	1    7200 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7200 2300 7300 2300
Connection ~ 7300 2300
Wire Wire Line
	6900 2300 7200 2300
Connection ~ 7200 2300
Wire Wire Line
	8250 2300 8250 2150
Wire Wire Line
	8250 2150 8600 2150
Text Notes 550  6300 0    118  ~ 0
SILKSCREEN FRONT
Text Notes 550  7750 0    50   ~ 0
1) Serial Number Sticker Zone\n2) Board name, version, date, Machine Ideas
Text Notes 550  6500 0    50   ~ 0
1) 
Wire Wire Line
	1000 3550 1050 3550
Wire Wire Line
	1050 3550 1050 3500
Wire Wire Line
	1050 3500 1800 3500
Connection ~ 1800 3500
$EndSCHEMATC
