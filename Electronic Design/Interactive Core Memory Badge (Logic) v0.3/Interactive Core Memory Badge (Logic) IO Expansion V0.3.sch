EESchema Schematic File Version 4
LIBS:Interactive Core Memory Badge (Logic) Main v0.3-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title "Core 64 - IO Expansion"
Date "2020-03-24"
Rev "v0.3"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 3050 1300 2    50   Output ~ 0
nQ1P
Text GLabel 3050 1400 2    50   Output ~ 0
Q1N
Text GLabel 3000 4850 2    50   Input ~ 0
SENSE_PULSE
Text GLabel 3050 1500 2    50   Output ~ 0
nQ2P
Text GLabel 3050 1600 2    50   Output ~ 0
Q2N
Text GLabel 3050 1700 2    50   Output ~ 0
nQ3P
Text GLabel 3050 1800 2    50   Output ~ 0
Q3N
Text GLabel 3050 1900 2    50   Output ~ 0
nQ4P
Text GLabel 3050 2000 2    50   Output ~ 0
Q4N
Text GLabel 3050 2200 2    50   Output ~ 0
nQ5P
Text GLabel 3050 2300 2    50   Output ~ 0
Q5N
Text GLabel 3050 2400 2    50   Output ~ 0
nQ6P
Text GLabel 3050 2500 2    50   Output ~ 0
Q6N
Text GLabel 3050 2600 2    50   Output ~ 0
nQ7P
Text GLabel 3000 3950 2    50   Output ~ 0
nQ9P
Text GLabel 3050 2900 2    50   Output ~ 0
Q8N
Text GLabel 3050 2800 2    50   Output ~ 0
nQ8P
Text GLabel 3050 2700 2    50   Output ~ 0
Q7N
Text GLabel 3000 4250 2    50   Output ~ 0
Q10N
Text GLabel 3000 4150 2    50   Output ~ 0
nQ10P
Text GLabel 3000 4050 2    50   Output ~ 0
Q9N
Text GLabel 3000 4950 2    50   Input ~ 0
HALL_SWITCH
Text GLabel 3000 4450 2    50   Output ~ 0
SENSE_RESET
Text Notes 550  700  0    118  ~ 0
IO EXPANDER FOR CORE DRIVE ARRAY
Text Notes 5350 700  0    118  ~ 0
INVERT DRIVE SIGNALS FOR PNP TRANSISTORS
$Comp
L 74xx:74HC14 U?
U 1 1 5EAA2FDC
P 6000 1100
AR Path="/5E755787/5EAA2FDC" Ref="U?"  Part="1" 
AR Path="/5EA63449/5EAA2FDC" Ref="U8"  Part="1" 
F 0 "U8" H 6000 1420 50  0000 C CNN
F 1 "74HC14" H 6000 1327 50  0000 C CNN
F 2 "Digikey:SOIC-14_W3.9mm" H 6000 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 6000 1100 50  0001 C CNN
	1    6000 1100
	1    0    0    -1  
$EndComp
Text GLabel 5700 1100 0    50   Input ~ 0
nQ1P
Text GLabel 6300 1100 2    50   Output ~ 0
Q1P
$Comp
L 74xx:74HC14 U?
U 2 1 5EAA2FE4
P 6000 1600
AR Path="/5E755787/5EAA2FE4" Ref="U?"  Part="2" 
AR Path="/5EA63449/5EAA2FE4" Ref="U8"  Part="2" 
F 0 "U8" H 6000 1920 50  0000 C CNN
F 1 "74HC14" H 6000 1827 50  0000 C CNN
F 2 "Digikey:SOIC-14_W3.9mm" H 6000 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 6000 1600 50  0001 C CNN
	2    6000 1600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 3 1 5EAA2FEA
P 6000 2100
AR Path="/5E755787/5EAA2FEA" Ref="U?"  Part="3" 
AR Path="/5EA63449/5EAA2FEA" Ref="U8"  Part="3" 
F 0 "U8" H 6000 2420 50  0000 C CNN
F 1 "74HC14" H 6000 2327 50  0000 C CNN
F 2 "Digikey:SOIC-14_W3.9mm" H 6000 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 6000 2100 50  0001 C CNN
	3    6000 2100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 4 1 5EAA2FF0
P 6000 2650
AR Path="/5E755787/5EAA2FF0" Ref="U?"  Part="4" 
AR Path="/5EA63449/5EAA2FF0" Ref="U8"  Part="4" 
F 0 "U8" H 6000 2970 50  0000 C CNN
F 1 "74HC14" H 6000 2877 50  0000 C CNN
F 2 "Digikey:SOIC-14_W3.9mm" H 6000 2650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 6000 2650 50  0001 C CNN
	4    6000 2650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 5 1 5EAA2FF6
