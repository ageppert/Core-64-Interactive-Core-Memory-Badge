EESchema Schematic File Version 4
LIBS:Interactive Core Memory Badge v0.2-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Teensy:Teensy-LC U?
U 1 1 5D260953
P 2850 2900
F 0 "U?" H 2875 4137 60  0000 C CNN
F 1 "Teensy-LC" H 2875 4031 60  0000 C CNN
F 2 "Teensy:Teensy30_31_32_LC" H 2850 2350 60  0001 C CNN
F 3 "" H 2850 2350 60  0000 C CNN
	1    2850 2900
	1    0    0    -1  
$EndComp
Text GLabel 1650 2150 0    50   Output ~ 0
Q1P
Text GLabel 1650 2250 0    50   Output ~ 0
Q1N
Wire Wire Line
	1650 2150 1800 2150
Wire Wire Line
	1650 2250 1800 2250
Wire Wire Line
	5300 1300 5300 2650
Wire Wire Line
	5300 2650 3950 2650
Text GLabel 5000 1250 1    50   Output ~ 0
V+USB
NoConn ~ 3950 2050
NoConn ~ 3950 2150
$Comp
L power:+VSW #PWR?
U 1 1 5D31CDEF
P 5300 1300
F 0 "#PWR?" H 5300 1150 50  0001 C CNN
F 1 "+VSW" H 5315 1473 50  0000 C CNN
F 2 "" H 5300 1300 50  0001 C CNN
F 3 "" H 5300 1300 50  0001 C CNN
	1    5300 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4200 5000 2750
Wire Wire Line
	5000 1250 5000 2550
Wire Wire Line
	5000 2550 3950 2550
Wire Wire Line
	5000 2750 3950 2750
$Comp
L power:+3V3 #PWR?
U 1 1 5D32AA99
P 6000 1300
F 0 "#PWR?" H 6000 1150 50  0001 C CNN
F 1 "+3V3" H 6015 1473 50  0000 C CNN
F 2 "" H 6000 1300 50  0001 C CNN
F 3 "" H 6000 1300 50  0001 C CNN
	1    6000 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2850 3950 2850
Wire Wire Line
	6000 1300 6000 1500
Wire Wire Line
	3950 2450 6000 2450
Connection ~ 6000 2450
Wire Wire Line
	6000 2450 6000 2850
$Comp
L Device:R R?
U 1 1 5D32CB70
P 5300 3400
F 0 "R?" H 5370 3446 50  0000 L CNN
F 1 "10k" H 5370 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5230 3400 50  0001 C CNN
F 3 "~" H 5300 3400 50  0001 C CNN
	1    5300 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D32E04D
P 5300 3700
F 0 "R?" H 5370 3746 50  0000 L CNN
F 1 "10k" H 5370 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5230 3700 50  0001 C CNN
F 3 "~" H 5300 3700 50  0001 C CNN
	1    5300 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3850 5300 4200
Wire Wire Line
	5300 2650 5300 3250
Connection ~ 5300 2650
Text Notes 5250 850  0    50   ~ 0
Battery Voltage Monitor for +VSW\nAnalog reads 1/2 battery voltage
Text Notes 850  1350 0    50   ~ 0
Teensy LC has incoming USB\npower/programming on board.\n\nUSB V+ bridge cut and routes ONLY\nto the LiPo charger module.\n\nLiPo must be connected for whole\nsystem to work.
$Comp
L power:-BATT #PWR?
U 1 1 5D337E9E
P 5000 4200
F 0 "#PWR?" H 5000 4050 50  0001 C CNN
F 1 "-BATT" H 5015 4373 50  0000 C CNN
F 2 "" H 5000 4200 50  0001 C CNN
F 3 "" H 5000 4200 50  0001 C CNN
	1    5000 4200
	-1   0    0    1   
$EndComp
$Comp
L power:-BATT #PWR?
U 1 1 5D338C7F
P 5300 4200
F 0 "#PWR?" H 5300 4050 50  0001 C CNN
F 1 "-BATT" H 5315 4373 50  0000 C CNN
F 2 "" H 5300 4200 50  0001 C CNN
F 3 "" H 5300 4200 50  0001 C CNN
	1    5300 4200
	-1   0    0    1   
