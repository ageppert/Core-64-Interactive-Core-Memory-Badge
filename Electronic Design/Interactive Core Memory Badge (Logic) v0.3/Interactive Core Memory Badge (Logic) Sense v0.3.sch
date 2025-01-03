EESchema Schematic File Version 4
LIBS:Interactive Core Memory Badge (Logic) Main v0.3-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title "Core 64 - Sense"
Date "2020-05-18"
Rev "0.3"
Comp "Andy Geppert - Machine Ideas, LLC"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "As prototyped 2020-05-18"
$EndDescr
Text Notes 600  850  0    118  ~ 0
SENSE SIGNAL PROCESSING
$Comp
L Comparator:LM393 U?
U 1 1 5D3DC9EC
P 3250 2050
AR Path="/5D3DC9EC" Ref="U?"  Part="1" 
AR Path="/5D2551FF/5D3DC9EC" Ref="U3"  Part="1" 
AR Path="/5E755787/5D3DC9EC" Ref="U?"  Part="1" 
AR Path="/5E75D6AB/5D3DC9EC" Ref="U7"  Part="1" 
F 0 "U7" H 3250 2350 50  0000 C CNN
F 1 "LM393" H 3300 2250 50  0000 C CNN
F 2 "Digikey:SOIC-8_W3.9mm" H 3250 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 3250 2050 50  0001 C CNN
	1    3250 2050
	1    0    0    -1  
$EndComp
Text GLabel 950  2350 0    50   Input ~ 0
SENSE1
Text GLabel 950  3150 0    50   Input ~ 0
SENSE2
$Comp
L Device:R R37
U 1 1 5D39C2B1
P 1850 1700
F 0 "R37" H 1920 1746 50  0000 L CNN
F 1 "1K8" H 1920 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1780 1700 50  0001 C CNN
F 3 "~" H 1850 1700 50  0001 C CNN
	1    1850 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R40
U 1 1 5D39F434
P 2400 1700
F 0 "R40" H 2470 1746 50  0000 L CNN
F 1 "1K8" H 2470 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2330 1700 50  0001 C CNN
F 3 "~" H 2400 1700 50  0001 C CNN
	1    2400 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R38
U 1 1 5D3A5EF4
P 1850 2600
F 0 "R38" H 1920 2646 50  0000 L CNN
F 1 "11" H 1920 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1780 2600 50  0001 C CNN
F 3 "~" H 1850 2600 50  0001 C CNN
	1    1850 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R41
U 1 1 5D3A668A
P 2400 2600
F 0 "R41" H 2470 2646 50  0000 L CNN
F 1 "11" H 2470 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2330 2600 50  0001 C CNN
F 3 "~" H 2400 2600 50  0001 C CNN
	1    2400 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R39
U 1 1 5D3A6BA6
P 1850 3400
F 0 "R39" H 1920 3446 50  0000 L CNN
F 1 "1K5" H 1920 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1780 3400 50  0001 C CNN
F 3 "~" H 1850 3400 50  0001 C CNN
	1    1850 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1850 1850 2350
Wire Wire Line
	1850 2750 1850 3150
Wire Wire Line
	2400 2750 2400 2950
Wire Wire Line
	2400 1850 2400 2150
$Comp
L power:GNDD #PWR0156
U 1 1 5D3AE7CA
P 1850 3700
F 0 "#PWR0156" H 1850 3450 50  0001 C CNN
F 1 "GNDD" H 1854 3545 50  0000 C CNN
F 2 "" H 1850 3700 50  0001 C CNN
F 3 "" H 1850 3700 50  0001 C CNN
	1    1850 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2350 1250 2350
Wire Wire Line
	1600 2350 1600 2950
Wire Wire Line
	1600 2950 2400 2950
Connection ~ 2400 2950
Wire Wire Line
	2400 2950 2400 3250
Wire Wire Line
	950  3150 1250 3150
Connection ~ 1850 3150
Wire Wire Line
	1850 3150 1850 3250
Wire Wire Line
	2400 2150 2950 2150
Connection ~ 2400 2150
Wire Wire Line
	2400 2150 2400 2450
Wire Wire Line
	2950 1950 2150 1950
Wire Wire Line
	2150 1950 2150 3150
Wire Wire Line
	2150 3150 1850 3150
