EESchema Schematic File Version 4
LIBS:Core64 LB v0.6-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 2 5
Title "Core 64 - Sense"
Date "2021-11-08"
Rev "0.6"
Comp "Concept and design by Andy Geppert @ www.MachineIdeas.com"
Comment1 "Visit www.Core64.io for information on assembly and optional features."
Comment2 "WIP"
Comment3 ""
Comment4 "All non-polarized capacitors are X7R or X5R ceramic unless otherwise noted."
$EndDescr
Text Notes 600  850  0    118  ~ 0
SENSE SIGNAL DIFFERENTIAL AMPLIFIERS
$Comp
L Comparator:LM393 U?
U 1 1 5D3DC9EC
P 3250 2050
AR Path="/5D3DC9EC" Ref="U?"  Part="1" 
AR Path="/5D2551FF/5D3DC9EC" Ref="U3"  Part="1" 
AR Path="/5E755787/5D3DC9EC" Ref="U?"  Part="1" 
AR Path="/5E75D6AB/5D3DC9EC" Ref="U1"  Part="1" 
F 0 "U1" H 3250 2350 50  0000 C CNN
F 1 "LM393" H 3300 2250 50  0000 C CNN
F 2 "Digikey:SOIC-8_W3.9mm" H 3250 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 3250 2050 50  0001 C CNN
F 4 "IC COMPARATOR LP DUAL 8-SOIC" H 3250 2050 50  0001 C CNN "Description"
F 5 "LM393DT" H 3250 2050 50  0001 C CNN "MPN"
F 6 "LM393DR" H 3250 2050 50  0001 C CNN "MPN(Secondary)"
F 7 "Rohm" H 3250 2050 50  0001 C CNN "Manufacturer(Secondary)"
F 8 "STMicroelectronics" H 3250 2050 50  0001 C CNN "Manufacturer_Name"
F 9 "Yes" H 3250 2050 50  0001 C CNN "Insert?"
	1    3250 2050
	1    0    0    -1  
$EndComp
Text GLabel 950  2350 0    50   Input ~ 0
SENSE2
Text GLabel 950  3150 0    50   Input ~ 0
SENSE1
$Comp
L Device:R R30
U 1 1 5D39C2B1
P 1850 1700
F 0 "R30" H 1920 1746 50  0000 L CNN
F 1 "1K8-1%" H 1920 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1780 1700 50  0001 C CNN
F 3 "~" H 1850 1700 50  0001 C CNN
F 4 "RES 1.8K OHM" H 1850 1700 50  0001 C CNN "Description"
F 5 "1%" H 1850 1700 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 1850 1700 50  0001 C CNN "Insert?"
	1    1850 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R31
U 1 1 5D39F434
P 2400 1700
F 0 "R31" H 2470 1746 50  0000 L CNN
F 1 "1K8-1%" H 2470 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2330 1700 50  0001 C CNN
F 3 "~" H 2400 1700 50  0001 C CNN
F 4 "RES 1.8K OHM" H 2400 1700 50  0001 C CNN "Description"
F 5 "1%" H 2400 1700 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 2400 1700 50  0001 C CNN "Insert?"
	1    2400 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R32
U 1 1 5D3A5EF4
P 1850 2600
F 0 "R32" H 1920 2646 50  0000 L CNN
F 1 "11-1%" H 1920 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1780 2600 50  0001 C CNN
F 3 "~" H 1850 2600 50  0001 C CNN
F 4 "RES 1 OHM" H 1850 2600 50  0001 C CNN "Description"
F 5 "1%" H 1850 2600 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 1850 2600 50  0001 C CNN "Insert?"
	1    1850 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R33
U 1 1 5D3A668A
P 2400 2600
F 0 "R33" H 2470 2646 50  0000 L CNN
F 1 "11-1%" H 2470 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2330 2600 50  0001 C CNN
F 3 "~" H 2400 2600 50  0001 C CNN
F 4 "RES 1 OHM" H 2400 2600 50  0001 C CNN "Description"
F 5 "1%" H 2400 2600 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 2400 2600 50  0001 C CNN "Insert?"
	1    2400 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R34
