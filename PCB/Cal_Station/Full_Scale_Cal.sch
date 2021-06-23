EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	1350 1300 1250 1300
$Comp
L txs2:TXS2 K?
U 1 1 5EC8A868
P 1600 1650
AR Path="/5EC8A868" Ref="K?"  Part="1" 
AR Path="/5F851FE1/5EC8A868" Ref="K?"  Part="1" 
AR Path="/5EC7D0EA/5EC8A868" Ref="K16"  Part="1" 
F 0 "K16" V 1604 970 51  0000 R CNN
F 1 "TXS2" V 1696 970 50  0000 R CNN
F 2 "Footprints:Panasonic_TX2_2" V 2612 2505 50  0001 C CNN
F 3 "http://www.azettler.com/pdfs/az850.pdf" V 1650 1400 50  0001 C CNN
	1    1600 1650
	0    -1   1    0   
$EndComp
Wire Wire Line
	1200 2050 1400 2050
Wire Wire Line
	1400 2050 1400 2000
Wire Wire Line
	1200 2200 1650 2200
Wire Wire Line
	1650 2200 1650 2000
Text GLabel 2250 1150 1    47   Input ~ 0
K16_SET
Wire Wire Line
	1350 1300 1350 1400
Wire Wire Line
	1250 1100 1600 1100
Wire Wire Line
	1600 1100 1600 1400
$Comp
L Diode:1N4148W D?
U 1 1 5EC8A87B
P 2050 1300
AR Path="/5F865273/5EC8A87B" Ref="D?"  Part="1" 
AR Path="/5F851FE1/5EC8A87B" Ref="D?"  Part="1" 
AR Path="/5EC7D0EA/5EC8A87B" Ref="D33"  Part="1" 
F 0 "D33" H 2050 1500 50  0000 C CNN
F 1 "1N4148W" H 2050 1400 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 2050 1125 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 2050 1300 50  0001 C CNN
	1    2050 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1300 2250 1300
Wire Wire Line
	1900 1300 1850 1300
Wire Wire Line
	1850 1400 1850 1300
Connection ~ 1850 1300
Wire Wire Line
	2250 1400 2250 1300
Wire Wire Line
	1850 1300 1850 1150
Wire Wire Line
	2250 1300 2250 1150
Connection ~ 2250 1300
$Comp
L Diode:1N4148W D?
U 1 1 5EC8A88A
P 2050 2100
AR Path="/5F865273/5EC8A88A" Ref="D?"  Part="1" 
AR Path="/5F851FE1/5EC8A88A" Ref="D?"  Part="1" 
AR Path="/5EC7D0EA/5EC8A88A" Ref="D34"  Part="1" 
F 0 "D34" H 2050 1900 50  0000 C CNN
F 1 "1N4148W" H 2050 2000 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 2050 1925 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 2050 2100 50  0001 C CNN
	1    2050 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2100 1900 2000
Wire Wire Line
	2200 2000 2200 2100
Wire Wire Line
	2200 2100 2300 2100
Wire Wire Line
	2300 2100 2300 2200
Connection ~ 2200 2100
Wire Wire Line
	1900 2100 1800 2100
Wire Wire Line
	1800 2100 1800 2250
Connection ~ 1900 2100
Text GLabel 1800 2250 3    50   Input ~ 0
PI_+5V
Wire Wire Line
	1900 2000 1950 2000
Wire Wire Line
	2150 2000 2200 2000
Wire Wire Line
	1850 1400 1950 1400
Wire Wire Line
	2150 1400 2250 1400
$Comp
L Device:C_Small C?
U 1 1 5EC8F95D
P 4100 1200
AR Path="/5EC8F95D" Ref="C?"  Part="1" 
AR Path="/5EFA74C2/5EC8F95D" Ref="C?"  Part="1" 
AR Path="/5F851FE1/5EC8F95D" Ref="C?"  Part="1" 
AR Path="/5EC7D0EA/5EC8F95D" Ref="C57"  Part="1" 
F 0 "C57" H 4192 1246 50  0000 L CNN
F 1 "10uF" H 4192 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4100 1200 50  0001 C CNN
F 3 "~" H 4100 1200 50  0001 C CNN
	1    4100 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1050 4100 1050
Wire Wire Line
	4100 1050 4100 1100
Wire Wire Line
	4000 1350 4100 1350
Wire Wire Line
	4100 1350 4100 1300
