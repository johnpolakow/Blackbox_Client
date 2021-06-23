EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
Title "PI BLACKBOX"
Date "2020-01-10"
Rev "3"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4850 3100 4900 3100
Wire Wire Line
	4900 3100 4900 3150
$Comp
L Device:C_Small C42
U 1 1 5CF2C79C
P 3750 3050
F 0 "C42" H 3800 3100 50  0000 L CNN
F 1 ".1uF" H 3750 3000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3750 3050 50  0001 C CNN
F 3 "~" H 3750 3050 50  0001 C CNN
	1    3750 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C40
U 1 1 5CF2C85A
P 3550 3050
F 0 "C40" H 3300 3100 50  0000 L CNN
F 1 "10uF" H 3300 3000 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3550 3050 50  0001 C CNN
F 3 "~" H 3550 3050 50  0001 C CNN
	1    3550 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R44
U 1 1 5CF5B889
P 5200 2900
F 0 "R44" H 5268 2946 50  0000 L CNN
F 1 "20k" H 5268 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5200 2900 50  0001 C CNN
F 3 "~" H 5200 2900 50  0001 C CNN
	1    5200 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R45
U 1 1 5CF5B947
P 5200 3150
F 0 "R45" H 5268 3196 50  0000 L CNN
F 1 "2.2k" H 5268 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5200 3150 50  0001 C CNN
F 3 "~" H 5200 3150 50  0001 C CNN
	1    5200 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2800 5550 2800
Text Notes 5000 2700 0    43   ~ 0
Vout = .5*(1 + R44/R45)
Wire Wire Line
	5200 3050 5200 3000
$Comp
L Device:C_Small C44
U 1 1 5CF63013
P 5550 3050
F 0 "C44" H 5642 3096 50  0000 L CNN
F 1 "10uF" H 5642 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5550 3050 50  0001 C CNN
F 3 "~" H 5550 3050 50  0001 C CNN
	1    5550 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2950 5550 2800
Wire Wire Line
	5550 3150 5550 3250
Text GLabel 8000 2800 2    51   Input ~ 0
PI_+5V
Connection ~ 5550 2800
$Comp
L Device:LED D?
U 1 1 5CFA884D
P 6700 2950
AR Path="/5CF731F6/5CFA884D" Ref="D?"  Part="1" 
AR Path="/5DAA51F9/5CFA884D" Ref="D10"  Part="1" 
AR Path="/617A10A1/5CFA884D" Ref="D31"  Part="1" 
F 0 "D31" V 6738 2833 50  0000 R CNN
F 1 "LED GRN" V 6647 2833 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6700 2950 50  0001 C CNN
F 3 "~" H 6700 2950 50  0001 C CNN
	1    6700 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5CFA8854
P 6700 3250
AR Path="/5CF731F6/5CFA8854" Ref="R?"  Part="1" 
AR Path="/5DAA51F9/5CFA8854" Ref="R80"  Part="1" 
AR Path="/617A10A1/5CFA8854" Ref="R48"  Part="1" 
F 0 "R48" H 6768 3296 50  0000 L CNN
F 1 "500R" H 6768 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6740 3240 50  0001 C CNN
F 3 "~" H 6700 3250 50  0001 C CNN
	1    6700 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CFA885B
P 6700 3400
AR Path="/5CF731F6/5CFA885B" Ref="#PWR?"  Part="1" 
AR Path="/5DAA51F9/5CFA885B" Ref="#PWR096"  Part="1" 
AR Path="/617A10A1/5CFA885B" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 6700 3150 50  0001 C CNN
F 1 "GND" H 6705 3227 50  0000 C CNN
F 2 "" H 6700 3400 50  0001 C CNN
F 3 "" H 6700 3400 50  0001 C CNN
	1    6700 3400
	1    0    0    -1  