U 1 1 5D3A6BA6
P 1850 3400
F 0 "R34" H 1920 3446 50  0000 L CNN
F 1 "1K5-1%" H 1920 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1780 3400 50  0001 C CNN
F 3 "~" H 1850 3400 50  0001 C CNN
F 4 "RES 1.5K OHM" H 1850 3400 50  0001 C CNN "Description"
F 5 "1%" H 1850 3400 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 1850 3400 50  0001 C CNN "Insert?"
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
L power:GNDD #PWR0108
U 1 1 5D3AE7CA
P 1850 3700
F 0 "#PWR0108" H 1850 3450 50  0001 C CNN
F 1 "GNDD" H 1854 3545 50  0000 C CNN
F 2 "" H 1850 3700 50  0001 C CNN
F 3 "" H 1850 3700 50  0001 C CNN
	1    1850 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2350 1250 2350
Wire Wire Line
	1650 2350 1650 2950
Wire Wire Line
	1650 2950 2400 2950
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
	2950 1950 2200 1950
Wire Wire Line
	2200 1950 2200 3150
Wire Wire Line
	2200 3150 1850 3150
Wire Wire Line
	2850 3150 2950 3150
Wire Wire Line
	1850 2350 2850 2350
Connection ~ 1850 2350
Wire Wire Line
	1850 2350 1850 2450
$Comp
L Comparator:LM393 U1
U 2 1 5D3C9C38
P 3250 3050
F 0 "U1" H 3250 3350 50  0000 C CNN
F 1 "LM393" H 3300 3250 50  0000 C CNN
F 2 "Digikey:SOIC-8_W3.9mm" H 3250 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 3250 3050 50  0001 C CNN
F 4 "IC COMPARATOR LP DUAL 8-SOIC" H 3250 3050 50  0001 C CNN "Description"
F 5 "LM393DT" H 3250 3050 50  0001 C CNN "MPN"
F 6 "LM393DR" H 3250 3050 50  0001 C CNN "MPN(Secondary)"
F 7 "Rohm" H 3250 3050 50  0001 C CNN "Manufacturer(Secondary)"
F 8 "STMicroelectronics" H 3250 3050 50  0001 C CNN "Manufacturer_Name"
F 9 "Yes" H 3250 3050 50  0001 C CNN "Insert?"
	2    3250 3050
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM393 U1
U 3 1 5D3CAF67
P 3550 3900
F 0 "U1" H 3508 3946 50  0000 L CNN
F 1 "LM393" H 3508 3855 50  0000 L CNN
F 2 "Digikey:SOIC-8_W3.9mm" H 3550 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 3550 3900 50  0001 C CNN
F 4 "IC COMPARATOR LP DUAL 8-SOIC" H 3550 3900 50  0001 C CNN "Description"
F 5 "LM393DT" H 3550 3900 50  0001 C CNN "MPN"
F 6 "LM393DR" H 3550 3900 50  0001 C CNN "MPN(Secondary)"
F 7 "Rohm" H 3550 3900 50  0001 C CNN "Manufacturer(Secondary)"
F 8 "STMicroelectronics" H 3550 3900 50  0001 C CNN "Manufacturer_Name"
F 9 "Yes" H 3550 3900 50  0001 C CNN "Insert?"
	3    3550 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0109
U 1 1 5D3D5196
P 3450 4200
F 0 "#PWR0109" H 3450 3950 50  0001 C CNN
F 1 "GNDD" H 3454 4045 50  0000 C CNN
F 2 "" H 3450 4200 50  0001 C CNN
F 3 "" H 3450 4200 50  0001 C CNN
	1    3450 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R36
U 1 1 5D3F592D
P 3650 1700
F 0 "R36" H 3720 1746 50  0000 L CNN
F 1 "1K2" H 3720 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3580 1700 50  0001 C CNN
F 3 "~" H 3650 1700 50  0001 C CNN
F 4 "RES 1.2K OHM" H 3650 1700 50  0001 C CNN "Description"
F 5 "10%" H 3650 1700 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 3650 1700 50  0001 C CNN "Insert?"
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
	1250 2350 1650 2350