Text GLabel 4000 1350 0    47   Input ~ 0
K16_SET
Text GLabel 5750 950  0    47   Input ~ 0
K16_SET
Text GLabel 5000 1200 0    47   Input ~ 0
K16_SET_SIGNL
$Comp
L dk_Transistors-Bipolar-BJT-Single:MMBT2222A-7-F Q?
U 1 1 5EC9AD97
P 5650 1200
AR Path="/6048AB69/5EC9AD97" Ref="Q?"  Part="1" 
AR Path="/5EC7D0EA/5EC9AD97" Ref="Q35"  Part="1" 
F 0 "Q35" H 5838 1253 60  0000 L CNN
F 1 "MMBT2222A" H 5838 1147 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 5850 1400 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30041.pdf" H 5850 1500 60  0001 L CNN
F 4 "MMBT2222A-FDICT-ND" H 5850 1600 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT2222A-7-F" H 5850 1700 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5850 1800 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 5850 1900 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/ds30041.pdf" H 5850 2000 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/MMBT2222A-7-F/MMBT2222A-FDICT-ND/815723" H 5850 2100 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SMD SOT23-3" H 5850 2200 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 5850 2300 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5850 2400 60  0001 L CNN "Status"
	1    5650 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5EC9AD9D
P 5150 1200
AR Path="/6048AB69/5EC9AD9D" Ref="R?"  Part="1" 
AR Path="/5EC7D0EA/5EC9AD9D" Ref="R50"  Part="1" 
F 0 "R50" V 4945 1200 50  0000 C CNN
F 1 "300R" V 5036 1200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5150 1200 50  0001 C CNN
F 3 "~" H 5150 1200 50  0001 C CNN
	1    5150 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 1200 5450 1200
Text GLabel 5750 1450 0    50   Input ~ 0
PI_GND
Wire Wire Line
	5750 950  5750 1000
Wire Wire Line
	5750 1450 5750 1400
Wire Wire Line
	5000 1200 5050 1200
$Comp
L Analog_Devices:LTC6655 U?
U 1 1 5ECA299E
P 3250 5300
AR Path="/5ECA299E" Ref="U?"  Part="1" 
AR Path="/5EC7D0EA/5ECA299E" Ref="U3"  Part="1" 
F 0 "U3" H 3325 5737 60  0000 C CNN
F 1 "LTC6655" H 3325 5631 60  0000 C CNN
F 2 "Footprints:LTC6655_LS8" H 3250 5300 60  0001 C CNN
F 3 "" H 3250 5300 60  0000 C CNN
	1    3250 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C55
U 1 1 5ECA3162
P 2100 5350
F 0 "C55" H 2192 5396 50  0000 L CNN
F 1 ".1uF" H 2192 5305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2100 5350 50  0001 C CNN
F 3 "~" H 2100 5350 50  0001 C CNN
	1    2100 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R40
U 1 1 5ECA398E
P 2550 5250
F 0 "R40" H 2400 5300 50  0000 L CNN
F 1 "1k" H 2400 5200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2550 5250 50  0001 C CNN
F 3 "~" H 2550 5250 50  0001 C CNN
	1    2550 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5150 2550 5150
Wire Wire Line
	2550 5350 2750 5350
Wire Wire Line
	2750 5350 2750 5300
$Comp
L power:GND #PWR04
U 1 1 5ECA7D17
P 2100 5450
F 0 "#PWR04" H 2100 5200 50  0001 C CNN
F 1 "GND" H 2105 5277 50  0000 C CNN
F 2 "" H 2100 5450 50  0001 C CNN
F 3 "" H 2100 5450 50  0001 C CNN
	1    2100 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C54
U 1 1 5ECA8A20
P 1700 5350
F 0 "C54" H 1792 5396 50  0000 L CNN
F 1 "10uF" H 1792 5305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1700 5350 50  0001 C CNN
F 3 "~" H 1700 5350 50  0001 C CNN
	1    1700 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5ECA8A26
P 1700 5450
F 0 "#PWR03" H 1700 5200 50  0001 C CNN
F 1 "GND" H 1705 5277 50  0000 C CNN
F 2 "" H 1700 5450 50  0001 C CNN
F 3 "" H 1700 5450 50  0001 C CNN
	1    1700 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C47