$EndComp
Connection ~ 6700 2800
$Comp
L Connector:TestPoint TP1
U 1 1 5D12854E
P 6700 2650
F 0 "TP1" H 6758 2770 50  0000 L CNN
F 1 "PI_+5V" H 6758 2679 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 6900 2650 50  0001 C CNN
F 3 "~" H 6900 2650 50  0001 C CNN
	1    6700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2650 6700 2800
$Comp
L Device:R_Small_US R42
U 1 1 5D1E5605
P 4100 2900
F 0 "R42" V 4200 2900 50  0000 C CNN
F 1 "1K" V 4300 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4100 2900 50  0001 C CNN
F 3 "~" H 4100 2900 50  0001 C CNN
	1    4100 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 2900 3900 2900
Wire Wire Line
	3750 2950 3750 2800
Connection ~ 3750 2800
Wire Wire Line
	3550 2950 3550 2800
Wire Wire Line
	4250 2900 4200 2900
Wire Wire Line
	3900 2900 3900 2800
Wire Wire Line
	3750 2800 3900 2800
Wire Wire Line
	3900 2800 4250 2800
Connection ~ 3900 2800
Wire Wire Line
	4850 2800 5200 2800
Connection ~ 5200 2800
Wire Wire Line
	4850 3000 5200 3000
Connection ~ 5200 3000
Text Notes 7850 2700 0    79   ~ 16
PI SUPPLY
$Comp
L Device:C_Small C38
U 1 1 5D91E4E5
P 3200 3050
F 0 "C38" H 2950 3100 50  0000 L CNN
F 1 "10uF" H 2950 3000 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3200 3050 50  0001 C CNN
F 3 "~" H 3200 3050 50  0001 C CNN
	1    3200 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2800 3200 2950
Text Notes 4250 2500 0    43   ~ 0
max dropout of .6V
Text GLabel 1150 1500 0    50   Input ~ 0
+6V
$Comp
L Device:C_Small C34
U 1 1 5E423B85
P 1500 1750
F 0 "C34" H 1592 1796 50  0000 L CNN
F 1 "1uF" H 1592 1705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1500 1750 50  0001 C CNN
F 3 "~" H 1500 1750 50  0001 C CNN
	1    1500 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E4561A9
P 1500 1950
AR Path="/5CF731F6/5E4561A9" Ref="#PWR?"  Part="1" 
AR Path="/5DAA51F9/5E4561A9" Ref="#PWR0201"  Part="1" 
AR Path="/617A10A1/5E4561A9" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 1500 1700 50  0001 C CNN
F 1 "GND" H 1505 1777 50  0000 C CNN
F 2 "" H 1500 1950 50  0001 C CNN
F 3 "" H 1500 1950 50  0001 C CNN
	1    1500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1850 1500 1950
Wire Wire Line
	1500 1650 1500 1500
Wire Wire Line
	1500 1500 1850 1500
Wire Wire Line
	1500 1500 1150 1500
Connection ~ 1500 1500
$Comp
L power:GND #PWR0104
U 1 1 5CF6AACB
P 5550 3250
F 0 "#PWR0104" H 5550 3000 50  0001 C CNN
F 1 "GND" H 5555 3077 50  0000 C CNN
F 2 "" H 5550 3250 50  0001 C CNN
F 3 "" H 5550 3250 50  0001 C CNN
	1    5550 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5CF5BA39
P 5200 3250
F 0 "#PWR0105" H 5200 3000 50  0001 C CNN
F 1 "GND" H 5205 3077 50  0000 C CNN
F 2 "" H 5200 3250 50  0001 C CNN
F 3 "" H 5200 3250 50  0001 C CNN
	1    5200 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5CF29890
P 4900 3150
F 0 "#PWR0106" H 4900 2900 50  0001 C CNN
F 1 "GND" H 4905 2977 50  0000 C CNN
F 2 "" H 4900 3150 50  0001 C CNN
F 3 "" H 4900 3150 50  0001 C CNN
	1    4900 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5CF4428B