Wire Wire Line
	2800 3150 2950 3150
Wire Wire Line
	1850 2350 2800 2350
Connection ~ 1850 2350
Wire Wire Line
	1850 2350 1850 2450
$Comp
L Comparator:LM393 U7
U 2 1 5D3C9C38
P 3250 3050
F 0 "U7" H 3250 3350 50  0000 C CNN
F 1 "LM393" H 3300 3250 50  0000 C CNN
F 2 "Digikey:SOIC-8_W3.9mm" H 3250 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 3250 3050 50  0001 C CNN
	2    3250 3050
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM393 U7
U 3 1 5D3CAF67
P 3550 3900
F 0 "U7" H 3508 3946 50  0000 L CNN
F 1 "LM393" H 3508 3855 50  0000 L CNN
F 2 "Digikey:SOIC-8_W3.9mm" H 3550 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 3550 3900 50  0001 C CNN
	3    3550 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0159
U 1 1 5D3D5196
P 3450 4200
F 0 "#PWR0159" H 3450 3950 50  0001 C CNN
F 1 "GNDD" H 3454 4045 50  0000 C CNN
F 2 "" H 3450 4200 50  0001 C CNN
F 3 "" H 3450 4200 50  0001 C CNN
	1    3450 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R43
U 1 1 5D3F592D
P 3650 1700
F 0 "R43" H 3720 1746 50  0000 L CNN
F 1 "10k" H 3720 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3580 1700 50  0001 C CNN
F 3 "~" H 3650 1700 50  0001 C CNN
	1    3650 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2050 3650 2050
Wire Wire Line
	3650 1850 3650 2050
Wire Wire Line
	1250 2450 1250 2350
Connection ~ 1250 2350
Wire Wire Line
	1250 2350 1600 2350
Wire Wire Line
	1250 2750 1250 3150
Connection ~ 1250 3150
$Comp
L Device:R R36
U 1 1 5D48BBA6
P 1250 2600
F 0 "R36" H 1320 2646 50  0000 L CNN
F 1 "1K5" H 1320 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1180 2600 50  0001 C CNN
F 3 "~" H 1250 2600 50  0001 C CNN
	1    1250 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2350 2800 3150
Connection ~ 3650 2050
Wire Wire Line
	3550 3050 3650 3050
$Comp
L Device:R R44
U 1 1 5E624389
P 3650 2600
F 0 "R44" H 3720 2646 50  0000 L CNN
F 1 "10k" H 3720 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3580 2600 50  0001 C CNN
F 3 "~" H 3650 2600 50  0001 C CNN
	1    3650 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2750 3650 3050
Connection ~ 3650 3050
Wire Wire Line
	3650 3050 3950 3050
Wire Wire Line
	3650 2050 4050 2050
$Comp
L Device:R R46
U 1 1 5E62BEBD
P 4300 3050
F 0 "R46" H 4370 3096 50  0000 L CNN
F 1 "10k" H 4370 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4230 3050 50  0001 C CNN
F 3 "~" H 4300 3050 50  0001 C CNN
	1    4300 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R R45
U 1 1 5E631504
P 4300 2050
F 0 "R45" H 4370 2096 50  0000 L CNN
F 1 "10k" H 4370 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4230 2050 50  0001 C CNN
F 3 "~" H 4300 2050 50  0001 C CNN
	1    4300 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 1850 4050 2050
Connection ~ 4050 2050
Wire Wire Line
	4050 2050 4150 2050
Wire Wire Line
	3950 2850 3950 3050
Connection ~ 3950 3050
Wire Wire Line
	3950 3050 4150 3050
Wire Wire Line
	2400 2950 2950 2950
Text Notes 1000 2700 0    50   ~ 0
DNI
$Comp
L Device:CP1_Small C9
U 1 1 5E6F58E8
P 3900 3900
F 0 "C9" H 3991 3946 50  0000 L CNN
F 1 "0.1uF" H 3991 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3900 3900 50  0001 C CNN
F 3 "~" H 3900 3900 50  0001 C CNN
	1    3900 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C10
U 1 1 5E6F8864
P 4300 3900
F 0 "C10" H 4391 3946 50  0000 L CNN
F 1 "10uF" H 4391 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4300 3900 50  0001 C CNN
F 3 "~" H 4300 3900 50  0001 C CNN
	1    4300 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3600 4300 3800
