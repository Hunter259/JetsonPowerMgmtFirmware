EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title "Jetson 2.0 Slave 3 Power Management Module"
Date ""
Rev "1.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L pspice:CAP INAFilterCap?
U 1 1 5E08A52A
P 1550 3450
AR Path="/5E08A52A" Ref="INAFilterCap?"  Part="1" 
AR Path="/5DF4EB32/5E08A52A" Ref="INAFilterCap?"  Part="1" 
AR Path="/5DF5EE34/5E08A52A" Ref="INAFilterCap?"  Part="1" 
AR Path="/5DF5DF47/5E08A52A" Ref="INAFilterCap?"  Part="1" 
AR Path="/5DF5E95B/5E08A52A" Ref="C12"  Part="1" 
F 0 "C12" H 1728 3496 50  0000 L CNN
F 1 "0.1uF" H 1728 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1550 3450 50  0001 C CNN
F 3 "~" H 1550 3450 50  0001 C CNN
	1    1550 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E08A530
P 1100 3700
AR Path="/5E08A530" Ref="#PWR?"  Part="1" 
AR Path="/5DF5EE34/5E08A530" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E08A530" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E08A530" Ref="#PWR?"  Part="1" 
AR Path="/5DF5E95B/5E08A530" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 1100 3450 50  0001 C CNN
F 1 "GND" V 1105 3572 50  0000 R CNN
F 2 "" H 1100 3700 50  0001 C CNN
F 3 "" H 1100 3700 50  0001 C CNN
	1    1100 3700
	0    1    -1   0   
$EndComp
Wire Wire Line
	1100 3200 1550 3200
Wire Wire Line
	1100 3700 1550 3700
$Comp
L power:VCC #PWR?
U 1 1 5E08A555
P 1100 3200
AR Path="/5DF5EE34/5E08A555" Ref="#PWR?"  Part="1" 
AR Path="/5E08A555" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E08A555" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E08A555" Ref="#PWR?"  Part="1" 
AR Path="/5DF5E95B/5E08A555" Ref="#PWR0137"  Part="1" 
F 0 "#PWR0137" H 1100 3050 50  0001 C CNN
F 1 "VCC" V 1117 3327 50  0000 L CNN
F 2 "" H 1100 3200 50  0001 C CNN
F 3 "" H 1100 3200 50  0001 C CNN
	1    1100 3200
	0    -1   1    0   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5E08A57A
P 4050 1100
AR Path="/5E08A57A" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E08A57A" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E08A57A" Ref="#PWR?"  Part="1" 
AR Path="/5DF5E95B/5E08A57A" Ref="#PWR0138"  Part="1" 
F 0 "#PWR0138" H 4050 950 50  0001 C CNN
F 1 "VDD" H 4067 1273 50  0000 C CNN
F 2 "" H 4050 1100 50  0001 C CNN
F 3 "" H 4050 1100 50  0001 C CNN
	1    4050 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1200 4050 1100
$Comp
L power:GND #PWR?
U 1 1 5E08A581
P 2250 1600
AR Path="/5E08A581" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E08A581" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E08A581" Ref="#PWR?"  Part="1" 
AR Path="/5DF5E95B/5E08A581" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0139" H 2250 1350 50  0001 C CNN
F 1 "GND" H 2255 1427 50  0000 C CNN
F 2 "" H 2250 1600 50  0001 C CNN
F 3 "" H 2250 1600 50  0001 C CNN
	1    2250 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1600 2350 1600
$Comp
L power:GND #PWR?
U 1 1 5E08A588
P 5250 2350
AR Path="/5E08A588" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E08A588" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E08A588" Ref="#PWR?"  Part="1" 
AR Path="/5DF5E95B/5E08A588" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0140" H 5250 2100 50  0001 C CNN
F 1 "GND" H 5255 2177 50  0000 C CNN
F 2 "" H 5250 2350 50  0001 C CNN
F 3 "" H 5250 2350 50  0001 C CNN
	1    5250 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1550 5650 1450