P 3750 3150
F 0 "#PWR0107" H 3750 2900 50  0001 C CNN
F 1 "GND" H 3755 2977 50  0000 C CNN
F 2 "" H 3750 3150 50  0001 C CNN
F 3 "" H 3750 3150 50  0001 C CNN
	1    3750 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5CF441E5
P 3550 3150
F 0 "#PWR0108" H 3550 2900 50  0001 C CNN
F 1 "GND" H 3555 2977 50  0000 C CNN
F 2 "" H 3550 3150 50  0001 C CNN
F 3 "" H 3550 3150 50  0001 C CNN
	1    3550 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5D91E4EC
P 3200 3150
F 0 "#PWR0109" H 3200 2900 50  0001 C CNN
F 1 "GND" H 3205 2977 50  0000 C CNN
F 2 "" H 3200 3150 50  0001 C CNN
F 3 "" H 3200 3150 50  0001 C CNN
	1    3200 3150
	1    0    0    -1  
$EndComp
Text GLabel 1450 2800 0    51   Input ~ 0
+6V
$Comp
L Device:CP1_Small C48
U 1 1 5E13205A
P 6300 3050
F 0 "C48" H 6391 3096 50  0000 L CNN
F 1 "560uF" H 6391 3005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 6300 3050 50  0001 C CNN
F 3 "~" H 6300 3050 50  0001 C CNN
	1    6300 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2950 6300 2800
Wire Wire Line
	6300 2800 6700 2800
Wire Wire Line
	6300 3150 6300 3300
$Comp
L power:GND #PWR0110
U 1 1 5E16585B
P 6300 3300
F 0 "#PWR0110" H 6300 3050 50  0001 C CNN
F 1 "GND" H 6305 3127 50  0000 C CNN
F 2 "" H 6300 3300 50  0001 C CNN
F 3 "" H 6300 3300 50  0001 C CNN
	1    6300 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C50
U 1 1 5E18929F
P 7200 3100
F 0 "C50" H 7292 3146 50  0000 L CNN
F 1 "10uF" H 7292 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7200 3100 50  0001 C CNN
F 3 "~" H 7200 3100 50  0001 C CNN
	1    7200 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3200 7200 3300
$Comp
L power:GND #PWR0111
U 1 1 5E1892A7
P 7200 3300
F 0 "#PWR0111" H 7200 3050 50  0001 C CNN
F 1 "GND" H 7205 3127 50  0000 C CNN
F 2 "" H 7200 3300 50  0001 C CNN
F 3 "" H 7200 3300 50  0001 C CNN
	1    7200 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C52
U 1 1 5E19A7E1
P 7550 3100
F 0 "C52" H 7642 3146 50  0000 L CNN
F 1 "10uF" H 7642 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7550 3100 50  0001 C CNN
F 3 "~" H 7550 3100 50  0001 C CNN
	1    7550 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3200 7550 3300
$Comp
L power:GND #PWR0112
U 1 1 5E19A7E9
P 7550 3300
F 0 "#PWR0112" H 7550 3050 50  0001 C CNN
F 1 "GND" H 7555 3127 50  0000 C CNN
F 2 "" H 7550 3300 50  0001 C CNN
F 3 "" H 7550 3300 50  0001 C CNN
	1    7550 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 2800 7200 3000
Wire Wire Line
	6700 2800 7200 2800
Wire Wire Line
	7200 2800 7550 2800
Wire Wire Line
	7550 2800 7550 3000
Connection ~ 7200 2800
Connection ~ 7550 2800
$Comp
L Device:C_Small C36
U 1 1 5E23CF49
P 2850 3050
F 0 "C36" H 2600 3100 50  0000 L CNN
F 1 "10uF" H 2600 3000 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2850 3050 50  0001 C CNN
F 3 "~" H 2850 3050 50  0001 C CNN
	1    2850 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2800 2850 2950
