EESchema Schematic File Version 4
LIBS:Core64 CB v1.0-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "Core64 CB (Core Board)"
Date "2022-06-02"
Rev "1.0"
Comp "Concept and design by Andy Geppert @ www.MachineIdeas.com"
Comment1 "Visit www.Core64.io for information on assembly and optional features."
Comment2 ""
Comment3 "Production Release"
Comment4 "All capacitors ceramic X7R unless otherwise noted."
$EndDescr
$Comp
L Device:C C?
U 1 1 604F7C67
P 9500 4900
AR Path="/604F7C67" Ref="C?"  Part="1" 
AR Path="/604D6360/604F7C67" Ref="C7"  Part="1" 
F 0 "C7" H 9250 4950 50  0000 L CNN
F 1 "0.1uF" H 9150 4850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9538 4750 50  0001 C CNN
F 3 "~" H 9500 4900 50  0001 C CNN
F 4 "YES" H 9500 4900 50  0001 C CNN "Insert"
F 5 "Capacitor" H 9500 4900 50  0001 C CNN "Description"
F 6 "X7R ceramic" H 9500 4900 50  0001 C CNN "Value_Modifer"
	1    9500 4900
	1    0    0    -1  
$EndComp
Text Notes 9750 5350 0    50   ~ 0
DIGITAL LOGIC GROUND
$Comp
L power:GNDD #PWR?
U 1 1 604F7C6E
P 9500 5150
AR Path="/604F7C6E" Ref="#PWR?"  Part="1" 
AR Path="/604D6360/604F7C6E" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 9500 4900 50  0001 C CNN
F 1 "GNDD" H 9504 4995 50  0000 C CNN
F 2 "" H 9500 5150 50  0001 C CNN
F 3 "" H 9500 5150 50  0001 C CNN
	1    9500 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5100 9750 5100
Wire Wire Line
	9500 5100 9500 5150
Wire Wire Line
	9500 4700 9500 4750
Text GLabel 9400 4700 0    50   Input ~ 0
3V3_800mA
Text GLabel 10550 4700 2    50   BiDi ~ 0
I2C_DATA
Text GLabel 10550 5100 2    50   BiDi ~ 0
I2C_CLOCK
Wire Wire Line
	9500 4700 9400 4700
Connection ~ 9500 4700
Wire Wire Line
	9500 5100 9500 5050
Connection ~ 9500 5100
$Comp
L Core_64_KiCad_Library:LTR-303ALS-01 U?
U 1 1 604F7C7E
P 10150 4900
AR Path="/604F7C7E" Ref="U?"  Part="1" 
AR Path="/604D6360/604F7C7E" Ref="U7"  Part="1" 
F 0 "U7" H 9900 5300 50  0000 C CNN
F 1 "LTR-303ALS-01" H 10350 5300 50  0000 C CNN
F 2 "OptoDevice:Lite-On_LTR-303ALS-01" H 10150 5350 50  0001 C CNN
F 3 "http://optoelectronics.liteon.com/upload/download/DS86-2013-0004/LTR-303ALS-01_DS_V1.pdf" H 9850 5250 50  0001 C CNN
F 4 "C364577" H 10150 4900 50  0001 C CNN "LCSC"
F 5 "NO" H 10150 4900 50  0001 C CNN "Insert"
F 6 "LiteOn" H 10150 4900 50  0001 C CNN "Manufacturer_Name"
F 7 "LTR-303ALS-01" H 10150 4900 50  0001 C CNN "Mfg P/N"
F 8 "Digi-Key" H 10150 4900 50  0001 C CNN "Supplier (2nd)"
F 9 "Mouser" H 10150 4900 50  0001 C CNN "Supplier (Primary)"
F 10 "160-2161-1-ND" H 10150 4900 50  0001 C CNN "Supplier SKU (2nd)"
F 11 "859-LTR-303ALS-01" H 10150 4900 50  0001 C CNN "Supplier SKU (Primary)"
F 12 "None" H 10150 4900 50  0001 C CNN "Alt. Manufacturer"
F 13 "None" H 10150 4900 50  0001 C CNN "Alt. Mfg P/N"
F 14 "I2C Digital Light Sensor" H 10150 4900 50  0001 C CNN "Description"
	1    10150 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 4700 9600 4700
Text Notes 10050 4300 0    50   ~ 0
-OR-
$Comp
L Device:R_Small R?
U 1 1 604F7C86
P 10900 4900
AR Path="/604F7C86" Ref="R?"  Part="1" 
AR Path="/604D6360/604F7C86" Ref="R5"  Part="1" 
F 0 "R5" V 10800 4900 50  0000 C CNN
F 1 "10K" V 11000 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 10900 4900 50  0001 C CNN
F 3 "~" H 10900 4900 50  0001 C CNN
F 4 "C269724" V 10900 4900 50  0001 C CNN "LCSC"
F 5 "NO" H 10900 4900 50  0001 C CNN "Insert"
F 6 "Resistor" H 10900 4900 50  0001 C CNN "Description"
F 7 "10%" H 10900 4900 50  0001 C CNN "Value_Modifer"
	1    10900 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	10550 4900 10800 4900
Wire Wire Line
	11000 4900 11050 4900