Wire Wire Line
	1250 2750 1250 3150
Connection ~ 1250 3150
$Comp
L Device:R R29
U 1 1 5D48BBA6
P 1250 2600
F 0 "R29" H 1320 2646 50  0000 L CNN
F 1 "1K5-1%" H 1320 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1180 2600 50  0001 C CNN
F 3 "~" H 1250 2600 50  0001 C CNN
F 4 "RES 1.5K OHM" H 1250 2600 50  0001 C CNN "Description"
F 5 "1%" H 1250 2600 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 1250 2600 50  0001 C CNN "Insert?"
	1    1250 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2350 2850 3150
Connection ~ 3650 2050
Wire Wire Line
	3550 3050 3650 3050
$Comp
L Device:R R37
U 1 1 5E624389
P 3650 2600
F 0 "R37" H 3720 2646 50  0000 L CNN
F 1 "1K2" H 3720 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3580 2600 50  0001 C CNN
F 3 "~" H 3650 2600 50  0001 C CNN
F 4 "RES 1.2K OHM" H 3650 2600 50  0001 C CNN "Description"
F 5 "10%" H 3650 2600 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 3650 2600 50  0001 C CNN "Insert?"
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
Wire Wire Line
	4050 1850 4050 2050
Connection ~ 4050 2050
Wire Wire Line
	3950 2850 3950 3050
Connection ~ 3950 3050
Wire Wire Line
	2400 2950 2950 2950
Text Notes 1000 2700 0    50   ~ 0
DNI
$Comp
L Device:C C2
U 1 1 5E6F58E8
P 3900 3900
F 0 "C2" H 3991 3946 50  0000 L CNN
F 1 "0.1uF" H 3991 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3900 3900 50  0001 C CNN
F 3 "~" H 3900 3900 50  0001 C CNN
F 4 "Yes" H 3900 3900 50  0001 C CNN "Insert?"
F 5 "CAP" H 3900 3900 50  0001 C CNN "Description"
	1    3900 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5E6F8864
P 4300 3900
F 0 "C3" H 4391 3946 50  0000 L CNN
F 1 "10uF" H 4391 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4300 3900 50  0001 C CNN
F 3 "~" H 4300 3900 50  0001 C CNN
F 4 "Yes" H 4300 3900 50  0001 C CNN "Insert?"
F 5 "CAP" H 4300 3900 50  0001 C CNN "Description"
	1    4300 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3600 4300 3750
Wire Wire Line
	3450 3600 3900 3600
Wire Wire Line
	3900 3600 3900 3750
Connection ~ 3900 3600
Wire Wire Line
	3900 3600 4300 3600
Wire Wire Line
	3450 4200 3900 4200
Wire Wire Line
	4300 4200 4300 4050
Wire Wire Line
	3900 4050 3900 4200
Connection ~ 3900 4200
Wire Wire Line
	3900 4200 4300 4200
Text Notes 5700 850  0    118  ~ 0
SENSE SIGNAL LATCH
Text GLabel 7200 1750 2    50   Output ~ 0
SENSE_PULSE
$Comp
L 74xx:74HC02 U2
U 1 1 5E7CE53C
P 5100 2600
F 0 "U2" H 5100 2929 50  0000 C CNN
F 1 "SN74HC02DR" H 5100 2836 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5100 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 5100 2600 50  0001 C CNN
F 4 "IC GATE NOR 4CH 2-INP 14SOIC" H 5100 2600 50  0001 C CNN "Description"
F 5 "SN74HC02DR" H 5100 2600 50  0001 C CNN "MPN"
F 6 "Texas Instruments" H 5100 2600 50  0001 C CNN "Manufacturer_Name"
F 7 "Yes" H 5100 2600 50  0001 C CNN "Insert?"
	1    5100 2600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC02 U2