$EndComp
Text Notes 6250 1150 0    50   ~ 0
Use +3V3 for low power accessories:\nReed switch, hall sensors, sense circuit, expansion bus, …
Text Notes 700  5250 0    50   ~ 0
SENSE SIGNAL PROCESSING
Text GLabel 7000 3900 2    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 7000 4300 2    50   BiDi ~ 0
I2C_DATA
$Comp
L Device:R R?
U 1 1 5D35152C
P 6350 3750
F 0 "R?" H 6420 3796 50  0000 L CNN
F 1 "4K7" H 6420 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6280 3750 50  0001 C CNN
F 3 "~" H 6350 3750 50  0001 C CNN
	1    6350 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D3522EA
P 6050 4150
F 0 "R?" H 6120 4196 50  0000 L CNN
F 1 "4K7" H 6120 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5980 4150 50  0001 C CNN
F 3 "~" H 6050 4150 50  0001 C CNN
	1    6050 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4000 4700 3450
Wire Wire Line
	4700 3450 3950 3450
Wire Wire Line
	4700 4000 5800 4000
Wire Wire Line
	5800 4000 5800 4300
Wire Wire Line
	3950 3350 4800 3350
Wire Wire Line
	4800 3350 4800 3900
$Comp
L power:+3V3 #PWR?
U 1 1 5D3544A4
P 6350 3600
F 0 "#PWR?" H 6350 3450 50  0001 C CNN
F 1 "+3V3" H 6365 3773 50  0000 C CNN
F 2 "" H 6350 3600 50  0001 C CNN
F 3 "" H 6350 3600 50  0001 C CNN
	1    6350 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D3556B5
P 6050 3600
F 0 "#PWR?" H 6050 3450 50  0001 C CNN
F 1 "+3V3" H 6065 3773 50  0000 C CNN
F 2 "" H 6050 3600 50  0001 C CNN
F 3 "" H 6050 3600 50  0001 C CNN
	1    6050 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4000 6050 3600
Text GLabel 6550 2950 2    50   Output ~ 0
WRITE_ENABLE
Wire Wire Line
	3950 2950 6450 2950
Text GLabel 1650 2050 0    50   Input ~ 0
SENSE_PULSE
Wire Wire Line
	1650 2050 1800 2050
Text GLabel 1650 2350 0    50   Output ~ 0
Q2P
Text GLabel 1650 2450 0    50   Output ~ 0
Q2N
Wire Wire Line
	1650 2350 1800 2350
Wire Wire Line
	1650 2450 1800 2450
Text GLabel 1650 2550 0    50   Output ~ 0
Q3P
Text GLabel 1650 2650 0    50   Output ~ 0
Q3N
Wire Wire Line
	1650 2550 1800 2550
Wire Wire Line
	1650 2650 1800 2650
Text GLabel 1650 2750 0    50   Output ~ 0
Q4P
Text GLabel 1650 2850 0    50   Output ~ 0
Q4N
Wire Wire Line
	1650 2750 1800 2750
Wire Wire Line
	1650 2850 1800 2850
Text GLabel 1650 2950 0    50   Output ~ 0
Q5P
Text GLabel 1650 3050 0    50   Output ~ 0
Q5N
Wire Wire Line
	1650 2950 1800 2950
Wire Wire Line
	1650 3050 1800 3050
Text GLabel 1650 3150 0    50   Output ~ 0
Q6P
Text GLabel 1650 3250 0    50   Output ~ 0
Q6N
Wire Wire Line
	1650 3150 1800 3150
Wire Wire Line
	1650 3250 1800 3250
$Comp
L power:GNDD #PWR?
U 1 1 5D3AFD5B
P 1000 4250
F 0 "#PWR?" H 1000 4000 50  0001 C CNN
F 1 "GNDD" H 1004 4095 50  0000 C CNN
F 2 "" H 1000 4250 50  0001 C CNN
F 3 "" H 1000 4250 50  0001 C CNN
	1    1000 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1950 1000 1950
Wire Wire Line
	1000 1950 1000 3550
Wire Wire Line
	1800 3550 1000 3550