Wire Wire Line
	3450 3600 3900 3600
Wire Wire Line
	3900 3600 3900 3800
Connection ~ 3900 3600
Wire Wire Line
	3900 3600 4300 3600
Wire Wire Line
	3450 4200 3900 4200
Wire Wire Line
	4300 4200 4300 4000
Wire Wire Line
	3900 4000 3900 4200
Connection ~ 3900 4200
Wire Wire Line
	3900 4200 4300 4200
Text Notes 5700 850  0    118  ~ 0
SENSE SIGNAL RS LATCH
Connection ~ 3450 4200
Text GLabel 7200 1750 2    50   Output ~ 0
SENSE_PULSE
$Comp
L 74xx:74HC02 U8
U 1 1 5E7CE53C
P 5100 2600
F 0 "U8" H 5100 2929 50  0000 C CNN
F 1 "74HC02" H 5100 2836 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5100 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 5100 2600 50  0001 C CNN
	1    5100 2600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC02 U8
U 2 1 5E7D6166
P 5800 2600
F 0 "U8" H 5800 2929 50  0000 C CNN
F 1 "74HC02" H 5800 2836 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5800 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 5800 2600 50  0001 C CNN
	2    5800 2600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC02 U8
U 3 1 5E7DA182
P 6600 1750
F 0 "U8" H 6500 2050 50  0000 C CNN
F 1 "74HC02" H 6550 1950 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6600 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 6600 1750 50  0001 C CNN
	3    6600 1750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC02 U8
U 4 1 5E7DD8C9
P 6600 2500
F 0 "U8" H 6500 2800 50  0000 C CNN
F 1 "74HC02" H 6550 2700 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6600 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 6600 2500 50  0001 C CNN
	4    6600 2500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC02 U8
U 5 1 5E7E6F63
P 6200 3700
F 0 "U8" H 6430 3747 50  0000 L CNN
F 1 "74HC02" H 6430 3654 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6200 3700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 6200 3700 50  0001 C CNN
	5    6200 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2050 4650 2500
Wire Wire Line
	4650 2500 4800 2500
Wire Wire Line
	4450 2050 4650 2050
Wire Wire Line
	4800 2700 4650 2700
Wire Wire Line
	4650 2700 4650 3050
Wire Wire Line
	4450 3050 4650 3050
Wire Wire Line
	5400 2600 5450 2600
Wire Wire Line
	5450 2600 5450 2500
Wire Wire Line
	5450 2500 5500 2500
Wire Wire Line
	5450 2600 5450 2700
Wire Wire Line
	5450 2700 5500 2700
Connection ~ 5450 2600
Wire Wire Line
	6900 1750 6950 1750
Wire Wire Line
	6950 1900 6250 2250
Wire Wire Line
	6250 2250 6250 2400
Wire Wire Line
	6250 2400 6300 2400
Wire Wire Line
	6950 1750 6950 1900
Connection ~ 6950 1750
Wire Wire Line
	6250 1650 6300 1650
Wire Wire Line
	6900 2500 6950 2500
Wire Wire Line
	6950 2500 6950 2350
Wire Wire Line
	6950 2350 6250 2000
Wire Wire Line
	6250 2000 6250 1850
Wire Wire Line
	6250 1850 6300 1850
Text GLabel 6250 1650 0    50   Input ~ 0
SENSE_RESET
Wire Wire Line
	6100 2600 6300 2600
$Comp
L Device:CP1_Small C11
U 1 1 5E84C4A5
P 6850 3700
F 0 "C11" H 6941 3746 50  0000 L CNN
F 1 "0.1uF" H 6941 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6850 3700 50  0001 C CNN
F 3 "~" H 6850 3700 50  0001 C CNN
	1    6850 3700
	1    0    0    -1  
$EndComp
Text GLabel 1800 1450 0    50   Input ~ 0
3V3_800mA
Text GLabel 3400 3450 0    50   Input ~ 0
3V3_800mA
Wire Wire Line
	1850 1450 1850 1550
Wire Wire Line
	2400 1550 2400 1450
Wire Wire Line
	3650 1550 3650 1450
Wire Wire Line
	3650 2350 3650 2450
