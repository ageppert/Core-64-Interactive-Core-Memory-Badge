EESchema Schematic File Version 4
LIBS:Interactive Core Memory Badge (Logic) Main v0.3-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title "Core 64 - IO Expansion"
Date "2020-03-24"
Rev "v0.3"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 4900 1450 2    50   Output ~ 0
nQ1P
Text GLabel 4900 1550 2    50   Output ~ 0
Q1N
Text GLabel 4900 4900 2    50   Input ~ 0
SENSE_PULSE
Text GLabel 4900 1650 2    50   Output ~ 0
nQ2P
Text GLabel 4900 1750 2    50   Output ~ 0
Q2N
Text GLabel 4900 1850 2    50   Output ~ 0
nQ3P
Text GLabel 4900 1950 2    50   Output ~ 0
Q3N
Text GLabel 4900 2050 2    50   Output ~ 0
nQ4P
Text GLabel 4900 2150 2    50   Output ~ 0
Q4N
Text GLabel 4900 2350 2    50   Output ~ 0
nQ5P
Text GLabel 4900 2450 2    50   Output ~ 0
Q5N
Text GLabel 4900 2550 2    50   Output ~ 0
nQ6P
Text GLabel 4900 2650 2    50   Output ~ 0
Q6N
Text GLabel 4900 2750 2    50   Output ~ 0
nQ7P
Text GLabel 4900 4000 2    50   Output ~ 0
nQ9P
Text GLabel 4900 3050 2    50   Output ~ 0
Q8N
Text GLabel 4900 2950 2    50   Output ~ 0
nQ8P
Text GLabel 4900 2850 2    50   Output ~ 0
Q7N
Text GLabel 4900 4300 2    50   Output ~ 0
Q10N
Text GLabel 4900 4200 2    50   Output ~ 0
nQ10P
Text GLabel 4900 4100 2    50   Output ~ 0
Q9N
Text GLabel 4900 5000 2    50   Input ~ 0
HALL_SWITCH
Text GLabel 4900 4500 2    50   Output ~ 0
SENSE_RESET
Text Notes 3450 750  0    118  ~ 0
IO EXPANSION
Text Notes 6850 1050 0    118  ~ 0
Invert PNP transistor drives
$Comp
L 74xx:74HC14 U?
U 1 1 5EAA2FDC
P 7500 1450
AR Path="/5E755787/5EAA2FDC" Ref="U?"  Part="1" 
AR Path="/5EA63449/5EAA2FDC" Ref="U8"  Part="1" 
F 0 "U8" H 7500 1770 50  0000 C CNN
F 1 "74HC14" H 7500 1677 50  0000 C CNN
F 2 "" H 7500 1450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 7500 1450 50  0001 C CNN
	1    7500 1450
	1    0    0    -1  
$EndComp
Text GLabel 7200 1450 0    50   Input ~ 0
nQ1P
Text GLabel 7800 1450 2    50   Output ~ 0
Q1P
$Comp
L 74xx:74HC14 U?
U 2 1 5EAA2FE4
P 7500 1950
AR Path="/5E755787/5EAA2FE4" Ref="U?"  Part="2" 
AR Path="/5EA63449/5EAA2FE4" Ref="U8"  Part="2" 
F 0 "U8" H 7500 2270 50  0000 C CNN
F 1 "74HC14" H 7500 2177 50  0000 C CNN
F 2 "" H 7500 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 7500 1950 50  0001 C CNN
	2    7500 1950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 3 1 5EAA2FEA
P 7500 2450
AR Path="/5E755787/5EAA2FEA" Ref="U?"  Part="3" 
AR Path="/5EA63449/5EAA2FEA" Ref="U8"  Part="3" 
F 0 "U8" H 7500 2770 50  0000 C CNN
F 1 "74HC14" H 7500 2677 50  0000 C CNN
F 2 "" H 7500 2450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 7500 2450 50  0001 C CNN
	3    7500 2450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 4 1 5EAA2FF0