Connection ~ 1000 3550
Text Notes 8450 5100 0    50   ~ 0
TO DO:\nEXPANSION FEMALE .100” HEADER for all power and logic
$Comp
L Comparator:LM393 U?
U 1 1 5D3DC9EC
P 3600 5300
AR Path="/5D3DC9EC" Ref="U?"  Part="1" 
AR Path="/5D2551FF/5D3DC9EC" Ref="U3"  Part="1" 
F 0 "U3" H 3600 4933 50  0000 C CNN
F 1 "LM393" H 3600 5024 50  0000 C CNN
F 2 "Digikey:SOIC-8_W3.9mm" H 3600 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 3600 5300 50  0001 C CNN
	1    3600 5300
	1    0    0    -1  
$EndComp
Text GLabel 4850 5800 2    50   Output ~ 0
SENSE_PULSE
Text GLabel 1300 5600 0    50   Input ~ 0
SENSE1
Text GLabel 1300 6400 0    50   Input ~ 0
SENSE2
Text GLabel 1650 3850 0    50   Output ~ 0
Q7P
Wire Wire Line
	1650 3850 1800 3850
Wire Wire Line
	3950 3850 4100 3850
Wire Wire Line
	3950 3750 4100 3750
Wire Wire Line
	3950 2350 5150 2350
Wire Wire Line
	5150 2350 5150 3550
Wire Wire Line
	5150 3550 5300 3550
Wire Wire Line
	3950 3650 4100 3650
Text GLabel 4100 3550 2    50   Output ~ 0
Q9P
Wire Wire Line
	3950 3550 4100 3550
Text GLabel 4100 3650 2    50   Output ~ 0
Q8N
Text GLabel 4100 3750 2    50   Output ~ 0
Q8P
Text GLabel 4100 3850 2    50   Output ~ 0
Q7N
Wire Wire Line
	3950 3250 4100 3250
Wire Wire Line
	3950 3150 4100 3150
Wire Wire Line
	3950 3050 4100 3050
Text GLabel 4100 3050 2    50   Output ~ 0
Q10N
Text GLabel 4100 3150 2    50   Output ~ 0
Q10P
Text GLabel 4100 3250 2    50   Output ~ 0
Q9N
Text GLabel 4100 2250 2    50   Input ~ 0
REED_SWITCH
Wire Wire Line
	3950 2250 4100 2250
$Comp
L Device:R R?
U 1 1 5D39C2B1
P 2200 4950
F 0 "R?" H 2270 4996 50  0000 L CNN
F 1 "1K8" H 2270 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2130 4950 50  0001 C CNN
F 3 "~" H 2200 4950 50  0001 C CNN
	1    2200 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D39CF16
P 2200 4800
F 0 "#PWR?" H 2200 4650 50  0001 C CNN
F 1 "+3V3" H 2215 4973 50  0000 C CNN
F 2 "" H 2200 4800 50  0001 C CNN
F 3 "" H 2200 4800 50  0001 C CNN
	1    2200 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D39E432
P 2750 4800
F 0 "#PWR?" H 2750 4650 50  0001 C CNN
F 1 "+3V3" H 2765 4973 50  0000 C CNN
F 2 "" H 2750 4800 50  0001 C CNN
F 3 "" H 2750 4800 50  0001 C CNN
	1    2750 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D39F434
P 2750 4950
F 0 "R?" H 2820 4996 50  0000 L CNN
F 1 "1K8" H 2820 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2680 4950 50  0001 C CNN
F 3 "~" H 2750 4950 50  0001 C CNN
	1    2750 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D3A5EF4
P 2200 5850
F 0 "R?" H 2270 5896 50  0000 L CNN
F 1 "22" H 2270 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2130 5850 50  0001 C CNN
F 3 "~" H 2200 5850 50  0001 C CNN
	1    2200 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D3A668A
P 2750 5850
F 0 "R?" H 2820 5896 50  0000 L CNN
F 1 "22" H 2820 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2680 5850 50  0001 C CNN
F 3 "~" H 2750 5850 50  0001 C CNN
	1    2750 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D3A6BA6
P 2200 6650
F 0 "R?" H 2270 6696 50  0000 L CNN
F 1 "1K5" H 2270 6605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2130 6650 50  0001 C CNN
F 3 "~" H 2200 6650 50  0001 C CNN
	1    2200 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D3A7392
P 2750 6650
F 0 "R?" H 2820 6696 50  0000 L CNN
F 1 "1K5" H 2820 6605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2680 6650 50  0001 C CNN
F 3 "~" H 2750 6650 50  0001 C CNN
	1    2750 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 5100 2200 5600
Wire Wire Line
	2200 6000 2200 6400
