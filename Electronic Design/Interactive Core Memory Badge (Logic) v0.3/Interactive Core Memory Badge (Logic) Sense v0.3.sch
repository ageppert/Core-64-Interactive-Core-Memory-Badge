EESchema Schematic File Version 4
LIBS:Interactive Core Memory Badge (Logic) Main v0.3-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title "Core 64 - Sense"
Date "2020-03-15"
Rev "0.3"
Comp "Andy Geppert - Machine Ideas, LLC"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
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
AR Path="/5E75D6AB/5D3DC9EC" Ref="U3"  Part="1" 
F 0 "U3" H 3250 2350 50  0000 C CNN
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
P 1850 3550
F 0 "#PWR0156" H 1850 3300 50  0001 C CNN
F 1 "GNDD" H 1854 3395 50  0000 C CNN
F 2 "" H 1850 3550 50  0001 C CNN
F 3 "" H 1850 3550 50  0001 C CNN
	1    1850 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0157
U 1 1 5D3AF508
P 2400 3550
F 0 "#PWR0157" H 2400 3300 50  0001 C CNN
F 1 "GNDD" H 2404 3395 50  0000 C CNN
F 2 "" H 2400 3550 50  0001 C CNN
F 3 "" H 2400 3550 50  0001 C CNN
	1    2400 3550
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
L Comparator:LM393 U3
U 2 1 5D3C9C38
P 3250 3050
F 0 "U3" H 3250 3350 50  0000 C CNN
F 1 "LM393" H 3300 3250 50  0000 C CNN
F 2 "Digikey:SOIC-8_W3.9mm" H 3250 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 3250 3050 50  0001 C CNN
	2    3250 3050
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM393 U3
U 3 1 5D3CAF67
P 3150 3900
F 0 "U3" H 3108 3946 50  0000 L CNN
F 1 "LM393" H 3108 3855 50  0000 L CNN
F 2 "Digikey:SOIC-8_W3.9mm" H 3150 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 3150 3900 50  0001 C CNN
	3    3150 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0159
U 1 1 5D3D5196
P 3050 4200
F 0 "#PWR0159" H 3050 3950 50  0001 C CNN
F 1 "GNDD" H 3054 4045 50  0000 C CNN
F 2 "" H 3050 4200 50  0001 C CNN
F 3 "" H 3050 4200 50  0001 C CNN
	1    3050 4200
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
$Comp
L Connector:TestPoint TP18
U 1 1 5D4906DB
P 1250 2250
F 0 "TP18" H 1308 2368 50  0000 L CNN
F 1 "SENSE1" H 1308 2277 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 1450 2250 50  0001 C CNN
F 3 "~" H 1450 2250 50  0001 C CNN
	1    1250 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2250 1250 2350
$Comp
L Connector:TestPoint TP19
U 1 1 5D493EFD
P 1350 3100
F 0 "TP19" H 1408 3218 50  0000 L CNN
F 1 "SENSE2" H 1408 3127 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 1550 3100 50  0001 C CNN
F 3 "~" H 1550 3100 50  0001 C CNN
	1    1350 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3150 1350 3150
Wire Wire Line
	1350 3100 1350 3150
Connection ~ 1350 3150
Wire Wire Line
	1350 3150 1850 3150
$Comp
L Connector:TestPoint TP22
U 1 1 5D4C1EBB
P 7100 1600
F 0 "TP22" H 7158 1718 50  0000 L CNN
F 1 "SENSE_PULSE" H 7158 1627 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 7300 1600 50  0001 C CNN
F 3 "~" H 7300 1600 50  0001 C CNN
	1    7100 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1600 7100 1750
Wire Wire Line
	2800 2350 2800 3150
Connection ~ 3650 2050
Wire Wire Line
	3550 3050 3650 3050
$Comp
L Device:R R44
U 1 1 5E624389
P 3650 2750
F 0 "R44" H 3720 2796 50  0000 L CNN
F 1 "10k" H 3720 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3580 2750 50  0001 C CNN
F 3 "~" H 3650 2750 50  0001 C CNN
	1    3650 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2900 3650 3050
Connection ~ 3650 3050
Wire Wire Line
	3650 3050 3950 3050
Wire Wire Line
	3650 2050 3950 2050
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
$Comp
L Connector:TestPoint TP20
U 1 1 5E66B397
P 3950 1850
F 0 "TP20" H 4008 1968 50  0000 L CNN
F 1 "SENSE_OUT_A" H 4008 1877 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 4150 1850 50  0001 C CNN
F 3 "~" H 4150 1850 50  0001 C CNN
	1    3950 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1850 3950 2050
Connection ~ 3950 2050
Wire Wire Line
	3950 2050 4150 2050
$Comp
L Connector:TestPoint TP21
U 1 1 5E672104
P 3950 2850
F 0 "TP21" H 4008 2968 50  0000 L CNN
F 1 "SENSE_OUT_B" H 4008 2877 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 4150 2850 50  0001 C CNN
F 3 "~" H 4150 2850 50  0001 C CNN
	1    3950 2850
	1    0    0    -1  