Wire Wire Line
	9600 4700 9600 4550
Wire Wire Line
	9600 4550 11050 4550
Wire Wire Line
	11050 4550 11050 4900
Connection ~ 9600 4700
Wire Wire Line
	9600 4700 9750 4700
Text Notes 7600 5350 0    50   ~ 0
DIGITAL LOGIC GROUND
$Comp
L power:GNDD #PWR?
U 1 1 604F7C94
P 7350 5150
AR Path="/604F7C94" Ref="#PWR?"  Part="1" 
AR Path="/604D6360/604F7C94" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 7350 4900 50  0001 C CNN
F 1 "GNDD" H 7354 4995 50  0000 C CNN
F 2 "" H 7350 5150 50  0001 C CNN
F 3 "" H 7350 5150 50  0001 C CNN
	1    7350 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 5100 7600 5100
Wire Wire Line
	7350 5100 7350 5150
Text GLabel 7500 4700 0    50   Input ~ 0
3V3_800mA
Text GLabel 8400 4700 2    50   BiDi ~ 0
I2C_DATA
Text GLabel 8400 5100 2    50   BiDi ~ 0
I2C_CLOCK
Wire Wire Line
	7500 4700 7550 4700
Wire Wire Line
	8400 4900 8850 4900
Text Notes 7900 4300 0    50   ~ 0
-OR-
$Comp
L Core_64_KiCad_Library:BH1730FVC U?
U 1 1 604F7CA2
P 8000 4900
AR Path="/604F7CA2" Ref="U?"  Part="1" 
AR Path="/604D6360/604F7CA2" Ref="U6"  Part="1" 
F 0 "U6" H 7750 5300 50  0000 C CNN
F 1 "BH1730FVC" H 8150 5300 50  0000 C CNN
F 2 "ALS_BH1730:REG_BD00IC0WHFV-GTR" H 8000 5350 50  0001 C CNN
F 3 "http://optoelectronics.liteon.com/upload/download/DS86-2013-0004/LTR-303ALS-01_DS_V1.pdf" H 7700 5250 50  0001 C CNN
F 4 "NO" H 8000 4900 50  0001 C CNN "Insert"
F 5 "ROHM Semiconductor" H 8000 4900 50  0001 C CNN "Manufacturer_Name"
F 6 "BH1730FVC-TR" H 8000 4900 50  0001 C CNN "Mfg P/N"
F 7 "None" H 8000 4900 50  0001 C CNN "Alt. Manufacturer"
F 8 "None" H 8000 4900 50  0001 C CNN "Alt. Mfg P/N"
F 9 "I2C Digital Light Sensor" H 8000 4900 50  0001 C CNN "Description"
	1    8000 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4900 8850 4550
Wire Wire Line
	8850 4550 7550 4550
Wire Wire Line
	7550 4550 7550 4700
Connection ~ 7550 4700
Wire Wire Line
	7550 4700 7600 4700
Wire Wire Line
	7600 4900 6950 4900
Wire Wire Line
	6950 4900 6950 5600
Text GLabel 7450 5600 2    50   Input ~ 0
ALS_INT
Wire Wire Line
	6950 5600 7050 5600
Text Notes 8600 4050 0    50   ~ 0
SILKSCREEN: ALS I2C 0x29
Text Notes 7300 3950 0    100  ~ 0
[ALTERNATE] AMBIENT LIGHT SENSORS I2C 0x29
Text Notes 750  3950 0    100  ~ 0
[OPTIONAL] MULTI CORE PLANE SELECT
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 60572362
P 2500 4300
AR Path="/60572362" Ref="JP?"  Part="1" 
AR Path="/604D6360/60572362" Ref="JP1"  Part="1" 
F 0 "JP1" H 2500 4400 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 2500 4420 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2500 4300 50  0001 C CNN
F 3 "~" H 2500 4300 50  0001 C CNN
F 4 "NO" H 2500 4300 50  0001 C CNN "Insert"
	1    2500 4300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 60572368
P 2500 4500
AR Path="/60572368" Ref="JP?"  Part="1" 
AR Path="/604D6360/60572368" Ref="JP2"  Part="1" 
F 0 "JP2" H 2500 4600 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 2500 4620 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2500 4500 50  0001 C CNN
F 3 "~" H 2500 4500 50  0001 C CNN
F 4 "NO" H 2500 4500 50  0001 C CNN "Insert"
	1    2500 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6057236E
P 4300 4450
AR Path="/6057236E" Ref="C?"  Part="1" 
AR Path="/604D6360/6057236E" Ref="C8"  Part="1" 
F 0 "C8" H 4391 4496 50  0000 L CNN
F 1 "0.1uF" H 4391 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4300 4450 50  0001 C CNN
F 3 "~" H 4300 4450 50  0001 C CNN
F 4 "NO" H 4300 4450 50  0001 C CNN "Insert"
F 5 "Capacitor" H 4300 4450 50  0001 C CNN "Description"
F 6 "X7R ceramic" H 4300 4450 50  0001 C CNN "Value_Modifer"
	1    4300 4450
	1    0    0    -1  