Wire Wire Line
	2750 6000 2750 6200
Wire Wire Line
	2750 5100 2750 5400
$Comp
L power:GNDD #PWR?
U 1 1 5D3AE7CA
P 2200 6800
F 0 "#PWR?" H 2200 6550 50  0001 C CNN
F 1 "GNDD" H 2204 6645 50  0000 C CNN
F 2 "" H 2200 6800 50  0001 C CNN
F 3 "" H 2200 6800 50  0001 C CNN
	1    2200 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 5D3AF508
P 2750 6800
F 0 "#PWR?" H 2750 6550 50  0001 C CNN
F 1 "GNDD" H 2754 6645 50  0000 C CNN
F 2 "" H 2750 6800 50  0001 C CNN
F 3 "" H 2750 6800 50  0001 C CNN
	1    2750 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5600 1600 5600
Wire Wire Line
	1950 5600 1950 6200
Wire Wire Line
	1950 6200 2750 6200
Connection ~ 2750 6200
Wire Wire Line
	2750 6200 2750 6500
Wire Wire Line
	1300 6400 1600 6400
Connection ~ 2200 6400
Wire Wire Line
	2200 6400 2200 6500
Wire Wire Line
	2750 5400 3300 5400
Connection ~ 2750 5400
Wire Wire Line
	2750 5400 2750 5700
Wire Wire Line
	3300 5200 2500 5200
Wire Wire Line
	2500 5200 2500 6400
Wire Wire Line
	2500 6400 2200 6400
Wire Wire Line
	2750 6200 3050 6200
Wire Wire Line
	3150 6350 3300 6350
Wire Wire Line
	2200 5600 3150 5600
Connection ~ 2200 5600
Wire Wire Line
	2200 5600 2200 5700
$Comp
L Comparator:LM393 U?
U 2 1 5D3C9C38
P 3600 6250
F 0 "U?" H 3600 6617 50  0000 C CNN
F 1 "LM393" H 3600 6526 50  0000 C CNN
F 2 "Digikey:SOIC-8_W3.9mm" H 3600 6250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 3600 6250 50  0001 C CNN
	2    3600 6250
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM393 U?
U 3 1 5D3CAF67
P 3700 7050
F 0 "U?" H 3658 7096 50  0000 L CNN
F 1 "LM393" H 3658 7005 50  0000 L CNN
F 2 "Digikey:SOIC-8_W3.9mm" H 3700 7050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393-n.pdf" H 3700 7050 50  0001 C CNN
	3    3700 7050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D3D496F
P 3600 6750
F 0 "#PWR?" H 3600 6600 50  0001 C CNN
F 1 "+3V3" H 3615 6923 50  0000 C CNN
F 2 "" H 3600 6750 50  0001 C CNN
F 3 "" H 3600 6750 50  0001 C CNN
	1    3600 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 5D3D5196
P 3600 7350
F 0 "#PWR?" H 3600 7100 50  0001 C CNN
F 1 "GNDD" H 3604 7195 50  0000 C CNN
F 2 "" H 3600 7350 50  0001 C CNN
F 3 "" H 3600 7350 50  0001 C CNN
	1    3600 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D3F592D
P 4000 4950
F 0 "R?" H 4070 4996 50  0000 L CNN
F 1 "10k" H 4070 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3930 4950 50  0001 C CNN
F 3 "~" H 4000 4950 50  0001 C CNN
	1    4000 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D3F7604
P 4000 4800
F 0 "#PWR?" H 4000 4650 50  0001 C CNN
F 1 "+3V3" H 4015 4973 50  0000 C CNN
F 2 "" H 4000 4800 50  0001 C CNN
F 3 "" H 4000 4800 50  0001 C CNN
	1    4000 4800
	1    0    0    -1  
$EndComp
NoConn ~ 1800 3450
Text GLabel 1650 3750 0    50   Input ~ 0
HALL_SWITCH
Wire Wire Line
	1650 3750 1800 3750
Wire Wire Line
	3900 5300 4000 5300
Wire Wire Line
	4000 5100 4000 5300
Wire Wire Line
	1600 5700 1600 5600
Connection ~ 1600 5600
Wire Wire Line
	1600 5600 1950 5600
Wire Wire Line
	1600 6000 1600 6400