U 1 1 5ECAA22A
P 1250 5350
F 0 "C47" H 1342 5396 50  0000 L CNN
F 1 "4.7uF" H 1342 5305 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 1250 5350 50  0001 C CNN
F 3 "~" H 1250 5350 50  0001 C CNN
	1    1250 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5ECAA230
P 1250 5450
F 0 "#PWR02" H 1250 5200 50  0001 C CNN
F 1 "GND" H 1255 5277 50  0000 C CNN
F 2 "" H 1250 5450 50  0001 C CNN
F 3 "" H 1250 5450 50  0001 C CNN
	1    1250 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 5250 2100 5150
Wire Wire Line
	2100 5150 2550 5150
Connection ~ 2550 5150
Wire Wire Line
	1700 5250 1700 5150
Wire Wire Line
	1700 5150 2100 5150
Connection ~ 2100 5150
Wire Wire Line
	1250 5250 1250 5150
Wire Wire Line
	1250 5150 1700 5150
Connection ~ 1700 5150
$Comp
L power:GND #PWR08
U 1 1 5ECB0963
P 3600 5800
F 0 "#PWR08" H 3600 5550 50  0001 C CNN
F 1 "GND" H 3605 5627 50  0000 C CNN
F 2 "" H 3600 5800 50  0001 C CNN
F 3 "" H 3600 5800 50  0001 C CNN
	1    3600 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5ECB106F
P 3400 5800
F 0 "#PWR07" H 3400 5550 50  0001 C CNN
F 1 "GND" H 3405 5627 50  0000 C CNN
F 2 "" H 3400 5800 50  0001 C CNN
F 3 "" H 3400 5800 50  0001 C CNN
	1    3400 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5ECB1865
P 3200 5800
F 0 "#PWR06" H 3200 5550 50  0001 C CNN
F 1 "GND" H 3205 5627 50  0000 C CNN
F 2 "" H 3200 5800 50  0001 C CNN
F 3 "" H 3200 5800 50  0001 C CNN
	1    3200 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5ECB2028
P 3000 5800
F 0 "#PWR05" H 3000 5550 50  0001 C CNN
F 1 "GND" H 3005 5627 50  0000 C CNN
F 2 "" H 3000 5800 50  0001 C CNN
F 3 "" H 3000 5800 50  0001 C CNN
	1    3000 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C59
U 1 1 5ECB5643
P 4850 5350
F 0 "C59" H 4942 5396 50  0000 L CNN
F 1 "10uF" H 4942 5305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4850 5350 50  0001 C CNN
F 3 "~" H 4850 5350 50  0001 C CNN
	1    4850 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5ECB5649
P 4850 5450
F 0 "#PWR010" H 4850 5200 50  0001 C CNN
F 1 "GND" H 4855 5277 50  0000 C CNN
F 2 "" H 4850 5450 50  0001 C CNN
F 3 "" H 4850 5450 50  0001 C CNN
	1    4850 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C58
U 1 1 5ECB564F
P 4400 5350
F 0 "C58" H 4492 5396 50  0000 L CNN
F 1 "4.7uF" H 4492 5305 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 4400 5350 50  0001 C CNN
F 3 "~" H 4400 5350 50  0001 C CNN
	1    4400 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5ECB5655
P 4400 5450
F 0 "#PWR09" H 4400 5200 50  0001 C CNN
F 1 "GND" H 4405 5277 50  0000 C CNN
F 2 "" H 4400 5450 50  0001 C CNN
F 3 "" H 4400 5450 50  0001 C CNN
	1    4400 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 5150 4400 5250
Wire Wire Line
	4850 5150 4850 5250
Text GLabel 5050 5150 2    50   Input ~ 0
Vref_OUT
$Comp
L Device:R_Small_US R51
U 1 1 5ECBD918
P 4200 5150
F 0 "R51" V 3995 5150 50  0000 C CNN
F 1 "50R" V 4086 5150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4200 5150 50  0001 C CNN
F 3 "~" H 4200 5150 50  0001 C CNN
	1    4200 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 3300 1300 3300
$Comp
L txs2:TXS2 K?
U 1 1 5ECD4BFB
P 1650 3650
AR Path="/5ECD4BFB" Ref="K?"  Part="1" 
AR Path="/5F851FE1/5ECD4BFB" Ref="K?"  Part="1" 
AR Path="/5EC7D0EA/5ECD4BFB" Ref="K17"  Part="1" 
F 0 "K17" V 1654 2970 51  0000 R CNN
F 1 "TXS2" V 1746 2970 50  0000 R CNN
F 2 "Footprints:Panasonic_TX2_2" V 2662 4505 50  0001 C CNN
F 3 "http://www.azettler.com/pdfs/az850.pdf" V 1700 3400 50  0001 C CNN
	1    1650 3650
	0    -1   1    0   