$Comp
L power:VDD #PWR?
U 1 1 5E08A58F
P 3100 950
AR Path="/5E08A58F" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E08A58F" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E08A58F" Ref="#PWR?"  Part="1" 
AR Path="/5DF5E95B/5E08A58F" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 3100 800 50  0001 C CNN
F 1 "VDD" H 3117 1123 50  0000 C CNN
F 2 "" H 3100 950 50  0001 C CNN
F 3 "" H 3100 950 50  0001 C CNN
	1    3100 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E08A5A3
P 2950 1600
AR Path="/5E08A5A3" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E08A5A3" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E08A5A3" Ref="#PWR?"  Part="1" 
AR Path="/5DF5E95B/5E08A5A3" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0143" H 2950 1350 50  0001 C CNN
F 1 "GND" H 2955 1427 50  0000 C CNN
F 2 "" H 2950 1600 50  0001 C CNN
F 3 "" H 2950 1600 50  0001 C CNN
	1    2950 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R OptoResis?
U 1 1 5E08A5A9
P 2100 1400
AR Path="/5E08A5A9" Ref="OptoResis?"  Part="1" 
AR Path="/5DF4EB32/5E08A5A9" Ref="OptoResis?"  Part="1" 
AR Path="/5DF5DF47/5E08A5A9" Ref="OptoResis?"  Part="1" 
AR Path="/5DF5E95B/5E08A5A9" Ref="R13"  Part="1" 
F 0 "R13" V 1893 1400 50  0000 C CNN
F 1 "1200" V 1984 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2030 1400 50  0001 C CNN
F 3 "~" H 2100 1400 50  0001 C CNN
	1    2100 1400
	0    1    1    0   
$EndComp
$Comp
L Analog_ADC:INA219AxD CurrentSense?
U 1 1 5E08A5B6
P 5250 1950
AR Path="/5E08A5B6" Ref="CurrentSense?"  Part="1" 
AR Path="/5DF4EB32/5E08A5B6" Ref="CurrentSense?"  Part="1" 
AR Path="/5DF5DF47/5E08A5B6" Ref="CurrentSense?"  Part="1" 
AR Path="/5DF5E95B/5E08A5B6" Ref="CS4"  Part="1" 
F 0 "CS4" H 5250 2531 50  0000 C CNN
F 1 "INA219AxD" H 5250 2440 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6050 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina219.pdf" H 5600 1850 50  0001 C CNN
	1    5250 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1850 4850 1800
Wire Wire Line
	4850 2050 4850 2100
Wire Wire Line
	4050 2850 4050 2100
$Comp
L Device:R GatePullUpResistor?
U 1 1 5E08A5C1
P 3100 1100
AR Path="/5E08A5C1" Ref="GatePullUpResistor?"  Part="1" 
AR Path="/5DF4EB32/5E08A5C1" Ref="GatePullUpResistor?"  Part="1" 
AR Path="/5DF5DF47/5E08A5C1" Ref="GatePullUpResistor?"  Part="1" 
AR Path="/5DF5E95B/5E08A5C1" Ref="R14"  Part="1" 
F 0 "R14" H 3170 1146 50  0000 L CNN
F 1 "6.8k" H 3170 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3030 1100 50  0001 C CNN
F 3 "~" H 3100 1100 50  0001 C CNN
	1    3100 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1400 3100 1400
Wire Wire Line
	3100 1250 3100 1400
$Comp
L power:VCC #PWR?
U 1 1 5E08A5CB
P 5650 1450
AR Path="/5E08A5CB" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E08A5CB" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E08A5CB" Ref="#PWR?"  Part="1" 
AR Path="/5DF5E95B/5E08A5CB" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0144" H 5650 1300 50  0001 C CNN
F 1 "VCC" H 5550 1600 50  0000 L CNN
F 2 "" H 5650 1450 50  0001 C CNN
F 3 "" H 5650 1450 50  0001 C CNN
	1    5650 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1850 5800 1850