$Comp
L power:GND #PWR0114
U 1 1 5E23CF51
P 2850 3150
F 0 "#PWR0114" H 2850 2900 50  0001 C CNN
F 1 "GND" H 2855 2977 50  0000 C CNN
F 2 "" H 2850 3150 50  0001 C CNN
F 3 "" H 2850 3150 50  0001 C CNN
	1    2850 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Core_Ferrite L?
U 1 1 5E2AFD39
P 2050 2800
AR Path="/5CD634AD/5E2AFD39" Ref="L?"  Part="1" 
AR Path="/5DAA51F9/5E2AFD39" Ref="L9"  Part="1" 
AR Path="/617A10A1/5E2AFD39" Ref="L1"  Part="1" 
F 0 "L1" V 2275 2800 50  0000 C CNN
F 1 "10uH" V 2184 2800 50  0000 C CNN
F 2 "Pi_BlackBox_V4:10uH_Wurth_74479887310A" H 2050 2800 50  0001 C CNN
F 3 "~" H 2050 2800 50  0001 C CNN
	1    2050 2800
	0    -1   -1   0   
$EndComp
Text Notes 6300 3200 0    43   ~ 0
electrolytic\n
$Comp
L Device:L_Core_Ferrite L?
U 1 1 5D826219
P 6100 2800
AR Path="/5CF731F6/5D826219" Ref="L?"  Part="1" 
AR Path="/5DAA51F9/5D826219" Ref="L8"  Part="1" 
AR Path="/617A10A1/5D826219" Ref="L3"  Part="1" 
F 0 "L3" V 6300 2800 50  0000 C CNN
F 1 "22uH" V 6234 2800 50  0000 C CNN
F 2 "Pi_BlackBox_V4:Sumida_CDRH105" H 6100 2800 50  0001 C CNN
F 3 "~" H 6100 2800 50  0001 C CNN
	1    6100 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 2800 6300 2800
Connection ~ 6300 2800
Connection ~ 3550 2800
Wire Wire Line
	3550 2800 3750 2800
Connection ~ 3200 2800
Wire Wire Line
	3200 2800 3550 2800
Connection ~ 2850 2800
Wire Wire Line
	2850 2800 3200 2800
$Comp
L power:GND #PWR0115
U 1 1 5D86ED23
P 4550 3250
F 0 "#PWR0115" H 4550 3000 50  0001 C CNN
F 1 "GND" H 4555 3077 50  0000 C CNN
F 2 "" H 4550 3250 50  0001 C CNN
F 3 "" H 4550 3250 50  0001 C CNN
	1    4550 3250
	1    0    0    -1  
$EndComp
$Comp
L PI_Blackbox:TPS7A7002 U1
U 1 1 5E06471B
P 4550 2900
F 0 "U1" H 4550 3242 50  0000 C CNN
F 1 "TPS7A7002" H 4550 3151 50  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.514x3.2mm_ThermalVias" H 4550 3125 50  0001 C CIN
F 3 "" V 4400 2750 50  0001 C CNN
	1    4550 2900
	1    0    0    -1  
$EndComp
Text Label 5250 2800 0    51   ~ 0
PI_PS
Wire Wire Line
	2200 2800 2850 2800
$Comp
L Device:CP1_Small C35
U 1 1 5EB6A68E
P 1850 1750
F 0 "C35" H 1941 1796 50  0000 L CNN
F 1 "1000uF" H 1941 1705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D12.5mm_P5.00mm" H 1850 1750 50  0001 C CNN
F 3 "~" H 1850 1750 50  0001 C CNN
F 4 "Panasonic" H 1850 1750 50  0001 C CNN "MFG"
F 5 "EEU-FR1V102B" H 1850 1750 50  0001 C CNN "MFG Part #"
F 6 "P15382CT-ND" H 1850 1750 50  0001 C CNN "Distributor Part #"
	1    1850 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1650 1850 1500