$EndComp
Wire Wire Line
	1450 4050 1450 4000
Wire Wire Line
	1250 4200 1700 4200
Wire Wire Line
	1700 4200 1700 4000
Text HLabel 1300 3300 0    47   Input ~ 9
diode_sns_-
Text HLabel 1300 3100 0    47   Input ~ 9
diode_sns_+
Text GLabel 2300 3150 1    47   Input ~ 0
K17_SET
Wire Wire Line
	1400 3300 1400 3400
Wire Wire Line
	1300 3100 1650 3100
Wire Wire Line
	1650 3100 1650 3400
$Comp
L Diode:1N4148W D?
U 1 1 5ECD4C0E
P 2100 3300
AR Path="/5F865273/5ECD4C0E" Ref="D?"  Part="1" 
AR Path="/5F851FE1/5ECD4C0E" Ref="D?"  Part="1" 
AR Path="/5EC7D0EA/5ECD4C0E" Ref="D35"  Part="1" 
F 0 "D35" H 2100 3500 50  0000 C CNN
F 1 "1N4148W" H 2100 3400 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 2100 3125 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 2100 3300 50  0001 C CNN
	1    2100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3300 2300 3300
Wire Wire Line
	1950 3300 1900 3300
Wire Wire Line
	1900 3400 1900 3300
Connection ~ 1900 3300
Wire Wire Line
	2300 3400 2300 3300
Wire Wire Line
	1900 3300 1900 3150
Wire Wire Line
	2300 3300 2300 3150
Connection ~ 2300 3300
$Comp
L Diode:1N4148W D?
U 1 1 5ECD4C1D
P 2100 4100
AR Path="/5F865273/5ECD4C1D" Ref="D?"  Part="1" 
AR Path="/5F851FE1/5ECD4C1D" Ref="D?"  Part="1" 
AR Path="/5EC7D0EA/5ECD4C1D" Ref="D36"  Part="1" 
F 0 "D36" H 2100 3900 50  0000 C CNN
F 1 "1N4148W" H 2100 4000 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 2100 3925 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 2100 4100 50  0001 C CNN
	1    2100 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4100 1950 4000
Wire Wire Line
	2250 4000 2250 4100
Wire Wire Line
	2250 4100 2350 4100
Wire Wire Line
	2350 4100 2350 4200
Connection ~ 2250 4100
Wire Wire Line
	1950 4100 1850 4100
Wire Wire Line
	1850 4100 1850 4250
Connection ~ 1950 4100
Text GLabel 1850 4250 3    50   Input ~ 0
PI_+5V
Wire Wire Line
	1950 4000 2000 4000
Wire Wire Line
	2200 4000 2250 4000
Wire Wire Line
	1900 3400 2000 3400
Wire Wire Line
	2200 3400 2300 3400
$Comp
L Device:C_Small C?
U 1 1 5ECD4C31
P 3950 3350
AR Path="/5ECD4C31" Ref="C?"  Part="1" 
AR Path="/5EFA74C2/5ECD4C31" Ref="C?"  Part="1" 
AR Path="/5F851FE1/5ECD4C31" Ref="C?"  Part="1" 
AR Path="/5EC7D0EA/5ECD4C31" Ref="C56"  Part="1" 
F 0 "C56" H 4042 3396 50  0000 L CNN
F 1 "10uF" H 4042 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3950 3350 50  0001 C CNN
F 3 "~" H 3950 3350 50  0001 C CNN
	1    3950 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3200 3950 3200
Wire Wire Line
	3950 3200 3950 3250
Wire Wire Line
	3850 3500 3950 3500
Wire Wire Line
	3950 3500 3950 3450
