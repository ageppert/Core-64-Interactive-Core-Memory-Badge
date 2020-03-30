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
Text GLabel 4900 1300 2    50   Output ~ 0
nQ1P
Text GLabel 4900 1400 2    50   Output ~ 0
Q1N
Text GLabel 4900 4800 2    50   Input ~ 0
SENSE_PULSE
Text GLabel 4900 1500 2    50   Output ~ 0
nQ2P
Text GLabel 4900 1600 2    50   Output ~ 0
Q2N
Text GLabel 4900 1700 2    50   Output ~ 0
nQ3P
Text GLabel 4900 1800 2    50   Output ~ 0
Q3N
Text GLabel 4900 1900 2    50   Output ~ 0
nQ4P
Text GLabel 4900 2000 2    50   Output ~ 0
Q4N
Text GLabel 4900 2200 2    50   Output ~ 0
nQ5P
Text GLabel 4900 2300 2    50   Output ~ 0
Q5N
Text GLabel 4900 2400 2    50   Output ~ 0
nQ6P
Text GLabel 4900 2500 2    50   Output ~ 0
Q6N
Text GLabel 4900 2600 2    50   Output ~ 0
nQ7P
Text GLabel 4900 3900 2    50   Output ~ 0
nQ9P
Text GLabel 4900 2900 2    50   Output ~ 0
Q8N
Text GLabel 4900 2800 2    50   Output ~ 0
nQ8P
Text GLabel 4900 2700 2    50   Output ~ 0
Q7N
Text GLabel 4900 4200 2    50   Output ~ 0
Q10N
Text GLabel 4900 4100 2    50   Output ~ 0
nQ10P
Text GLabel 4900 4000 2    50   Output ~ 0
Q9N
Text GLabel 4900 4900 2    50   Input ~ 0
HALL_SWITCH
Text GLabel 4900 4400 2    50   Output ~ 0
SENSE_RESET
Text Notes 2250 700  0    118  ~ 0
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
F 2 "Digikey:SOIC-14_W3.9mm" H 7500 1450 50  0001 C CNN
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
F 2 "Digikey:SOIC-14_W3.9mm" H 7500 1950 50  0001 C CNN
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
F 2 "Digikey:SOIC-14_W3.9mm" H 7500 2450 50  0001 C CNN
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
F 2 "Digikey:SOIC-14_W3.9mm" H 7500 3000 50  0001 C CNN
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
F 2 "Digikey:SOIC-14_W3.9mm" H 7500 3500 50  0001 C CNN
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
F 2 "Digikey:SOIC-14_W3.9mm" H 7500 4050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 7500 4050 50  0001 C CNN
	6    7500 4050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 7 1 5EAA3002
P 10400 1250
AR Path="/5E755787/5EAA3002" Ref="U?"  Part="7" 
AR Path="/5EA63449/5EAA3002" Ref="U8"  Part="7" 
F 0 "U8" H 10630 1297 50  0000 L CNN
F 1 "74HC14" H 10630 1204 50  0000 L CNN
F 2 "Digikey:SOIC-14_W3.9mm" H 10400 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 10400 1250 50  0001 C CNN
	7    10400 1250
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
F 2 "Digikey:SOIC-14_W3.9mm" H 9250 1450 50  0001 C CNN
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
F 2 "Digikey:SOIC-14_W3.9mm" H 9250 1950 50  0001 C CNN
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
F 2 "Digikey:SOIC-14_W3.9mm" H 9250 2450 50  0001 C CNN
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
F 2 "Digikey:SOIC-14_W3.9mm" H 9250 3000 50  0001 C CNN
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
F 2 "Digikey:SOIC-14_W3.9mm" H 9250 3550 50  0001 C CNN
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
F 2 "Digikey:SOIC-14_W3.9mm" H 9250 4050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 9250 4050 50  0001 C CNN
	6    9250 4050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U?