Wire Wire Line
	1850 1850 1850 2000
$Comp
L power:GND #PWR0116
U 1 1 5EB6A696
P 1850 2000
F 0 "#PWR0116" H 1850 1750 50  0001 C CNN
F 1 "GND" H 1855 1827 50  0000 C CNN
F 2 "" H 1850 2000 50  0001 C CNN
F 3 "" H 1850 2000 50  0001 C CNN
	1    1850 2000
	1    0    0    -1  
$EndComp
Text Notes 1850 1900 0    43   ~ 0
electrolytic\n
Wire Wire Line
	4850 4800 4900 4800
Wire Wire Line
	4900 4800 4900 4850
$Comp
L Device:C_Small C43
U 1 1 618122D4
P 3750 4750
F 0 "C43" H 3800 4800 50  0000 L CNN
F 1 ".1uF" H 3750 4700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3750 4750 50  0001 C CNN
F 3 "~" H 3750 4750 50  0001 C CNN
	1    3750 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C41
U 1 1 618122DA
P 3550 4750
F 0 "C41" H 3300 4800 50  0000 L CNN
F 1 "10uF" H 3300 4700 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3550 4750 50  0001 C CNN
F 3 "~" H 3550 4750 50  0001 C CNN
	1    3550 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R46
U 1 1 618122E0
P 5200 4600
F 0 "R46" H 5268 4646 50  0000 L CNN
F 1 "20k" H 5268 4555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5200 4600 50  0001 C CNN
F 3 "~" H 5200 4600 50  0001 C CNN
	1    5200 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R47
U 1 1 618122E6
P 5200 4850
F 0 "R47" H 5268 4896 50  0000 L CNN
F 1 "2.2k" H 5268 4805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5200 4850 50  0001 C CNN
F 3 "~" H 5200 4850 50  0001 C CNN
	1    5200 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4500 5550 4500
Text Notes 5000 4400 0    43   ~ 0
Vout = .5*(1 + R46/R47)
Wire Wire Line
	5200 4750 5200 4700
$Comp
L Device:C_Small C45
U 1 1 618122EF
P 5550 4750
F 0 "C45" H 5642 4796 50  0000 L CNN
F 1 "10uF" H 5642 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5550 4750 50  0001 C CNN
F 3 "~" H 5550 4750 50  0001 C CNN
	1    5550 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4650 5550 4500
Wire Wire Line
	5550 4850 5550 4950
Text GLabel 8000 4500 2    51   Input ~ 0
+5V
Connection ~ 5550 4500
$Comp
L Device:LED D?
U 1 1 618122FB
P 6700 4650
AR Path="/5CF731F6/618122FB" Ref="D?"  Part="1" 
AR Path="/5DAA51F9/618122FB" Ref="D?"  Part="1" 
AR Path="/617A10A1/618122FB" Ref="D32"  Part="1" 
F 0 "D32" V 6738 4533 50  0000 R CNN
F 1 "LED GRN" V 6647 4533 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6700 4650 50  0001 C CNN
F 3 "~" H 6700 4650 50  0001 C CNN
	1    6700 4650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 61812301
P 6700 4950
AR Path="/5CF731F6/61812301" Ref="R?"  Part="1" 
AR Path="/5DAA51F9/61812301" Ref="R?"  Part="1" 
AR Path="/617A10A1/61812301" Ref="R49"  Part="1" 
F 0 "R49" H 6768 4996 50  0000 L CNN
F 1 "500R" H 6768 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6740 4940 50  0001 C CNN
F 3 "~" H 6700 4950 50  0001 C CNN
	1    6700 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61812307