Text GLabel 3850 3500 0    47   Input ~ 0
K17_SET
Text GLabel 5800 3100 0    47   Input ~ 0
K17_SET
Text GLabel 5050 3350 0    47   Input ~ 0
K17_SET_SIGNL
$Comp
L dk_Transistors-Bipolar-BJT-Single:MMBT2222A-7-F Q?
U 1 1 5ECD4C47
P 5700 3350
AR Path="/6048AB69/5ECD4C47" Ref="Q?"  Part="1" 
AR Path="/5EC7D0EA/5ECD4C47" Ref="Q34"  Part="1" 
F 0 "Q34" H 5888 3403 60  0000 L CNN
F 1 "MMBT2222A" H 5888 3297 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 5900 3550 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30041.pdf" H 5900 3650 60  0001 L CNN
F 4 "MMBT2222A-FDICT-ND" H 5900 3750 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT2222A-7-F" H 5900 3850 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5900 3950 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 5900 4050 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/ds30041.pdf" H 5900 4150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/MMBT2222A-7-F/MMBT2222A-FDICT-ND/815723" H 5900 4250 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SMD SOT23-3" H 5900 4350 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 5900 4450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5900 4550 60  0001 L CNN "Status"
	1    5700 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5ECD4C4D
P 5200 3350
AR Path="/6048AB69/5ECD4C4D" Ref="R?"  Part="1" 
AR Path="/5EC7D0EA/5ECD4C4D" Ref="R41"  Part="1" 
F 0 "R41" V 4995 3350 50  0000 C CNN
F 1 "300R" V 5086 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5200 3350 50  0001 C CNN
F 3 "~" H 5200 3350 50  0001 C CNN
	1    5200 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 3350 5500 3350
Text GLabel 5800 3600 0    50   Input ~ 0
PI_GND
Wire Wire Line
	5800 3100 5800 3150
Wire Wire Line
	5800 3600 5800 3550
Wire Wire Line
	5050 3350 5100 3350
$Comp
L Linear_Technology:LTC2057 U?
U 1 1 5ED87261
P 7450 2450
AR Path="/5ED87261" Ref="U?"  Part="1" 
AR Path="/5EC7D0EA/5ED87261" Ref="U4"  Part="1" 
F 0 "U4" H 7650 2400 50  0000 L CNN
F 1 "LTC2057" H 7550 2300 50  0000 L CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 7400 2550 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/2057f.pdf" H 7794 2359 50  0001 L CNN
F 4 "Linear Technology" H 8050 2750 60  0001 C CNN "MFN"
F 5 "LTC2057" H 7850 2850 60  0001 C CNN "MFP"
	1    7450 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5ED8A5AB
P 7350 2750
F 0 "#PWR012" H 7350 2500 50  0001 C CNN
F 1 "GND" H 7355 2577 50  0000 C CNN
F 2 "" H 7350 2750 50  0001 C CNN
F 3 "" H 7350 2750 50  0001 C CNN
	1    7350 2750
	1    0    0    -1  
$EndComp
Text GLabel 7700 2750 2    50   Input ~ 0
LTC2057_SHDN
$Comp
L power:GND #PWR013
U 1 1 5ED8C1DA
P 7650 2100
F 0 "#PWR013" H 7650 1850 50  0001 C CNN
F 1 "GND" H 7655 1927 50  0000 C CNN
F 2 "" H 7650 2100 50  0001 C CNN
F 3 "" H 7650 2100 50  0001 C CNN
	1    7650 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2200 7450 2050
Wire Wire Line
	7450 2050 7650 2050
Wire Wire Line
	7650 2050 7650 2100
$Comp
L Device:R_Small_US R52
U 1 1 5ED90F9F
P 7350 1650
F 0 "R52" V 7145 1650 50  0000 C CNN
F 1 "100R" V 7236 1650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7350 1650 50  0001 C CNN
F 3 "~" H 7350 1650 50  0001 C CNN
	1    7350 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 2450 8000 2450
Wire Wire Line
	6800 2350 7150 2350
Connection ~ 8000 2450
$Comp
L Device:C_Small C60
U 1 1 5ED983B5
P 7050 2000
F 0 "C60" H 6850 2050 50  0000 L CNN
F 1 "1uF" H 6800 1950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7050 2000 50  0001 C CNN
F 3 "~" H 7050 2000 50  0001 C CNN
	1    7050 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5ED9D999
P 7050 2100
F 0 "#PWR011" H 7050 1850 50  0001 C CNN
F 1 "GND" H 7055 1927 50  0000 C CNN
F 2 "" H 7050 2100 50  0001 C CNN
F 3 "" H 7050 2100 50  0001 C CNN
	1    7050 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1900 7350 1900
Wire Wire Line
	7350 1900 7350 2150
Wire Wire Line
	6800 1650 7250 1650