P 6000 3150
AR Path="/5E755787/5EAA2FF6" Ref="U?"  Part="5" 
AR Path="/5EA63449/5EAA2FF6" Ref="U8"  Part="5" 
F 0 "U8" H 6000 3470 50  0000 C CNN
F 1 "74HC14" H 6000 3377 50  0000 C CNN
F 2 "Digikey:SOIC-14_W3.9mm" H 6000 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 6000 3150 50  0001 C CNN
	5    6000 3150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 6 1 5EAA2FFC
P 6000 3700
AR Path="/5E755787/5EAA2FFC" Ref="U?"  Part="6" 
AR Path="/5EA63449/5EAA2FFC" Ref="U8"  Part="6" 
F 0 "U8" H 6000 4020 50  0000 C CNN
F 1 "74HC14" H 6000 3927 50  0000 C CNN
F 2 "Digikey:SOIC-14_W3.9mm" H 6000 3700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 6000 3700 50  0001 C CNN
	6    6000 3700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 7 1 5EAA3002
P 8400 1500
AR Path="/5E755787/5EAA3002" Ref="U?"  Part="7" 
AR Path="/5EA63449/5EAA3002" Ref="U8"  Part="7" 
F 0 "U8" H 8630 1547 50  0000 L CNN
F 1 "74HC14" H 8630 1454 50  0000 L CNN
F 2 "Digikey:SOIC-14_W3.9mm" H 8400 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 8400 1500 50  0001 C CNN
	7    8400 1500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 1 1 5EAA3008
P 7350 1100
AR Path="/5E755787/5EAA3008" Ref="U?"  Part="1" 
AR Path="/5EA63449/5EAA3008" Ref="U9"  Part="1" 
F 0 "U9" H 7350 1420 50  0000 C CNN
F 1 "74HC14" H 7350 1327 50  0000 C CNN
F 2 "Digikey:SOIC-14_W3.9mm" H 7350 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 7350 1100 50  0001 C CNN
	1    7350 1100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 2 1 5EAA300E
P 7350 1600
AR Path="/5E755787/5EAA300E" Ref="U?"  Part="2" 
AR Path="/5EA63449/5EAA300E" Ref="U9"  Part="2" 
F 0 "U9" H 7350 1920 50  0000 C CNN
F 1 "74HC14" H 7350 1827 50  0000 C CNN
F 2 "Digikey:SOIC-14_W3.9mm" H 7350 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 7350 1600 50  0001 C CNN
	2    7350 1600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 3 1 5EAA3014
P 7350 2100
AR Path="/5E755787/5EAA3014" Ref="U?"  Part="3" 
AR Path="/5EA63449/5EAA3014" Ref="U9"  Part="3" 
F 0 "U9" H 7350 2420 50  0000 C CNN
F 1 "74HC14" H 7350 2327 50  0000 C CNN
F 2 "Digikey:SOIC-14_W3.9mm" H 7350 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 7350 2100 50  0001 C CNN
	3    7350 2100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 4 1 5EAA301A
P 7350 2650
AR Path="/5E755787/5EAA301A" Ref="U?"  Part="4" 
AR Path="/5EA63449/5EAA301A" Ref="U9"  Part="4" 
F 0 "U9" H 7350 2970 50  0000 C CNN
F 1 "74HC14" H 7350 2877 50  0000 C CNN
F 2 "Digikey:SOIC-14_W3.9mm" H 7350 2650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 7350 2650 50  0001 C CNN
	4    7350 2650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 5 1 5EAA3020
P 7350 3200
AR Path="/5E755787/5EAA3020" Ref="U?"  Part="5" 
AR Path="/5EA63449/5EAA3020" Ref="U9"  Part="5" 
F 0 "U9" H 7350 3520 50  0000 C CNN
F 1 "74HC14" H 7350 3427 50  0000 C CNN
F 2 "Digikey:SOIC-14_W3.9mm" H 7350 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 7350 3200 50  0001 C CNN
	5    7350 3200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 6 1 5EAA3026
P 7350 3700
AR Path="/5E755787/5EAA3026" Ref="U?"  Part="6" 
AR Path="/5EA63449/5EAA3026" Ref="U9"  Part="6" 
F 0 "U9" H 7350 4020 50  0000 C CNN
F 1 "74HC14" H 7350 3927 50  0000 C CNN
F 2 "Digikey:SOIC-14_W3.9mm" H 7350 3700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 7350 3700 50  0001 C CNN
	6    7350 3700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 7 1 5EAA302C