P 6700 5100
AR Path="/5CF731F6/61812307" Ref="#PWR?"  Part="1" 
AR Path="/5DAA51F9/61812307" Ref="#PWR?"  Part="1" 
AR Path="/617A10A1/61812307" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 6700 4850 50  0001 C CNN
F 1 "GND" H 6705 4927 50  0000 C CNN
F 2 "" H 6700 5100 50  0001 C CNN
F 3 "" H 6700 5100 50  0001 C CNN
	1    6700 5100
	1    0    0    -1  
$EndComp
Connection ~ 6700 4500
$Comp
L Connector:TestPoint TP2
U 1 1 6181230E
P 6700 4350
F 0 "TP2" H 6758 4470 50  0000 L CNN
F 1 "+5V" H 6758 4379 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6900 4350 50  0001 C CNN
F 3 "~" H 6900 4350 50  0001 C CNN
	1    6700 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4350 6700 4500
$Comp
L Device:R_Small_US R43
U 1 1 61812315
P 4100 4600
F 0 "R43" V 4200 4600 50  0000 C CNN
F 1 "1K" V 4300 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4100 4600 50  0001 C CNN
F 3 "~" H 4100 4600 50  0001 C CNN
	1    4100 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 4600 3900 4600
Wire Wire Line
	3750 4650 3750 4500
Connection ~ 3750 4500
Wire Wire Line
	3550 4650 3550 4500
Wire Wire Line
	4250 4600 4200 4600
Wire Wire Line
	3900 4600 3900 4500
Wire Wire Line
	3750 4500 3900 4500
Wire Wire Line
	3900 4500 4250 4500
Connection ~ 3900 4500
Wire Wire Line
	4850 4500 5200 4500
Connection ~ 5200 4500
Wire Wire Line
	4850 4700 5200 4700
Connection ~ 5200 4700
Text Notes 7850 4400 0    79   ~ 16
RELAY SUPPLY
$Comp
L Device:C_Small C39
U 1 1 61812329
P 3200 4750
F 0 "C39" H 2950 4800 50  0000 L CNN
F 1 "10uF" H 2950 4700 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3200 4750 50  0001 C CNN
F 3 "~" H 3200 4750 50  0001 C CNN
	1    3200 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4500 3200 4650
Text Notes 4250 4200 0    43   ~ 0
max dropout of .6V
$Comp
L power:GND #PWR0119
U 1 1 61812338
P 5550 4950
F 0 "#PWR0119" H 5550 4700 50  0001 C CNN
F 1 "GND" H 5555 4777 50  0000 C CNN
F 2 "" H 5550 4950 50  0001 C CNN
F 3 "" H 5550 4950 50  0001 C CNN
	1    5550 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 6181233E
P 5200 4950
F 0 "#PWR0120" H 5200 4700 50  0001 C CNN
F 1 "GND" H 5205 4777 50  0000 C CNN
F 2 "" H 5200 4950 50  0001 C CNN
F 3 "" H 5200 4950 50  0001 C CNN
	1    5200 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 61812344
P 4900 4850
F 0 "#PWR0121" H 4900 4600 50  0001 C CNN
F 1 "GND" H 4905 4677 50  0000 C CNN
F 2 "" H 4900 4850 50  0001 C CNN
F 3 "" H 4900 4850 50  0001 C CNN
	1    4900 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 6181234A
P 3750 4850
F 0 "#PWR0122" H 3750 4600 50  0001 C CNN
F 1 "GND" H 3755 4677 50  0000 C CNN
F 2 "" H 3750 4850 50  0001 C CNN
F 3 "" H 3750 4850 50  0001 C CNN
	1    3750 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 61812350
P 3550 4850
F 0 "#PWR0123" H 3550 4600 50  0001 C CNN
F 1 "GND" H 3555 4677 50  0000 C CNN
F 2 "" H 3550 4850 50  0001 C CNN
F 3 "" H 3550 4850 50  0001 C CNN
	1    3550 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 61812356