Wire Wire Line
	6800 1650 6800 2350
Wire Wire Line
	8000 1650 8000 2450
Wire Wire Line
	7450 1650 8000 1650
Wire Wire Line
	6650 2550 7150 2550
Text GLabel 6650 2550 0    50   Input ~ 0
DAC_AUX
Text HLabel 8900 2450 2    50   Input ~ 0
DAC_AUX_BUF
Text GLabel 1250 4200 0    50   Input ~ 0
Vref_OUT
$Comp
L power:GND #PWR01
U 1 1 5EE3089A
P 650 4150
F 0 "#PWR01" H 650 3900 50  0001 C CNN
F 1 "GND" H 655 3977 50  0000 C CNN
F 2 "" H 650 4150 50  0001 C CNN
F 3 "" H 650 4150 50  0001 C CNN
	1    650  4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  4150 650  4050
Wire Wire Line
	650  4050 1450 4050
Wire Wire Line
	1200 2200 1200 2050
Text HLabel 1250 1300 0    47   Input ~ 9
diode_sns_-
Text HLabel 1250 1100 0    47   Input ~ 9
diode_sns_+
Text GLabel 6650 4350 0    47   Input ~ 0
CAL_RESET_SIGNL
$Comp
L dk_Transistors-Bipolar-BJT-Single:MMBT2222A-7-F Q?
U 1 1 5EE8ED1F
P 7300 4350
AR Path="/6048AB69/5EE8ED1F" Ref="Q?"  Part="1" 
AR Path="/5EC7D0EA/5EE8ED1F" Ref="Q36"  Part="1" 
F 0 "Q36" H 7488 4403 60  0000 L CNN
F 1 "MMBT2222A" H 7488 4297 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 7500 4550 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30041.pdf" H 7500 4650 60  0001 L CNN
F 4 "MMBT2222A-FDICT-ND" H 7500 4750 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT2222A-7-F" H 7500 4850 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7500 4950 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 7500 5050 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/ds30041.pdf" H 7500 5150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/MMBT2222A-7-F/MMBT2222A-FDICT-ND/815723" H 7500 5250 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.6A SMD SOT23-3" H 7500 5350 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 7500 5450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7500 5550 60  0001 L CNN "Status"
	1    7300 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5EE8ED25
P 6800 4350
AR Path="/6048AB69/5EE8ED25" Ref="R?"  Part="1" 
AR Path="/5EC7D0EA/5EE8ED25" Ref="R55"  Part="1" 
F 0 "R55" V 6595 4350 50  0000 C CNN
F 1 "100R" V 6686 4350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6800 4350 50  0001 C CNN
F 3 "~" H 6800 4350 50  0001 C CNN
	1    6800 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 4350 7100 4350
Text GLabel 7400 4600 0    50   Input ~ 0
PI_GND
Wire Wire Line
	7400 4600 7400 4550
Wire Wire Line
	6650 4350 6700 4350
$Comp
L Device:C_Small C?
U 1 1 5EE93C27
P 5600 4350
AR Path="/5EE93C27" Ref="C?"  Part="1" 
AR Path="/5EFA74C2/5EE93C27" Ref="C?"  Part="1" 
AR Path="/5F851FE1/5EE93C27" Ref="C?"  Part="1" 
AR Path="/5EC7D0EA/5EE93C27" Ref="C61"  Part="1" 
F 0 "C61" H 5692 4396 50  0000 L CNN
F 1 "10uF" H 5692 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5600 4350 50  0001 C CNN
F 3 "~" H 5600 4350 50  0001 C CNN
	1    5600 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4200 5600 4200
Wire Wire Line
	5600 4200 5600 4250
Wire Wire Line
	5500 4500 5600 4500
Wire Wire Line
	5600 4500 5600 4450
Text GLabel 7350 4050 0    47   Input ~ 0
CAL_RESET
Wire Wire Line
	7350 4050 7400 4050
Wire Wire Line
	7400 4050 7400 4150
Text GLabel 2350 4200 3    47   Input ~ 0
CAL_RESET
Text GLabel 5500 4500 0    47   Input ~ 0
CAL_RESET
Text GLabel 2300 2200 3    47   Input ~ 0
CAL_RESET
$Comp
L Device:R_Small_US R56
U 1 1 5EF83FD3
P 8500 2450
F 0 "R56" V 8295 2450 50  0000 C CNN
F 1 "50R" V 8386 2450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8500 2450 50  0001 C CNN
F 3 "~" H 8500 2450 50  0001 C CNN
	1    8500 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 2450 8400 2450