U 2 1 5E7D6166
P 5800 2600
F 0 "U2" H 5800 2929 50  0000 C CNN
F 1 "SN74HC02DR" H 5800 2836 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5800 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 5800 2600 50  0001 C CNN
F 4 "IC GATE NOR 4CH 2-INP 14SOIC" H 5800 2600 50  0001 C CNN "Description"
F 5 "SN74HC02DR" H 5800 2600 50  0001 C CNN "MPN"
F 6 "Texas Instruments" H 5800 2600 50  0001 C CNN "Manufacturer_Name"
F 7 "Yes" H 5800 2600 50  0001 C CNN "Insert?"
	2    5800 2600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC02 U2
U 3 1 5E7DA182
P 6600 1750
F 0 "U2" H 6500 2050 50  0000 C CNN
F 1 "SN74HC02DR" H 6550 1950 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6600 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 6600 1750 50  0001 C CNN
F 4 "IC GATE NOR 4CH 2-INP 14SOIC" H 6600 1750 50  0001 C CNN "Description"
F 5 "SN74HC02DR" H 6600 1750 50  0001 C CNN "MPN"
F 6 "Texas Instruments" H 6600 1750 50  0001 C CNN "Manufacturer_Name"
F 7 "Yes" H 6600 1750 50  0001 C CNN "Insert?"
	3    6600 1750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC02 U2
U 4 1 5E7DD8C9
P 6600 2500
F 0 "U2" H 6500 2800 50  0000 C CNN
F 1 "SN74HC02DR" H 6550 2700 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6600 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 6600 2500 50  0001 C CNN
F 4 "IC GATE NOR 4CH 2-INP 14SOIC" H 6600 2500 50  0001 C CNN "Description"
F 5 "SN74HC02DR" H 6600 2500 50  0001 C CNN "MPN"
F 6 "Texas Instruments" H 6600 2500 50  0001 C CNN "Manufacturer_Name"
F 7 "Yes" H 6600 2500 50  0001 C CNN "Insert?"
	4    6600 2500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC02 U2
U 5 1 5E7E6F63
P 6200 3700
F 0 "U2" H 6430 3747 50  0000 L CNN
F 1 "SN74HC02DR" H 6430 3654 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6200 3700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 6200 3700 50  0001 C CNN
F 4 "IC GATE NOR 4CH 2-INP 14SOIC" H 6200 3700 50  0001 C CNN "Description"
F 5 "SN74HC02DR" H 6200 3700 50  0001 C CNN "MPN"
F 6 "Texas Instruments" H 6200 3700 50  0001 C CNN "Manufacturer_Name"
F 7 "Yes" H 6200 3700 50  0001 C CNN "Insert?"
	5    6200 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2050 4650 2500
Wire Wire Line
	4650 2500 4800 2500
Wire Wire Line
	4800 2700 4650 2700
Wire Wire Line
	4650 2700 4650 3050
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
L Device:C C4
U 1 1 5E84C4A5
P 7100 3700
F 0 "C4" H 7191 3746 50  0000 L CNN
F 1 "0.1uF" H 7191 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7100 3700 50  0001 C CNN
F 3 "~" H 7100 3700 50  0001 C CNN
F 4 "Yes" H 7100 3700 50  0001 C CNN "Insert?"
F 5 "CAP" H 7100 3700 50  0001 C CNN "Description"
	1    7100 3700
	1    0    0    -1  
$EndComp
Text GLabel 1800 1450 0    50   Input ~ 0
3V3
Text GLabel 3400 3450 0    50   Input ~ 0
3V3
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
Wire Wire Line
	7100 3150 7100 3550
Wire Wire Line
	7100 3850 7100 4200
Wire Wire Line
	7100 4200 6200 4200
$Comp
L power:GNDD #PWR0111
U 1 1 5E87D16F
P 6200 4250
F 0 "#PWR0111" H 6200 4000 50  0001 C CNN
F 1 "GNDD" H 6204 4095 50  0000 C CNN
F 2 "" H 6200 4250 50  0001 C CNN
F 3 "" H 6200 4250 50  0001 C CNN
	1    6200 4250
	1    0    0    -1  
$EndComp
Text GLabel 6150 3050 0    50   Input ~ 0
3V3
Wire Wire Line
	6200 3050 6200 3150