P 8400 3150
AR Path="/5E755787/5EAA302C" Ref="U?"  Part="7" 
AR Path="/5EA63449/5EAA302C" Ref="U9"  Part="7" 
F 0 "U9" H 8630 3197 50  0000 L CNN
F 1 "74HC14" H 8630 3104 50  0000 L CNN
F 2 "Digikey:SOIC-14_W3.9mm" H 8400 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 8400 3150 50  0001 C CNN
	7    8400 3150
	1    0    0    -1  
$EndComp
Text GLabel 5700 1600 0    50   Input ~ 0
nQ2P
Text GLabel 5700 2100 0    50   Input ~ 0
nQ3P
Text GLabel 5700 2650 0    50   Input ~ 0
nQ4P
Text GLabel 5700 3150 0    50   Input ~ 0
nQ5P
Text GLabel 5700 3700 0    50   Input ~ 0
nQ6P
Text GLabel 7050 1100 0    50   Input ~ 0
nQ7P
Text GLabel 7050 1600 0    50   Input ~ 0
nQ8P
Text GLabel 7050 2100 0    50   Input ~ 0
nQ9P
Text GLabel 7050 2650 0    50   Input ~ 0
nQ10P
Text GLabel 6300 1600 2    50   Output ~ 0
Q2P
Text GLabel 6300 2100 2    50   Output ~ 0
Q3P
Text GLabel 6300 2650 2    50   Output ~ 0
Q4P
Text GLabel 6300 3150 2    50   Output ~ 0
Q5P
Text GLabel 6300 3700 2    50   Output ~ 0
Q6P
Text GLabel 7650 1100 2    50   Output ~ 0
Q7P
Text GLabel 7650 1600 2    50   Output ~ 0
Q8P
Text GLabel 7650 2100 2    50   Output ~ 0
Q9P
Text GLabel 7650 2650 2    50   Output ~ 0
Q10P
Text GLabel 3000 5050 2    50   Input ~ 0
HALL_SWITCH
Text GLabel 3000 5150 2    50   Input ~ 0
HALL_SWITCH
Text GLabel 3000 5250 2    50   Input ~ 0
HALL_SWITCH
Text GLabel 3000 4350 2    50   Output ~ 0
WRITE_ENABLE
Text GLabel 6200 4700 2    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 6200 4850 2    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	6200 4850 6150 4850
$Comp
L Device:CP1_Small C?
U 1 1 5EAA9409
P 4750 5000
AR Path="/5E755787/5EAA9409" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EAA9409" Ref="C?"  Part="1" 
AR Path="/5EA63449/5EAA9409" Ref="C2"  Part="1" 
F 0 "C2" H 4841 5046 50  0000 L CNN
F 1 "10uF" H 4841 4955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4750 5000 50  0001 C CNN
F 3 "~" H 4750 5000 50  0001 C CNN
	1    4750 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 5EAA940F
P 4350 5000
AR Path="/5E755787/5EAA940F" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EAA940F" Ref="C?"  Part="1" 
AR Path="/5EA63449/5EAA940F" Ref="C1"  Part="1" 
F 0 "C1" H 4441 5046 50  0000 L CNN
F 1 "0.1uF" H 4441 4955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4350 5000 50  0001 C CNN
F 3 "~" H 4350 5000 50  0001 C CNN
	1    4350 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4750 4750 4900
Wire Wire Line
	4750 5100 4750 5250
Wire Wire Line
	4350 4900 4350 4750
Wire Wire Line
	4350 4750 4750 4750
Wire Wire Line
	4350 5100 4350 5250
Connection ~ 4350 5250
Text Notes 550  6300 0    118  ~ 0
SUPERIOR ADD-ON SOCKET (OPTIONAL)
$Comp
L power:GND #PWR?
U 1 1 5EAA9421
P 4350 5300
AR Path="/5E755787/5EAA9421" Ref="#PWR?"  Part="1" 
AR Path="/5EA63449/5EAA9421" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 4350 5050 50  0001 C CNN
F 1 "GND" H 4355 5125 50  0000 C CNN
F 2 "" H 4350 5300 50  0001 C CNN
F 3 "" H 4350 5300 50  0001 C CNN
	1    4350 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5300 4350 5250
