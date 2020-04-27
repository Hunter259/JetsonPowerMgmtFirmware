EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title "Jetson 2.0 Slave 4 Power Management Module"
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
U 1 1 5E0B1DC1
P 1600 4300
AR Path="/5E0B1DC1" Ref="INAFilterCap?"  Part="1" 
AR Path="/5DF4EB32/5E0B1DC1" Ref="INAFilterCap?"  Part="1" 
AR Path="/5DF5EE34/5E0B1DC1" Ref="C15"  Part="1" 
AR Path="/5DF5DF47/5E0B1DC1" Ref="INAFilterCap?"  Part="1" 
AR Path="/5DF5E95B/5E0B1DC1" Ref="INAFilterCap?"  Part="1" 
F 0 "C15" H 1778 4346 50  0000 L CNN
F 1 "0.1uF" H 1778 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1600 4300 50  0001 C CNN
F 3 "~" H 1600 4300 50  0001 C CNN
	1    1600 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E0B1DC7
P 1150 4550
AR Path="/5E0B1DC7" Ref="#PWR?"  Part="1" 
AR Path="/5DF5EE34/5E0B1DC7" Ref="#PWR0146"  Part="1" 
AR Path="/5DF4EB32/5E0B1DC7" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E0B1DC7" Ref="#PWR?"  Part="1" 
AR Path="/5DF5E95B/5E0B1DC7" Ref="#PWR?"  Part="1" 
F 0 "#PWR0146" H 1150 4300 50  0001 C CNN
F 1 "GND" V 1155 4422 50  0000 R CNN
F 2 "" H 1150 4550 50  0001 C CNN
F 3 "" H 1150 4550 50  0001 C CNN
	1    1150 4550
	0    1    -1   0   
$EndComp
Wire Wire Line
	1150 4050 1600 4050
Wire Wire Line
	1150 4550 1600 4550
$Comp
L power:VCC #PWR0149
U 1 1 5E0B1DEC
P 1150 4050
AR Path="/5DF5EE34/5E0B1DEC" Ref="#PWR0149"  Part="1" 
AR Path="/5E0B1DEC" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E0B1DEC" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E0B1DEC" Ref="#PWR?"  Part="1" 
AR Path="/5DF5E95B/5E0B1DEC" Ref="#PWR?"  Part="1" 
F 0 "#PWR0149" H 1150 3900 50  0001 C CNN
F 1 "VCC" V 1167 4177 50  0000 L CNN
F 2 "" H 1150 4050 50  0001 C CNN
F 3 "" H 1150 4050 50  0001 C CNN
	1    1150 4050
	0    -1   1    0   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5E0B1E11
P 4150 1050
AR Path="/5E0B1E11" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E0B1E11" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E0B1E11" Ref="#PWR?"  Part="1" 
AR Path="/5DF5E95B/5E0B1E11" Ref="#PWR?"  Part="1" 
AR Path="/5DF5EE34/5E0B1E11" Ref="#PWR0150"  Part="1" 
F 0 "#PWR0150" H 4150 900 50  0001 C CNN
F 1 "VDD" H 4167 1223 50  0000 C CNN
F 2 "" H 4150 1050 50  0001 C CNN
F 3 "" H 4150 1050 50  0001 C CNN
	1    4150 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1150 4150 1050
$Comp
L power:GND #PWR?
U 1 1 5E0B1E18
P 2350 1550
AR Path="/5E0B1E18" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E0B1E18" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E0B1E18" Ref="#PWR?"  Part="1" 
AR Path="/5DF5E95B/5E0B1E18" Ref="#PWR?"  Part="1" 
AR Path="/5DF5EE34/5E0B1E18" Ref="#PWR0151"  Part="1" 
F 0 "#PWR0151" H 2350 1300 50  0001 C CNN
F 1 "GND" H 2355 1377 50  0000 C CNN
F 2 "" H 2350 1550 50  0001 C CNN
F 3 "" H 2350 1550 50  0001 C CNN
	1    2350 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1550 2450 1550
$Comp
L power:GND #PWR?
U 1 1 5E0B1E1F
P 5350 2300
AR Path="/5E0B1E1F" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E0B1E1F" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E0B1E1F" Ref="#PWR?"  Part="1" 
AR Path="/5DF5E95B/5E0B1E1F" Ref="#PWR?"  Part="1" 
AR Path="/5DF5EE34/5E0B1E1F" Ref="#PWR0152"  Part="1" 
F 0 "#PWR0152" H 5350 2050 50  0001 C CNN
F 1 "GND" H 5355 2127 50  0000 C CNN
F 2 "" H 5350 2300 50  0001 C CNN
F 3 "" H 5350 2300 50  0001 C CNN
	1    5350 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1500 5750 1400