P 7500 3000
AR Path="/5E755787/5EAA2FF0" Ref="U?"  Part="4" 
AR Path="/5EA63449/5EAA2FF0" Ref="U8"  Part="4" 
F 0 "U8" H 7500 3320 50  0000 C CNN
F 1 "74HC14" H 7500 3227 50  0000 C CNN
F 2 "" H 7500 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 7500 3000 50  0001 C CNN
	4    7500 3000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 5 1 5EAA2FF6
P 7500 3500
AR Path="/5E755787/5EAA2FF6" Ref="U?"  Part="5" 
AR Path="/5EA63449/5EAA2FF6" Ref="U8"  Part="5" 
F 0 "U8" H 7500 3820 50  0000 C CNN
F 1 "74HC14" H 7500 3727 50  0000 C CNN
F 2 "" H 7500 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 7500 3500 50  0001 C CNN
	5    7500 3500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 6 1 5EAA2FFC
P 7500 4050
AR Path="/5E755787/5EAA2FFC" Ref="U?"  Part="6" 
AR Path="/5EA63449/5EAA2FFC" Ref="U8"  Part="6" 
F 0 "U8" H 7500 4370 50  0000 C CNN
F 1 "74HC14" H 7500 4277 50  0000 C CNN
F 2 "" H 7500 4050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 7500 4050 50  0001 C CNN
	6    7500 4050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 7 1 5EAA3002
P 7550 4850
AR Path="/5E755787/5EAA3002" Ref="U?"  Part="7" 
AR Path="/5EA63449/5EAA3002" Ref="U8"  Part="7" 
F 0 "U8" H 7780 4897 50  0000 L CNN
F 1 "74HC14" H 7780 4804 50  0000 L CNN
F 2 "" H 7550 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 7550 4850 50  0001 C CNN
	7    7550 4850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 1 1 5EAA3008
P 9250 1450
AR Path="/5E755787/5EAA3008" Ref="U?"  Part="1" 
AR Path="/5EA63449/5EAA3008" Ref="U9"  Part="1" 
F 0 "U9" H 9250 1770 50  0000 C CNN
F 1 "74HC14" H 9250 1677 50  0000 C CNN
F 2 "" H 9250 1450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 9250 1450 50  0001 C CNN
	1    9250 1450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 2 1 5EAA300E
P 9250 1950
AR Path="/5E755787/5EAA300E" Ref="U?"  Part="2" 
AR Path="/5EA63449/5EAA300E" Ref="U9"  Part="2" 
F 0 "U9" H 9250 2270 50  0000 C CNN
F 1 "74HC14" H 9250 2177 50  0000 C CNN
F 2 "" H 9250 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 9250 1950 50  0001 C CNN
	2    9250 1950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 3 1 5EAA3014
P 9250 2450
AR Path="/5E755787/5EAA3014" Ref="U?"  Part="3" 
AR Path="/5EA63449/5EAA3014" Ref="U9"  Part="3" 
F 0 "U9" H 9250 2770 50  0000 C CNN
F 1 "74HC14" H 9250 2677 50  0000 C CNN
F 2 "" H 9250 2450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 9250 2450 50  0001 C CNN
	3    9250 2450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 4 1 5EAA301A
P 9250 3000
AR Path="/5E755787/5EAA301A" Ref="U?"  Part="4" 
AR Path="/5EA63449/5EAA301A" Ref="U9"  Part="4" 
F 0 "U9" H 9250 3320 50  0000 C CNN
F 1 "74HC14" H 9250 3227 50  0000 C CNN
F 2 "" H 9250 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 9250 3000 50  0001 C CNN
	4    9250 3000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 5 1 5EAA3020
P 9250 3550
AR Path="/5E755787/5EAA3020" Ref="U?"  Part="5" 
AR Path="/5EA63449/5EAA3020" Ref="U9"  Part="5" 
F 0 "U9" H 9250 3870 50  0000 C CNN
F 1 "74HC14" H 9250 3777 50  0000 C CNN
F 2 "" H 9250 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 9250 3550 50  0001 C CNN
	5    9250 3550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 6 1 5EAA3026