Wire Wire Line
	1950 1400 1800 1400
Wire Wire Line
	2250 1400 2350 1400
$Comp
L Isolator:LTV-817 OptoIsolator?
U 1 1 5E08A5D5
P 2650 1500
AR Path="/5E08A5D5" Ref="OptoIsolator?"  Part="1" 
AR Path="/5DF4EB32/5E08A5D5" Ref="OptoIsolator?"  Part="1" 
AR Path="/5DF5DF47/5E08A5D5" Ref="OptoIsolator?"  Part="1" 
AR Path="/5DF5E95B/5E08A5D5" Ref="OI4"  Part="1" 
F 0 "OI4" H 2650 1825 50  0000 C CNN
F 1 "LTV-817" H 2650 1734 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 2450 1300 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 2650 1400 50  0001 L CNN
	1    2650 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2100 4850 2100
Connection ~ 3100 1400
Wire Wire Line
	3100 1400 3750 1400
Wire Wire Line
	5250 1550 5650 1550
$Comp
L power:GND #PWR?
U 1 1 5E08CB8E
P 6150 2150
AR Path="/5E08CB8E" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E08CB8E" Ref="#PWR?"  Part="1" 
AR Path="/5DF5E95B/5E08CB8E" Ref="#PWR0145"  Part="1" 
F 0 "#PWR0145" H 6150 1900 50  0001 C CNN
F 1 "GND" H 6155 1977 50  0000 C CNN
F 2 "" H 6150 2150 50  0001 C CNN
F 3 "" H 6150 2150 50  0001 C CNN
	1    6150 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2050 6150 2150
Wire Wire Line
	5650 2150 5850 2150
Wire Wire Line
	5650 2050 6150 2050
$Comp
L power:GND #PWR?
U 1 1 5E24C7A5
P 6350 1650
AR Path="/5E24C7A5" Ref="#PWR?"  Part="1" 
AR Path="/5DF5E95B/5E24C7A5" Ref="#PWR0158"  Part="1" 
F 0 "#PWR0158" H 6350 1400 50  0001 C CNN
F 1 "GND" H 6355 1477 50  0000 C CNN
F 2 "" H 6350 1650 50  0001 C CNN
F 3 "" H 6350 1650 50  0001 C CNN
	1    6350 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 ComputeModulePowerOutput?
U 1 1 5E24C7AB
P 6500 1250
AR Path="/5E24C7AB" Ref="ComputeModulePowerOutput?"  Part="1" 
AR Path="/5DF5E95B/5E24C7AB" Ref="CMPO4"  Part="1" 
F 0 "CMPO4" V 6464 1330 50  0000 L CNN
F 1 "Screw_Terminal_01x02" V 6373 1330 50  0000 L CNN
F 2 "Needed Models:TerminalBlock_OnShoreTech_EDSTLZ1555-2_1x02_P3.81mm_Horizontal" H 6500 1250 50  0001 C CNN
F 3 "https://www.on-shore.com/wp-content/uploads/OSTOQXX3250.pdf" H 6500 1250 50  0001 C CNN
	1    6500 1250
	0    1    -1   0   
$EndComp
Wire Wire Line
	6350 1650 6350 1450
Wire Wire Line
	6350 1450 6400 1450
Wire Wire Line
	6550 1450 6500 1450
Wire Wire Line
	6550 1450 6550 2850
$Comp
L Device:R CurrentSenseShunt?
U 1 1 5E25CCAD
P 4050 1950
AR Path="/5E25CCAD" Ref="CurrentSenseShunt?"  Part="1" 
AR Path="/5DF5E95B/5E25CCAD" Ref="R15"  Part="1" 
F 0 "R15" H 4120 1996 50  0000 L CNN
F 1 "0.005" H 4120 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3980 1950 50  0001 C CNN
F 3 "~" H 4050 1950 50  0001 C CNN
	1    4050 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 1600 4050 1800