$EndComp
Text GLabel 3950 4300 0    50   Input ~ 0
3V3_800mA
$Comp
L power:GNDD #PWR?
U 1 1 60572375
P 3250 5400
AR Path="/60572375" Ref="#PWR?"  Part="1" 
AR Path="/604D6360/60572375" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 3250 5150 50  0001 C CNN
F 1 "GNDD" H 3254 5245 50  0000 C CNN
F 2 "" H 3250 5400 50  0001 C CNN
F 3 "" H 3250 5400 50  0001 C CNN
	1    3250 5400
	1    0    0    -1  
$EndComp
Text Notes 3150 5700 0    50   ~ 0
DIGITAL LOGIC GROUND
Text GLabel 3250 5000 0    50   Output ~ 0
H_YL1
Text GLabel 3250 4800 0    50   Output ~ 0
H_YL0
Text GLabel 4100 5400 2    50   Output ~ 0
H_YL2
Text GLabel 4100 5100 2    50   Output ~ 0
H_YL3
Text GLabel 5100 4800 0    50   Output ~ 0
H_XT0-4
Text GLabel 5100 5000 0    50   Output ~ 0
H_XT1-5
Text GLabel 5950 5400 2    50   Output ~ 0
H_XT2-6
Text GLabel 5950 5100 2    50   Output ~ 0
H_XT3-7
Text GLabel 4100 5200 2    50   Input ~ 0
YL3
Text GLabel 4100 5300 2    50   Input ~ 0
YL2
Text GLabel 3250 5100 0    50   Input ~ 0
YL1
Text GLabel 3250 4900 0    50   Input ~ 0
YL0
Text GLabel 5950 5200 2    50   Input ~ 0
XT3-7
Text GLabel 5950 5300 2    50   Input ~ 0
XT2-6
Text GLabel 5100 5100 0    50   Input ~ 0
XT1-5
Text GLabel 5100 4900 0    50   Input ~ 0
XT0-4
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 6057238C
P 2500 4700
AR Path="/6057238C" Ref="JP?"  Part="1" 
AR Path="/604D6360/6057238C" Ref="JP3"  Part="1" 
F 0 "JP3" H 2500 4800 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 2500 4820 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2500 4700 50  0001 C CNN
F 3 "~" H 2500 4700 50  0001 C CNN
F 4 "NO" H 2500 4700 50  0001 C CNN "Insert"
	1    2500 4700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 60572392
P 2500 4900
AR Path="/60572392" Ref="JP?"  Part="1" 
AR Path="/604D6360/60572392" Ref="JP4"  Part="1" 
F 0 "JP4" H 2500 5000 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 2500 5020 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2500 4900 50  0001 C CNN
F 3 "~" H 2500 4900 50  0001 C CNN
F 4 "NO" H 2500 4900 50  0001 C CNN "Insert"
	1    2500 4900
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 60572398
P 2500 5100
AR Path="/60572398" Ref="JP?"  Part="1" 
AR Path="/604D6360/60572398" Ref="JP5"  Part="1" 
F 0 "JP5" H 2500 5200 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 2500 5220 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2500 5100 50  0001 C CNN
F 3 "~" H 2500 5100 50  0001 C CNN
F 4 "NO" H 2500 5100 50  0001 C CNN "Insert"
	1    2500 5100
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 6057239E
P 2500 5300
AR Path="/6057239E" Ref="JP?"  Part="1" 
AR Path="/604D6360/6057239E" Ref="JP6"  Part="1" 
F 0 "JP6" H 2500 5400 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 2500 5420 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2500 5300 50  0001 C CNN
F 3 "~" H 2500 5300 50  0001 C CNN
F 4 "NO" H 2500 5300 50  0001 C CNN "Insert"
	1    2500 5300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 605723A4
P 2500 5500
AR Path="/605723A4" Ref="JP?"  Part="1" 
AR Path="/604D6360/605723A4" Ref="JP7"  Part="1" 
F 0 "JP7" H 2500 5600 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 2500 5620 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2500 5500 50  0001 C CNN
F 3 "~" H 2500 5500 50  0001 C CNN
F 4 "NO" H 2500 5500 50  0001 C CNN "Insert"
	1    2500 5500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 605723AA
P 2500 5700
AR Path="/605723AA" Ref="JP?"  Part="1" 
AR Path="/604D6360/605723AA" Ref="JP8"  Part="1" 
F 0 "JP8" H 2500 5800 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 2500 5820 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2500 5700 50  0001 C CNN
F 3 "~" H 2500 5700 50  0001 C CNN
F 4 "NO" H 2500 5700 50  0001 C CNN "Insert"
	1    2500 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 5700 2650 5500
Wire Wire Line
	2650 5500 2650 5300
Connection ~ 2650 5500
Wire Wire Line
	2650 5100 2650 5300
Connection ~ 2650 5300
Connection ~ 2650 5100
Wire Wire Line
	2650 4700 2650 4900
Connection ~ 2650 4900
Wire Wire Line
	2650 4500 2650 4700
Connection ~ 2650 4700
Wire Wire Line
	2650 4300 2650 4500
