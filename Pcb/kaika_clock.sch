EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Author:kaka"
$EndDescr
$Comp
L power:VCC #PWR01
U 1 1 5E7B0398
P 850 1100
F 0 "#PWR01" H 850 950 50  0001 C CNN
F 1 "VCC" H 867 1273 50  0000 C CNN
F 2 "" H 850 1100 50  0001 C CNN
F 3 "" H 850 1100 50  0001 C CNN
	1    850  1100
	1    0    0    -1  
$EndComp
Wire Notes Line
	750  1800 750  800 
Text Notes 750  750  0    50   ~ 0
Input Voltage Regulator
Wire Wire Line
	1000 2850 1000 2900
Wire Wire Line
	1000 3100 1000 3150
Wire Wire Line
	1400 2900 1400 2850
Wire Wire Line
	1400 3100 1400 3150
Wire Wire Line
	1400 3150 1800 3150
Wire Wire Line
	1800 3100 1800 3150
Connection ~ 1800 3150
Wire Wire Line
	1800 3150 2200 3150
Wire Wire Line
	2200 3100 2200 3150
Connection ~ 2200 3150
Wire Wire Line
	2200 3150 2600 3150
Wire Wire Line
	2600 3100 2600 3150
$Comp
L power:GND #PWR013
U 1 1 5E7FA209
P 2000 7250
F 0 "#PWR013" H 2000 7000 50  0001 C CNN
F 1 "GND" H 2005 7077 50  0000 C CNN
F 2 "" H 2000 7250 50  0001 C CNN
F 3 "" H 2000 7250 50  0001 C CNN
	1    2000 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2850 1400 2850
Wire Wire Line
	1000 3150 1400 3150
Connection ~ 1400 3150
Text GLabel 2650 6750 2    50   Input ~ 0
SWDIO
Text GLabel 2650 6850 2    50   Input ~ 0
SWCLK
Text GLabel 2650 6550 2    50   Input ~ 0
USB_DM
Text GLabel 2650 6650 2    50   Input ~ 0
USB_DP
Wire Notes Line
	750  800  3850 800 
Wire Notes Line
	850  7600 850  2600
Wire Notes Line
	6600 2600 6600 7600
Text Notes 850  2550 0    50   ~ 0
Microcontroller
$Comp
L Connector_Generic:Conn_01x05 J6
U 1 1 5EA53EA8
P 5650 1300
F 0 "J6" H 5730 1292 50  0000 L CNN
F 1 "Conn_01x04" H 5730 1201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 5650 1300 50  0001 C CNN
F 3 "~" H 5650 1300 50  0001 C CNN
	1    5650 1300
	1    0    0    -1  
$EndComp
Wire Notes Line
	4850 2000 4850 800 
Text Notes 4850 750  0    50   ~ 0
Connectors
Connection ~ 1400 2850
Wire Notes Line
	750  1800 3850 1800
Wire Notes Line
	3850 1800 3850 800 
Wire Wire Line
	1800 2850 1400 2850
Connection ~ 1800 2850
Wire Wire Line
	1800 2900 1800 2850
Wire Wire Line
	2200 2850 1800 2850
Connection ~ 2200 2850
Wire Wire Line
	2200 2900 2200 2850
Wire Wire Line
	2600 2850 2200 2850
Wire Wire Line
	2600 2900 2600 2850
$Comp
L MCU_ST_STM32F1:STM32F103C8Tx U2
U 1 1 5FE626CB
P 2050 5650
F 0 "U2" H 1950 5950 50  0000 C CNN
F 1 "STM32F103C8Tx" H 2000 5700 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 1450 4250 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 2050 5650 50  0001 C CNN
	1    2050 5650
	1    0    0    -1  
$EndComp
Wire Notes Line
	850  2600 6600 2600
Wire Notes Line
	6600 7600 850  7600
$Comp
L power:+3V3 #PWR014
U 1 1 5FE6A111
P 5450 1100
F 0 "#PWR014" H 5450 950 50  0001 C CNN
F 1 "+3V3" H 5465 1273 50  0000 C CNN
F 2 "" H 5450 1100 50  0001 C CNN
F 3 "" H 5450 1100 50  0001 C CNN
	1    5450 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5FE6AC56
