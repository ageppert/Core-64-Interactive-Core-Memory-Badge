EESchema Schematic File Version 4
LIBS:Interactive Core Memory Badge (Logic) Main v0.3-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title "Core 64 - Sense"
Date "2020-03-15"
Rev "0.3"
Comp "Andy Geppert - Machine Ideas, LLC"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 550  2100 0    118  ~ 0
SENSE SIGNAL PROCESSING
$Comp
L Comparator:LM393 U?
U 1 1 5D3DC9EC
P 3250 3300
AR Path="/5D3DC9EC" Ref="U?"  Part="1" 
AR Path="/5D2551FF/5D3DC9EC" Ref="U3"  Part="1" 
AR Path="/5E755787/5D3DC9EC" Ref="U?"  Part="1" 
AR Path="/5E75D6AB/5D3DC9EC" Ref="U3"  Part="1" 
F 0 "U3" H 3250 2933 50  0000 C CNN
F 1 "LM393" H 3250 3024 50  0000 C CNN
F 2 "Digikey:SOIC-8_W3.9mm" H 3250 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 3250 3300 50  0001 C CNN
	1    3250 3300
	1    0    0    -1  
$EndComp
Text GLabel 5500 4850 2    50   Output ~ 0
SENSE_PULSE
Text GLabel 950  3600 0    50   Input ~ 0
SENSE1
Text GLabel 950  4400 0    50   Input ~ 0
SENSE2
$Comp
L Device:R R37
U 1 1 5D39C2B1
P 1850 2950
F 0 "R37" H 1920 2996 50  0000 L CNN
F 1 "1K8" H 1920 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1780 2950 50  0001 C CNN
F 3 "~" H 1850 2950 50  0001 C CNN
	1    1850 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0154
U 1 1 5D39CF16
P 1850 2800
F 0 "#PWR0154" H 1850 2650 50  0001 C CNN
F 1 "+3V3" H 1865 2973 50  0000 C CNN
F 2 "" H 1850 2800 50  0001 C CNN
F 3 "" H 1850 2800 50  0001 C CNN
	1    1850 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0155
U 1 1 5D39E432
P 2400 2800
F 0 "#PWR0155" H 2400 2650 50  0001 C CNN
F 1 "+3V3" H 2415 2973 50  0000 C CNN
F 2 "" H 2400 2800 50  0001 C CNN
F 3 "" H 2400 2800 50  0001 C CNN
	1    2400 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R40
U 1 1 5D39F434
P 2400 2950
F 0 "R40" H 2470 2996 50  0000 L CNN
F 1 "1K8" H 2470 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2330 2950 50  0001 C CNN
F 3 "~" H 2400 2950 50  0001 C CNN
	1    2400 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R38
U 1 1 5D3A5EF4
P 1850 3850
F 0 "R38" H 1920 3896 50  0000 L CNN
F 1 "11" H 1920 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1780 3850 50  0001 C CNN
F 3 "~" H 1850 3850 50  0001 C CNN
	1    1850 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R41
U 1 1 5D3A668A
P 2400 3850
F 0 "R41" H 2470 3896 50  0000 L CNN
F 1 "11" H 2470 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2330 3850 50  0001 C CNN
F 3 "~" H 2400 3850 50  0001 C CNN
	1    2400 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R39
U 1 1 5D3A6BA6
P 1850 4650
F 0 "R39" H 1920 4696 50  0000 L CNN
F 1 "1K5" H 1920 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1780 4650 50  0001 C CNN
F 3 "~" H 1850 4650 50  0001 C CNN
	1    1850 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R42
U 1 1 5D3A7392
P 2400 4650
F 0 "R42" H 2470 4696 50  0000 L CNN
F 1 "1K5" H 2470 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2330 4650 50  0001 C CNN
F 3 "~" H 2400 4650 50  0001 C CNN
	1    2400 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3100 1850 3600
Wire Wire Line
	1850 4000 1850 4400
Wire Wire Line
	2400 4000 2400 4200
Wire Wire Line
	2400 3100 2400 3400
$Comp
L power:GNDD #PWR0156
U 1 1 5D3AE7CA
P 1850 4800
F 0 "#PWR0156" H 1850 4550 50  0001 C CNN
F 1 "GNDD" H 1854 4645 50  0000 C CNN
F 2 "" H 1850 4800 50  0001 C CNN
F 3 "" H 1850 4800 50  0001 C CNN
	1    1850 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0157