P 3200 4850
F 0 "#PWR0124" H 3200 4600 50  0001 C CNN
F 1 "GND" H 3205 4677 50  0000 C CNN
F 2 "" H 3200 4850 50  0001 C CNN
F 3 "" H 3200 4850 50  0001 C CNN
	1    3200 4850
	1    0    0    -1  
$EndComp
Text GLabel 1450 4500 0    51   Input ~ 0
+6V
$Comp
L Device:CP1_Small C49
U 1 1 61812364
P 6300 4750
F 0 "C49" H 6391 4796 50  0000 L CNN
F 1 "560uF" H 6391 4705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 6300 4750 50  0001 C CNN
F 3 "~" H 6300 4750 50  0001 C CNN
	1    6300 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4650 6300 4500
Wire Wire Line
	6300 4500 6700 4500
Wire Wire Line
	6300 4850 6300 5000
$Comp
L power:GND #PWR0125
U 1 1 6181236D
P 6300 5000
F 0 "#PWR0125" H 6300 4750 50  0001 C CNN
F 1 "GND" H 6305 4827 50  0000 C CNN
F 2 "" H 6300 5000 50  0001 C CNN
F 3 "" H 6300 5000 50  0001 C CNN
	1    6300 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C51
U 1 1 61812373
P 7200 4800
F 0 "C51" H 7292 4846 50  0000 L CNN
F 1 "10uF" H 7292 4755 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7200 4800 50  0001 C CNN
F 3 "~" H 7200 4800 50  0001 C CNN
	1    7200 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4900 7200 5000
$Comp
L power:GND #PWR0126
U 1 1 6181237A
P 7200 5000
F 0 "#PWR0126" H 7200 4750 50  0001 C CNN
F 1 "GND" H 7205 4827 50  0000 C CNN
F 2 "" H 7200 5000 50  0001 C CNN
F 3 "" H 7200 5000 50  0001 C CNN
	1    7200 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C53
U 1 1 61812380
P 7550 4800
F 0 "C53" H 7642 4846 50  0000 L CNN
F 1 "10uF" H 7642 4755 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7550 4800 50  0001 C CNN
F 3 "~" H 7550 4800 50  0001 C CNN
	1    7550 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4900 7550 5000
$Comp
L power:GND #PWR0127
U 1 1 61812387
P 7550 5000
F 0 "#PWR0127" H 7550 4750 50  0001 C CNN
F 1 "GND" H 7555 4827 50  0000 C CNN
F 2 "" H 7550 5000 50  0001 C CNN
F 3 "" H 7550 5000 50  0001 C CNN
	1    7550 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4500 7200 4700
Wire Wire Line
	6700 4500 7200 4500
Wire Wire Line
	7200 4500 7550 4500
Wire Wire Line
	7550 4500 7550 4700
Connection ~ 7200 4500
Connection ~ 7550 4500
$Comp
L Device:C_Small C37
U 1 1 618123A4
P 2850 4750
F 0 "C37" H 2600 4800 50  0000 L CNN
F 1 "10uF" H 2600 4700 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2850 4750 50  0001 C CNN
F 3 "~" H 2850 4750 50  0001 C CNN
	1    2850 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4500 2850 4650
$Comp
L power:GND #PWR0129
U 1 1 618123AB
P 2850 4850
F 0 "#PWR0129" H 2850 4600 50  0001 C CNN
F 1 "GND" H 2855 4677 50  0000 C CNN
F 2 "" H 2850 4850 50  0001 C CNN
F 3 "" H 2850 4850 50  0001 C CNN
	1    2850 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Core_Ferrite L?
U 1 1 618123B1
P 2050 4500
AR Path="/5CD634AD/618123B1" Ref="L?"  Part="1" 
AR Path="/5DAA51F9/618123B1" Ref="L?"  Part="1" 
AR Path="/617A10A1/618123B1" Ref="L2"  Part="1" 
F 0 "L2" V 2275 4500 50  0000 C CNN
F 1 "10uH" V 2184 4500 50  0000 C CNN
F 2 "Pi_BlackBox_V4:10uH_Wurth_74479887310A" H 2050 4500 50  0001 C CNN
F 3 "~" H 2050 4500 50  0001 C CNN
	1    2050 4500
	0    -1   -1   0   