Wire Wire Line
	4050 1800 4850 1800
$Comp
L Transistor_FET:IRF9540N PFET?
U 1 1 5E25CCB6
P 3950 1400
AR Path="/5E25CCB6" Ref="PFET?"  Part="1" 
AR Path="/5DF5E95B/5E25CCB6" Ref="PFET4"  Part="1" 
F 0 "PFET4" H 4154 1354 50  0000 L CNN
F 1 "SUP70101EL-GE3" H 4154 1445 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 4150 1325 50  0001 L CIN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/group3/8e/46/ef/8c/50/3b/4b/6a/DM00101433/files/DM00101433.pdf/jcr:content/translations/en.DM00101433.pdf" H 3950 1400 50  0001 L CNN
	1    3950 1400
	1    0    0    1   
$EndComp
Text GLabel 1800 1400 0    50   Input ~ 0
Slave3PWRCTL
Text GLabel 5850 2150 2    50   Input ~ 0
SCL
Text GLabel 6100 1750 2    50   Input ~ 0
SDA
Text GLabel 5800 1850 2    50   Input ~ 0
SCL
Wire Wire Line
	5650 1750 6100 1750
Connection ~ 4050 2100
Connection ~ 4050 1800
$Comp
L Device:CP1 C?
U 1 1 5E4B336C
P 6050 3100
AR Path="/5E4B336C" Ref="C?"  Part="1" 
AR Path="/5DF5EE34/5E4B336C" Ref="C?"  Part="1" 
AR Path="/5DF5E95B/5E4B336C" Ref="C11"  Part="1" 
F 0 "C11" H 6228 3146 50  0000 L CNN
F 1 "1000uF" H 6228 3055 50  0000 L CNN
F 2 "EMZS250ARA102MJA0G:CAPAE1030X1050N" H 6050 3100 50  0001 C CNN
F 3 "~" H 6050 3100 50  0001 C CNN
	1    6050 3100
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C?
U 1 1 5E4B3372
P 4550 3150
AR Path="/5E4B3372" Ref="C?"  Part="1" 
AR Path="/5DF5EE34/5E4B3372" Ref="C?"  Part="1" 
AR Path="/5DF5E95B/5E4B3372" Ref="C10"  Part="1" 
F 0 "C10" H 4728 3196 50  0000 L CNN
F 1 "0.1uF" H 4728 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4550 3150 50  0001 C CNN
F 3 "~" H 4550 3150 50  0001 C CNN
	1    4550 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2950 6050 2850
Connection ~ 6050 2850
Wire Wire Line
	4550 2900 4550 2850
Connection ~ 4550 2850
Wire Wire Line
	4550 2850 6050 2850
$Comp
L power:GND #PWR?
U 1 1 5E4B337F
P 4550 3400
AR Path="/5E4B337F" Ref="#PWR?"  Part="1" 
AR Path="/5DF5EE34/5E4B337F" Ref="#PWR?"  Part="1" 
AR Path="/5DF5E95B/5E4B337F" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 4550 3150 50  0001 C CNN
F 1 "GND" V 4555 3272 50  0000 R CNN
F 2 "" H 4550 3400 50  0001 C CNN
F 3 "" H 4550 3400 50  0001 C CNN
	1    4550 3400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E4B3385
P 6050 3250
AR Path="/5E4B3385" Ref="#PWR?"  Part="1" 
AR Path="/5DF5EE34/5E4B3385" Ref="#PWR?"  Part="1" 
AR Path="/5DF5E95B/5E4B3385" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0136" H 6050 3000 50  0001 C CNN
F 1 "GND" V 6055 3122 50  0000 R CNN
F 2 "" H 6050 3250 50  0001 C CNN
F 3 "" H 6050 3250 50  0001 C CNN
	1    6050 3250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4050 2850 4550 2850
Wire Wire Line
	6050 2850 6550 2850
$EndSCHEMATC