U 7 1 5EAA302C
P 10550 2750
AR Path="/5E755787/5EAA302C" Ref="U?"  Part="7" 
AR Path="/5EA63449/5EAA302C" Ref="U9"  Part="7" 
F 0 "U9" H 10780 2797 50  0000 L CNN
F 1 "74HC14" H 10780 2704 50  0000 L CNN
F 2 "Digikey:SOIC-14_W3.9mm" H 10550 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 10550 2750 50  0001 C CNN
	7    10550 2750
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
Text GLabel 4900 5000 2    50   Input ~ 0
HALL_SWITCH
Text GLabel 4900 5100 2    50   Input ~ 0
HALL_SWITCH
Text GLabel 4900 5200 2    50   Input ~ 0
HALL_SWITCH
Text GLabel 4900 4300 2    50   Output ~ 0
WRITE_ENABLE
$Comp
L power:+VSW #PWR?
U 1 1 5EAA93FF
P 6350 5450
AR Path="/5E755787/5EAA93FF" Ref="#PWR?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EAA93FF" Ref="#PWR?"  Part="1" 
AR Path="/5EA63449/5EAA93FF" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 6350 5300 50  0001 C CNN
F 1 "+VSW" H 6365 5623 50  0000 C CNN
F 2 "" H 6350 5450 50  0001 C CNN
F 3 "" H 6350 5450 50  0001 C CNN
	1    6350 5450
	1    0    0    -1  
$EndComp
Text GLabel 7850 5400 2    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 7850 5550 2    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	7850 5550 7700 5550
$Comp
L Device:CP1_Small C?
U 1 1 5EAA9409
P 6800 5700
AR Path="/5E755787/5EAA9409" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EAA9409" Ref="C?"  Part="1" 
AR Path="/5EA63449/5EAA9409" Ref="C2"  Part="1" 
F 0 "C2" H 6891 5746 50  0000 L CNN
F 1 "10uF" H 6891 5655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6800 5700 50  0001 C CNN
F 3 "~" H 6800 5700 50  0001 C CNN
	1    6800 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 5EAA940F
P 6350 5700
AR Path="/5E755787/5EAA940F" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5EAA940F" Ref="C?"  Part="1" 
AR Path="/5EA63449/5EAA940F" Ref="C1"  Part="1" 
F 0 "C1" H 6441 5746 50  0000 L CNN
F 1 "0.1uF" H 6441 5655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6350 5700 50  0001 C CNN
F 3 "~" H 6350 5700 50  0001 C CNN
	1    6350 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 5450 6800 5600
Wire Wire Line
	6800 5800 6800 5950
Wire Wire Line
	6800 5950 6350 5950
Wire Wire Line
	6350 5600 6350 5450
Connection ~ 6350 5450
Wire Wire Line
	6350 5450 6800 5450
Wire Wire Line
	6350 5800 6350 5950
Connection ~ 6350 5950
Text Notes 550  6300 0    118  ~ 0
SUPERIOR ADD-ON SOCKET (OPTIONAL)
$Comp
L power:GND #PWR?
U 1 1 5EAA9421
P 6350 6000
AR Path="/5E755787/5EAA9421" Ref="#PWR?"  Part="1" 
AR Path="/5EA63449/5EAA9421" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 6350 5750 50  0001 C CNN
F 1 "GND" H 6355 5825 50  0000 C CNN
F 2 "" H 6350 6000 50  0001 C CNN
F 3 "" H 6350 6000 50  0001 C CNN
	1    6350 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 6000 6350 5950
Text Notes 250  2650 0    50   ~ 0
I2C ID: 0100xxx\nI2C address range is 32 decimal to 37 decimal or 0x20 to 0x27.
Text Notes 1100 1050 0    50   ~ 10
TO DO: I2C Address conflicts?
$Comp
L Device:R R?
U 1 1 5E87C8E7
P 9200 5450
AR Path="/5E755787/5E87C8E7" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E87C8E7" Ref="R?"  Part="1" 
AR Path="/5EA63449/5E87C8E7" Ref="R47"  Part="1" 
F 0 "R47" H 9270 5496 50  0000 L CNN
F 1 "10K" H 9270 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9130 5450 50  0001 C CNN
F 3 "~" H 9200 5450 50  0001 C CNN
	1    9200 5450
	1    0    0    -1  
$EndComp
Text GLabel 4900 5300 2    50   Input ~ 0
BOARD_ID1
Text GLabel 4900 5400 2    50   Input ~ 0
BOARD_ID2
Text GLabel 4900 5500 2    50   Input ~ 0
BOARD_ID3
Text GLabel 9800 5650 2    50   Output ~ 0
BOARD_ID1
Text GLabel 9800 5750 2    50   Output ~ 0
BOARD_ID2
Text GLabel 9800 5850 2    50   Output ~ 0
BOARD_ID3
$Comp
L Device:R R?
U 1 1 5E87E8B3
P 9200 6100
AR Path="/5E755787/5E87E8B3" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E87E8B3" Ref="R?"  Part="1" 
AR Path="/5EA63449/5E87E8B3" Ref="R48"  Part="1" 
F 0 "R48" H 9270 6146 50  0000 L CNN
F 1 "10K" H 9270 6055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9130 6100 50  0001 C CNN
F 3 "~" H 9200 6100 50  0001 C CNN
	1    9200 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E8824C5