P 5250 1100
F 0 "#PWR012" H 5250 850 50  0001 C CNN
F 1 "GND" H 5255 927 50  0000 C CNN
F 2 "" H 5250 1100 50  0001 C CNN
F 3 "" H 5250 1100 50  0001 C CNN
	1    5250 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 1100 5250 1200
Wire Wire Line
	5250 1200 5450 1200
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5FE5D3EC
P 6950 1350
F 0 "J1" H 7030 1342 50  0000 L CNN
F 1 "Conn_01x04" H 7030 1251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6950 1350 50  0001 C CNN
F 3 "~" H 6950 1350 50  0001 C CNN
	1    6950 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5FE8A51C
P 2600 3000
F 0 "C9" H 2692 3046 50  0000 L CNN
F 1 "100nf" H 2692 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2600 3000 50  0001 C CNN
F 3 "~" H 2600 3000 50  0001 C CNN
	1    2600 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5FE8B01B
P 2200 3000
F 0 "C7" H 2292 3046 50  0000 L CNN
F 1 "100nf" H 2292 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2200 3000 50  0001 C CNN
F 3 "~" H 2200 3000 50  0001 C CNN
	1    2200 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5FE8B3A2
P 1800 3000
F 0 "C5" H 1892 3046 50  0000 L CNN
F 1 "100nf" H 1892 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1800 3000 50  0001 C CNN
F 3 "~" H 1800 3000 50  0001 C CNN
	1    1800 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5FE8B7A7
P 1400 3000
F 0 "C4" H 1492 3046 50  0000 L CNN
F 1 "100nf" H 1492 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1400 3000 50  0001 C CNN
F 3 "~" H 1400 3000 50  0001 C CNN
	1    1400 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5FE8BB13
P 1000 3000
F 0 "C2" H 1092 3046 50  0000 L CNN
F 1 "100nf" H 1092 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1000 3000 50  0001 C CNN
F 3 "~" H 1000 3000 50  0001 C CNN
	1    1000 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5FE8C09E
P 1000 3150
F 0 "#PWR03" H 1000 2900 50  0001 C CNN
F 1 "GND" H 1005 2977 50  0000 C CNN
F 2 "" H 1000 3150 50  0001 C CNN
F 3 "" H 1000 3150 50  0001 C CNN
	1    1000 3150
	1    0    0    -1  
$EndComp
Connection ~ 1000 3150
Wire Wire Line
	1850 7150 1950 7150
Wire Wire Line
	2050 7150 2000 7150
Connection ~ 1950 7150
Wire Wire Line
	2050 7150 2150 7150
Connection ~ 2050 7150
Wire Wire Line
	2000 7250 2000 7150
Connection ~ 2000 7150
Wire Wire Line
	2000 7150 1950 7150
Text GLabel 7950 1850 0    50   Input ~ 0
USB_DM
Text GLabel 7950 1750 0    50   Input ~ 0
USB_DP
Text GLabel 6750 1450 0    50   Input ~ 0
SWDIO
Text GLabel 6750 1550 0    50   Input ~ 0
SWCLK
Text GLabel 2650 5950 2    50   Input ~ 0
SPI1_SCK
Text GLabel 2650 6150 2    50   Input ~ 0
SPI1_MOSI
Text GLabel 1350 5450 0    50   Input ~ 0
SPI1_CS
Text GLabel 5450 1500 0    50   Input ~ 0
SPI1_SCK
Text GLabel 5450 1300 0    50   Input ~ 0
SPI1_MOSI
Text GLabel 5450 1400 0    50   Input ~ 0
SPI1_CS
Text GLabel 1350 6050 0    50   Input ~ 0
I2C1_SCL
Text GLabel 1350 6150 0    50   Input ~ 0
I2C1_SDA
Text GLabel 4650 5850 0    50   Input ~ 0
I2C1_SCL
Text GLabel 4650 5950 0    50   Input ~ 0
I2C1_SDA
Text GLabel 1350 4750 0    50   Input ~ 0
OSC_IN
Text GLabel 1350 4850 0    50   Input ~ 0
OSC_OUT
Text GLabel 3600 6900 0    50   Input ~ 0
OSC_IN
Text GLabel 3600 7300 0    50   Input ~ 0
OSC_OUT
Text GLabel 1350 4350 0    50   Input ~ 0
RESET
Text GLabel 3600 6200 3    50   Input ~ 0
BOOT0
Text GLabel 1350 4550 0    50   Input ~ 0
BOOT0
Text GLabel 1350 5650 0    50   Input ~ 0
BOOT1
Text GLabel 3050 4800 0    50   Input ~ 0
RESET
$Comp
L Device:C_Small C11
U 1 1 5FE9E07F
P 4300 6900
F 0 "C11" V 4071 6900 50  0000 C CNN
F 1 "20p" V 4162 6900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4300 6900 50  0001 C CNN
F 3 "~" H 4300 6900 50  0001 C CNN
	1    4300 6900
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5FE9F1F6
P 3750 7100
F 0 "R4" H 3550 7150 50  0000 L CNN
F 1 "1M" H 3550 7050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3750 7100 50  0001 C CNN
F 3 "~" H 3750 7100 50  0001 C CNN
	1    3750 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 6900 4400 7100