$EndComp
Text Notes 6300 4900 0    43   ~ 0
electrolytic\n
$Comp
L Device:L_Core_Ferrite L?
U 1 1 618123B9
P 6100 4500
AR Path="/5CF731F6/618123B9" Ref="L?"  Part="1" 
AR Path="/5DAA51F9/618123B9" Ref="L?"  Part="1" 
AR Path="/617A10A1/618123B9" Ref="L4"  Part="1" 
F 0 "L4" V 6300 4500 50  0000 C CNN
F 1 "22uH" V 6234 4500 50  0000 C CNN
F 2 "Pi_BlackBox_V4:Sumida_CDRH105" H 6100 4500 50  0001 C CNN
F 3 "~" H 6100 4500 50  0001 C CNN
	1    6100 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 4500 6300 4500
Connection ~ 6300 4500
Connection ~ 3550 4500
Wire Wire Line
	3550 4500 3750 4500
Connection ~ 3200 4500
Wire Wire Line
	3200 4500 3550 4500
Connection ~ 2850 4500
Wire Wire Line
	2850 4500 3200 4500
$Comp
L power:GND #PWR0130
U 1 1 618123C9
P 4550 4950
F 0 "#PWR0130" H 4550 4700 50  0001 C CNN
F 1 "GND" H 4555 4777 50  0000 C CNN
F 2 "" H 4550 4950 50  0001 C CNN
F 3 "" H 4550 4950 50  0001 C CNN
	1    4550 4950
	1    0    0    -1  
$EndComp
$Comp
L PI_Blackbox:TPS7A7002 U2
U 1 1 618123CF
P 4550 4600
F 0 "U2" H 4550 4942 50  0000 C CNN
F 1 "TPS7A7002" H 4550 4851 50  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.514x3.2mm_ThermalVias" H 4550 4825 50  0001 C CIN
F 3 "" V 4400 4450 50  0001 C CNN
	1    4550 4600
	1    0    0    -1  
$EndComp
Text Label 5250 4500 0    51   ~ 0
+5V_unfilt
Wire Wire Line
	2200 4500 2850 4500
Wire Wire Line
	1450 4500 1600 4500
Wire Wire Line
	1450 2800 1900 2800
Wire Wire Line
	5550 4500 5950 4500
Wire Wire Line
	7550 4500 8000 4500
Wire Wire Line
	7550 2800 8000 2800
Wire Wire Line
	5550 2800 5950 2800
$Comp
L Connector:TestPoint TP18
U 1 1 5F1EA219
P 1600 4300
F 0 "TP18" H 1658 4418 50  0000 L CNN
F 1 "+6V" H 1658 4327 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 1800 4300 50  0001 C CNN
F 3 "~" H 1800 4300 50  0001 C CNN
	1    1600 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4300 1600 4500
Connection ~ 1600 4500
Wire Wire Line
	1600 4500 1900 4500
$Comp
L power:GND #PWR014
U 1 1 5F1EF9B9
P 1550 5100
F 0 "#PWR014" H 1550 4850 50  0001 C CNN
F 1 "GND" H 1555 4927 50  0000 C CNN
F 2 "" H 1550 5100 50  0001 C CNN
F 3 "" H 1550 5100 50  0001 C CNN
	1    1550 5100
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP17
U 1 1 5F1F29E5
P 1550 4900
F 0 "TP17" H 1608 5018 50  0000 L CNN
F 1 "GND" H 1608 4927 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D3.0mm_Drill1.5mm" H 1750 4900 50  0001 C CNN
F 3 "~" H 1750 4900 50  0001 C CNN
	1    1550 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4900 1550 5100
$EndSCHEMATC