$Comp
L Device:R R?
U 1 1 5E87C8E7
P 9200 4500
AR Path="/5E755787/5E87C8E7" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E87C8E7" Ref="R?"  Part="1" 
AR Path="/5EA63449/5E87C8E7" Ref="R47"  Part="1" 
F 0 "R47" H 9270 4546 50  0000 L CNN
F 1 "10K" H 9270 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9130 4500 50  0001 C CNN
F 3 "~" H 9200 4500 50  0001 C CNN
	1    9200 4500
	1    0    0    -1  
$EndComp
Text GLabel 3000 5350 2    50   Input ~ 0
BOARD_ID1
Text GLabel 3000 5450 2    50   Input ~ 0
BOARD_ID2
Text GLabel 3000 5550 2    50   Input ~ 0
BOARD_ID3
Text GLabel 9800 4700 2    50   Output ~ 0
BOARD_ID1
Text GLabel 9800 4800 2    50   Output ~ 0
BOARD_ID2
Text GLabel 9800 4900 2    50   Output ~ 0
BOARD_ID3
$Comp
L Device:R R?
U 1 1 5E87E8B3
P 9200 5150
AR Path="/5E755787/5E87E8B3" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E87E8B3" Ref="R?"  Part="1" 
AR Path="/5EA63449/5E87E8B3" Ref="R48"  Part="1" 
F 0 "R48" H 9270 5196 50  0000 L CNN
F 1 "10K" H 9270 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9130 5150 50  0001 C CNN
F 3 "~" H 9200 5150 50  0001 C CNN
	1    9200 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E8824C5
P 9500 4500
AR Path="/5E755787/5E8824C5" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E8824C5" Ref="R?"  Part="1" 
AR Path="/5EA63449/5E8824C5" Ref="R49"  Part="1" 
F 0 "R49" H 9570 4546 50  0000 L CNN
F 1 "10K" H 9570 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9430 4500 50  0001 C CNN
F 3 "~" H 9500 4500 50  0001 C CNN
	1    9500 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E8824D2
P 9500 5150
AR Path="/5E755787/5E8824D2" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E8824D2" Ref="R?"  Part="1" 
AR Path="/5EA63449/5E8824D2" Ref="R50"  Part="1" 
F 0 "R50" H 9570 5196 50  0000 L CNN
F 1 "10K" H 9570 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9430 5150 50  0001 C CNN
F 3 "~" H 9500 5150 50  0001 C CNN
	1    9500 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E883867
P 8900 5150
AR Path="/5E755787/5E883867" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E883867" Ref="R?"  Part="1" 
AR Path="/5EA63449/5E883867" Ref="R7"  Part="1" 
F 0 "R7" H 8970 5196 50  0000 L CNN
F 1 "10K" H 8970 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8830 5150 50  0001 C CNN
F 3 "~" H 8900 5150 50  0001 C CNN
	1    8900 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 4650 9500 4700
Wire Wire Line
	9500 4700 9800 4700
Wire Wire Line
	9800 4900 8900 4900
Wire Wire Line
	9200 4800 9200 4650
Wire Wire Line
	9800 4800 9200 4800
Wire Wire Line
	8900 4650 8900 4900
Wire Wire Line
	8900 4900 8900 5000
Connection ~ 8900 4900
Wire Wire Line
	9200 4800 9200 5000
Connection ~ 9200 4800
Wire Wire Line
	9500 4700 9500 5000
Connection ~ 9500 4700
$Comp
L Device:R R?
U 1 1 5E88385A
P 8900 4500
AR Path="/5E755787/5E88385A" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E88385A" Ref="R?"  Part="1" 
AR Path="/5EA63449/5E88385A" Ref="R6"  Part="1" 
F 0 "R6" H 8970 4546 50  0000 L CNN
F 1 "10K" H 8970 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8830 4500 50  0001 C CNN
F 3 "~" H 8900 4500 50  0001 C CNN
	1    8900 4500
	1    0    0    -1  
$EndComp
Text Notes 8850 4150 0    118  ~ 0
BOARD ID
Text GLabel 9600 4250 2    50   Input ~ 0
3V3_800mA
$Comp
L power:GNDD #PWR0125
U 1 1 5E891539
P 9500 5300
F 0 "#PWR0125" H 9500 5050 50  0001 C CNN
F 1 "GNDD" H 9504 5144 50  0000 C CNN
F 2 "" H 9500 5300 50  0001 C CNN
F 3 "" H 9500 5300 50  0001 C CNN
	1    9500 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0128
U 1 1 5E89228A
P 8400 2000
F 0 "#PWR0128" H 8400 1750 50  0001 C CNN
F 1 "GNDD" H 8404 1844 50  0000 C CNN
F 2 "" H 8400 2000 50  0001 C CNN
F 3 "" H 8400 2000 50  0001 C CNN
	1    8400 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0129