Wire Wire Line
	3600 7300 3750 7300
Wire Wire Line
	3750 7000 3750 6900
Wire Wire Line
	3750 6900 3600 6900
Wire Wire Line
	3750 7200 3750 7300
$Comp
L power:GND #PWR011
U 1 1 5FEA538E
P 4400 7100
F 0 "#PWR011" H 4400 6850 50  0001 C CNN
F 1 "GND" V 4405 6972 50  0000 R CNN
F 2 "" H 4400 7100 50  0001 C CNN
F 3 "" H 4400 7100 50  0001 C CNN
	1    4400 7100
	0    -1   -1   0   
$EndComp
Connection ~ 4400 7100
Wire Wire Line
	4400 7100 4400 7300
$Comp
L Device:C_Small C12
U 1 1 5FEA9230
P 4300 7300
F 0 "C12" V 4450 7300 50  0000 C CNN
F 1 "20p" V 4550 7300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4300 7300 50  0001 C CNN
F 3 "~" H 4300 7300 50  0001 C CNN
	1    4300 7300
	0    1    1    0   
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U1
U 1 1 5FEAA127
P 1800 1100
F 0 "U1" H 1800 1342 50  0000 C CNN
F 1 "AMS1117-3.3" H 1800 1251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1800 1300 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 1900 850 50  0001 C CNN
	1    1800 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5FEAEE27
P 2200 1200
F 0 "C6" H 2292 1246 50  0000 L CNN
F 1 "10uf" H 2292 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2200 1200 50  0001 C CNN
F 3 "~" H 2200 1200 50  0001 C CNN
	1    2200 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5FEAF7B6
P 1250 1200
F 0 "C3" H 1342 1246 50  0000 L CNN
F 1 "100nf" H 1342 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1250 1200 50  0001 C CNN
F 3 "~" H 1250 1200 50  0001 C CNN
	1    1250 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5FEB1A07
P 1000 1200
F 0 "C1" H 1092 1246 50  0000 L CNN
F 1 "10uf" H 1092 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1000 1200 50  0001 C CNN
F 3 "~" H 1000 1200 50  0001 C CNN
	1    1000 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1100 1000 1100
Wire Wire Line
	1250 1100 1500 1100
Wire Wire Line
	1250 1100 1000 1100
Connection ~ 1250 1100
Connection ~ 1000 1100
Wire Wire Line
	1800 1400 1250 1400
Wire Wire Line
	1000 1400 1000 1300
Wire Wire Line
	1250 1300 1250 1400
Connection ~ 1250 1400
Wire Wire Line
	1250 1400 1000 1400
$Comp
L Device:C_Small C8
U 1 1 5FEB586F
P 2500 1200
F 0 "C8" H 2592 1246 50  0000 L CNN
F 1 "100nf" H 2592 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2500 1200 50  0001 C CNN
F 3 "~" H 2500 1200 50  0001 C CNN
	1    2500 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1100 2200 1100
Wire Wire Line
	2500 1100 2200 1100
Connection ~ 2200 1100
Wire Wire Line
	1800 1400 2200 1400
Wire Wire Line
	2500 1400 2500 1300
Connection ~ 1800 1400
Wire Wire Line
	2200 1300 2200 1400
Connection ~ 2200 1400
Wire Wire Line
	2200 1400 2500 1400