P 9500 5450
AR Path="/5E755787/5E8824C5" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E8824C5" Ref="R?"  Part="1" 
AR Path="/5EA63449/5E8824C5" Ref="R49"  Part="1" 
F 0 "R49" H 9570 5496 50  0000 L CNN
F 1 "10K" H 9570 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9430 5450 50  0001 C CNN
F 3 "~" H 9500 5450 50  0001 C CNN
	1    9500 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E8824D2
P 9500 6100
AR Path="/5E755787/5E8824D2" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E8824D2" Ref="R?"  Part="1" 
AR Path="/5EA63449/5E8824D2" Ref="R50"  Part="1" 
F 0 "R50" H 9570 6146 50  0000 L CNN
F 1 "10K" H 9570 6055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9430 6100 50  0001 C CNN
F 3 "~" H 9500 6100 50  0001 C CNN
	1    9500 6100
	1    0    0    -1  
$EndComp
Text GLabel 8900 5300 1    50   Input ~ 0
3V3_100mA
$Comp
L Device:R R?
U 1 1 5E883867
P 8900 6100
AR Path="/5E755787/5E883867" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E883867" Ref="R?"  Part="1" 
AR Path="/5EA63449/5E883867" Ref="R7"  Part="1" 
F 0 "R7" H 8970 6146 50  0000 L CNN
F 1 "10K" H 8970 6055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8830 6100 50  0001 C CNN
F 3 "~" H 8900 6100 50  0001 C CNN
	1    8900 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5600 9500 5650
Wire Wire Line
	9500 5650 9800 5650
Wire Wire Line
	9800 5850 8900 5850
Wire Wire Line
	9200 5750 9200 5600
Wire Wire Line
	9800 5750 9200 5750
Wire Wire Line
	8900 5600 8900 5850
Wire Wire Line
	8900 5850 8900 5950
Connection ~ 8900 5850
Wire Wire Line
	9200 5750 9200 5950
Connection ~ 9200 5750
Wire Wire Line
	9500 5650 9500 5950
Connection ~ 9500 5650
$Comp
L Device:R R?
U 1 1 5E88385A
P 8900 5450
AR Path="/5E755787/5E88385A" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5E88385A" Ref="R?"  Part="1" 
AR Path="/5EA63449/5E88385A" Ref="R6"  Part="1" 
F 0 "R6" H 8970 5496 50  0000 L CNN
F 1 "10K" H 8970 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8830 5450 50  0001 C CNN
F 3 "~" H 8900 5450 50  0001 C CNN
	1    8900 5450
	1    0    0    -1  
$EndComp
Text Notes 9700 4850 0    118  ~ 0
BOARD ID
Text GLabel 9200 5300 1    50   Input ~ 0
3V3_100mA
Text GLabel 9500 5300 1    50   Input ~ 0
3V3_100mA
$Comp
L power:GNDD #PWR0120
U 1 1 5E89052C
P 8900 6250
F 0 "#PWR0120" H 8900 6000 50  0001 C CNN
F 1 "GNDD" H 8904 6094 50  0000 C CNN
F 2 "" H 8900 6250 50  0001 C CNN
F 3 "" H 8900 6250 50  0001 C CNN
	1    8900 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0121
U 1 1 5E89114B
P 9200 6250
F 0 "#PWR0121" H 9200 6000 50  0001 C CNN
F 1 "GNDD" H 9204 6094 50  0000 C CNN
F 2 "" H 9200 6250 50  0001 C CNN
F 3 "" H 9200 6250 50  0001 C CNN
	1    9200 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0125
U 1 1 5E891539
P 9500 6250
F 0 "#PWR0125" H 9500 6000 50  0001 C CNN
F 1 "GNDD" H 9504 6094 50  0000 C CNN
F 2 "" H 9500 6250 50  0001 C CNN
F 3 "" H 9500 6250 50  0001 C CNN
	1    9500 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0128