Connection ~ 1600 6400
$Comp
L Device:R R?
U 1 1 5D48BBA6
P 1600 5850
F 0 "R?" H 1670 5896 50  0000 L CNN
F 1 "1K5" H 1670 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1530 5850 50  0001 C CNN
F 3 "~" H 1600 5850 50  0001 C CNN
	1    1600 5850
	1    0    0    -1  
$EndComp
Text GLabel 1650 3350 0    50   Output ~ 0
LED_MATRIX
Wire Wire Line
	1650 3350 1800 3350
$Comp
L Motor:Fan_3pin H?
U 1 1 5D465797
P 5850 6850
F 0 "H?" H 6008 6846 50  0000 L CNN
F 1 "LED_Array" H 6008 6755 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:LED_Matrix_Header_3pin" H 5850 6760 50  0001 C CNN
F 3 "" H 5850 6760 50  0001 C CNN
	1    5850 6850
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR?
U 1 1 5D468018
P 5400 6950
F 0 "#PWR?" H 5400 6800 50  0001 C CNN
F 1 "-BATT" H 5415 7123 50  0000 C CNN
F 2 "" H 5400 6950 50  0001 C CNN
F 3 "" H 5400 6950 50  0001 C CNN
	1    5400 6950
	-1   0    0    1   
$EndComp
$Comp
L power:+VSW #PWR?
U 1 1 5D468660
P 6550 6800
F 0 "#PWR?" H 6550 6650 50  0001 C CNN
F 1 "+VSW" H 6565 6973 50  0000 C CNN
F 2 "" H 6550 6800 50  0001 C CNN
F 3 "" H 6550 6800 50  0001 C CNN
	1    6550 6800
	1    0    0    -1  
$EndComp
Text GLabel 5800 6650 0    50   Input ~ 0
LED_MATRIX
$Comp
L power:GNDD #PWR?
U 1 1 5D462C36
P 9400 3300
F 0 "#PWR?" H 9400 3050 50  0001 C CNN
F 1 "GNDD" H 9404 3145 50  0000 C CNN
F 2 "" H 9400 3300 50  0001 C CNN
F 3 "" H 9400 3300 50  0001 C CNN
	1    9400 3300
	1    0    0    -1  
$EndComp
Text GLabel 10450 2900 2    50   Output ~ 0
HALL_SWITCH
$Comp
L Device:R R?
U 1 1 5D4663A1
P 9950 2700
F 0 "R?" H 10020 2746 50  0000 L CNN
F 1 "4K7" H 10020 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9880 2700 50  0001 C CNN
F 3 "~" H 9950 2700 50  0001 C CNN
	1    9950 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D466926
P 9400 2100
F 0 "#PWR?" H 9400 1950 50  0001 C CNN
F 1 "+3V3" H 9415 2273 50  0000 C CNN
F 2 "" H 9400 2100 50  0001 C CNN
F 3 "" H 9400 2100 50  0001 C CNN
	1    9400 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D4672DD
P 9950 2550
F 0 "#PWR?" H 9950 2400 50  0001 C CNN
F 1 "+3V3" H 9965 2723 50  0000 C CNN
F 2 "" H 9950 2550 50  0001 C CNN
F 3 "" H 9950 2550 50  0001 C CNN
	1    9950 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 2900 9950 2900
Wire Wire Line
	9950 2850 9950 2900
Connection ~ 9950 2900
$Comp
L Device:CP1_Small C?
U 1 1 5D476148
P 9950 3200
F 0 "C?" H 10041 3246 50  0000 L CNN
F 1 "10pF" H 10041 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9950 3200 50  0001 C CNN
F 3 "~" H 9950 3200 50  0001 C CNN
	1    9950 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 5D4768DC
P 9950 3300
F 0 "#PWR?" H 9950 3050 50  0001 C CNN
F 1 "GNDD" H 9954 3145 50  0000 C CNN
F 2 "" H 9950 3300 50  0001 C CNN
F 3 "" H 9950 3300 50  0001 C CNN
	1    9950 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 3100 9950 2900
$Comp
L Device:CP1_Small C?
U 1 1 5D47BEDD
P 8900 2400
F 0 "C?" H 8991 2446 50  0000 L CNN
F 1 "0.1uF" H 8991 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8900 2400 50  0001 C CNN
F 3 "~" H 8900 2400 50  0001 C CNN
	1    8900 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 5D47BEE3
