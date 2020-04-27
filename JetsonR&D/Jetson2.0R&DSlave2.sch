EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title "Jetson 2.0 Slave 2 Power Management Module"
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
U 1 1 5E068E21
P 1550 4250
AR Path="/5E068E21" Ref="INAFilterCap?"  Part="1" 
AR Path="/5DF4EB32/5E068E21" Ref="INAFilterCap?"  Part="1" 
AR Path="/5DF5EE34/5E068E21" Ref="INAFilterCap?"  Part="1" 
AR Path="/5DF5DF47/5E068E21" Ref="C9"  Part="1" 
F 0 "C9" H 1728 4296 50  0000 L CNN
F 1 "0.1uF" H 1728 4205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1550 4250 50  0001 C CNN
F 3 "~" H 1550 4250 50  0001 C CNN
	1    1550 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E068E27
P 1100 4500
AR Path="/5E068E27" Ref="#PWR?"  Part="1" 
AR Path="/5DF5EE34/5E068E27" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E068E27" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E068E27" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 1100 4250 50  0001 C CNN
F 1 "GND" V 1105 4372 50  0000 R CNN
F 2 "" H 1100 4500 50  0001 C CNN
F 3 "" H 1100 4500 50  0001 C CNN
	1    1100 4500
	0    1    -1   0   
$EndComp
Wire Wire Line
	1100 4000 1550 4000
Wire Wire Line
	1100 4500 1550 4500
$Comp
L power:VCC #PWR?
U 1 1 5E068E4C
P 1100 4000
AR Path="/5DF5EE34/5E068E4C" Ref="#PWR?"  Part="1" 
AR Path="/5E068E4C" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E068E4C" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E068E4C" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 1100 3850 50  0001 C CNN
F 1 "VCC" V 1117 4127 50  0000 L CNN
F 2 "" H 1100 4000 50  0001 C CNN
F 3 "" H 1100 4000 50  0001 C CNN
	1    1100 4000
	0    -1   1    0   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5E068E71
P 4100 1000
AR Path="/5E068E71" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E068E71" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E068E71" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 4100 850 50  0001 C CNN
F 1 "VDD" H 4117 1173 50  0000 C CNN
F 2 "" H 4100 1000 50  0001 C CNN
F 3 "" H 4100 1000 50  0001 C CNN
	1    4100 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E068E78
P 2300 1500
AR Path="/5E068E78" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E068E78" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E068E78" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 2300 1250 50  0001 C CNN
F 1 "GND" H 2305 1327 50  0000 C CNN
F 2 "" H 2300 1500 50  0001 C CNN
F 3 "" H 2300 1500 50  0001 C CNN
	1    2300 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1500 2400 1500
$Comp
L power:GND #PWR?
U 1 1 5E068E7F
P 5300 2250
AR Path="/5E068E7F" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E068E7F" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E068E7F" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 5300 2000 50  0001 C CNN
F 1 "GND" H 5305 2077 50  0000 C CNN
F 2 "" H 5300 2250 50  0001 C CNN
F 3 "" H 5300 2250 50  0001 C CNN
	1    5300 2250
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5E068E86
P 3150 850
AR Path="/5E068E86" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E068E86" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E068E86" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 3150 700 50  0001 C CNN
F 1 "VDD" H 3167 1023 50  0000 C CNN
F 2 "" H 3150 850 50  0001 C CNN
F 3 "" H 3150 850 50  0001 C CNN
	1    3150 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E068E9A
P 3000 1500
AR Path="/5E068E9A" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E068E9A" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E068E9A" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 3000 1250 50  0001 C CNN
F 1 "GND" H 3005 1327 50  0000 C CNN
F 2 "" H 3000 1500 50  0001 C CNN
F 3 "" H 3000 1500 50  0001 C CNN
	1    3000 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R OptoResis?
U 1 1 5E068EA0
P 2150 1300
AR Path="/5E068EA0" Ref="OptoResis?"  Part="1" 
AR Path="/5DF4EB32/5E068EA0" Ref="OptoResis?"  Part="1" 
AR Path="/5DF5DF47/5E068EA0" Ref="R9"  Part="1" 
F 0 "R9" V 1943 1300 50  0000 C CNN
F 1 "1200" V 2034 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2080 1300 50  0001 C CNN
F 3 "~" H 2150 1300 50  0001 C CNN
	1    2150 1300
	0    1    1    0   