Connection ~ 2650 4500
Text GLabel 2750 4300 2    50   Output ~ 0
ENABLE
Text GLabel 3250 5200 0    50   Input ~ 0
ENABLE
Text GLabel 3250 5300 0    50   Input ~ 0
ENABLE
Text GLabel 4100 4900 2    50   Input ~ 0
ENABLE
Text GLabel 4100 5000 2    50   Input ~ 0
ENABLE
$Comp
L power:GNDD #PWR?
U 1 1 605723C1
P 4300 4600
AR Path="/605723C1" Ref="#PWR?"  Part="1" 
AR Path="/604D6360/605723C1" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 4300 4350 50  0001 C CNN
F 1 "GNDD" H 4300 4450 50  0000 C CNN
F 2 "" H 4300 4600 50  0001 C CNN
F 3 "" H 4300 4600 50  0001 C CNN
	1    4300 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4800 4150 4800
Wire Wire Line
	4150 4300 4150 4800
Wire Wire Line
	3950 4300 4150 4300
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 605723CA
P 1300 4300
AR Path="/605723CA" Ref="JP?"  Part="1" 
AR Path="/604D6360/605723CA" Ref="JP9"  Part="1" 
F 0 "JP9" H 1300 4400 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 1300 4420 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 1300 4300 50  0001 C CNN
F 3 "~" H 1300 4300 50  0001 C CNN
F 4 "NO" H 1300 4300 50  0001 C CNN "Insert"
	1    1300 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 605723D6
P 5100 5400
AR Path="/605723D6" Ref="#PWR?"  Part="1" 
AR Path="/604D6360/605723D6" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 5100 5150 50  0001 C CNN
F 1 "GNDD" H 5104 5245 50  0000 C CNN
F 2 "" H 5100 5400 50  0001 C CNN
F 3 "" H 5100 5400 50  0001 C CNN
	1    5100 5400
	1    0    0    -1  
$EndComp
Text Notes 5000 5700 0    50   ~ 0
DIGITAL LOGIC GROUND
Text GLabel 1150 4500 0    50   Output ~ 0
H_YL1
Text GLabel 1150 4300 0    50   Output ~ 0
H_YL0
Text GLabel 1450 4500 2    50   Input ~ 0
YL1
Text GLabel 1450 4300 2    50   Input ~ 0
YL0
Text GLabel 1150 4900 0    50   Output ~ 0
H_YL3
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 605723E2
P 1300 4500
AR Path="/605723E2" Ref="JP?"  Part="1" 
AR Path="/604D6360/605723E2" Ref="JP10"  Part="1" 
F 0 "JP10" H 1300 4600 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 1300 4620 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 1300 4500 50  0001 C CNN
F 3 "~" H 1300 4500 50  0001 C CNN
F 4 "NO" H 1300 4500 50  0001 C CNN "Insert"
	1    1300 4500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 605723E8
P 1300 4700
AR Path="/605723E8" Ref="JP?"  Part="1" 
AR Path="/604D6360/605723E8" Ref="JP11"  Part="1" 
F 0 "JP11" H 1300 4800 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 1300 4820 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 1300 4700 50  0001 C CNN
F 3 "~" H 1300 4700 50  0001 C CNN
F 4 "NO" H 1300 4700 50  0001 C CNN "Insert"
	1    1300 4700
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 605723EE
P 1300 4900
AR Path="/605723EE" Ref="JP?"  Part="1" 
AR Path="/604D6360/605723EE" Ref="JP12"  Part="1" 
F 0 "JP12" H 1300 5000 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 1300 5020 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 1300 4900 50  0001 C CNN
F 3 "~" H 1300 4900 50  0001 C CNN
F 4 "NO" H 1300 4900 50  0001 C CNN "Insert"
	1    1300 4900
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 605723F4
P 1300 5100
AR Path="/605723F4" Ref="JP?"  Part="1" 
AR Path="/604D6360/605723F4" Ref="JP13"  Part="1" 
F 0 "JP13" H 1300 5200 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 1300 5220 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 1300 5100 50  0001 C CNN
F 3 "~" H 1300 5100 50  0001 C CNN
F 4 "NO" H 1300 5100 50  0001 C CNN "Insert"
	1    1300 5100
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 605723FA
P 1300 5300
AR Path="/605723FA" Ref="JP?"  Part="1" 
AR Path="/604D6360/605723FA" Ref="JP14"  Part="1" 
F 0 "JP14" H 1300 5400 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 1300 5420 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 1300 5300 50  0001 C CNN
F 3 "~" H 1300 5300 50  0001 C CNN
F 4 "NO" H 1300 5300 50  0001 C CNN "Insert"
	1    1300 5300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 60572400
P 1300 5500
AR Path="/60572400" Ref="JP?"  Part="1" 
AR Path="/604D6360/60572400" Ref="JP15"  Part="1" 
F 0 "JP15" H 1300 5600 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 1300 5620 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 1300 5500 50  0001 C CNN
F 3 "~" H 1300 5500 50  0001 C CNN
F 4 "NO" H 1300 5500 50  0001 C CNN "Insert"
	1    1300 5500
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 60572406
P 1300 5700
AR Path="/60572406" Ref="JP?"  Part="1" 
AR Path="/604D6360/60572406" Ref="JP16"  Part="1" 
F 0 "JP16" H 1300 5800 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 1300 5820 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 1300 5700 50  0001 C CNN
F 3 "~" H 1300 5700 50  0001 C CNN
F 4 "NO" H 1300 5700 50  0001 C CNN "Insert"
	1    1300 5700
	1    0    0    -1  