U 1 1 5E89286A
P 8400 3650
F 0 "#PWR0129" H 8400 3400 50  0001 C CNN
F 1 "GNDD" H 8404 3494 50  0000 C CNN
F 2 "" H 8400 3650 50  0001 C CNN
F 3 "" H 8400 3650 50  0001 C CNN
	1    8400 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0130
U 1 1 5E892DA1
P 2050 5850
F 0 "#PWR0130" H 2050 5600 50  0001 C CNN
F 1 "GNDD" H 2054 5694 50  0000 C CNN
F 2 "" H 2050 5850 50  0001 C CNN
F 3 "" H 2050 5850 50  0001 C CNN
	1    2050 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0154
U 1 1 5E8936A9
P 2000 3200
F 0 "#PWR0154" H 2000 2950 50  0001 C CNN
F 1 "GNDD" H 2004 3044 50  0000 C CNN
F 2 "" H 2000 3200 50  0001 C CNN
F 3 "" H 2000 3200 50  0001 C CNN
	1    2000 3200
	1    0    0    -1  
$EndComp
Text Notes 4250 4150 0    118  ~ 0
OLED DISPLAY (OPTIONAL)
$Comp
L Connector:Conn_01x04_Female J5
U 1 1 5E830BC9
P 5950 5100
F 0 "J5" V 5850 4750 50  0000 L CNN
F 1 "Conn_01x04_Female" V 6050 4650 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical_SMD_and_TH_Pin1Left" H 5950 5100 50  0001 C CNN
F 3 "~" H 5950 5100 50  0001 C CNN
	1    5950 5100
	0    -1   1    0   
$EndComp
Wire Wire Line
	6150 4900 6150 4850
Wire Wire Line
	6050 4700 6050 4900
Wire Wire Line
	6050 4700 6200 4700
Wire Wire Line
	5250 4800 5950 4800
Wire Wire Line
	5950 4800 5950 4900
Connection ~ 4750 5250
Wire Wire Line
	5850 4850 5850 4900
Text Notes 4300 4450 0    50   ~ 0
0.96” (128x64)\nI2C 4-pins, ADDRESS: 0x3C (60 decimal)\n(alternate is 0x3D, not 0x7A or 0x78!)
Text Notes 9800 4600 0    50   ~ 0
0b000 = 0x00 = 0\nTop 3 resistors: DNI, DNI, DNI\nBottom 3 resistors: 10K, 10K, 10K
$Comp
L badgelife_shitty_addon_v169bis:Badgelife_sao_connector_v169bis X1
U 1 1 5E88FF30
P 1350 6850
F 0 "X1" H 1529 6847 50  0000 L CNN
F 1 "SAO_v169bis" H 1529 6754 50  0000 L CNN
F 2 "badgelife_sao_v169bis:Badgelife-SAOv169-BADGE-2x3" H 1350 7050 50  0001 C CNN
F 3 "" H 1350 7050 50  0001 C CNN
	1    1350 6850
	1    0    0    -1  
$EndComp
$Comp
L Interface_Expansion:MCP23017_SO U6
U 1 1 5E900DF7
P 2300 4750
F 0 "U6" H 1850 5750 50  0000 C CNN
F 1 "MCP23017_SO" H 2200 5250 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 2500 3750 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 2500 3650 50  0001 L CNN
	1    2300 4750
	1    0    0    -1  
$EndComp
Text GLabel 1050 6800 0    50   Input ~ 0
3V3_800mA
$Comp
L power:GND #PWR?
U 1 1 5E90735C
P 900 6950
AR Path="/5E755787/5E90735C" Ref="#PWR?"  Part="1" 
AR Path="/5EA63449/5E90735C" Ref="#PWR0158"  Part="1" 
F 0 "#PWR0158" H 900 6700 50  0001 C CNN
F 1 "GND" H 905 6775 50  0000 C CNN
F 2 "" H 900 6950 50  0001 C CNN
F 3 "" H 900 6950 50  0001 C CNN
	1    900  6950
	1    0    0    -1  