P 9250 4050
AR Path="/5E755787/5EAA3026" Ref="U?"  Part="6" 
AR Path="/5EA63449/5EAA3026" Ref="U9"  Part="6" 
F 0 "U9" H 9250 4370 50  0000 C CNN
F 1 "74HC14" H 9250 4277 50  0000 C CNN
F 2 "" H 9250 4050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 9250 4050 50  0001 C CNN
	6    9250 4050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 7 1 5EAA302C
P 9300 4850
AR Path="/5E755787/5EAA302C" Ref="U?"  Part="7" 
AR Path="/5EA63449/5EAA302C" Ref="U9"  Part="7" 
F 0 "U9" H 9530 4897 50  0000 L CNN
F 1 "74HC14" H 9530 4804 50  0000 L CNN
F 2 "" H 9300 4850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 9300 4850 50  0001 C CNN
	7    9300 4850
	1    0    0    -1  
$EndComp
Text GLabel 7200 1950 0    50   Input ~ 0
nQ2P
Text GLabel 7200 2450 0    50   Input ~ 0
nQ3P
Text GLabel 7200 3000 0    50   Input ~ 0
nQ4P
Text GLabel 7200 3500 0    50   Input ~ 0
nQ5P
Text GLabel 7200 4050 0    50   Input ~ 0
nQ6P
Text GLabel 8950 1450 0    50   Input ~ 0
nQ7P
Text GLabel 8700 1950 2    50   Input ~ 0
nQ8P
Text GLabel 8700 2450 2    50   Input ~ 0
nQ9P
Text GLabel 8650 3000 2    50   Input ~ 0
nQ10P
Text GLabel 7800 1950 2    50   Output ~ 0
Q2P
Text GLabel 7800 2450 2    50   Output ~ 0
Q3P
Text GLabel 7800 3000 2    50   Output ~ 0
Q4P
Text GLabel 7800 3500 2    50   Output ~ 0
Q5P
Text GLabel 7800 4050 2    50   Output ~ 0
Q6P
Text GLabel 9550 1450 2    50   Output ~ 0
Q7P
Text GLabel 9550 1950 2    50   Output ~ 0
Q8P
Text GLabel 9550 2450 2    50   Output ~ 0
Q9P
Text GLabel 9550 3000 2    50   Output ~ 0
Q10P
$Comp
L Interface_Expansion:MCP23017_SS U?
U 1 1 5EAA3044
P 4100 2250
AR Path="/5E755787/5EAA3044" Ref="U?"  Part="1" 
AR Path="/5EA63449/5EAA3044" Ref="U5"  Part="1" 
F 0 "U5" H 4100 3535 50  0000 C CNN
F 1 "MCP23017_SS" H 4100 3442 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 4300 1250 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 4300 1150 50  0001 L CNN
	1    4100 2250
	1    0    0    -1  
$EndComp
$Comp
L Interface_Expansion:MCP23017_SS U?
U 1 1 5EAA304A
P 4100 4800
AR Path="/5E755787/5EAA304A" Ref="U?"  Part="1" 
AR Path="/5EA63449/5EAA304A" Ref="U6"  Part="1" 
F 0 "U6" H 4100 6085 50  0000 C CNN
F 1 "MCP23017_SS" H 4100 5992 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 4300 3800 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 4300 3700 50  0001 L CNN
	1    4100 4800
	1    0    0    -1  
$EndComp
Text GLabel 4900 5100 2    50   Input ~ 0
HALL_SWITCH
Text GLabel 4900 5200 2    50   Input ~ 0
HALL_SWITCH
Text GLabel 4900 5300 2    50   Input ~ 0
HALL_SWITCH
Text GLabel 4900 4400 2    50   Output ~ 0
WRITE_ENABLE
$Comp
L Motor:Fan_4pin H?
U 1 1 5EAA93F9
P 1850 7150
AR Path="/5E755787/5EAA93F9" Ref="H?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EAA93F9" Ref="H?"  Part="1" 
AR Path="/5EA63449/5EAA93F9" Ref="H1"  Part="1" 
F 0 "H1" H 2008 7246 50  0000 L CNN
F 1 "OLED_DISPLAY" H 2008 7155 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:OLED_Header_4PIN" H 1850 7160 50  0001 C CNN
F 3 "" H 1850 7160 50  0001 C CNN
	1    1850 7150
	1    0    0    -1  