$EndComp
Text GLabel 1450 4900 2    50   Input ~ 0
YL3
Text GLabel 1150 4700 0    50   Output ~ 0
H_YL2
Text GLabel 1450 4700 2    50   Input ~ 0
YL2
Text GLabel 1150 5100 0    50   Output ~ 0
H_XT0-4
Text GLabel 1150 5300 0    50   Output ~ 0
H_XT1-5
Text GLabel 1150 5500 0    50   Output ~ 0
H_XT2-6
Text GLabel 1150 5700 0    50   Output ~ 0
H_XT3-7
Text GLabel 1450 5700 2    50   Input ~ 0
XT3-7
Text GLabel 1450 5500 2    50   Input ~ 0
XT2-6
Text GLabel 1450 5300 2    50   Input ~ 0
XT1-5
Text GLabel 1450 5100 2    50   Input ~ 0
XT0-4
Wire Wire Line
	2650 4900 2650 5100
Wire Wire Line
	2650 4300 2750 4300
Connection ~ 2650 4300
Text GLabel 2350 5100 0    50   Output ~ 0
PLANE_5
Text GLabel 2350 5300 0    50   Output ~ 0
PLANE_6
Text GLabel 2350 5500 0    50   Output ~ 0
PLANE_7
Text GLabel 2350 5700 0    50   Output ~ 0
PLANE_8
Text GLabel 2350 4300 0    50   Output ~ 0
PLANE_1
Text GLabel 2350 4500 0    50   Output ~ 0
PLANE_2
Text GLabel 2350 4700 0    50   Output ~ 0
PLANE_3
Text GLabel 2350 4900 0    50   Output ~ 0
PLANE_4
Connection ~ 4150 4300
Wire Wire Line
	4150 4300 4300 4300
$Comp
L Device:C C?
U 1 1 6057242A
P 6150 4450
AR Path="/6057242A" Ref="C?"  Part="1" 
AR Path="/604D6360/6057242A" Ref="C9"  Part="1" 
F 0 "C9" H 6241 4496 50  0000 L CNN
F 1 "0.1uF" H 6241 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6150 4450 50  0001 C CNN
F 3 "~" H 6150 4450 50  0001 C CNN
F 4 "NO" H 6150 4450 50  0001 C CNN "Insert"
F 5 "Capacitor" H 6150 4450 50  0001 C CNN "Description"
F 6 "X7R ceramic" H 6150 4450 50  0001 C CNN "Value_Modifer"
	1    6150 4450
	1    0    0    -1  
$EndComp
Text GLabel 5800 4300 0    50   Input ~ 0
3V3_800mA
$Comp
L power:GNDD #PWR?
U 1 1 60572431
P 6150 4600
AR Path="/60572431" Ref="#PWR?"  Part="1" 
AR Path="/604D6360/60572431" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 6150 4350 50  0001 C CNN
F 1 "GNDD" H 6150 4450 50  0000 C CNN
F 2 "" H 6150 4600 50  0001 C CNN
F 3 "" H 6150 4600 50  0001 C CNN
	1    6150 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4300 6000 4800
Wire Wire Line
	5800 4300 6000 4300
Connection ~ 6000 4300
Wire Wire Line
	6000 4300 6150 4300
Wire Wire Line
	5950 4800 6000 4800
Text GLabel 5950 4900 2    50   Input ~ 0
ENABLE
Text GLabel 5950 5000 2    50   Input ~ 0
ENABLE
Text GLabel 5100 5200 0    50   Input ~ 0
ENABLE
Text GLabel 5100 5300 0    50   Input ~ 0
ENABLE
Text Notes 750  4150 0    50   ~ 0
STEP 1: Do NOT solder\nany JP9 through JP16.
Text Notes 1900 4150 0    50   ~ 0
STEP 2: Solder ONE \nplane JP1 to JP8.
Text Notes 2950 4150 0    50   ~ 0
STEP 3: Install two quad switches\nand two decoupling caps.
Text Notes 4450 4150 0    50   ~ 0
STEP 4: Modify sense wire\nrouting through connectors.
Text Notes 5700 4150 0    50   ~ 0
STEP 5 (LOGIC BOARD):\nSee instructions on\nLogic Board.
Text GLabel 9700 1750 2    50   Input ~ 0
SAO_GPIO1
Text GLabel 9700 2900 2    50   Input ~ 0
SAO_GPIO2
Text GLabel 9250 1750 0    50   Input ~ 0
3V3_800mA
Text GLabel 9250 1500 0    50   BiDi ~ 0
I2C_DATA
Text GLabel 9300 2900 0    50   BiDi ~ 0
I2C_CLOCK
Wire Wire Line
	9500 2550 9500 2900
Wire Wire Line
	9500 2900 9300 2900
Wire Wire Line
	9600 2550 9600 2900
Wire Wire Line
	9600 2900 9700 2900
Wire Wire Line
	9550 1850 9550 1750
Wire Wire Line
	9450 1850 9450 1500