Connection ~ 6200 3150
Wire Wire Line
	6200 3150 7100 3150
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
L Connector_Generic:Conn_01x08 J6
U 1 1 5E868B9C
P 9400 2050
F 0 "J6" H 9500 2050 50  0000 L CNN
F 1 "SENSE DEBUG" H 9500 1900 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 9400 2050 50  0001 C CNN
F 3 "~" H 9400 2050 50  0001 C CNN
F 4 "No" H 9400 2050 50  0001 C CNN "Insert?"
	1    9400 2050
	1    0    0    1   
$EndComp
Text Notes 8650 850  0    118  ~ 0
SENSE DEBUG
Text GLabel 9200 1750 0    50   Input ~ 0
SENSE_RESET
Text GLabel 9200 1650 0    50   Input ~ 0
SENSE_PULSE
Text GLabel 9200 2250 0    50   Input ~ 0
3V3
$Comp
L power:GNDD #PWR0112
U 1 1 5E86E945
P 9050 2400
F 0 "#PWR0112" H 9050 2150 50  0001 C CNN
F 1 "GNDD" H 9054 2245 50  0000 C CNN
F 2 "" H 9050 2400 50  0001 C CNN
F 3 "" H 9050 2400 50  0001 C CNN
	1    9050 2400
	-1   0    0    -1  
$EndComp
Text GLabel 9200 2150 0    50   Input ~ 0
SENSE2
Text GLabel 9200 2050 0    50   Input ~ 0
SENSE1
Wire Wire Line
	1250 3150 1850 3150
Text GLabel 4000 2850 2    50   Output ~ 0
SENSE_OUT_B
Text GLabel 9200 1850 0    50   Input ~ 0
SENSE_OUT_B
Text GLabel 9200 1950 0    50   Input ~ 0
SENSE_OUT_A
Text GLabel 4100 1850 2    50   Output ~ 0
SENSE_OUT_A
Wire Wire Line
	4050 1850 4100 1850
Wire Wire Line
	3950 2850 4000 2850
Wire Wire Line
	9050 2400 9050 2350
Wire Wire Line
	9050 2350 9200 2350
Wire Wire Line
	6950 1750 7200 1750
Connection ~ 1850 1450
Connection ~ 2400 1450
$Comp
L Device:R R35
U 1 1 5D3A7392
P 2400 3400
F 0 "R35" H 2470 3446 50  0000 L CNN
F 1 "1K5-1%" H 2470 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2330 3400 50  0001 C CNN
F 3 "~" H 2400 3400 50  0001 C CNN
F 4 "RES 1.5K OHM" H 2400 3400 50  0001 C CNN "Description"
F 5 "1%" H 2400 3400 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 2400 3400 50  0001 C CNN "Insert?"
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
Text Notes 8650 2950 0    50   ~ 0
SILKSCREEN: 3V3 ONLY\nSENSE DEBUG
Text Notes 4800 2950 0    118  ~ 0
NOR -> NOT -> RS LATCH
Text GLabel 2400 5500 2    50   Output ~ 0
LED_MATRIX_5V0_SIG
Wire Wire Line
	2300 5500 2400 5500
Text GLabel 1400 5500 0    50   Input ~ 0
LED_MATRIX_3V3_SIG
Wire Wire Line
	1450 6000 1500 6000
Wire Wire Line
	1900 5700 1900 5600
Wire Wire Line
	1800 6300 1800 6350
Wire Wire Line
	1800 6350 1900 6350
Wire Wire Line
	2000 6300 2000 6350
Wire Wire Line
	2000 6350 1900 6350
Connection ~ 1900 6350
Text Notes 600  5250 0    118  ~ 0
LED MATRIX DRIVE AND LEVEL SHIFT
Wire Wire Line
	2300 6000 2300 5950