U 1 1 5E89228A
P 10400 1750
F 0 "#PWR0128" H 10400 1500 50  0001 C CNN
F 1 "GNDD" H 10404 1594 50  0000 C CNN
F 2 "" H 10400 1750 50  0001 C CNN
F 3 "" H 10400 1750 50  0001 C CNN
	1    10400 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0129
U 1 1 5E89286A
P 10550 3250
F 0 "#PWR0129" H 10550 3000 50  0001 C CNN
F 1 "GNDD" H 10554 3094 50  0000 C CNN
F 2 "" H 10550 3250 50  0001 C CNN
F 3 "" H 10550 3250 50  0001 C CNN
	1    10550 3250
	1    0    0    -1  
$EndComp
Text GLabel 11100 1150 1    50   Input ~ 0
3V3_100mA
$Comp
L power:GNDD #PWR0130
U 1 1 5E892DA1
P 4100 5900
F 0 "#PWR0130" H 4100 5650 50  0001 C CNN
F 1 "GNDD" H 4104 5744 50  0000 C CNN
F 2 "" H 4100 5900 50  0001 C CNN
F 3 "" H 4100 5900 50  0001 C CNN
	1    4100 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0154
U 1 1 5E8936A9
P 4100 3200
F 0 "#PWR0154" H 4100 2950 50  0001 C CNN
F 1 "GNDD" H 4104 3044 50  0000 C CNN
F 2 "" H 4100 3200 50  0001 C CNN
F 3 "" H 4100 3200 50  0001 C CNN
	1    4100 3200
	1    0    0    -1  
$EndComp
Text GLabel 4600 3650 1    50   Input ~ 0
3V3_100mA
Text GLabel 4850 1050 1    50   Input ~ 0
3V3_100mA
Text GLabel 11000 2500 1    50   Input ~ 0
3V3_100mA
Text Notes 6250 4850 0    118  ~ 0
OLED DISPLAY (OPTIONAL)
$Comp
L Connector:Conn_01x04_Female J5
U 1 1 5E830BC9
P 7500 5800
F 0 "J5" V 7400 5450 50  0000 L CNN
F 1 "Conn_01x04_Female" V 7600 5350 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical_SMD_and_TH_Pin1Left" H 7500 5800 50  0001 C CNN
F 3 "~" H 7500 5800 50  0001 C CNN
	1    7500 5800
	0    -1   1    0   
$EndComp
Wire Wire Line
	7700 5600 7700 5550
Wire Wire Line
	7600 5400 7600 5600
Wire Wire Line
	7600 5400 7850 5400
Wire Wire Line
	6800 5450 7500 5450
Wire Wire Line
	7500 5450 7500 5600
Connection ~ 6800 5450
Wire Wire Line
	6800 5950 7150 5950
Wire Wire Line
	7150 5950 7150 5550
Wire Wire Line
	7150 5550 7400 5550
Connection ~ 6800 5950
Wire Wire Line
	7400 5550 7400 5600
Text Notes 6300 5150 0    50   ~ 0
0.96” (128x64)\nI2C 4-pins, ADDRESS: 0x3C\n(alternate is 0x3D, not 0x7A or 0x78!)
Text Notes 9750 5150 0    50   ~ 0
0b001 = 0x01 = 1\nTop 3 resistors: DNI, DNI, 10K\nBottom 3 resistors: 10K, 10K, DNI
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
L Interface_Expansion:MCP23017_SO U5
U 1 1 5E8CA59F
P 4100 2100
F 0 "U5" H 4100 3385 50  0000 C CNN
F 1 "MCP23017_SO" H 4100 3292 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 4300 1100 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 4300 1000 50  0001 L CNN
	1    4100 2100
	1    0    0    -1  
$EndComp
$Comp
L Interface_Expansion:MCP23017_SO U6
U 1 1 5E900DF7
P 4100 4700
F 0 "U6" H 4100 5985 50  0000 C CNN
F 1 "MCP23017_SO" H 4100 5892 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 4300 3700 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 4300 3600 50  0001 L CNN
	1    4100 4700
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
A.K.A. SAO v1.69bis using Sullins SFH11-NBPC-D03-ST-BK\nhttps://www.digikey.com/product-detail/en/sullins-connector-solutions/SFH11-NBPC-D03-ST-BK/S9717-ND/4558818
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
Text GLabel 3100 1400 0    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 3100 1250 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 3100 4050 0    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 3100 3900 0    50   BiDi ~ 0
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
$EndSCHEMATC