$Comp
L power:GND #PWR04
U 1 1 5FEB9D02
P 1800 1400
F 0 "#PWR04" H 1800 1150 50  0001 C CNN
F 1 "GND" H 1805 1227 50  0000 C CNN
F 2 "" H 1800 1400 50  0001 C CNN
F 3 "" H 1800 1400 50  0001 C CNN
	1    1800 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 5FEBB175
P 2000 4000
F 0 "#PWR05" H 2000 3850 50  0001 C CNN
F 1 "+3.3V" H 2015 4173 50  0000 C CNN
F 2 "" H 2000 4000 50  0001 C CNN
F 3 "" H 2000 4000 50  0001 C CNN
	1    2000 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR02
U 1 1 5FEBC227
P 1000 2850
F 0 "#PWR02" H 1000 2700 50  0001 C CNN
F 1 "+3.3V" H 1015 3023 50  0000 C CNN
F 2 "" H 1000 2850 50  0001 C CNN
F 3 "" H 1000 2850 50  0001 C CNN
	1    1000 2850
	1    0    0    -1  
$EndComp
Connection ~ 1000 2850
$Comp
L power:+3.3V #PWR06
U 1 1 5FEBD82D
P 2800 1100
F 0 "#PWR06" H 2800 950 50  0001 C CNN
F 1 "+3.3V" H 2815 1273 50  0000 C CNN
F 2 "" H 2800 1100 50  0001 C CNN
F 3 "" H 2800 1100 50  0001 C CNN
	1    2800 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1100 2500 1100
Connection ~ 2500 1100
$Comp
L power:GND #PWR015
U 1 1 5FEC07EF
P 6600 1100
F 0 "#PWR015" H 6600 850 50  0001 C CNN
F 1 "GND" H 6605 927 50  0000 C CNN
F 2 "" H 6600 1100 50  0001 C CNN
F 3 "" H 6600 1100 50  0001 C CNN
	1    6600 1100
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR016
U 1 1 5FEBFA5A
P 6750 1250
F 0 "#PWR016" H 6750 1100 50  0001 C CNN
F 1 "+3.3V" H 6650 1400 50  0000 L CNN
F 2 "" H 6750 1250 50  0001 C CNN
F 3 "" H 6750 1250 50  0001 C CNN
	1    6750 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1350 6600 1350
Wire Wire Line
	6600 1350 6600 1100
$Comp
L Device:R_Small R3
U 1 1 5FEC4D70
P 3600 6000
F 0 "R3" H 3450 6050 50  0000 L CNN
F 1 "0" H 3450 5950 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3600 6000 50  0001 C CNN
F 3 "~" H 3600 6000 50  0001 C CNN
	1    3600 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5FEC5933
P 3600 5700
F 0 "#PWR09" H 3600 5450 50  0001 C CNN
F 1 "GND" H 3605 5527 50  0000 C CNN
F 2 "" H 3600 5700 50  0001 C CNN
F 3 "" H 3600 5700 50  0001 C CNN
	1    3600 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 5700 3600 5900
Wire Wire Line
	3600 6100 3600 6200
Wire Wire Line
	1850 4150 1950 4150
Wire Wire Line
	2250 4150 2150 4150
Wire Wire Line
	2150 4150 2050 4150
Connection ~ 2150 4150
Wire Wire Line
	1950 4150 2000 4150
Connection ~ 1950 4150
Connection ~ 2050 4150
Wire Wire Line
	2000 4000 2000 4150
Connection ~ 2000 4150
Wire Wire Line
	2000 4150 2050 4150
$Comp
L Device:R_Small R2
U 1 1 5FED77BE
P 3200 4550
F 0 "R2" H 3259 4596 50  0000 L CNN
F 1 "R_Small" H 3259 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3200 4550 50  0001 C CNN
F 3 "~" H 3200 4550 50  0001 C CNN
	1    3200 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 5FED80AD
P 3400 5000
F 0 "C10" V 3171 5000 50  0000 C CNN
F 1 "100nf" V 3262 5000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3400 5000 50  0001 C CNN
F 3 "~" H 3400 5000 50  0001 C CNN
	1    3400 5000
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 5FED9C04
P 3100 1300
F 0 "D1" V 3146 1230 50  0000 R CNN
F 1 "LED_Small" V 3055 1230 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3100 1300 50  0001 C CNN
F 3 "~" V 3100 1300 50  0001 C CNN
	1    3100 1300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5FEDEDD8