$EndComp
$Comp
L Analog_ADC:INA219AxD CurrentSense?
U 1 1 5E068EAD
P 5300 1850
AR Path="/5E068EAD" Ref="CurrentSense?"  Part="1" 
AR Path="/5DF4EB32/5E068EAD" Ref="CurrentSense?"  Part="1" 
AR Path="/5DF5DF47/5E068EAD" Ref="CS3"  Part="1" 
F 0 "CS3" H 5300 2431 50  0000 C CNN
F 1 "INA219AxD" H 5300 2340 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6100 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina219.pdf" H 5650 1750 50  0001 C CNN
	1    5300 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1750 4900 1700
Wire Wire Line
	4900 1950 4900 2000
Wire Wire Line
	4100 2750 4100 2000
$Comp
L Device:R GatePullUpResistor?
U 1 1 5E068EB8
P 3150 1000
AR Path="/5E068EB8" Ref="GatePullUpResistor?"  Part="1" 
AR Path="/5DF4EB32/5E068EB8" Ref="GatePullUpResistor?"  Part="1" 
AR Path="/5DF5DF47/5E068EB8" Ref="R10"  Part="1" 
F 0 "R10" H 3220 1046 50  0000 L CNN
F 1 "6.8k" H 3220 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3080 1000 50  0001 C CNN
F 3 "~" H 3150 1000 50  0001 C CNN
	1    3150 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1300 3150 1300
Wire Wire Line
	3150 1150 3150 1300
$Comp
L power:VCC #PWR?
U 1 1 5E068EC2
P 5700 1450
AR Path="/5E068EC2" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E068EC2" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E068EC2" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 5700 1300 50  0001 C CNN
F 1 "VCC" H 5600 1600 50  0000 L CNN
F 2 "" H 5700 1450 50  0001 C CNN
F 3 "" H 5700 1450 50  0001 C CNN
	1    5700 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1750 5850 1750
Wire Wire Line
	2000 1300 1850 1300
Wire Wire Line
	2300 1300 2400 1300
Wire Wire Line
	4100 2000 4900 2000
Connection ~ 3150 1300
Wire Wire Line
	3150 1300 3800 1300
Wire Wire Line
	5300 1450 5700 1450
$Comp
L power:GND #PWR?
U 1 1 5E06B37A
P 6200 2050
AR Path="/5E06B37A" Ref="#PWR?"  Part="1" 
AR Path="/5DF4EB32/5E06B37A" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E06B37A" Ref="#PWR0133"  Part="1" 
F 0 "#PWR0133" H 6200 1800 50  0001 C CNN
F 1 "GND" H 6205 1877 50  0000 C CNN
F 2 "" H 6200 2050 50  0001 C CNN
F 3 "" H 6200 2050 50  0001 C CNN
	1    6200 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1950 6200 2050
Wire Wire Line
	5700 2050 5900 2050
Wire Wire Line
	5700 1950 6200 1950
$Comp
L power:GND #PWR?
U 1 1 5E24A954
P 6350 1550
AR Path="/5E24A954" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E24A954" Ref="#PWR0154"  Part="1" 
F 0 "#PWR0154" H 6350 1300 50  0001 C CNN
F 1 "GND" H 6355 1377 50  0000 C CNN
F 2 "" H 6350 1550 50  0001 C CNN
F 3 "" H 6350 1550 50  0001 C CNN
	1    6350 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 ComputeModulePowerOutput?
U 1 1 5E24A95A
P 6500 1150
AR Path="/5E24A95A" Ref="ComputeModulePowerOutput?"  Part="1" 
AR Path="/5DF5DF47/5E24A95A" Ref="CMPO3"  Part="1" 
F 0 "CMPO3" V 6464 1230 50  0000 L CNN
F 1 "Screw_Terminal_01x02" V 6373 1230 50  0000 L CNN
F 2 "Needed Models:TerminalBlock_OnShoreTech_EDSTLZ1555-2_1x02_P3.81mm_Horizontal" H 6500 1150 50  0001 C CNN
F 3 "https://www.on-shore.com/wp-content/uploads/OSTOQXX3250.pdf" H 6500 1150 50  0001 C CNN
	1    6500 1150
	0    1    -1   0   
$EndComp
Wire Wire Line
	6350 1550 6350 1350
Wire Wire Line
	6350 1350 6400 1350
Wire Wire Line
	6550 1350 6500 1350
Wire Wire Line
	6550 1350 6550 2750
$Comp
L Device:R CurrentSenseShunt?
U 1 1 5E257AF3
P 4100 1850
AR Path="/5E257AF3" Ref="CurrentSenseShunt?"  Part="1" 
AR Path="/5DF5DF47/5E257AF3" Ref="R11"  Part="1" 
F 0 "R11" H 4170 1896 50  0000 L CNN
F 1 "0.005" H 4170 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4030 1850 50  0001 C CNN
F 3 "~" H 4100 1850 50  0001 C CNN
	1    4100 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 1500 4100 1700