$Comp
L Device:Ferrite_Bead_Small FB2
U 1 1 5EF8B7EF
P 8800 2450
F 0 "FB2" V 8655 2450 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 8654 2450 50  0001 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8730 2450 50  0001 C CNN
F 3 "~" H 8800 2450 50  0001 C CNN
	1    8800 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 2450 8600 2450
NoConn ~ 1550 3400
NoConn ~ 1800 3400
NoConn ~ 1500 1400
NoConn ~ 1750 1400
Text GLabel 1250 5150 0    50   Input ~ 0
+5V
Connection ~ 7050 1900
Wire Wire Line
	7450 2700 7450 2750
Wire Wire Line
	7450 2750 7700 2750
Wire Wire Line
	6350 1900 7050 1900
Text GLabel 6350 1900 0    51   Input ~ 0
+5V
Wire Wire Line
	3900 5150 4050 5150
Wire Wire Line
	3900 5300 4050 5300
Wire Wire Line
	4050 5300 4050 5150
Connection ~ 4050 5150
Wire Wire Line
	4050 5150 4100 5150
Wire Wire Line
	4300 5150 4400 5150
Connection ~ 4400 5150
Wire Wire Line
	4400 5150 4850 5150
Connection ~ 4850 5150
Wire Wire Line
	4850 5150 5050 5150
$Comp
L Analog_Devices:LTC6655 U?
U 1 1 5F259113
P 3400 6650
AR Path="/5F259113" Ref="U?"  Part="1" 
AR Path="/5EC7D0EA/5F259113" Ref="U5"  Part="1" 
F 0 "U5" H 3475 7087 60  0000 C CNN
F 1 "LTC6655" H 3475 6981 60  0000 C CNN
F 2 "Footprints:LTC6655_LS8" H 3400 6650 60  0001 C CNN
F 3 "" H 3400 6650 60  0000 C CNN
	1    3400 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C64
U 1 1 5F259119
P 2250 6700
F 0 "C64" H 2342 6746 50  0000 L CNN
F 1 ".1uF" H 2342 6655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2250 6700 50  0001 C CNN
F 3 "~" H 2250 6700 50  0001 C CNN
	1    2250 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R57
U 1 1 5F25911F
P 2700 6600
F 0 "R57" H 2550 6650 50  0000 L CNN
F 1 "1k" H 2550 6550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2700 6600 50  0001 C CNN
F 3 "~" H 2700 6600 50  0001 C CNN
	1    2700 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6500 2700 6500
Wire Wire Line
	2700 6700 2900 6700
Wire Wire Line
	2900 6700 2900 6650
$Comp
L power:GND #PWR017
U 1 1 5F259128
P 2250 6800
F 0 "#PWR017" H 2250 6550 50  0001 C CNN
F 1 "GND" H 2255 6627 50  0000 C CNN
F 2 "" H 2250 6800 50  0001 C CNN
F 3 "" H 2250 6800 50  0001 C CNN
	1    2250 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C63
U 1 1 5F25912E
P 1850 6700
F 0 "C63" H 1942 6746 50  0000 L CNN
F 1 "10uF" H 1942 6655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1850 6700 50  0001 C CNN
F 3 "~" H 1850 6700 50  0001 C CNN
	1    1850 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5F259134
P 1850 6800
F 0 "#PWR016" H 1850 6550 50  0001 C CNN
F 1 "GND" H 1855 6627 50  0000 C CNN
F 2 "" H 1850 6800 50  0001 C CNN
F 3 "" H 1850 6800 50  0001 C CNN
	1    1850 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C62
U 1 1 5F25913A
P 1400 6700
F 0 "C62" H 1492 6746 50  0000 L CNN
F 1 "4.7uF" H 1492 6655 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 1400 6700 50  0001 C CNN
F 3 "~" H 1400 6700 50  0001 C CNN
	1    1400 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5F259140
P 1400 6800
F 0 "#PWR015" H 1400 6550 50  0001 C CNN
F 1 "GND" H 1405 6627 50  0000 C CNN
F 2 "" H 1400 6800 50  0001 C CNN
F 3 "" H 1400 6800 50  0001 C CNN
	1    1400 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 6600 2250 6500