P 3000 1100
F 0 "R1" V 2804 1100 50  0000 C CNN
F 1 "330" V 2895 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3000 1100 50  0001 C CNN
F 3 "~" H 3000 1100 50  0001 C CNN
	1    3000 1100
	0    1    1    0   
$EndComp
Connection ~ 2800 1100
Wire Wire Line
	2900 1100 2800 1100
Wire Wire Line
	3100 1100 3100 1200
Wire Wire Line
	3100 1400 2500 1400
Connection ~ 2500 1400
$Comp
L Switch:SW_Push SW1
U 1 1 5FEE5EEE
P 3400 4800
F 0 "SW1" H 3400 5085 50  0000 C CNN
F 1 "Reset" H 3400 4994 50  0000 C CNN
F 2 "digikey:Switch_Tactile_THT_6x6mm" H 3400 5000 50  0001 C CNN
F 3 "~" H 3400 5000 50  0001 C CNN
	1    3400 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4650 3200 4800
Wire Wire Line
	3200 4800 3050 4800
Connection ~ 3200 4800
Wire Wire Line
	3600 4800 3600 5000
Wire Wire Line
	3200 4800 3200 5000
$Comp
L power:GND #PWR08
U 1 1 5FED8C7F
P 3600 5100
F 0 "#PWR08" H 3600 4850 50  0001 C CNN
F 1 "GND" H 3605 4927 50  0000 C CNN
F 2 "" H 3600 5100 50  0001 C CNN
F 3 "" H 3600 5100 50  0001 C CNN
	1    3600 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5000 3500 5000
Wire Wire Line
	3300 5000 3200 5000
Wire Wire Line
	3600 5000 3600 5100
Connection ~ 3600 5000
$Comp
L power:+3.3V #PWR07
U 1 1 5FEF56B2
P 3200 4300
F 0 "#PWR07" H 3200 4150 50  0001 C CNN
F 1 "+3.3V" H 3215 4473 50  0000 C CNN
F 2 "" H 3200 4300 50  0001 C CNN
F 3 "" H 3200 4300 50  0001 C CNN
	1    3200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4300 3200 4450
Connection ~ 3750 7300
Connection ~ 3750 6900
Wire Wire Line
	3900 6100 3900 6200
Wire Wire Line
	3900 5700 3900 5900
$Comp
L power:GND #PWR010
U 1 1 5FEC60C6
P 3900 5700
F 0 "#PWR010" H 3900 5450 50  0001 C CNN
F 1 "GND" H 3905 5527 50  0000 C CNN
F 2 "" H 3900 5700 50  0001 C CNN
F 3 "" H 3900 5700 50  0001 C CNN
	1    3900 5700
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5FEC56C0
P 3900 6000
F 0 "R5" H 3959 6046 50  0000 L CNN
F 1 "0" H 3959 5955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3900 6000 50  0001 C CNN
F 3 "~" H 3900 6000 50  0001 C CNN
	1    3900 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 7300 4200 7300
Connection ~ 4000 7300
Wire Wire Line
	4000 7250 4000 7300
Wire Wire Line
	4000 6900 4200 6900
Connection ~ 4000 6900
Wire Wire Line
	4000 6900 4000 6950
Wire Wire Line
	3750 7300 4000 7300
Wire Wire Line
	3750 6900 4000 6900
$Comp
L Device:Crystal Y1
U 1 1 5FE9C475
P 4000 7100
F 0 "Y1" V 4150 7050 50  0000 R CNN
F 1 "Crystal" V 4050 7000 50  0000 R CNN
F 2 "Crystal:Crystal_SMD_HC49-SD_HandSoldering" H 4000 7100 50  0001 C CNN
F 3 "~" H 4000 7100 50  0001 C CNN
	1    4000 7100
	0    -1   -1   0   
$EndComp
Text GLabel 3900 6200 3    50   Input ~ 0
BOOT1
$Comp
L Timer_RTC:DS3231MZ U3
U 1 1 5FE096DF
P 5150 6050
F 0 "U3" H 4850 6050 50  0000 C CNN
F 1 "DS3231MZ" H 5150 6050 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5150 5550 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS3231M.pdf" H 5150 5450 50  0001 C CNN
	1    5150 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FE0C8E2