$Comp
L Device:C C?
U 1 1 5F7F821A
P 700 6050
AR Path="/5E755787/5F7F821A" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5F7F821A" Ref="C?"  Part="1" 
AR Path="/5EA63449/5F7F821A" Ref="C?"  Part="1" 
AR Path="/5F7F821A" Ref="C?"  Part="1" 
AR Path="/5E75D6AB/5F7F821A" Ref="C5"  Part="1" 
F 0 "C5" H 791 6096 50  0000 L CNN
F 1 "0.1uF" H 791 6005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 700 6050 50  0001 C CNN
F 3 "~" H 700 6050 50  0001 C CNN
F 4 "Yes" H 700 6050 50  0001 C CNN "Insert?"
F 5 "CAP" H 700 6050 50  0001 C CNN "Description"
	1    700  6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  5900 700  5850
Wire Wire Line
	700  6250 700  6200
Text GLabel 1900 5600 1    50   Input ~ 0
5V0
Text GLabel 700  5850 1    50   Input ~ 0
5V0
Wire Wire Line
	1400 5500 1450 5500
Wire Wire Line
	1450 5500 1450 6000
Wire Wire Line
	1900 6400 1900 6350
Wire Wire Line
	2300 5650 2300 5500
Text Notes 2500 6200 0    50   ~ 0
SILKSCREEN: \n5V0 ONLY\nLED MATRIX
$Comp
L Logic_LevelTranslator:SN74LV1T125DBVR U?
U 1 1 5F7F8254
P 1900 6000
AR Path="/5F7F8254" Ref="U?"  Part="1" 
AR Path="/5E75D6AB/5F7F8254" Ref="U3"  Part="1" 
F 0 "U3" H 1600 6250 50  0000 L CNN
F 1 "SN74LV1T125DBVR" H 1000 5750 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1900 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lv1t125.pdf" H 1900 5400 50  0001 C CNN
F 4 "IC BUF NON-INVERT 5.5V SOT23-5" H 1900 6000 50  0001 C CNN "Description"
F 5 "SN74LV1T125DBVR" H 1900 6000 50  0001 C CNN "MPN"
F 6 "M74VHC1GT125DT1G" H 1900 6000 50  0001 C CNN "MPN(Secondary)"
F 7 "OnSemi" H 1900 6000 50  0001 C CNN "Manufacturer(Secondary)"
F 8 "Texas Instruments" H 1900 6000 50  0001 C CNN "Manufacturer_Name"
F 9 "Yes" H 1900 6000 50  0001 C CNN "Insert?"
	1    1900 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F7F825A
P 2300 5800
AR Path="/5E755787/5F7F825A" Ref="R?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5F7F825A" Ref="R?"  Part="1" 
AR Path="/5F7F825A" Ref="R?"  Part="1" 
AR Path="/5E75D6AB/5F7F825A" Ref="R38"  Part="1" 
F 0 "R38" H 2350 5850 50  0000 L CNN
F 1 "470" H 2350 5750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2230 5800 50  0001 C CNN
F 3 "~" H 2300 5800 50  0001 C CNN
F 4 "RES 470 OHM" H 2300 5800 50  0001 C CNN "Description"
F 5 "10%" H 2300 5800 50  0001 C CNN "Value_Modifier"
F 6 "Yes" H 2300 5800 50  0001 C CNN "Insert?"
	1    2300 5800
	1    0    0    -1  
$EndComp
Text Notes 8200 5300 0    118  ~ 0
BOARD ID AND S/N
$Comp
L Memory_EEPROM:M24C01-RMN U?
U 1 1 5F823906
P 9100 6000
AR Path="/5F823906" Ref="U?"  Part="1" 
AR Path="/5EA63449/5F823906" Ref="U?"  Part="1" 
AR Path="/5E75D6AB/5F823906" Ref="U4"  Part="1" 
F 0 "U4" H 8800 6300 50  0000 C CNN
F 1 "M24C02-RMN" H 9450 6300 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9100 6350 50  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/b0/d8/50/40/5a/85/49/6f/DM00071904.pdf/files/DM00071904.pdf/jcr:content/translations/en.DM00071904.pdf" H 9150 5500 50  0001 C CNN
F 4 "IC EEPROM 2KBIT I2C 400KHZ 8SO" H 9100 6000 50  0001 C CNN "Description"
F 5 "M24C02-WMN6TP" H 9100 6000 50  0001 C CNN "MPN"
F 6 "STMicroelectronics" H 9100 6000 50  0001 C CNN "Manufacturer_Name"
F 7 "Yes" H 9100 6000 50  0001 C CNN "Insert?"
	1    9100 6000
	1    0    0    -1  