U 1 1 5D3AF508
P 2400 4800
F 0 "#PWR0157" H 2400 4550 50  0001 C CNN
F 1 "GNDD" H 2404 4645 50  0000 C CNN
F 2 "" H 2400 4800 50  0001 C CNN
F 3 "" H 2400 4800 50  0001 C CNN
	1    2400 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  3600 1250 3600
Wire Wire Line
	1600 3600 1600 4200
Wire Wire Line
	1600 4200 2400 4200
Connection ~ 2400 4200
Wire Wire Line
	2400 4200 2400 4500
Wire Wire Line
	950  4400 1250 4400
Connection ~ 1850 4400
Wire Wire Line
	1850 4400 1850 4500
Wire Wire Line
	2400 3400 2950 3400
Connection ~ 2400 3400
Wire Wire Line
	2400 3400 2400 3700
Wire Wire Line
	2950 3200 2150 3200
Wire Wire Line
	2150 3200 2150 4400
Wire Wire Line
	2150 4400 1850 4400
Wire Wire Line
	2800 4400 2950 4400
Wire Wire Line
	1850 3600 2800 3600
Connection ~ 1850 3600
Wire Wire Line
	1850 3600 1850 3700
$Comp
L Comparator:LM393 U3
U 2 1 5D3C9C38
P 3250 4300
F 0 "U3" H 3250 4667 50  0000 C CNN
F 1 "LM393" H 3250 4576 50  0000 C CNN
F 2 "Digikey:SOIC-8_W3.9mm" H 3250 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 3250 4300 50  0001 C CNN
	2    3250 4300
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM393 U3
U 3 1 5D3CAF67
P 3150 5150
F 0 "U3" H 3108 5196 50  0000 L CNN
F 1 "LM393" H 3108 5105 50  0000 L CNN
F 2 "Digikey:SOIC-8_W3.9mm" H 3150 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 3150 5150 50  0001 C CNN
	3    3150 5150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0158
U 1 1 5D3D496F
P 3050 4850
F 0 "#PWR0158" H 3050 4700 50  0001 C CNN
F 1 "+3V3" H 3065 5023 50  0000 C CNN
F 2 "" H 3050 4850 50  0001 C CNN
F 3 "" H 3050 4850 50  0001 C CNN
	1    3050 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0159
U 1 1 5D3D5196
P 3050 5450
F 0 "#PWR0159" H 3050 5200 50  0001 C CNN
F 1 "GNDD" H 3054 5295 50  0000 C CNN
F 2 "" H 3050 5450 50  0001 C CNN
F 3 "" H 3050 5450 50  0001 C CNN
	1    3050 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R43
U 1 1 5D3F592D
P 3650 2950
F 0 "R43" H 3720 2996 50  0000 L CNN
F 1 "10k" H 3720 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3580 2950 50  0001 C CNN
F 3 "~" H 3650 2950 50  0001 C CNN
	1    3650 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0160
U 1 1 5D3F7604
P 3650 2800
F 0 "#PWR0160" H 3650 2650 50  0001 C CNN
F 1 "+3V3" H 3665 2973 50  0000 C CNN
F 2 "" H 3650 2800 50  0001 C CNN
F 3 "" H 3650 2800 50  0001 C CNN
	1    3650 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3300 3650 3300
Wire Wire Line
	3650 3100 3650 3300
Wire Wire Line
	1250 3700 1250 3600
Connection ~ 1250 3600
Wire Wire Line
	1250 3600 1600 3600
Wire Wire Line
	1250 4000 1250 4400
Connection ~ 1250 4400
$Comp
L Device:R R36
U 1 1 5D48BBA6
P 1250 3850
F 0 "R36" H 1320 3896 50  0000 L CNN
F 1 "1K5" H 1320 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1180 3850 50  0001 C CNN
F 3 "~" H 1250 3850 50  0001 C CNN
	1    1250 3850
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP18
U 1 1 5D4906DB
P 1250 3500
F 0 "TP18" H 1308 3618 50  0000 L CNN
F 1 "SENSE1" H 1308 3527 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 1450 3500 50  0001 C CNN
F 3 "~" H 1450 3500 50  0001 C CNN
	1    1250 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3500 1250 3600