Wire Wire Line
	9450 1500 9250 1500
Wire Wire Line
	9250 1750 9350 1750
Wire Wire Line
	9350 1750 9350 1850
Wire Wire Line
	9550 1750 9700 1750
Text Notes 9550 1650 0    50   ~ 0
SILKSCREEN FRONT AND BACK: \nSAO, GNDD, 3V3, SDA,SCL\nGPIO1, GPIO2
Text Notes 8500 850  0    100  ~ 0
[OPTIONAL] SAO #2 EXPANSION
$Comp
L power:GNDD #PWR?
U 1 1 605D5CCD
P 9400 2550
AR Path="/605D5CCD" Ref="#PWR?"  Part="1" 
AR Path="/604D6360/605D5CCD" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 9400 2300 50  0001 C CNN
F 1 "GNDD" H 9404 2395 50  0000 C CNN
F 2 "" H 9400 2550 50  0001 C CNN
F 3 "" H 9400 2550 50  0001 C CNN
	1    9400 2550
	1    0    0    -1  
$EndComp
Text Notes 8900 2750 0    50   ~ 0
DIGITAL\nLOGIC\nGROUND
Text Notes 8550 1050 0    50   ~ 0
SIMPLE ADD ONS see:\nhttps://hackaday.io/project/175182-simple-add-ons-sao
Text Notes 9750 2700 0    50   ~ 0
NOTE: These GPIO will be\nused by Core Plane Select\nif that option is enabled.
Text GLabel 2600 1700 2    50   Output ~ 0
PLANE_5
Text GLabel 2600 2750 2    50   Output ~ 0
PLANE_6
Text GLabel 4950 1700 2    50   Output ~ 0
PLANE_7
Text GLabel 4950 2750 2    50   Output ~ 0
PLANE_8
Text GLabel 1650 1350 0    50   Input ~ 0
3V3_800mA
$Comp
L power:GNDD #PWR?
U 1 1 606412D7
P 1700 2100
AR Path="/606412D7" Ref="#PWR?"  Part="1" 
AR Path="/604D6360/606412D7" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 1700 1850 50  0001 C CNN
F 1 "GNDD" H 1704 1945 50  0000 C CNN
F 2 "" H 1700 2100 50  0001 C CNN
F 3 "" H 1700 2100 50  0001 C CNN
	1    1700 2100
	1    0    0    -1  
$EndComp
Text Notes 1850 2200 0    50   ~ 0
DIGITAL LOGIC GROUND
$Comp
L Sensor_Magnetic:SM353LT U9
U 1 1 60643263
P 1900 1700
F 0 "U9" H 1570 1747 50  0000 R CNN
F 1 "TCS40DPR,LF" H 1570 1654 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1850 1700 50  0001 C CNN
F 3 "https://sensing.honeywell.com/honeywell-sensing-nanopower-series-product-sheet-50095501-a-en.pdf" H 1850 1700 50  0001 C CNN
F 4 "NO" H 1900 1700 50  0001 C CNN "Insert"
F 5 "Hall Switch (alternate)" H 1900 1700 50  0001 C CNN "Description"
F 6 "None" H 1900 1700 50  0001 C CNN "Alt. Manufacturer"
F 7 "None" H 1900 1700 50  0001 C CNN "Alt. Mfg P/N"
	1    1900 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1350 1700 1350
Wire Wire Line
	1700 1350 1700 1400
Wire Wire Line
	1700 2100 1700 2000
Text GLabel 1650 2400 0    50   Input ~ 0
3V3_800mA
$Comp
L power:GNDD #PWR?
U 1 1 6065FC74
P 1700 3150
AR Path="/6065FC74" Ref="#PWR?"  Part="1" 
AR Path="/604D6360/6065FC74" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 1700 2900 50  0001 C CNN
F 1 "GNDD" H 1704 2995 50  0000 C CNN
F 2 "" H 1700 3150 50  0001 C CNN
F 3 "" H 1700 3150 50  0001 C CNN
	1    1700 3150
	1    0    0    -1  
$EndComp
Text Notes 1850 3250 0    50   ~ 0
DIGITAL LOGIC GROUND
$Comp
L Sensor_Magnetic:SM353LT U10
U 1 1 6065FC7B
P 1900 2750
F 0 "U10" H 1570 2797 50  0000 R CNN
F 1 "TCS40DPR,LF" H 1570 2704 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1850 2750 50  0001 C CNN
F 3 "https://sensing.honeywell.com/honeywell-sensing-nanopower-series-product-sheet-50095501-a-en.pdf" H 1850 2750 50  0001 C CNN
F 4 "NO" H 1900 2750 50  0001 C CNN "Insert"
F 5 "Hall Switch (alternate)" H 1900 2750 50  0001 C CNN "Description"
F 6 "None" H 1900 2750 50  0001 C CNN "Alt. Manufacturer"
F 7 "None" H 1900 2750 50  0001 C CNN "Alt. Mfg P/N"
	1    1900 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2400 1700 2400
Wire Wire Line
	1700 2400 1700 2450
Wire Wire Line
	1700 3150 1700 3050