$EndComp
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
L Device:CP1_Small C4
U 1 1 5E6F58E8
P 3500 3900
F 0 "C4" H 3591 3946 50  0000 L CNN
F 1 "0.1uF" H 3591 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3500 3900 50  0001 C CNN
F 3 "~" H 3500 3900 50  0001 C CNN
	1    3500 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C5
U 1 1 5E6F8864
P 3900 3900
F 0 "C5" H 3991 3946 50  0000 L CNN
F 1 "10uF" H 3991 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3900 3900 50  0001 C CNN
F 3 "~" H 3900 3900 50  0001 C CNN
	1    3900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3600 3900 3800
Wire Wire Line
	3050 3600 3500 3600
Wire Wire Line
	3500 3600 3500 3800
Connection ~ 3500 3600
Wire Wire Line
	3500 3600 3900 3600
Wire Wire Line
	3050 4200 3500 4200
Wire Wire Line
	3900 4200 3900 4000
Wire Wire Line
	3500 4000 3500 4200
Connection ~ 3500 4200
Wire Wire Line
	3500 4200 3900 4200
Text Notes 5700 850  0    118  ~ 0
SENSE SIGNAL RS LATCH
Connection ~ 3050 4200
Text GLabel 7200 1750 2    50   Output ~ 0
SENSE_PULSE
$Comp
L 74xx:74HC02 U4
U 1 1 5E7CE53C
P 5100 2600
F 0 "U4" H 5100 2929 50  0000 C CNN
F 1 "74HC02" H 5100 2836 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5100 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 5100 2600 50  0001 C CNN
	1    5100 2600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC02 U4
U 2 1 5E7D6166
P 5800 2600
F 0 "U4" H 5800 2929 50  0000 C CNN
F 1 "74HC02" H 5800 2836 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5800 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 5800 2600 50  0001 C CNN
	2    5800 2600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC02 U4
U 3 1 5E7DA182
P 6600 1750
F 0 "U4" H 6500 2050 50  0000 C CNN
F 1 "74HC02" H 6550 1950 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6600 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 6600 1750 50  0001 C CNN
	3    6600 1750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC02 U4
U 4 1 5E7DD8C9
P 6600 2500
F 0 "U4" H 6500 2800 50  0000 C CNN
F 1 "74HC02" H 6550 2700 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6600 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 6600 2500 50  0001 C CNN
	4    6600 2500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC02 U4
U 5 1 5E7E6F63
P 5150 3650
F 0 "U4" H 5380 3697 50  0000 L CNN
F 1 "74HC02" H 5380 3604 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5150 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 5150 3650 50  0001 C CNN
	5    5150 3650
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
	6950 1750 7100 1750
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
L Device:CP1_Small C7
U 1 1 5E84C4A5
P 5800 3650
F 0 "C7" H 5891 3696 50  0000 L CNN
F 1 "0.1uF" H 5891 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5800 3650 50  0001 C CNN
F 3 "~" H 5800 3650 50  0001 C CNN
	1    5800 3650
	1    0    0    -1  
$EndComp
Text GLabel 1800 1450 0    50   Input ~ 0
3V3_100mA
Text GLabel 3100 3450 2    50   Input ~ 0
3V3_100mA
Wire Wire Line
	1850 1450 1850 1550
Wire Wire Line
	2400 1550 2400 1450
Wire Wire Line
	3650 1550 3650 1450
Text GLabel 2450 1450 2    50   Input ~ 0
3V3_100mA
Text GLabel 3600 1450 0    50   Input ~ 0
3V3_100mA
Text GLabel 3600 2550 0    50   Input ~ 0
3V3_100mA
Wire Wire Line
	3650 2550 3650 2600
Wire Wire Line
	3050 3600 3050 3450
Connection ~ 3050 3600
Wire Wire Line
	5800 3100 5800 3550
Wire Wire Line
	5800 3750 5800 4150
Wire Wire Line
	5800 4150 5150 4150
$Comp
L power:GNDD #PWR0127
U 1 1 5E87D16F
P 5150 4200
F 0 "#PWR0127" H 5150 3950 50  0001 C CNN
F 1 "GNDD" H 5154 4045 50  0000 C CNN
F 2 "" H 5150 4200 50  0001 C CNN
F 3 "" H 5150 4200 50  0001 C CNN
	1    5150 4200
	1    0    0    -1  
$EndComp
Connection ~ 5150 4150
Text GLabel 5200 3000 2    50   Input ~ 0
3V3_100mA
Wire Wire Line
	5150 3000 5150 3100
Connection ~ 5150 3100
Wire Wire Line
	5150 3100 5800 3100
Wire Wire Line
	5150 3000 5200 3000
Wire Wire Line
	5150 4200 5150 4150
Wire Wire Line
	5150 3100 5150 3150
Wire Wire Line
	3050 3450 3100 3450
Wire Wire Line
	1800 1450 1850 1450
Wire Wire Line
	2400 1450 2450 1450
Wire Wire Line
	3600 1450 3650 1450
Wire Wire Line
	3600 2550 3650 2550
Connection ~ 7100 1750
Wire Wire Line
	7100 1750 7200 1750
$EndSCHEMATC