$Comp
L Connector:TestPoint TP19
U 1 1 5D493EFD
P 1350 4350
F 0 "TP19" H 1408 4468 50  0000 L CNN
F 1 "SENSE2" H 1408 4377 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 1550 4350 50  0001 C CNN
F 3 "~" H 1550 4350 50  0001 C CNN
	1    1350 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4400 1350 4400
Wire Wire Line
	1350 4350 1350 4400
Connection ~ 1350 4400
Wire Wire Line
	1350 4400 1850 4400
$Comp
L Connector:TestPoint TP22
U 1 1 5D4C1EBB
P 5400 4700
F 0 "TP22" H 5458 4818 50  0000 L CNN
F 1 "SENSE_PULSE" H 5458 4727 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 5600 4700 50  0001 C CNN
F 3 "~" H 5600 4700 50  0001 C CNN
	1    5400 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4700 5400 4850
Wire Wire Line
	5400 4850 5500 4850
Wire Wire Line
	2800 3600 2800 4400
Connection ~ 3650 3300
Wire Wire Line
	3550 4300 3650 4300
$Comp
L Device:R R44
U 1 1 5E624389
P 3650 4000
F 0 "R44" H 3720 4046 50  0000 L CNN
F 1 "10k" H 3720 3955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3580 4000 50  0001 C CNN
F 3 "~" H 3650 4000 50  0001 C CNN
	1    3650 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0161
U 1 1 5E624D52
P 3650 3850
F 0 "#PWR0161" H 3650 3700 50  0001 C CNN
F 1 "+3V3" H 3665 4023 50  0000 C CNN
F 2 "" H 3650 3850 50  0001 C CNN
F 3 "" H 3650 3850 50  0001 C CNN
	1    3650 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4150 3650 4300
Connection ~ 3650 4300
Wire Wire Line
	3650 4300 3950 4300
Wire Wire Line
	3650 3300 3950 3300
$Comp
L Digikey-Transistors:MMBT4401LT1G Q23
U 1 1 5E61D439
P 4550 3300
F 0 "Q23" H 4950 3350 60  0000 L CNN
F 1 "MMBT4401LT1G" H 4950 3250 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 4750 3500 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 4750 3600 60  0001 L CNN
F 4 "MMBT4401LT1GOSCT-ND" H 4750 3700 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4401LT1G" H 4750 3800 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4750 3900 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 4750 4000 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 4750 4100 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4401LT1G/MMBT4401LT1GOSCT-ND/1139819" H 4750 4200 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SOT23" H 4750 4300 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 4750 4400 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4750 4500 60  0001 L CNN "Status"
	1    4550 3300
	1    0    0    -1  
$EndComp
$Comp
L Digikey-Transistors:MMBT4401LT1G Q24
U 1 1 5E61F274
P 4550 4300
F 0 "Q24" H 4950 4350 60  0000 L CNN
F 1 "MMBT4401LT1G" H 4950 4250 60  0000 L CNN
F 2 "Digikey:SOT-23-3" H 4750 4500 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 4750 4600 60  0001 L CNN
F 4 "MMBT4401LT1GOSCT-ND" H 4750 4700 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4401LT1G" H 4750 4800 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4750 4900 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 4750 5000 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 4750 5100 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4401LT1G/MMBT4401LT1GOSCT-ND/1139819" H 4750 5200 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SOT23" H 4750 5300 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 4750 5400 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4750 5500 60  0001 L CNN "Status"
	1    4550 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0162
U 1 1 5E628AD8
P 4650 2800
F 0 "#PWR0162" H 4650 2650 50  0001 C CNN
F 1 "+3V3" H 4665 2973 50  0000 C CNN
F 2 "" H 4650 2800 50  0001 C CNN
F 3 "" H 4650 2800 50  0001 C CNN
	1    4650 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R47
U 1 1 5E62A96E
P 4650 5150
F 0 "R47" H 4720 5196 50  0000 L CNN
F 1 "10k" H 4720 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4580 5150 50  0001 C CNN
F 3 "~" H 4650 5150 50  0001 C CNN
	1    4650 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0163