Text GLabel 4000 1350 0    50   Input ~ 0
3V3_800mA
$Comp
L power:GNDD #PWR?
U 1 1 6066304F
P 4050 2100
AR Path="/6066304F" Ref="#PWR?"  Part="1" 
AR Path="/604D6360/6066304F" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 4050 1850 50  0001 C CNN
F 1 "GNDD" H 4054 1945 50  0000 C CNN
F 2 "" H 4050 2100 50  0001 C CNN
F 3 "" H 4050 2100 50  0001 C CNN
	1    4050 2100
	1    0    0    -1  
$EndComp
Text Notes 4200 2200 0    50   ~ 0
DIGITAL LOGIC GROUND
$Comp
L Sensor_Magnetic:SM353LT U11
U 1 1 60663056
P 4250 1700
F 0 "U11" H 3920 1747 50  0000 R CNN
F 1 "TCS40DPR,LF" H 3920 1654 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4200 1700 50  0001 C CNN
F 3 "https://sensing.honeywell.com/honeywell-sensing-nanopower-series-product-sheet-50095501-a-en.pdf" H 4200 1700 50  0001 C CNN
F 4 "NO" H 4250 1700 50  0001 C CNN "Insert"
F 5 "Hall Switch (alternate)" H 4250 1700 50  0001 C CNN "Description"
F 6 "None" H 4250 1700 50  0001 C CNN "Alt. Manufacturer"
F 7 "None" H 4250 1700 50  0001 C CNN "Alt. Mfg P/N"
	1    4250 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1350 4050 1350
Wire Wire Line
	4050 1350 4050 1400
Wire Wire Line
	4050 2100 4050 2000
Text GLabel 4000 2400 0    50   Input ~ 0
3V3_800mA
$Comp
L power:GNDD #PWR?
U 1 1 606657BE
P 4050 3150
AR Path="/606657BE" Ref="#PWR?"  Part="1" 
AR Path="/604D6360/606657BE" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 4050 2900 50  0001 C CNN
F 1 "GNDD" H 4054 2995 50  0000 C CNN
F 2 "" H 4050 3150 50  0001 C CNN
F 3 "" H 4050 3150 50  0001 C CNN
	1    4050 3150
	1    0    0    -1  
$EndComp
Text Notes 4200 3250 0    50   ~ 0
DIGITAL LOGIC GROUND
$Comp
L Sensor_Magnetic:SM353LT U12
U 1 1 606657C5
P 4250 2750
F 0 "U12" H 3920 2797 50  0000 R CNN
F 1 "TCS40DPR,LF" H 3920 2704 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4200 2750 50  0001 C CNN
F 3 "https://sensing.honeywell.com/honeywell-sensing-nanopower-series-product-sheet-50095501-a-en.pdf" H 4200 2750 50  0001 C CNN
F 4 "NO" H 4250 2750 50  0001 C CNN "Insert"
F 5 "Hall Switch (alternate)" H 4250 2750 50  0001 C CNN "Description"
F 6 "None" H 4250 2750 50  0001 C CNN "Alt. Manufacturer"
F 7 "None" H 4250 2750 50  0001 C CNN "Alt. Mfg P/N"
	1    4250 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2400 4050 2400
Wire Wire Line
	4050 2400 4050 2450
Wire Wire Line
	4050 3150 4050 3050
Text Notes 750  850  0    100  ~ 0
[ALTERNATE] HALL SWITCH ALTERNATES
$Comp
L LiteOn_LTR-329ALS:LTR-329ALS-01 U8
U 1 1 603B38C5
P 8250 6050
F 0 "U8" H 8600 6350 60  0000 C CNN
F 1 "LTR-329ALS-01" H 9200 6350 60  0000 C CNN
F 2 "LiteOn_LTR-329ALS:LTR-329ALS-01" H 9050 6290 60  0001 C CNN
F 3 "" H 8250 6050 60  0000 C CNN
F 4 "YES" H 8250 6050 50  0001 C CNN "Insert"
F 5 "LiteOn" H 8250 6050 50  0001 C CNN "Manufacturer_Name"
F 6 "LTR-329ALS-01" H 8250 6050 50  0001 C CNN "Mfg P/N"
F 7 "Mouser" H 8250 6050 50  0001 C CNN "Supplier (2nd)"
F 8 "Arrow" H 8250 6050 50  0001 C CNN "Supplier (Primary)"
F 9 "859-LTR-329ALS-01" H 8250 6050 50  0001 C CNN "Supplier SKU (2nd)"
F 10 "LTR-329ALS-01" H 8250 6050 50  0001 C CNN "Supplier SKU (Primary)"
F 11 "None" H 8250 6050 50  0001 C CNN "Alt. Manufacturer"
F 12 "None" H 8250 6050 50  0001 C CNN "Alt. Mfg P/N"
F 13 "I2C Digital Light Sensor, DFN-4EP" H 8250 6050 50  0001 C CNN "Description"
F 14 "4-DFN-EP (2x2)" H 8250 6050 50  0001 C CNN "Value_Modifer"
	1    8250 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 603B52BC
P 8150 6150
AR Path="/603B52BC" Ref="#PWR?"  Part="1" 
AR Path="/604D6360/603B52BC" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 8150 5900 50  0001 C CNN
F 1 "GNDD" H 8154 5995 50  0000 C CNN
F 2 "" H 8150 6150 50  0001 C CNN
F 3 "" H 8150 6150 50  0001 C CNN
	1    8150 6150
	1    0    0    -1  