P 5150 6450
F 0 "#PWR0101" H 5150 6200 50  0001 C CNN
F 1 "GND" H 5155 6277 50  0000 C CNN
F 2 "" H 5150 6450 50  0001 C CNN
F 3 "" H 5150 6450 50  0001 C CNN
	1    5150 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 5FE0DB72
P 5150 5650
F 0 "#PWR0102" H 5150 5500 50  0001 C CNN
F 1 "+3.3V" H 5165 5823 50  0000 C CNN
F 2 "" H 5150 5650 50  0001 C CNN
F 3 "" H 5150 5650 50  0001 C CNN
	1    5150 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5FE0F333
P 4850 5500
F 0 "BT1" V 4595 5550 50  0000 C CNN
F 1 "Battery_Cell" V 4686 5550 50  0000 C CNN
F 2 "Kaka:BAT-SMD_CR1220-2" V 4850 5560 50  0001 C CNN
F 3 "~" V 4850 5560 50  0001 C CNN
	1    4850 5500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FE1237B
P 4750 5500
F 0 "#PWR0103" H 4750 5250 50  0001 C CNN
F 1 "GND" H 4755 5327 50  0000 C CNN
F 2 "" H 4750 5500 50  0001 C CNN
F 3 "" H 4750 5500 50  0001 C CNN
	1    4750 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 5500 5050 5650
$Comp
L Kaka:TYPE-C-31-M-12 U4
U 1 1 5FE2506B
P 9100 1750
F 0 "U4" H 9100 2431 50  0000 C CNN
F 1 "TYPE-C-31-M-12" H 9100 2340 50  0000 C CNN
F 2 "Kaka:USB-C_SMD-TYPE-C-31-M-12" H 9100 2450 50  0001 C CNN
F 3 "" H 9100 2450 50  0001 C CNN
	1    9100 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5FE28D04
P 9600 1450
F 0 "#PWR0104" H 9600 1200 50  0001 C CNN
F 1 "GND" H 9605 1277 50  0000 C CNN
F 2 "" H 9600 1450 50  0001 C CNN
F 3 "" H 9600 1450 50  0001 C CNN
	1    9600 1450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5FE298C3
P 8600 1450
F 0 "#PWR0105" H 8600 1200 50  0001 C CNN
F 1 "GND" H 8605 1277 50  0000 C CNN
F 2 "" H 8600 1450 50  0001 C CNN
F 3 "" H 8600 1450 50  0001 C CNN
	1    8600 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	8750 1450 8600 1450
Wire Wire Line
	9600 1450 9450 1450
$Comp
L power:GND #PWR0108
U 1 1 5FE3BA96
P 8600 2200
F 0 "#PWR0108" H 8600 1950 50  0001 C CNN
F 1 "GND" H 8605 2027 50  0000 C CNN
F 2 "" H 8600 2200 50  0001 C CNN
F 3 "" H 8600 2200 50  0001 C CNN
	1    8600 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5FE3CA48
P 9600 2250
F 0 "#PWR0109" H 9600 2000 50  0001 C CNN
F 1 "GND" H 9605 2077 50  0000 C CNN
F 2 "" H 9600 2250 50  0001 C CNN
F 3 "" H 9600 2250 50  0001 C CNN
	1    9600 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5FE3D28F
P 9100 2400
F 0 "#PWR0110" H 9100 2150 50  0001 C CNN
F 1 "GND" H 9105 2227 50  0000 C CNN
F 2 "" H 9100 2400 50  0001 C CNN
F 3 "" H 9100 2400 50  0001 C CNN
	1    9100 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5FE3DAF6
P 9100 1200
F 0 "#PWR0111" H 9100 950 50  0001 C CNN
F 1 "GND" H 9105 1027 50  0000 C CNN
F 2 "" H 9100 1200 50  0001 C CNN
F 3 "" H 9100 1200 50  0001 C CNN
	1    9100 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 1200 9100 1250
Wire Wire Line
	9100 1250 9050 1250
Wire Wire Line
	9100 1250 9150 1250
Connection ~ 9100 1250
Wire Wire Line
	9150 2350 9100 2350
Wire Wire Line
	9100 2400 9100 2350
Connection ~ 9100 2350
Wire Wire Line
	9100 2350 9050 2350