U 1 1 5E62BA2E
P 4650 5450
F 0 "#PWR0163" H 4650 5200 50  0001 C CNN
F 1 "GNDD" H 4654 5295 50  0000 C CNN
F 2 "" H 4650 5450 50  0001 C CNN
F 3 "" H 4650 5450 50  0001 C CNN
	1    4650 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R46
U 1 1 5E62BEBD
P 4150 4300
F 0 "R46" H 4220 4346 50  0000 L CNN
F 1 "10k" H 4220 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4080 4300 50  0001 C CNN
F 3 "~" H 4150 4300 50  0001 C CNN
	1    4150 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R R45
U 1 1 5E631504
P 4150 3300
F 0 "R45" H 4220 3346 50  0000 L CNN
F 1 "10k" H 4220 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4080 3300 50  0001 C CNN
F 3 "~" H 4150 3300 50  0001 C CNN
	1    4150 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 3300 4350 3300
Wire Wire Line
	4300 4300 4350 4300
Wire Wire Line
	4650 4500 4650 4850
Wire Wire Line
	4650 5300 4650 5450
Wire Wire Line
	4650 2800 4650 2950
Wire Wire Line
	4650 2950 4900 2950
Wire Wire Line
	4900 2950 4900 3850
Wire Wire Line
	4900 3850 4650 3850
Wire Wire Line
	4650 3850 4650 4100
Connection ~ 4650 2950
Wire Wire Line
	4650 2950 4650 3100
Wire Wire Line
	4650 3500 4650 3700
Wire Wire Line
	4650 3700 4800 3700
Wire Wire Line
	4800 3700 4800 4850
Wire Wire Line
	4800 4850 4650 4850
Connection ~ 4650 4850
Connection ~ 5400 4850
$Comp
L Connector:TestPoint TP20
U 1 1 5E66B397
P 3950 2850
F 0 "TP20" H 4008 2968 50  0000 L CNN
F 1 "SENSE_OUT_A" H 4008 2877 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 4150 2850 50  0001 C CNN
F 3 "~" H 4150 2850 50  0001 C CNN
	1    3950 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2850 3950 3300
Connection ~ 3950 3300
Wire Wire Line
	3950 3300 4000 3300
$Comp
L Connector:TestPoint TP21
U 1 1 5E672104
P 3950 3850
F 0 "TP21" H 4008 3968 50  0000 L CNN
F 1 "SENSE_OUT_B" H 4008 3877 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 4150 3850 50  0001 C CNN
F 3 "~" H 4150 3850 50  0001 C CNN
	1    3950 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3850 3950 4300
Connection ~ 3950 4300
Wire Wire Line
	3950 4300 4000 4300
Connection ~ 4800 4850
Wire Wire Line
	4650 4850 4650 5000
Wire Wire Line
	2400 4200 2950 4200
Wire Wire Line
	4800 4850 5400 4850
Text Notes 1000 3950 0    50   ~ 0
DNI
$Comp
L Device:CP1_Small C4
U 1 1 5E6F58E8
P 3500 5150
F 0 "C4" H 3591 5196 50  0000 L CNN
F 1 "0.1uF" H 3591 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3500 5150 50  0001 C CNN
F 3 "~" H 3500 5150 50  0001 C CNN
	1    3500 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C5
U 1 1 5E6F8864
P 3900 5150
F 0 "C5" H 3991 5196 50  0000 L CNN
F 1 "10uF" H 3991 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3900 5150 50  0001 C CNN
F 3 "~" H 3900 5150 50  0001 C CNN
	1    3900 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4850 3900 5050
Wire Wire Line
	3050 4850 3500 4850
Wire Wire Line
	3500 4850 3500 5050
Connection ~ 3500 4850
Wire Wire Line
	3500 4850 3900 4850
Wire Wire Line
	3050 5450 3500 5450
Wire Wire Line
	3900 5450 3900 5250
Wire Wire Line
	3500 5250 3500 5450
Connection ~ 3500 5450
Wire Wire Line
	3500 5450 3900 5450
Text Notes 6450 2100 0    118  ~ 0
SENSE SIGNAL BUFFER AND HOLD
Connection ~ 3050 4850
Connection ~ 3050 5450
$EndSCHEMATC