$EndComp
$Comp
L power:+VSW #PWR?
U 1 1 5EAA93FF
P 1850 6850
AR Path="/5E755787/5EAA93FF" Ref="#PWR?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EAA93FF" Ref="#PWR?"  Part="1" 
AR Path="/5EA63449/5EAA93FF" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 1850 6700 50  0001 C CNN
F 1 "+VSW" H 1865 7023 50  0000 C CNN
F 2 "" H 1850 6850 50  0001 C CNN
F 3 "" H 1850 6850 50  0001 C CNN
	1    1850 6850
	1    0    0    -1  
$EndComp
Text GLabel 1400 7050 0    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 1400 7250 0    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	1400 7050 1550 7050
Wire Wire Line
	1400 7250 1550 7250
$Comp
L Device:CP1_Small C?
U 1 1 5EAA9409
P 3200 7100
AR Path="/5E755787/5EAA9409" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EAA9409" Ref="C?"  Part="1" 
AR Path="/5EA63449/5EAA9409" Ref="C2"  Part="1" 
F 0 "C2" H 3291 7146 50  0000 L CNN
F 1 "10uF" H 3291 7055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3200 7100 50  0001 C CNN
F 3 "~" H 3200 7100 50  0001 C CNN
	1    3200 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 5EAA940F
P 2750 7100
AR Path="/5E755787/5EAA940F" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EAA940F" Ref="C?"  Part="1" 
AR Path="/5EA63449/5EAA940F" Ref="C1"  Part="1" 
F 0 "C1" H 2841 7146 50  0000 L CNN
F 1 "0.1uF" H 2841 7055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2750 7100 50  0001 C CNN
F 3 "~" H 2750 7100 50  0001 C CNN
	1    2750 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6850 2750 6850
Wire Wire Line
	3200 6850 3200 7000
Connection ~ 1850 6850
Wire Wire Line
	3200 7200 3200 7350
Wire Wire Line
	3200 7350 2750 7350
Wire Wire Line
	2750 7000 2750 6850
Connection ~ 2750 6850
Wire Wire Line
	2750 6850 3200 6850
Wire Wire Line
	2750 7200 2750 7350
Connection ~ 2750 7350
Wire Wire Line
	2750 7350 1850 7350
Text Notes 950  6450 0    50   ~ 10
TO DO: Update this to be SAO, and some easy to add I2C OLED 4-pin header.
$Comp
L power:GND #PWR?
U 1 1 5EAA9421
P 1850 7400
AR Path="/5E755787/5EAA9421" Ref="#PWR?"  Part="1" 
AR Path="/5EA63449/5EAA9421" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 1850 7150 50  0001 C CNN
F 1 "GND" H 1855 7225 50  0000 C CNN
F 2 "" H 1850 7400 50  0001 C CNN
F 3 "" H 1850 7400 50  0001 C CNN
	1    1850 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 7400 1850 7350
Connection ~ 1850 7350
Text Notes 4900 5850 0    50   ~ 10
TO DO: Board ID pin setting?\nIs there EEPROM setting in any of the I2C devices I’m using?
Text Notes 1150 3550 0    50   ~ 0
I2C ID: 0100xxx\nI2C address range is 32 decimal to 37 decimal or 0x20 to 0x27.
Text Notes 2250 6700 0    50   ~ 0
I2C ID: ???????
Text Notes 3950 6850 0    50   ~ 10
TO DO: Level shifter (74AHCT125 or 74HCT245) not required if using ~3.7V.\nor SN74LV1T34DCKR\nIs it fast enough?
$Comp
L Logic_LevelTranslator:SN74AUP1T34DCK U7
U 1 1 5E7BAA1F
P 4200 7300
F 0 "U7" H 4645 7347 50  0000 L CNN
F 1 "SN74AUP1T34DCK" H 4645 7254 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 4200 6600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74aup1t34.pdf" H 4200 6700 50  0001 C CNN
	1    4200 7300
	1    0    0    -1  
$EndComp
Text Notes 1100 1050 0    50   ~ 10
TO DO: I2C Address conflicts?
$EndSCHEMATC