$EndComp
Text GLabel 9550 5900 2    50   BiDi ~ 0
I2C_DATA
Text GLabel 9550 6000 2    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 9500 5550 2    50   Input ~ 0
3V3
$Comp
L power:GNDD #PWR?
U 1 1 5F82390F
P 9100 6350
AR Path="/5EA63449/5F82390F" Ref="#PWR?"  Part="1" 
AR Path="/5F82390F" Ref="#PWR?"  Part="1" 
AR Path="/5E75D6AB/5F82390F" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 9100 6100 50  0001 C CNN
F 1 "GNDD" H 9104 6194 50  0000 C CNN
F 2 "" H 9100 6350 50  0001 C CNN
F 3 "" H 9100 6350 50  0001 C CNN
	1    9100 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5900 8700 6000
Connection ~ 8700 6000
Wire Wire Line
	8700 6000 8700 6100
Wire Wire Line
	9100 6300 9100 6350
Connection ~ 9100 6300
Wire Wire Line
	9500 6100 9500 6300
Wire Wire Line
	9500 6300 9100 6300
Wire Wire Line
	9100 5700 9100 5550
Wire Wire Line
	9100 5550 9500 5550
$Comp
L Device:C C?
U 1 1 5F82391E
P 8350 6050
AR Path="/5E755787/5F82391E" Ref="C?"  Part="1" 
AR Path="/5E755AC8/5D2551FF/5F82391E" Ref="C?"  Part="1" 
AR Path="/5EA63449/5F82391E" Ref="C?"  Part="1" 
AR Path="/5F82391E" Ref="C?"  Part="1" 
AR Path="/5E75D6AB/5F82391E" Ref="C6"  Part="1" 
F 0 "C6" H 8441 6096 50  0000 L CNN
F 1 "0.1uF" H 8441 6005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8350 6050 50  0001 C CNN
F 3 "~" H 8350 6050 50  0001 C CNN
F 4 "Yes" H 8350 6050 50  0001 C CNN "Insert?"
F 5 "CAP" H 8350 6050 50  0001 C CNN "Description"
	1    8350 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5550 8700 5550
Wire Wire Line
	8350 5550 8350 5900
Connection ~ 9100 5550
Wire Wire Line
	8350 6200 8350 6300
Text Notes 8200 5450 0    50   ~ 0
EEPROM I2C ADDRESS: 0b1010111, 0x57 (87)
Wire Wire Line
	8350 6300 9100 6300
Wire Wire Line
	8700 5900 8700 5550
Connection ~ 8700 5900
Connection ~ 8700 5550
Wire Wire Line
	8700 5550 8350 5550
Text Notes 9500 1750 0    50   ~ 0
Header not populated
$Comp
L power:GNDD #PWR0116
U 1 1 5F7F0580
P 1900 6400
F 0 "#PWR0116" H 1900 6150 50  0001 C CNN
F 1 "GNDD" H 1904 6245 50  0000 C CNN
F 2 "" H 1900 6400 50  0001 C CNN
F 3 "" H 1900 6400 50  0001 C CNN
	1    1900 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0117
U 1 1 5F7F2058
P 700 6250
F 0 "#PWR0117" H 700 6000 50  0001 C CNN
F 1 "GNDD" H 704 6095 50  0000 C CNN
F 2 "" H 700 6250 50  0001 C CNN
F 3 "" H 700 6250 50  0001 C CNN
	1    700  6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5900 9550 5900
Wire Wire Line
	9500 6000 9550 6000
Wire Wire Line
	4050 2050 4650 2050
Wire Wire Line
	3950 3050 4650 3050
Connection ~ 6200 4200
$EndSCHEMATC