Wire Wire Line
	4100 1700 4900 1700
$Comp
L Transistor_FET:IRF9540N PFET?
U 1 1 5E257AFC
P 4000 1300
AR Path="/5E257AFC" Ref="PFET?"  Part="1" 
AR Path="/5DF5DF47/5E257AFC" Ref="PFET3"  Part="1" 
F 0 "PFET3" H 4204 1254 50  0000 L CNN
F 1 "SUP70101EL-GE3" H 4204 1345 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 4200 1225 50  0001 L CIN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/group3/8e/46/ef/8c/50/3b/4b/6a/DM00101433/files/DM00101433.pdf/jcr:content/translations/en.DM00101433.pdf" H 4000 1300 50  0001 L CNN
	1    4000 1300
	1    0    0    1   
$EndComp
Wire Wire Line
	4100 1000 4100 1100
Text GLabel 1850 1300 0    50   Input ~ 0
Slave2PWRCTL
Text GLabel 5900 2050 2    50   Input ~ 0
SDA
Text GLabel 5850 1750 2    50   Input ~ 0
SCL
Text GLabel 6050 1650 2    50   Input ~ 0
SDA
$Comp
L Isolator:LTV-817 OptoIsolator?
U 1 1 5E068ECC
P 2700 1400
AR Path="/5E068ECC" Ref="OptoIsolator?"  Part="1" 
AR Path="/5DF4EB32/5E068ECC" Ref="OptoIsolator?"  Part="1" 
AR Path="/5DF5DF47/5E068ECC" Ref="OI3"  Part="1" 
F 0 "OI3" H 2700 1725 50  0000 C CNN
F 1 "LTV-817" H 2700 1634 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 2500 1200 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 2700 1300 50  0001 L CNN
	1    2700 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1650 6050 1650
Connection ~ 4100 2000
Connection ~ 4100 1700
$Comp
L Device:CP1 C?
U 1 1 5E4AF91D
P 6100 3000
AR Path="/5E4AF91D" Ref="C?"  Part="1" 
AR Path="/5DF5EE34/5E4AF91D" Ref="C?"  Part="1" 
AR Path="/5DF5DF47/5E4AF91D" Ref="C8"  Part="1" 
F 0 "C8" H 6278 3046 50  0000 L CNN
F 1 "1000uF" H 6278 2955 50  0000 L CNN
F 2 "EMZS250ARA102MJA0G:CAPAE1030X1050N" H 6100 3000 50  0001 C CNN
F 3 "~" H 6100 3000 50  0001 C CNN
	1    6100 3000
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C?
U 1 1 5E4AF923
P 4600 3050
AR Path="/5E4AF923" Ref="C?"  Part="1" 
AR Path="/5DF5EE34/5E4AF923" Ref="C?"  Part="1" 
AR Path="/5DF5DF47/5E4AF923" Ref="C7"  Part="1" 
F 0 "C7" H 4778 3096 50  0000 L CNN
F 1 "0.1uF" H 4778 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4600 3050 50  0001 C CNN
F 3 "~" H 4600 3050 50  0001 C CNN
	1    4600 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2850 6100 2750
Connection ~ 6100 2750
Wire Wire Line
	6100 2750 6550 2750
Wire Wire Line
	4600 2800 4600 2750
Connection ~ 4600 2750
Wire Wire Line
	4600 2750 6100 2750
$Comp
L power:GND #PWR?
U 1 1 5E4AF930
P 4600 3300
AR Path="/5E4AF930" Ref="#PWR?"  Part="1" 
AR Path="/5DF5EE34/5E4AF930" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E4AF930" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 4600 3050 50  0001 C CNN
F 1 "GND" V 4605 3172 50  0000 R CNN
F 2 "" H 4600 3300 50  0001 C CNN
F 3 "" H 4600 3300 50  0001 C CNN
	1    4600 3300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E4AF936
P 6100 3150
AR Path="/5E4AF936" Ref="#PWR?"  Part="1" 
AR Path="/5DF5EE34/5E4AF936" Ref="#PWR?"  Part="1" 
AR Path="/5DF5DF47/5E4AF936" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 6100 2900 50  0001 C CNN
F 1 "GND" V 6105 3022 50  0000 R CNN
F 2 "" H 6100 3150 50  0001 C CNN
F 3 "" H 6100 3150 50  0001 C CNN
	1    6100 3150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4100 2750 4600 2750
$EndSCHEMATC