P 8900 2500
F 0 "#PWR?" H 8900 2250 50  0001 C CNN
F 1 "GNDD" H 8904 2345 50  0000 C CNN
F 2 "" H 8900 2500 50  0001 C CNN
F 3 "" H 8900 2500 50  0001 C CNN
	1    8900 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2300 8900 2200
Wire Wire Line
	9400 2500 9400 2200
Wire Wire Line
	9400 2200 8900 2200
Connection ~ 9400 2200
Wire Wire Line
	9400 2200 9400 2100
$Comp
L Motor:Fan_4pin H?
U 1 1 5D49F2EF
P 6350 5450
F 0 "H?" H 6508 5546 50  0000 L CNN
F 1 "OLED_DISPLAY" H 6508 5455 50  0000 L CNN
F 2 "Core_Memory_8x8_Array:OLED_Header_4PIN" H 6350 5460 50  0001 C CNN
F 3 "" H 6350 5460 50  0001 C CNN
	1    6350 5450
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR?
U 1 1 5D49FCEF
P 6350 5650
F 0 "#PWR?" H 6350 5500 50  0001 C CNN
F 1 "-BATT" H 6365 5823 50  0000 C CNN
F 2 "" H 6350 5650 50  0001 C CNN
F 3 "" H 6350 5650 50  0001 C CNN
	1    6350 5650
	-1   0    0    1   
$EndComp
$Comp
L power:+VSW #PWR?
U 1 1 5D4A026C
P 6350 5150
F 0 "#PWR?" H 6350 5000 50  0001 C CNN
F 1 "+VSW" H 6365 5323 50  0000 C CNN
F 2 "" H 6350 5150 50  0001 C CNN
F 3 "" H 6350 5150 50  0001 C CNN
	1    6350 5150
	1    0    0    -1  
$EndComp
Text GLabel 6050 5350 0    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 6050 5550 0    50   BiDi ~ 0
I2C_DATA
$Comp
L Connector:TestPoint TP?
U 1 1 5D477EF0
P 6900 3800
F 0 "TP?" H 6958 3918 50  0000 L CNN
F 1 "I2C_Clock" H 6958 3827 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 7100 3800 50  0001 C CNN
F 3 "~" H 7100 3800 50  0001 C CNN
	1    6900 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3800 6900 3900
Connection ~ 6900 3900
Wire Wire Line
	6900 3900 7000 3900
$Comp
L Connector:TestPoint TP?
U 1 1 5D48220A
P 6900 4200
F 0 "TP?" H 6958 4318 50  0000 L CNN
F 1 "I2C_Data" H 6958 4227 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 7100 4200 50  0001 C CNN
F 3 "~" H 7100 4200 50  0001 C CNN
	1    6900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4200 6900 4300
Connection ~ 6900 4300
Wire Wire Line
	6900 4300 7000 4300
$Comp
L Connector:TestPoint TP?
U 1 1 5D4906DB
P 1600 5500
F 0 "TP?" H 1658 5618 50  0000 L CNN
F 1 "SENSE1" H 1658 5527 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 1800 5500 50  0001 C CNN
F 3 "~" H 1800 5500 50  0001 C CNN
	1    1600 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 5500 1600 5600
$Comp
L Connector:TestPoint TP?
U 1 1 5D493EFD
P 1700 6350
F 0 "TP?" H 1758 6468 50  0000 L CNN
F 1 "SENSE2" H 1758 6377 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 1900 6350 50  0001 C CNN
F 3 "~" H 1900 6350 50  0001 C CNN
	1    1700 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 6400 1700 6400
Wire Wire Line
	1700 6350 1700 6400
Connection ~ 1700 6400
Wire Wire Line
	1700 6400 2200 6400
$Comp
L Connector:TestPoint TP?
U 1 1 5D4C1EBB
P 4750 5650
F 0 "TP?" H 4808 5768 50  0000 L CNN
F 1 "SENSE_PULSE" H 4808 5677 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 4950 5650 50  0001 C CNN
F 3 "~" H 4950 5650 50  0001 C CNN
	1    4750 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5650 4750 5800
Wire Wire Line
	4750 5800 4850 5800
Wire Wire Line
	5800 6650 5850 6650
$Comp
L Connector:TestPoint TP?
U 1 1 5D4CBC8F
P 5850 6550
F 0 "TP?" H 5908 6668 50  0000 L CNN
F 1 "LED_MATRIX" H 5908 6577 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 6050 6550 50  0001 C CNN
F 3 "~" H 6050 6550 50  0001 C CNN
	1    5850 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 6550 5850 6650