Wire Wire Line
	2250 6500 2700 6500
Connection ~ 2700 6500
Wire Wire Line
	1850 6600 1850 6500
Wire Wire Line
	1850 6500 2250 6500
Connection ~ 2250 6500
Wire Wire Line
	1400 6600 1400 6500
Wire Wire Line
	1400 6500 1850 6500
Connection ~ 1850 6500
$Comp
L power:GND #PWR021
U 1 1 5F25914F
P 3750 7150
F 0 "#PWR021" H 3750 6900 50  0001 C CNN
F 1 "GND" H 3755 6977 50  0000 C CNN
F 2 "" H 3750 7150 50  0001 C CNN
F 3 "" H 3750 7150 50  0001 C CNN
	1    3750 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5F259155
P 3550 7150
F 0 "#PWR020" H 3550 6900 50  0001 C CNN
F 1 "GND" H 3555 6977 50  0000 C CNN
F 2 "" H 3550 7150 50  0001 C CNN
F 3 "" H 3550 7150 50  0001 C CNN
	1    3550 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5F25915B
P 3350 7150
F 0 "#PWR019" H 3350 6900 50  0001 C CNN
F 1 "GND" H 3355 6977 50  0000 C CNN
F 2 "" H 3350 7150 50  0001 C CNN
F 3 "" H 3350 7150 50  0001 C CNN
	1    3350 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5F259161
P 3150 7150
F 0 "#PWR018" H 3150 6900 50  0001 C CNN
F 1 "GND" H 3155 6977 50  0000 C CNN
F 2 "" H 3150 7150 50  0001 C CNN
F 3 "" H 3150 7150 50  0001 C CNN
	1    3150 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C66
U 1 1 5F259167
P 5000 6700
F 0 "C66" H 5092 6746 50  0000 L CNN
F 1 "10uF" H 5092 6655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5000 6700 50  0001 C CNN
F 3 "~" H 5000 6700 50  0001 C CNN
	1    5000 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5F25916D
P 5000 6800
F 0 "#PWR023" H 5000 6550 50  0001 C CNN
F 1 "GND" H 5005 6627 50  0000 C CNN
F 2 "" H 5000 6800 50  0001 C CNN
F 3 "" H 5000 6800 50  0001 C CNN
	1    5000 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C65
U 1 1 5F259173
P 4550 6700
F 0 "C65" H 4642 6746 50  0000 L CNN
F 1 "4.7uF" H 4642 6655 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 4550 6700 50  0001 C CNN
F 3 "~" H 4550 6700 50  0001 C CNN
	1    4550 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5F259179
P 4550 6800
F 0 "#PWR022" H 4550 6550 50  0001 C CNN
F 1 "GND" H 4555 6627 50  0000 C CNN
F 2 "" H 4550 6800 50  0001 C CNN
F 3 "" H 4550 6800 50  0001 C CNN
	1    4550 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 6500 4550 6600
Wire Wire Line
	5000 6500 5000 6600
Text GLabel 5200 6500 2    50   Input ~ 0
Vref_OUT
$Comp
L Device:R_Small_US R58
U 1 1 5F259182
P 4350 6500
F 0 "R58" V 4145 6500 50  0000 C CNN
F 1 "50R" V 4236 6500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4350 6500 50  0001 C CNN
F 3 "~" H 4350 6500 50  0001 C CNN
	1    4350 6500
	0    1    1    0   
$EndComp
Text GLabel 1400 6500 0    50   Input ~ 0
+5V
Wire Wire Line
	4050 6500 4200 6500
Wire Wire Line
	4050 6650 4200 6650
Wire Wire Line
	4200 6650 4200 6500
Connection ~ 4200 6500
Wire Wire Line
	4200 6500 4250 6500
Wire Wire Line
	4450 6500 4550 6500
Connection ~ 4550 6500
Wire Wire Line
	4550 6500 5000 6500
Connection ~ 5000 6500
Wire Wire Line
	5000 6500 5200 6500
Text GLabel 5500 4200 0    50   Input ~ 0
PI_+5V
Text GLabel 3850 3200 0    50   Input ~ 0
PI_+5V
Text GLabel 4000 1050 0    50   Input ~ 0
PI_+5V
Text GLabel 1900 3150 1    50   Input ~ 0
PI_+5V
Text GLabel 1850 1150 1    50   Input ~ 0
PI_+5V
$EndSCHEMATC