$EndComp
Text GLabel 8150 6050 0    50   Input ~ 0
3V3_800mA
Text GLabel 9950 6050 2    50   BiDi ~ 0
I2C_CLOCK
Text GLabel 9950 6150 2    50   BiDi ~ 0
I2C_DATA
Wire Wire Line
	9850 6050 9950 6050
Wire Wire Line
	9850 6150 9950 6150
Wire Wire Line
	8150 6050 8250 6050
Wire Wire Line
	8150 6150 8250 6150
Text Notes 8900 5550 0    50   ~ 0
-OR-
Text Notes 2000 1400 0    50   ~ 0
HS1
Text Notes 2000 2450 0    50   ~ 0
HS2
Text Notes 4350 1400 0    50   ~ 0
HS3
Text Notes 4400 2450 0    50   ~ 0
HS4
$Comp
L badgelife_shitty_addon_v169bis:SAO_conn_SFH11-NBPC-D03-ST-BK X1
U 1 1 60C04175
P 9500 2150
F 0 "X1" H 9681 2147 50  0000 L CNN
F 1 "SFH11-NBPC-D03-ST-BK" H 9681 2054 50  0000 L CNN
F 2 "badgelife_sao_v169bis:Badgelife-SAOv169-BADGE-2x3" H 9500 2350 50  0001 C CNN
F 3 "" H 9500 2350 50  0001 C CNN
F 4 "NO" H 9500 2150 50  0001 C CNN "Insert"
F 5 "2x6 Keyed Socket for SAO (user-supplied optional)" H 9500 2150 50  0001 C CNN "Description"
	1    9500 2150
	1    0    0    -1  
$EndComp
$Comp
L TI_TS3A4751PWR:TS3A4751PWR U?
U 1 1 605723D0
P 4950 4800
AR Path="/605723D0" Ref="U?"  Part="1" 
AR Path="/604D6360/605723D0" Ref="U14"  Part="1" 
F 0 "U14" H 5550 5050 60  0000 C CNN
F 1 "TS3A4751PWR" H 5550 4950 60  0000 C CNN
F 2 "TI_TS3A4751PWR:TS3A4751PWR" H 6150 5040 60  0001 C CNN
F 3 "" H 4950 4800 60  0000 C CNN
F 4 "NO" H 4950 4800 50  0001 C CNN "Insert"
F 5 "Analog Switch Quad SPST (user-supplied optional)" H 4950 4800 50  0001 C CNN "Description"
F 6 "TI" H 4950 4800 50  0001 C CNN "Manufacturer_Name"
F 7 "TS3A4751PWR" H 4950 4800 50  0001 C CNN "Mfg P/N"
	1    4950 4800
	1    0    0    -1  
$EndComp
$Comp
L TI_TS3A4751PWR:TS3A4751PWR U?
U 1 1 60572422
P 3100 4800
AR Path="/60572422" Ref="U?"  Part="1" 
AR Path="/604D6360/60572422" Ref="U13"  Part="1" 
F 0 "U13" H 3650 5050 60  0000 C CNN
F 1 "TS3A4751PWR" H 3650 4950 60  0000 C CNN
F 2 "TI_TS3A4751PWR:TS3A4751PWR" H 4300 5040 60  0001 C CNN
F 3 "" H 3100 4800 60  0000 C CNN
F 4 "NO" H 3100 4800 50  0001 C CNN "Insert"
F 5 "Analog Switch Quad SPST (user-supplied optional)" H 3100 4800 50  0001 C CNN "Description"
F 6 "TI" H 3100 4800 50  0001 C CNN "Manufacturer_Name"
F 7 "TS3A4751PWR" H 3100 4800 50  0001 C CNN "Mfg P/N"
	1    3100 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 5600 7450 5600
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 617672C1
P 7200 5600
AR Path="/617672C1" Ref="JP?"  Part="1" 
AR Path="/604D6360/617672C1" Ref="JP17"  Part="1" 
F 0 "JP17" H 7200 5700 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 7200 5720 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 7200 5600 50  0001 C CNN
F 3 "~" H 7200 5600 50  0001 C CNN
F 4 "NO" H 7200 5600 50  0001 C CNN "Insert"
	1    7200 5600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2300 1700 2600 1700
Wire Wire Line
	2300 2750 2600 2750
Wire Wire Line
	4650 2750 4950 2750
Wire Wire Line
	4650 1700 4950 1700
Text Notes 750  1250 0    50   ~ 0
If Hall Switches are inserted, keep the decoupling caps on the first sheet.\nIf Hall Switches are used, they default to being connected to Plane5-8 wiring, without requiring any Solder Jumpers to be soldered.\nRecommended sensitivity ± (N and S) 3-7 mT (30-70 Gauss)\n(Toshiba TCS40DPR,LF is 4.4mT.)
Text Notes 6950 5950 0    50   ~ 0
A PLACE FOR AIR\nWIRES IF YOU WANT\nTO USE THE INTERRUPT
$EndSCHEMATC