$Comp
L Connector:TestPoint TP?
U 1 1 5D4D6E00
P 6300 1500
F 0 "TP?" H 6358 1618 50  0000 L CNN
F 1 "+3V3" H 6358 1527 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 6500 1500 50  0001 C CNN
F 3 "~" H 6500 1500 50  0001 C CNN
	1    6300 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1500 6000 1500
Connection ~ 6000 1500
Wire Wire Line
	6000 1500 6000 2450
$Comp
L Connector:TestPoint TP?
U 1 1 5D4DAE01
P 6450 2800
F 0 "TP?" H 6508 2918 50  0000 L CNN
F 1 "WRITE_ENABLE" H 6508 2827 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 6650 2800 50  0001 C CNN
F 3 "~" H 6650 2800 50  0001 C CNN
	1    6450 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2800 6450 2950
Connection ~ 6450 2950
Wire Wire Line
	6450 2950 6550 2950
$Comp
L Switch:SW_Reed SW?
U 1 1 5D4E060D
P 9650 1400
F 0 "SW?" H 9650 1622 50  0000 C CNN
F 1 "SW_Reed" H 9650 1531 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_REED_CT10-XXXX-G1" H 9650 1400 50  0001 C CNN
F 3 "~" H 9650 1400 50  0001 C CNN
	1    9650 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D4E1547
P 10000 1100
F 0 "R?" H 10070 1146 50  0000 L CNN
F 1 "4K7" H 10070 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9930 1100 50  0001 C CNN
F 3 "~" H 10000 1100 50  0001 C CNN
	1    10000 1100
	1    0    0    -1  
$EndComp
Text GLabel 10400 1400 2    50   Output ~ 0
REED_SWITCH
$Comp
L power:GNDD #PWR?
U 1 1 5D4E2090
P 9250 1550
F 0 "#PWR?" H 9250 1300 50  0001 C CNN
F 1 "GNDD" H 9254 1395 50  0000 C CNN
F 2 "" H 9250 1550 50  0001 C CNN
F 3 "" H 9250 1550 50  0001 C CNN
	1    9250 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D4E264D
P 10000 850
F 0 "#PWR?" H 10000 700 50  0001 C CNN
F 1 "+3V3" H 10015 1023 50  0000 C CNN
F 2 "" H 10000 850 50  0001 C CNN
F 3 "" H 10000 850 50  0001 C CNN
	1    10000 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 1550 9250 1400
Wire Wire Line
	9250 1400 9450 1400
Wire Wire Line
	9850 1400 10000 1400
Wire Wire Line
	10000 1250 10000 1400
Connection ~ 10000 1400
Wire Wire Line
	10000 850  10000 950 
$Comp
L Connector:TestPoint TP?
U 1 1 5D5059EA
P 1200 4200
F 0 "TP?" H 1258 4318 50  0000 L CNN
F 1 "GNDD" H 1258 4227 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 1400 4200 50  0001 C CNN
F 3 "~" H 1400 4200 50  0001 C CNN
	1    1200 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 4200 1000 4200
Wire Wire Line
	1000 3550 1000 4200
Connection ~ 1000 4200
Wire Wire Line
	1000 4200 1000 4250
$Comp
L Sensor_Magnetic:A3214ELHLT-T U?
U 1 1 5D488BA5
P 9500 2900
F 0 "U?" H 9270 2946 50  0000 R CNN
F 1 "A3214ELHLT-T" H 9270 2855 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23W_Handsoldering" H 9500 2550 50  0001 L CIN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/A3213-4-Datasheet.ashx" H 9400 2900 50  0001 C CNN
	1    9500 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 1400 10400 1400
Wire Wire Line
	10000 1400 10350 1400
Connection ~ 10350 1400
Wire Wire Line
	10350 1200 10350 1400
$Comp
L Connector:TestPoint TP?
U 1 1 5D4E1BB3
P 10350 1200
F 0 "TP?" H 10408 1318 50  0000 L CNN
F 1 "REED_SWITCH" H 10408 1227 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 10550 1200 50  0001 C CNN
F 3 "~" H 10550 1200 50  0001 C CNN
	1    10350 1200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5D4CF92F