Wire Wire Line
	9450 2150 9600 2150
Wire Wire Line
	9600 2150 9600 2250
Wire Wire Line
	8750 2150 8600 2150
Wire Wire Line
	8600 2150 8600 2200
$Comp
L power:VCC #PWR0112
U 1 1 5FE53036
P 9600 1550
F 0 "#PWR0112" H 9600 1400 50  0001 C CNN
F 1 "VCC" H 9617 1723 50  0000 C CNN
F 2 "" H 9600 1550 50  0001 C CNN
F 3 "" H 9600 1550 50  0001 C CNN
	1    9600 1550
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0113
U 1 1 5FE53BD1
P 8600 1550
F 0 "#PWR0113" H 8600 1400 50  0001 C CNN
F 1 "VCC" H 8617 1723 50  0000 C CNN
F 2 "" H 8600 1550 50  0001 C CNN
F 3 "" H 8600 1550 50  0001 C CNN
	1    8600 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8750 1550 8600 1550
Wire Wire Line
	9450 1550 9600 1550
$Comp
L Device:R_Small R7
U 1 1 5FE59337
P 9650 1950
F 0 "R7" H 9709 1996 50  0000 L CNN
F 1 "10K" H 9709 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 9650 1950 50  0001 C CNN
F 3 "~" H 9650 1950 50  0001 C CNN
	1    9650 1950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5FE5A3D3
P 9850 1950
F 0 "#PWR0114" H 9850 1700 50  0001 C CNN
F 1 "GND" H 9855 1777 50  0000 C CNN
F 2 "" H 9850 1950 50  0001 C CNN
F 3 "" H 9850 1950 50  0001 C CNN
	1    9850 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5FE5AD67
P 8550 1650
F 0 "R6" H 8609 1696 50  0000 L CNN
F 1 "10K" H 8609 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8550 1650 50  0001 C CNN
F 3 "~" H 8550 1650 50  0001 C CNN
	1    8550 1650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5FE5BD7D
P 8250 1650
F 0 "#PWR0115" H 8250 1400 50  0001 C CNN
F 1 "GND" H 8255 1477 50  0000 C CNN
F 2 "" H 8250 1650 50  0001 C CNN
F 3 "" H 8250 1650 50  0001 C CNN
	1    8250 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 1650 8450 1650
Wire Wire Line
	8650 1650 8750 1650
Wire Wire Line
	9450 1950 9550 1950
Wire Wire Line
	9750 1950 9850 1950
Text GLabel 10100 1750 2    50   Input ~ 0
USB_DM
Text GLabel 10100 1850 2    50   Input ~ 0
USB_DP
Wire Wire Line
	7950 1750 8750 1750
Wire Wire Line
	7950 1850 8750 1850
Wire Wire Line
	9450 1750 10100 1750
Wire Wire Line
	10100 1850 9450 1850
Wire Wire Line
	8750 2050 8600 2050
$Comp
L power:VCC #PWR0106
U 1 1 5FE29DBD
P 8600 2050
F 0 "#PWR0106" H 8600 1900 50  0001 C CNN
F 1 "VCC" H 8617 2223 50  0000 C CNN
F 2 "" H 8600 2050 50  0001 C CNN
F 3 "" H 8600 2050 50  0001 C CNN
	1    8600 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9450 2050 9600 2050
$Comp
L power:VCC #PWR0107
U 1 1 5FE2C008
P 9600 2050
F 0 "#PWR0107" H 9600 1900 50  0001 C CNN
F 1 "VCC" H 9617 2223 50  0000 C CNN
F 2 "" H 9600 2050 50  0001 C CNN
F 3 "" H 9600 2050 50  0001 C CNN
	1    9600 2050
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C13
U 1 1 5FF01274
P 2850 3000
F 0 "C13" H 2942 3046 50  0000 L CNN
F 1 "100nf" H 2942 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2850 3000 50  0001 C CNN
F 3 "~" H 2850 3000 50  0001 C CNN
	1    2850 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2850 2850 2850
Wire Wire Line
	2850 2850 2850 2900
Connection ~ 2600 2850
Wire Wire Line
	2600 3150 2850 3150
Wire Wire Line
	2850 3150 2850 3100
Connection ~ 2600 3150
$EndSCHEMATC