$Comp
L power:VDD #PWR?
U 1 1 5E0B1E26
P 3200 900
AR Path="/5E0B1E26" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E0B1E26" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E0B1E26" Ref="#PWR?"  Part="1" 
AR Path="/5DF5E95B/5E0B1E26" Ref="#PWR?"  Part="1" 
AR Path="/5DF5EE34/5E0B1E26" Ref="#PWR0153"  Part="1" 
F 0 "#PWR0153" H 3200 750 50  0001 C CNN
F 1 "VDD" H 3217 1073 50  0000 C CNN
F 2 "" H 3200 900 50  0001 C CNN
F 3 "" H 3200 900 50  0001 C CNN
	1    3200 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E0B1E3A
P 3050 1550
AR Path="/5E0B1E3A" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E0B1E3A" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E0B1E3A" Ref="#PWR?"  Part="1" 
AR Path="/5DF5E95B/5E0B1E3A" Ref="#PWR?"  Part="1" 
AR Path="/5DF5EE34/5E0B1E3A" Ref="#PWR0155"  Part="1" 
F 0 "#PWR0155" H 3050 1300 50  0001 C CNN
F 1 "GND" H 3055 1377 50  0000 C CNN
F 2 "" H 3050 1550 50  0001 C CNN
F 3 "" H 3050 1550 50  0001 C CNN
	1    3050 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R OptoResis?
U 1 1 5E0B1E40
P 2200 1350
AR Path="/5E0B1E40" Ref="OptoResis?"  Part="1" 
AR Path="/5DF4EB32/5E0B1E40" Ref="OptoResis?"  Part="1" 
AR Path="/5DF5DF47/5E0B1E40" Ref="OptoResis?"  Part="1" 
AR Path="/5DF5E95B/5E0B1E40" Ref="OptoResis?"  Part="1" 
AR Path="/5DF5EE34/5E0B1E40" Ref="R17"  Part="1" 
F 0 "R17" V 1993 1350 50  0000 C CNN
F 1 "1200" V 2084 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2130 1350 50  0001 C CNN
F 3 "~" H 2200 1350 50  0001 C CNN
	1    2200 1350
	0    1    1    0   
$EndComp
$Comp
L Analog_ADC:INA219AxD CurrentSense?
U 1 1 5E0B1E4D
P 5350 1900
AR Path="/5E0B1E4D" Ref="CurrentSense?"  Part="1" 
AR Path="/5DF4EB32/5E0B1E4D" Ref="CurrentSense?"  Part="1" 
AR Path="/5DF5DF47/5E0B1E4D" Ref="CurrentSense?"  Part="1" 
AR Path="/5DF5E95B/5E0B1E4D" Ref="CurrentSense?"  Part="1" 
AR Path="/5DF5EE34/5E0B1E4D" Ref="CS5"  Part="1" 
F 0 "CS5" H 5350 2481 50  0000 C CNN
F 1 "INA219AxD" H 5350 2390 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6150 1550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina219.pdf" H 5700 1800 50  0001 C CNN
	1    5350 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1800 4950 1750
Wire Wire Line
	4950 2000 4950 2050
Wire Wire Line
	4150 2800 4150 2050
$Comp
L Device:R GatePullUpResistor?
U 1 1 5E0B1E58
P 3200 1050
AR Path="/5E0B1E58" Ref="GatePullUpResistor?"  Part="1" 
AR Path="/5DF4EB32/5E0B1E58" Ref="GatePullUpResistor?"  Part="1" 
AR Path="/5DF5DF47/5E0B1E58" Ref="GatePullUpResistor?"  Part="1" 
AR Path="/5DF5E95B/5E0B1E58" Ref="GatePullUpResistor?"  Part="1" 
AR Path="/5DF5EE34/5E0B1E58" Ref="R18"  Part="1" 
F 0 "R18" H 3270 1096 50  0000 L CNN
F 1 "6.8k" H 3270 1005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3130 1050 50  0001 C CNN
F 3 "~" H 3200 1050 50  0001 C CNN
	1    3200 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1350 3200 1350
Wire Wire Line
	3200 1200 3200 1350