$EndComp
Text GLabel 1150 7400 0    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 1150 6400 0    50   BiDi ~ 0
I2C_DATA
Text Notes 550  7700 0    50   ~ 0
A.K.A. SAO v1.69bis (https://hackaday.io/project/52950-shitty-add-ons) using Sullins SFH11-NBPC-D03-ST-BK\nhttps://www.digikey.com/product-detail/en/sullins-connector-solutions/SFH11-NBPC-D03-ST-BK/S9717-ND/4558818
Wire Wire Line
	1050 6800 1100 6800
Wire Wire Line
	1100 6800 1100 6500
Wire Wire Line
	1100 6500 1200 6500
Wire Wire Line
	900  6950 900  6900
Wire Wire Line
	900  6900 1100 6900
Wire Wire Line
	1100 6900 1100 7300
Wire Wire Line
	1100 7300 1250 7300
Wire Wire Line
	1150 6400 1300 6400
Wire Wire Line
	1300 6400 1300 6550
Wire Wire Line
	1150 7400 1350 7400
Wire Wire Line
	1350 7400 1350 7250
Wire Wire Line
	1200 6500 1200 6550
Connection ~ 1200 6500
Wire Wire Line
	1200 6500 2900 6500
Wire Wire Line
	1300 6400 3000 6400
Connection ~ 1300 6400
Text GLabel 1650 1400 0    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 1650 1300 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 1600 4050 0    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 1600 3950 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 1600 7200 2    50   BiDi ~ 0
SAO1_GPIO2(RX)
Text GLabel 1600 6600 2    50   BiDi ~ 0
SAO1_GPIO1(TX)
Text GLabel 3300 7200 2    50   BiDi ~ 0
SAO2_GPIO2(RX)
Text GLabel 3300 6600 2    50   BiDi ~ 0
SAO2_GPIO1(TX)
Text GLabel 5000 6600 2    50   BiDi ~ 0
SAO3_GPIO1
Text GLabel 5000 7200 2    50   BiDi ~ 0
SAO3_GPIO2
Wire Wire Line
	1450 7250 1550 7250
Wire Wire Line
	1550 7250 1550 7200
Wire Wire Line
	1550 7200 1600 7200
Wire Wire Line
	1400 6550 1550 6550
Wire Wire Line
	1550 6550 1550 6600
Wire Wire Line
	1550 6600 1600 6600
Wire Wire Line
	1250 7250 1250 7300
Wire Wire Line
	1250 7300 2950 7300
Connection ~ 1250 7300
Wire Wire Line
	1350 7400 3050 7400
Connection ~ 1350 7400
$Comp
L badgelife_shitty_addon_v169bis:Badgelife_sao_connector_v169bis X2
U 1 1 5E98282F
P 3050 6850
F 0 "X2" H 3229 6847 50  0000 L CNN
F 1 "SAO_v169bis" H 3229 6754 50  0000 L CNN
F 2 "badgelife_sao_v169bis:Badgelife-SAOv169-BADGE-2x3" H 3050 7050 50  0001 C CNN
F 3 "" H 3050 7050 50  0001 C CNN
	1    3050 6850
	1    0    0    -1  
$EndComp
$Comp
L badgelife_shitty_addon_v169bis:Badgelife_sao_connector_v169bis X3
U 1 1 5E9832A1
P 4750 6850
F 0 "X3" H 4929 6847 50  0000 L CNN
F 1 "SAO_v169bis" H 4929 6754 50  0000 L CNN
F 2 "badgelife_sao_v169bis:Badgelife-SAOv169-BADGE-2x3" H 4750 7050 50  0001 C CNN
F 3 "" H 4750 7050 50  0001 C CNN
	1    4750 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6500 2900 6550
Connection ~ 2900 6500
Wire Wire Line
	2900 6500 4600 6500
Wire Wire Line
	3000 6400 3000 6550
Connection ~ 3000 6400
Wire Wire Line
	3100 6550 3250 6550
Wire Wire Line
	3250 6550 3250 6600
Wire Wire Line
	3250 6600 3300 6600
Wire Wire Line
	3300 7200 3250 7200
Wire Wire Line
	3250 7200 3250 7250
Wire Wire Line
	3250 7250 3150 7250
Wire Wire Line
	2950 7250 2950 7300
Connection ~ 2950 7300
Wire Wire Line
	3050 7250 3050 7400
Connection ~ 3050 7400
Wire Wire Line
	3050 7400 4750 7400
Wire Wire Line
	4650 7300 4650 7250
Wire Wire Line
	2950 7300 4650 7300
Wire Wire Line
	4750 7250 4750 7400
Wire Wire Line
	4600 6550 4600 6500
Wire Wire Line
	3000 6400 4700 6400
Wire Wire Line
	4700 6550 4700 6400
Wire Wire Line
	4800 6550 4950 6550
Wire Wire Line
	4950 6550 4950 6600
Wire Wire Line
	4950 6600 5000 6600
Wire Wire Line
	4850 7250 4950 7250
Wire Wire Line
	4950 7250 4950 7200
Wire Wire Line
	4950 7200 5000 7200
$Comp
L Jumper:SolderJumper_3_Open JP2
U 1 1 5E81A96A
P 5400 5050
F 0 "JP2" V 5250 5100 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 5000 4600 50  0001 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm_NumberLabels" H 5400 5050 50  0001 C CNN
F 3 "~" H 5400 5050 50  0001 C CNN
	1    5400 5050
	0    -1   -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 5E82F3CE
P 5100 4950
F 0 "JP1" V 5200 5000 50  0000 L CNN
F 1 "SolderJumper_3_Open" V 4450 4850 50  0001 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm_NumberLabels" H 5100 4950 50  0001 C CNN
F 3 "~" H 5100 4950 50  0001 C CNN
	1    5100 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 4850 5850 4850
Wire Wire Line
	5550 5050 5600 5050
Wire Wire Line
	5600 5050 5600 4850
Wire Wire Line
	5250 4950 5250 4800
Wire Wire Line
	5100 5250 5100 5150
Connection ~ 5100 5250
Wire Wire Line
	5100 5250 5400 5250
Wire Wire Line
	5100 4750 5400 4750
Wire Wire Line
	5400 4750 5400 4850
Wire Wire Line
	4750 5250 4350 5250
Wire Wire Line
	4750 5250 5100 5250
Wire Wire Line
	4750 4750 5100 4750
Connection ~ 4750 4750
Connection ~ 5100 4750
Text GLabel 2500 1000 2    50   Input ~ 0
3V3_800mA
$Comp
L Interface_Expansion:MCP23017_SO U5
U 1 1 5E8CA59F
P 2350 2100
F 0 "U5" H 1950 3100 50  0000 C CNN
F 1 "MCP23017_SO" H 2250 2550 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 2550 1100 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 2550 1000 50  0001 L CNN
	1    2350 2100
	1    0    0    -1  
$EndComp
Text GLabel 2450 3650 2    50   Input ~ 0
3V3_800mA
Wire Wire Line
	1650 2200 850  2200
Wire Wire Line
	850  1000 2350 1000
Wire Wire Line
	850  1000 850  2200
Wire Wire Line
	2350 1000 2500 1000
Connection ~ 2350 1000
Wire Wire Line
	2350 3200 2000 3200
Wire Wire Line
	2000 3200 1550 3200
Wire Wire Line
	1550 3200 1550 2900
Wire Wire Line
	1550 2700 1650 2700
Connection ~ 2000 3200
Wire Wire Line
	1650 2800 1550 2800
Connection ~ 1550 2800
Wire Wire Line
	1550 2800 1550 2700
Wire Wire Line
	1650 2900 1550 2900
Connection ~ 1550 2900
Wire Wire Line
	1550 2900 1550 2800
Text Notes 850  950  0    50   ~ 0
I2C ID: 0100000 (7-bit address) 32 decimal 0x20\n(Available address range is 32 decimal to 37 decimal or 0x20 to 0x27)
Text Notes 850  3600 0    50   ~ 0
I2C ID: 0100001 (7-bit address) 33 decimal 0x21\n(Available address range is 32 decimal to 37 decimal or 0x20 to 0x27)
Wire Wire Line
	2450 3650 2300 3650
Wire Wire Line
	2300 3650 850  3650
Wire Wire Line
	850  3650 850  4850
Wire Wire Line
	850  4850 1600 4850
Connection ~ 2300 3650
Wire Wire Line
	1600 5550 850  5550
Wire Wire Line
	850  5550 850  4850
Connection ~ 850  4850
Wire Wire Line
	1600 5450 1500 5450
Wire Wire Line
	1500 5450 1500 5850
Wire Wire Line
	1500 5850 2050 5850
Connection ~ 2050 5850
Wire Wire Line
	2050 5850 2300 5850
Wire Wire Line
	1600 5350 1500 5350
Wire Wire Line
	1500 5350 1500 5450
Connection ~ 1500 5450
Text GLabel 1650 2000 0    50   Output ~ 0
IOEXP_ID32_INT_A
Text GLabel 1650 1900 0    50   Output ~ 0
IOEXP_ID32_INT_B
Text GLabel 1600 4650 0    50   Output ~ 0
IOEXP_ID33_INT_A
Text GLabel 1600 4550 0    50   Output ~ 0
IOEXP_ID33_INT_B
Wire Wire Line
	8900 5300 9200 5300
Connection ~ 9200 5300
Wire Wire Line
	9500 5300 9200 5300
Connection ~ 9500 5300
Wire Wire Line
	8900 4350 8900 4250
Wire Wire Line
	8900 4250 9200 4250
Wire Wire Line
	9500 4350 9500 4250
Wire Wire Line
	9200 4350 9200 4250
Connection ~ 9200 4250
Wire Wire Line
	9200 4250 9500 4250
Wire Wire Line
	9500 4250 9600 4250
Connection ~ 9500 4250
Text GLabel 8400 1000 2    50   Input ~ 0
3V3_800mA
Text GLabel 8400 2650 2    50   Input ~ 0
3V3_800mA
Text GLabel 4400 4600 2    50   Input ~ 0
3V3_800mA
Wire Wire Line
	4350 4750 4350 4600
Wire Wire Line
	4350 4600 4400 4600
Connection ~ 4350 4750
$Comp
L Device:R R?
U 1 1 5E8BD8E0
P 7950 4800
AR Path="/5E755787/5E8BD8E0" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E8BD8E0" Ref="R?"  Part="1" 
AR Path="/5E8BD8E0" Ref="R?"  Part="1" 
AR Path="/5EA63449/5E8BD8E0" Ref="R3"  Part="1" 
F 0 "R3" H 8020 4846 50  0000 L CNN
F 1 "4K7" H 8020 4755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7880 4800 50  0001 C CNN
F 3 "~" H 7950 4800 50  0001 C CNN
	1    7950 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E8BD8E6
P 8350 5000
AR Path="/5E755787/5E8BD8E6" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E8BD8E6" Ref="R?"  Part="1" 
AR Path="/5E8BD8E6" Ref="R?"  Part="1" 
AR Path="/5EA63449/5E8BD8E6" Ref="R2"  Part="1" 
F 0 "R2" H 8420 5046 50  0000 L CNN
F 1 "4K7" H 8420 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8280 5000 50  0001 C CNN
F 3 "~" H 8350 5000 50  0001 C CNN
	1    8350 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 5000 7950 5000
Wire Wire Line
	7950 4950 7950 5000
Text GLabel 7850 5150 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 7850 5000 0    50   BiDi ~ 0
I2C_CLOCK
Text Notes 7050 4150 0    118  ~ 0
I2C PULL-UPS
Text GLabel 7950 4350 0    50   Input ~ 0
3V3_800mA
Wire Wire Line
	8350 4550 8350 4850
$Comp
L Jumper:SolderJumper_3_Bridged123 JP3
U 1 1 5E87A97F
P 8150 4550
F 0 "JP3" H 8150 4665 50  0000 C CNN
F 1 "SolderJumper_3_Bridged123" H 8750 4500 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged12_Pad1.0x1.5mm_NumberLabels" H 8150 4550 50  0001 C CNN
F 3 "~" H 8150 4550 50  0001 C CNN
	1    8150 4550
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male J7
U 1 1 5E87C9AB
P 7650 6000
F 0 "J7" H 7622 5881 50  0000 R CNN
F 1 "Conn_01x04_Male" H 7622 5974 50  0000 R CNN
F 2 "Connector_JST:JST_SH_SM04B-SRSS-TB_1x04-1MP_P1.00mm_Horizontal" H 7650 6000 50  0001 C CNN
F 3 "~" H 7650 6000 50  0001 C CNN
	1    7650 6000
	1    0    0    1   
$EndComp
Text Notes 6900 5600 0    118  ~ 0
QWIIC CONNECTOR
Wire Wire Line
	7850 5150 8350 5150
Wire Wire Line
	8150 4350 7950 4350
Wire Wire Line
	7950 4550 7950 4650
Wire Wire Line
	8150 4350 8150 4400
Text GLabel 8050 5700 2    50   Input ~ 0
3V3_800mA
$Comp
L power:GND #PWR?
U 1 1 5E8E126F
P 8050 6100
AR Path="/5E755787/5E8E126F" Ref="#PWR?"  Part="1" 
AR Path="/5EA63449/5E8E126F" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 8050 5850 50  0001 C CNN
F 1 "GND" H 8055 5925 50  0000 C CNN
F 2 "" H 8050 6100 50  0001 C CNN
F 3 "" H 8050 6100 50  0001 C CNN
	1    8050 6100
	1    0    0    -1  
$EndComp
Text GLabel 8050 5800 2    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 8050 5900 2    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	7850 5800 8050 5800
Wire Wire Line
	7850 5900 8050 5900
Wire Wire Line
	7850 6000 7950 6000
Wire Wire Line
	7950 6000 7950 5700
Wire Wire Line
	7950 5700 8050 5700
Wire Wire Line
	7850 6100 8050 6100
$EndSCHEMATC