Wire Wire Line
	3450 3600 3450 3450
Connection ~ 3450 3600
Wire Wire Line
	6850 3150 6850 3600
Wire Wire Line
	6850 3800 6850 4200
Wire Wire Line
	6850 4200 6200 4200
$Comp
L power:GNDD #PWR0127
U 1 1 5E87D16F
P 6200 4250
F 0 "#PWR0127" H 6200 4000 50  0001 C CNN
F 1 "GNDD" H 6204 4095 50  0000 C CNN
F 2 "" H 6200 4250 50  0001 C CNN
F 3 "" H 6200 4250 50  0001 C CNN
	1    6200 4250
	1    0    0    -1  
$EndComp
Connection ~ 6200 4200
Text GLabel 6150 3050 0    50   Input ~ 0
3V3_800mA
Wire Wire Line
	6200 3050 6200 3150
Connection ~ 6200 3150
Wire Wire Line
	6200 3150 6850 3150
Wire Wire Line
	6200 3050 6150 3050
Wire Wire Line
	6200 4250 6200 4200
Wire Wire Line
	6200 3150 6200 3200
Wire Wire Line
	3450 3450 3400 3450
Wire Wire Line
	1800 1450 1850 1450
Wire Wire Line
	2400 1450 1850 1450
$Comp
L Connector:Conn_01x08_Female J8
U 1 1 5E868B9C
P 1600 5100
F 0 "J8" H 1627 5077 50  0000 L CNN
F 1 "Conn_01x08_Female" H 1627 4984 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 1600 5100 50  0001 C CNN
F 3 "~" H 1600 5100 50  0001 C CNN
	1    1600 5100
	1    0    0    -1  
$EndComp
Text Notes 750  4500 0    50   ~ 0
SENSE DEBUG SOCKET
Text GLabel 1400 5400 0    50   Input ~ 0
SENSE_RESET
Text GLabel 1400 5500 0    50   Input ~ 0
SENSE_PULSE
Text GLabel 1400 4900 0    50   Input ~ 0
3V3_800mA
$Comp
L power:GNDD #PWR0120
U 1 1 5E86E945
P 1000 4600
F 0 "#PWR0120" H 1000 4350 50  0001 C CNN
F 1 "GNDD" H 1004 4445 50  0000 C CNN
F 2 "" H 1000 4600 50  0001 C CNN
F 3 "" H 1000 4600 50  0001 C CNN
	1    1000 4600
	1    0    0    -1  
$EndComp
Text GLabel 1400 5000 0    50   Input ~ 0
SENSE1
Text GLabel 1400 5100 0    50   Input ~ 0
SENSE2
Wire Wire Line
	1250 3150 1850 3150
Text GLabel 4000 2850 2    50   Output ~ 0
SENSE_OUT_B
Text GLabel 1400 5300 0    50   Input ~ 0
SENSE_OUT_B
Text GLabel 1400 5200 0    50   Input ~ 0
SENSE_OUT_A
Text GLabel 4100 1850 2    50   Output ~ 0
SENSE_OUT_A
Wire Wire Line
	4050 1850 4100 1850
Wire Wire Line
	3950 2850 4000 2850
Wire Wire Line
	1000 4600 1250 4600
Wire Wire Line
	1250 4600 1250 4800
Wire Wire Line
	1250 4800 1400 4800
Wire Wire Line
	6950 1750 7200 1750
Connection ~ 1850 1450
Connection ~ 2400 1450
$Comp
L Device:R R42
U 1 1 5D3A7392
P 2400 3400
F 0 "R42" H 2470 3446 50  0000 L CNN
F 1 "1K5" H 2470 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2330 3400 50  0001 C CNN
F 3 "~" H 2400 3400 50  0001 C CNN
	1    2400 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3550 1850 3600
Wire Wire Line
	2400 3550 2400 3600
Wire Wire Line
	2400 3600 1850 3600
Connection ~ 1850 3600
Wire Wire Line
	1850 3600 1850 3700
Wire Wire Line
	2400 1450 3650 1450
Wire Wire Line
	3650 2350 3900 2350
Wire Wire Line
	3900 2350 3900 1450
Wire Wire Line
	3900 1450 3650 1450
Connection ~ 3650 1450
$EndSCHEMATC