$Comp
L power:VCC #PWR?
U 1 1 5E0B1E62
P 5750 1400
AR Path="/5E0B1E62" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E0B1E62" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E0B1E62" Ref="#PWR?"  Part="1" 
AR Path="/5DF5E95B/5E0B1E62" Ref="#PWR?"  Part="1" 
AR Path="/5DF5EE34/5E0B1E62" Ref="#PWR0156"  Part="1" 
F 0 "#PWR0156" H 5750 1250 50  0001 C CNN
F 1 "VCC" H 5650 1550 50  0000 L CNN
F 2 "" H 5750 1400 50  0001 C CNN
F 3 "" H 5750 1400 50  0001 C CNN
	1    5750 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1800 5900 1800
Wire Wire Line
	2050 1350 1900 1350
Wire Wire Line
	2350 1350 2450 1350
$Comp
L Isolator:LTV-817 OptoIsolator?
U 1 1 5E0B1E6C
P 2750 1450
AR Path="/5E0B1E6C" Ref="OptoIsolator?"  Part="1" 
AR Path="/5DF4EB32/5E0B1E6C" Ref="OptoIsolator?"  Part="1" 
AR Path="/5DF5DF47/5E0B1E6C" Ref="OptoIsolator?"  Part="1" 
AR Path="/5DF5E95B/5E0B1E6C" Ref="OptoIsolator?"  Part="1" 
AR Path="/5DF5EE34/5E0B1E6C" Ref="OI5"  Part="1" 
F 0 "OI5" H 2750 1775 50  0000 C CNN
F 1 "LTV-817" H 2750 1684 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 2550 1250 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 2750 1350 50  0001 L CNN
	1    2750 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2050 4950 2050
Connection ~ 3200 1350
Wire Wire Line
	3200 1350 3850 1350
Wire Wire Line
	5350 1500 5750 1500
$Comp
L power:GND #PWR?
U 1 1 5E0B46D1
P 5950 2100
AR Path="/5E0B46D1" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E0B46D1" Ref="#PWR?"  Part="1" 
AR Path="/5DF5EE34/5E0B46D1" Ref="#PWR0157"  Part="1" 
F 0 "#PWR0157" H 5950 1850 50  0001 C CNN
F 1 "GND" H 5955 1927 50  0000 C CNN
F 2 "" H 5950 2100 50  0001 C CNN
F 3 "" H 5950 2100 50  0001 C CNN
	1    5950 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2000 6250 2100
Wire Wire Line
	5750 2100 5950 2100
Wire Wire Line
	5750 2000 6250 2000
$Comp
L power:GND #PWR?
U 1 1 5E24F7B7
P 6450 1600
AR Path="/5E24F7B7" Ref="#PWR?"  Part="1" 
AR Path="/5DF5EE34/5E24F7B7" Ref="#PWR0159"  Part="1" 
F 0 "#PWR0159" H 6450 1350 50  0001 C CNN
F 1 "GND" H 6455 1427 50  0000 C CNN
F 2 "" H 6450 1600 50  0001 C CNN
F 3 "" H 6450 1600 50  0001 C CNN
	1    6450 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 ComputeModulePowerOutput?
U 1 1 5E24F7BD
P 6600 1200
AR Path="/5E24F7BD" Ref="ComputeModulePowerOutput?"  Part="1" 
AR Path="/5DF5EE34/5E24F7BD" Ref="CMPO5"  Part="1" 
F 0 "CMPO5" V 6564 1280 50  0000 L CNN
F 1 "Screw_Terminal_01x02" V 6473 1280 50  0000 L CNN
F 2 "Needed Models:TerminalBlock_OnShoreTech_EDSTLZ1555-2_1x02_P3.81mm_Horizontal" H 6600 1200 50  0001 C CNN
F 3 "https://www.on-shore.com/wp-content/uploads/OSTOQXX3250.pdf" H 6600 1200 50  0001 C CNN
	1    6600 1200
	0    1    -1   0   
$EndComp
Wire Wire Line
	6450 1600 6450 1400
Wire Wire Line
	6450 1400 6500 1400
Wire Wire Line
	6650 1400 6600 1400
Wire Wire Line
	6650 1400 6650 2800
$Comp
L power:VCC #PWR?
U 1 1 5E24FFEE
P 6250 2100
AR Path="/5E24FFEE" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E24FFEE" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E24FFEE" Ref="#PWR?"  Part="1" 
AR Path="/5DF5E95B/5E24FFEE" Ref="#PWR?"  Part="1" 
AR Path="/5DF5EE34/5E24FFEE" Ref="#PWR0160"  Part="1" 
F 0 "#PWR0160" H 6250 1950 50  0001 C CNN
F 1 "VCC" H 6150 2250 50  0000 L CNN
F 2 "" H 6250 2100 50  0001 C CNN
F 3 "" H 6250 2100 50  0001 C CNN
	1    6250 2100
	1    0    0    1   