P 10350 2650
F 0 "TP?" H 10408 2768 50  0000 L CNN
F 1 "HALL_SWITCH" H 10408 2677 50  0000 L CNN
F 2 "TestPoint:TestPoint_Keystone_5000-5004_Miniature" H 10550 2650 50  0001 C CNN
F 3 "~" H 10550 2650 50  0001 C CNN
	1    10350 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 2900 10450 2900
Wire Wire Line
	9950 2900 10350 2900
Connection ~ 10350 2900
Wire Wire Line
	10350 2650 10350 2900
$Comp
L Device:R R?
U 1 1 5D4CBADA
P 700 2000
F 0 "R?" H 770 2046 50  0000 L CNN
F 1 "4K7" H 770 1955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 630 2000 50  0001 C CNN
F 3 "~" H 700 2000 50  0001 C CNN
	1    700  2000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D4CC3D1
P 700 1850
F 0 "#PWR?" H 700 1700 50  0001 C CNN
F 1 "+3V3" H 715 2023 50  0000 C CNN
F 2 "" H 700 1850 50  0001 C CNN
F 3 "" H 700 1850 50  0001 C CNN
	1    700  1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  2150 700  3650
Wire Wire Line
	700  3650 1800 3650
Wire Wire Line
	5550 6850 5400 6850
Wire Wire Line
	5400 6850 5400 6950
Wire Wire Line
	5850 7150 5850 7200
Wire Wire Line
	5850 7200 6550 7200
Wire Wire Line
	6550 7200 6550 6800
Wire Wire Line
	3150 5600 3150 6350
Wire Wire Line
	3300 6150 3050 6150
Wire Wire Line
	3050 6150 3050 6200
Connection ~ 4000 5300
Wire Wire Line
	3900 6250 4000 6250
$Comp
L Device:R R?
U 1 1 5E624389
P 4000 5950
F 0 "R?" H 4070 5996 50  0000 L CNN
F 1 "10k" H 4070 5905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3930 5950 50  0001 C CNN
F 3 "~" H 4000 5950 50  0001 C CNN
	1    4000 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E624D52
P 4000 5800
F 0 "#PWR?" H 4000 5650 50  0001 C CNN
F 1 "+3V3" H 4015 5973 50  0000 C CNN
F 2 "" H 4000 5800 50  0001 C CNN
F 3 "" H 4000 5800 50  0001 C CNN
	1    4000 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6100 4000 6250
Connection ~ 4000 6250
Wire Wire Line
	4000 6250 4350 6250
Wire Wire Line
	4000 5300 4300 5300
Wire Wire Line
	5800 4300 6900 4300
Wire Wire Line
	4800 3900 6900 3900
$Comp
L Digikey-Transistors:MMBT4401LT1G Q?
U 1 1 5E61D439
P 4650 5050
F 0 "Q?" H 4839 5104 60  0000 L CNN
F 1 "MMBT4401LT1G" H 4839 4996 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 4850 5250 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 4850 5350 60  0001 L CNN
F 4 "MMBT4401LT1GOSCT-ND" H 4850 5450 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4401LT1G" H 4850 5550 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4850 5650 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 4850 5750 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 4850 5850 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4401LT1G/MMBT4401LT1GOSCT-ND/1139819" H 4850 5950 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SOT23" H 4850 6050 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 4850 6150 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4850 6250 60  0001 L CNN "Status"
	1    4650 5050
	1    0    0    -1  
$EndComp
$Comp
L Digikey-Transistors:MMBT4401LT1G Q?
U 1 1 5E61F274
P 4750 6200
F 0 "Q?" H 4939 6254 60  0000 L CNN
F 1 "MMBT4401LT1G" H 4939 6146 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 4950 6400 60  0001 L CNN
F 3 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 4950 6500 60  0001 L CNN
F 4 "MMBT4401LT1GOSCT-ND" H 4950 6600 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT4401LT1G" H 4950 6700 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4950 6800 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 4950 6900 60  0001 L CNN "Family"
F 8 "http://www.onsemi.com/pub/Collateral/MMBT4401LT1-D.PDF" H 4950 7000 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/MMBT4401LT1G/MMBT4401LT1GOSCT-ND/1139819" H 4950 7100 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SOT23" H 4950 7200 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 4950 7300 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4950 7400 60  0001 L CNN "Status"
	1    4750 6200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