$EndComp
$Comp
L Device:R CurrentSenseShunt?
U 1 1 5E25F25A
P 4150 1900
AR Path="/5E25F25A" Ref="CurrentSenseShunt?"  Part="1" 
AR Path="/5DF5EE34/5E25F25A" Ref="R19"  Part="1" 
F 0 "R19" H 4220 1946 50  0000 L CNN
F 1 "0.005" H 4220 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4080 1900 50  0001 C CNN
F 3 "~" H 4150 1900 50  0001 C CNN
	1    4150 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 1550 4150 1750
Wire Wire Line
	4150 1750 4950 1750
$Comp
L Transistor_FET:IRF9540N PFET?
U 1 1 5E25F263
P 4050 1350
AR Path="/5E25F263" Ref="PFET?"  Part="1" 
AR Path="/5DF5EE34/5E25F263" Ref="PFET5"  Part="1" 
F 0 "PFET5" H 4254 1304 50  0000 L CNN
F 1 "SUP70101EL-GE3" H 4254 1395 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 4250 1275 50  0001 L CIN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/group3/8e/46/ef/8c/50/3b/4b/6a/DM00101433/files/DM00101433.pdf/jcr:content/translations/en.DM00101433.pdf" H 4050 1350 50  0001 L CNN
	1    4050 1350
	1    0    0    1   
$EndComp
Text GLabel 1900 1350 0    50   Input ~ 0
Slave4PWRCTL
Text GLabel 5900 1800 2    50   Input ~ 0
SCL
Text GLabel 6100 1700 2    50   Input ~ 0
SDA
Wire Wire Line
	5750 1700 6100 1700
Connection ~ 4150 2050
Connection ~ 4150 1750
$Comp
L Device:CP1 C?
U 1 1 5E4B84AD
P 6150 3050
AR Path="/5E4B84AD" Ref="C?"  Part="1" 
AR Path="/5DF5EE34/5E4B84AD" Ref="C14"  Part="1" 
F 0 "C14" H 6328 3096 50  0000 L CNN
F 1 "1000uF" H 6328 3005 50  0000 L CNN
F 2 "EMZS250ARA102MJA0G:CAPAE1030X1050N" H 6150 3050 50  0001 C CNN
F 3 "~" H 6150 3050 50  0001 C CNN
	1    6150 3050
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C?
U 1 1 5E4B84B3
P 4650 3100
AR Path="/5E4B84B3" Ref="C?"  Part="1" 
AR Path="/5DF5EE34/5E4B84B3" Ref="C13"  Part="1" 
F 0 "C13" H 4828 3146 50  0000 L CNN
F 1 "0.1uF" H 4828 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4650 3100 50  0001 C CNN
F 3 "~" H 4650 3100 50  0001 C CNN
	1    4650 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2900 6150 2800
Connection ~ 6150 2800
Wire Wire Line
	4650 2850 4650 2800
Connection ~ 4650 2800
Wire Wire Line
	4650 2800 6150 2800
$Comp
L power:GND #PWR?
U 1 1 5E4B84C0
P 4650 3350
AR Path="/5E4B84C0" Ref="#PWR?"  Part="1" 
AR Path="/5DF5EE34/5E4B84C0" Ref="#PWR0147"  Part="1" 
F 0 "#PWR0147" H 4650 3100 50  0001 C CNN
F 1 "GND" V 4655 3222 50  0000 R CNN
F 2 "" H 4650 3350 50  0001 C CNN
F 3 "" H 4650 3350 50  0001 C CNN
	1    4650 3350
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E4B84C6
P 6150 3200
AR Path="/5E4B84C6" Ref="#PWR?"  Part="1" 
AR Path="/5DF5EE34/5E4B84C6" Ref="#PWR0148"  Part="1" 
F 0 "#PWR0148" H 6150 2950 50  0001 C CNN
F 1 "GND" V 6155 3072 50  0000 R CNN
F 2 "" H 6150 3200 50  0001 C CNN
F 3 "" H 6150 3200 50  0001 C CNN
	1    6150 3200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4150 2800 4650 2800
Wire Wire Line
	6150 2800 6650 2800
$EndSCHEMATC
