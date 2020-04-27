EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title "Jetson 2.0 Master Power Management Module"
Date ""
Rev "1.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR011
U 1 1 5DE5077D
P 6650 2350
F 0 "#PWR011" H 6650 2100 50  0001 C CNN
F 1 "GND" H 6655 2177 50  0000 C CNN
F 2 "" H 6650 2350 50  0001 C CNN
F 3 "" H 6650 2350 50  0001 C CNN
	1    6650 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5DE50FF5
P 7150 2250
F 0 "#PWR013" H 7150 2000 50  0001 C CNN
F 1 "GND" H 7155 2077 50  0000 C CNN
F 2 "" H 7150 2250 50  0001 C CNN
F 3 "" H 7150 2250 50  0001 C CNN
	1    7150 2250
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR08
U 1 1 5DE5E165
P 5050 1300
F 0 "#PWR08" H 5050 1150 50  0001 C CNN
F 1 "VDD" H 5067 1473 50  0000 C CNN
F 2 "" H 5050 1300 50  0001 C CNN
F 3 "" H 5050 1300 50  0001 C CNN
	1    5050 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1400 5050 1300
$Comp
L power:GND #PWR05
U 1 1 5DE678A0
P 3250 1800
F 0 "#PWR05" H 3250 1550 50  0001 C CNN
F 1 "GND" H 3255 1627 50  0000 C CNN
F 2 "" H 3250 1800 50  0001 C CNN
F 3 "" H 3250 1800 50  0001 C CNN
	1    3250 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1800 3350 1800
$Comp
L power:VDD #PWR07
U 1 1 5DE7DCA0
P 4100 1150
F 0 "#PWR07" H 4100 1000 50  0001 C CNN
F 1 "VDD" H 4117 1323 50  0000 C CNN
F 2 "" H 4100 1150 50  0001 C CNN
F 3 "" H 4100 1150 50  0001 C CNN
	1    4100 1150
	1    0    0    -1  
$EndComp
$Comp
L 1720576:1720576 CMPI1
U 1 1 5DE818E5
P 1600 2550
F 0 "CMPI1" H 2000 2800 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 2000 2700 50  0000 C CNN
F 2 "Needed Models:1720576" H 1600 2550 50  0001 C CNN
F 3 "https://www.on-shore.com/wp-content/uploads/OSTOQXX3250.pdf" H 1600 2550 50  0001 C CNN
	1    1600 2550
	-1   0    0    -1  
$EndComp
Text Label 7000 1950 0    50   ~ 0
SDA
Text Label 6800 2050 0    50   ~ 0
SCL
$Comp
L power:GND #PWR06
U 1 1 5DE63BAE
P 3950 1800
F 0 "#PWR06" H 3950 1550 50  0001 C CNN
F 1 "GND" H 3955 1627 50  0000 C CNN
F 2 "" H 3950 1800 50  0001 C CNN
F 3 "" H 3950 1800 50  0001 C CNN
	1    3950 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5DE7E9D9
P 3100 1600
F 0 "R1" V 2893 1600 50  0000 C CNN
F 1 "1200" V 2984 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3030 1600 50  0001 C CNN
F 3 "~" H 3100 1600 50  0001 C CNN
	1    3100 1600
	0    1    1    0   
$EndComp
Text Label 2800 1600 2    50   ~ 0
MasterPWRCTL
$Comp
L Device:R R3
U 1 1 5DE7587F
P 5050 2150
F 0 "R3" H 5120 2196 50  0000 L CNN
F 1 "0.005" H 5120 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4980 2150 50  0001 C CNN
F 3 "~" H 5050 2150 50  0001 C CNN
	1    5050 2150
	1    0    0    1   
$EndComp
Wire Wire Line
	6650 2250 7150 2250
$Comp
L Analog_ADC:INA219AxD CS1
U 1 1 5DE1E58E
P 6250 2150
F 0 "CS1" H 6250 2731 50  0000 C CNN
F 1 "INA219AxD" H 6250 2640 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7050 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina219.pdf" H 6600 2050 50  0001 C CNN
	1    6250 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2050 5850 2000
Wire Wire Line
	5050 1800 5050 2000
Wire Wire Line
	5850 2250 5850 2300
Wire Wire Line
	5050 3050 5050 2300
$Comp
L Device:R R2
U 1 1 5DF2F65E
P 4100 1300
F 0 "R2" H 4170 1346 50  0000 L CNN
F 1 "6.8k" H 4170 1255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4030 1300 50  0001 C CNN
F 3 "~" H 4100 1300 50  0001 C CNN
	1    4100 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1600 4100 1600
Wire Wire Line
	4100 1450 4100 1600
$Comp
L power:VDD #PWR0101
U 1 1 5DF36911
P 1600 2550
F 0 "#PWR0101" H 1600 2400 50  0001 C CNN
F 1 "VDD" V 1600 2750 50  0000 C CNN
F 2 "" H 1600 2550 50  0001 C CNN
F 3 "" H 1600 2550 50  0001 C CNN
	1    1600 2550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5DF3689C
P 1250 900
F 0 "#PWR0107" H 1250 650 50  0001 C CNN
F 1 "GND" V 1255 772 50  0000 R CNN
F 2 "" H 1250 900 50  0001 C CNN
F 3 "" H 1250 900 50  0001 C CNN
	1    1250 900 
	0    -1   -1   0   
$EndComp
$Sheet
S 9100 650  500  150 
U 5DF4EB32
F0 "Jetson 2.0 Slave1 Power Management Module" 50
F1 "Jetson2.0R&DSlave1.sch" 50
$EndSheet
$Sheet
S 9100 1000 500  150 
U 5DF5DF47
F0 "Jetson 2.0 Slave 2 Power Management Module" 50
F1 "Jetson2.0R&DSlave2.sch" 50
$EndSheet
$Sheet
S 9100 1350 500  150 
U 5DF5E95B
F0 "Jetson 2.0 Slave 3 Power Management Module" 50
F1 "Jetson2R&DSlave3.sch" 50
$EndSheet
$Comp
L power:VCC #PWR0104
U 1 1 5DF51D1A
P 1250 800
F 0 "#PWR0104" H 1250 650 50  0001 C CNN
F 1 "VCC" V 1267 928 50  0000 L CNN
F 2 "" H 1250 800 50  0001 C CNN
F 3 "" H 1250 800 50  0001 C CNN
	1    1250 800 
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0106
U 1 1 5DF52BA5
P 6700 1650
F 0 "#PWR0106" H 6700 1500 50  0001 C CNN
F 1 "VCC" H 6600 1800 50  0000 L CNN
F 2 "" H 6700 1650 50  0001 C CNN
F 3 "" H 6700 1650 50  0001 C CNN
	1    6700 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  1400 1400 1400
Wire Wire Line
	950  1300 1400 1300
Wire Wire Line
	950  1200 1400 1200
Wire Wire Line
	950  1500 1400 1500
Wire Wire Line
	950  1600 1400 1600
Wire Wire Line
	950  900  1250 900 
Wire Wire Line
	950  800  1250 800 
Wire Wire Line
	6650 2050 6800 2050
Wire Wire Line
	2950 1600 2800 1600
$Comp
L pspice:CAP C3
U 1 1 5DFF5A0A
P 1300 3300
AR Path="/5DFF5A0A" Ref="C3"  Part="1" 
AR Path="/5DF4EB32/5DFF5A0A" Ref="INAFilterCap?"  Part="1" 
AR Path="/5DF5EE34/5DFF5A0A" Ref="INAFilterCap?"  Part="1" 
F 0 "C3" H 1478 3346 50  0000 L CNN
F 1 "0.1uF" H 1478 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1300 3300 50  0001 C CNN
F 3 "~" H 1300 3300 50  0001 C CNN
	1    1300 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5DFF5A10
P 850 3550
AR Path="/5DFF5A10" Ref="#PWR0102"  Part="1" 
AR Path="/5DF5EE34/5DFF5A10" Ref="#PWR?"  Part="1" 
F 0 "#PWR0102" H 850 3300 50  0001 C CNN
F 1 "GND" V 855 3422 50  0000 R CNN
F 2 "" H 850 3550 50  0001 C CNN
F 3 "" H 850 3550 50  0001 C CNN
	1    850  3550
	0    1    -1   0   
$EndComp
Wire Wire Line
	850  3050 1300 3050
Wire Wire Line
	850  3550 1300 3550
$Comp
L Device:CP1 C1
U 1 1 5DFF5A18
P 7000 3300
AR Path="/5DFF5A18" Ref="C1"  Part="1" 
AR Path="/5DF5EE34/5DFF5A18" Ref="HighFreqFilterCap?"  Part="1" 
F 0 "C1" H 7178 3346 50  0000 L CNN
F 1 "1000uF" H 7178 3255 50  0000 L CNN
F 2 "EMZS250ARA102MJA0G:CAPAE1030X1050N" H 7000 3300 50  0001 C CNN
F 3 "~" H 7000 3300 50  0001 C CNN
	1    7000 3300
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C2
U 1 1 5DFF5A1E
P 5500 3350
AR Path="/5DFF5A1E" Ref="C2"  Part="1" 
AR Path="/5DF5EE34/5DFF5A1E" Ref="LowFreqFilterCap?"  Part="1" 
F 0 "C2" H 5678 3396 50  0000 L CNN
F 1 "0.1uF" H 5678 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5500 3350 50  0001 C CNN
F 3 "~" H 5500 3350 50  0001 C CNN
	1    5500 3350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DFF5A36
P 850 3050
AR Path="/5DF5EE34/5DFF5A36" Ref="#PWR?"  Part="1" 
AR Path="/5DFF5A36" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 850 2900 50  0001 C CNN
F 1 "VCC" V 867 3177 50  0000 L CNN
F 2 "" H 850 3050 50  0001 C CNN
F 3 "" H 850 3050 50  0001 C CNN
	1    850  3050
	0    -1   1    0   
$EndComp
Wire Wire Line
	3250 1600 3350 1600
$Comp
L Isolator:LTV-817 OI1
U 1 1 5DE206A5
P 3650 1700
F 0 "OI1" H 3650 2025 50  0000 C CNN
F 1 "LTV-817" H 3650 1934 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 3450 1500 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 3650 1600 50  0001 L CNN
	1    3650 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2300 5850 2300
Wire Wire Line
	5050 2000 5850 2000
Connection ~ 4100 1600
Wire Wire Line
	4100 1600 4750 1600
Wire Wire Line
	6250 1750 6700 1750
$Comp
L Transistor_FET:IRF9540N PFET1
U 1 1 5DE4C413
P 4950 1600
F 0 "PFET1" H 5154 1554 50  0000 L CNN
F 1 "SUP70101EL-GE3" H 5154 1645 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 5150 1525 50  0001 L CIN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/group3/8e/46/ef/8c/50/3b/4b/6a/DM00101433/files/DM00101433.pdf/jcr:content/translations/en.DM00101433.pdf" H 4950 1600 50  0001 L CNN
	1    4950 1600
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x09_Male MCUPL1
U 1 1 5E265C9F
P 750 1200
F 0 "MCUPL1" H 900 1800 50  0000 C CNN
F 1 "Conn_01x09_Male" H 900 1700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 750 1200 50  0001 C CNN
F 3 "~" H 750 1200 50  0001 C CNN
	1    750  1200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female MCUPO1
U 1 1 5E268FB8
P 800 2000
F 0 "MCUPO1" H 700 2250 50  0000 C CNN
F 1 "Conn_01x02_Female" H 700 2150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 800 2000 50  0001 C CNN
F 3 "~" H 800 2000 50  0001 C CNN
	1    800  2000
	-1   0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0117
U 1 1 5E26AE8C
P 1000 2000
AR Path="/5E26AE8C" Ref="#PWR0117"  Part="1" 
AR Path="/5DF5EE34/5E26AE8C" Ref="#PWR?"  Part="1" 
F 0 "#PWR0117" H 1000 1850 50  0001 C CNN
F 1 "VDD" V 1000 2200 50  0000 C CNN
F 2 "" H 1000 2000 50  0001 C CNN
F 3 "" H 1000 2000 50  0001 C CNN
	1    1000 2000
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 5E26AE92
P 1000 2100
AR Path="/5E26AE92" Ref="#PWR0130"  Part="1" 
AR Path="/5DF5EE34/5E26AE92" Ref="#PWR?"  Part="1" 
F 0 "#PWR0130" H 1000 1850 50  0001 C CNN
F 1 "GND" V 1005 1972 50  0000 R CNN
F 2 "" H 1000 2100 50  0001 C CNN
F 3 "" H 1000 2100 50  0001 C CNN
	1    1000 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	950  1100 1150 1100
$Comp
L power:GND #PWR0163
U 1 1 5E3332A2
P 850 4150
AR Path="/5E3332A2" Ref="#PWR0163"  Part="1" 
AR Path="/5DF5EE34/5E3332A2" Ref="#PWR?"  Part="1" 
F 0 "#PWR0163" H 850 3900 50  0001 C CNN
F 1 "GND" V 855 4022 50  0000 R CNN
F 2 "" H 850 4150 50  0001 C CNN
F 3 "" H 850 4150 50  0001 C CNN
	1    850  4150
	0    1    -1   0   
$EndComp
$Comp
L power:VCC #PWR0164
U 1 1 5E3351C9
P 850 3850
F 0 "#PWR0164" H 850 3700 50  0001 C CNN
F 1 "VCC" V 867 3978 50  0000 L CNN
F 2 "" H 850 3850 50  0001 C CNN
F 3 "" H 850 3850 50  0001 C CNN
	1    850  3850
	0    -1   -1   0   
$EndComp
$Sheet
S 9100 1700 500  150 
U 5DF5EE34
F0 "Jetson 2.0 Slave 4 Power Management Module" 50
F1 "Jetson2.0R&DSlave4.sch" 50
$EndSheet
Text GLabel 1400 1300 2    50   Input ~ 0
Slave1PWRCTL
Text GLabel 1400 1200 2    50   Input ~ 0
Slave2PWRCTL
Text GLabel 1400 1500 2    50   Input ~ 0
Slave3PWRCTL
Text GLabel 1400 1600 2    50   Input ~ 0
Slave4PWRCTL
Text GLabel 1150 1000 2    50   Input ~ 0
SDA
Text GLabel 1150 1100 2    50   Input ~ 0
SCL
Wire Wire Line
	950  1000 1150 1000
Wire Wire Line
	6700 1750 6700 1650
$Comp
L power:GND #PWR09
U 1 1 5DE7A2C3
P 6250 2550
F 0 "#PWR09" H 6250 2300 50  0001 C CNN
F 1 "GND" H 6255 2377 50  0000 C CNN
F 2 "" H 6250 2550 50  0001 C CNN
F 3 "" H 6250 2550 50  0001 C CNN
	1    6250 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 4150 850  4150
Wire Wire Line
	850  3850 1300 3850
$Comp
L Device:D_Schottky D2
U 1 1 5E333296
P 1300 4000
F 0 "D2" V 1254 3921 50  0000 R CNN
F 1 "D_Schottky" V 1345 3921 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1300 4000 50  0001 C CNN
F 3 "~" H 1300 4000 50  0001 C CNN
	1    1300 4000
	0    -1   1    0   
$EndComp
Wire Wire Line
	7450 1650 7450 3050
Wire Wire Line
	7450 1650 7400 1650
Wire Wire Line
	7250 1650 7300 1650
Wire Wire Line
	7250 1850 7250 1650
$Comp
L Connector:Screw_Terminal_01x02 CMPO1
U 1 1 5E23C7FA
P 7400 1450
F 0 "CMPO1" V 7364 1530 50  0000 L CNN
F 1 "Screw_Terminal_01x02" V 7273 1530 50  0000 L CNN
F 2 "Needed Models:TerminalBlock_OnShoreTech_EDSTLZ1555-2_1x02_P3.81mm_Horizontal" H 7400 1450 50  0001 C CNN
F 3 "https://www.on-shore.com/wp-content/uploads/OSTOQXX3250.pdf" H 7400 1450 50  0001 C CNN
	1    7400 1450
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5DE9DC09
P 7250 1850
F 0 "#PWR012" H 7250 1600 50  0001 C CNN
F 1 "GND" H 7255 1677 50  0000 C CNN
F 2 "" H 7250 1850 50  0001 C CNN
F 3 "" H 7250 1850 50  0001 C CNN
	1    7250 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1950 7000 1950
Wire Wire Line
	850  4500 850  4400
$Comp
L Device:D_Schottky D1
U 1 1 5E459FAA
P 850 4650
F 0 "D1" V 804 4571 50  0000 R CNN
F 1 "D_Schottky" V 895 4571 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 850 4650 50  0001 C CNN
F 3 "~" H 850 4650 50  0001 C CNN
	1    850  4650
	0    -1   1    0   
$EndComp
Wire Wire Line
	850  4800 850  4900
$Comp
L power:VDD #PWR0161
U 1 1 5E45B3B8
P 850 4400
AR Path="/5E45B3B8" Ref="#PWR0161"  Part="1" 
AR Path="/5DF5EE34/5E45B3B8" Ref="#PWR?"  Part="1" 
F 0 "#PWR0161" H 850 4250 50  0001 C CNN
F 1 "VDD" H 867 4573 50  0000 C CNN
F 2 "" H 850 4400 50  0001 C CNN
F 3 "" H 850 4400 50  0001 C CNN
	1    850  4400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0162
U 1 1 5E45B3BE
P 850 4900
AR Path="/5E45B3BE" Ref="#PWR0162"  Part="1" 
AR Path="/5DF5EE34/5E45B3BE" Ref="#PWR?"  Part="1" 
F 0 "#PWR0162" H 850 4650 50  0001 C CNN
F 1 "GND" V 855 4772 50  0000 R CNN
F 2 "" H 850 4900 50  0001 C CNN
F 3 "" H 850 4900 50  0001 C CNN
	1    850  4900
	0    1    -1   0   
$EndComp
Connection ~ 5050 2300
Connection ~ 5050 2000
Wire Wire Line
	5050 3050 5500 3050
Wire Wire Line
	7000 3150 7000 3050
Connection ~ 7000 3050
Wire Wire Line
	7000 3050 7450 3050
Wire Wire Line
	5500 3100 5500 3050
Connection ~ 5500 3050
Wire Wire Line
	5500 3050 7000 3050
$Comp
L power:GND #PWR0103
U 1 1 5E4A57DC
P 5500 3600
AR Path="/5E4A57DC" Ref="#PWR0103"  Part="1" 
AR Path="/5DF5EE34/5E4A57DC" Ref="#PWR?"  Part="1" 
F 0 "#PWR0103" H 5500 3350 50  0001 C CNN
F 1 "GND" V 5505 3472 50  0000 R CNN
F 2 "" H 5500 3600 50  0001 C CNN
F 3 "" H 5500 3600 50  0001 C CNN
	1    5500 3600
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5E4A96EE
P 7000 3450
AR Path="/5E4A96EE" Ref="#PWR0105"  Part="1" 
AR Path="/5DF5EE34/5E4A96EE" Ref="#PWR?"  Part="1" 
F 0 "#PWR0105" H 7000 3200 50  0001 C CNN
F 1 "GND" V 7005 3322 50  0000 R CNN
F 2 "" H 7000 3450 50  0001 C CNN
F 3 "" H 7000 3450 50  0001 C CNN
	1    7000 3450
	-1   0    0    -1  
$EndComp
Text Label 1400 1400 0    30   ~ 0
MasterPWRCTL
$Comp
L power:GND #PWR?
U 1 1 5E4C2E0E
P 800 2750
F 0 "#PWR?" H 800 2500 50  0001 C CNN
F 1 "GND" V 805 2622 50  0000 R CNN
F 2 "" H 800 2750 50  0001 C CNN
F 3 "" H 800 2750 50  0001 C CNN
	1    800  2750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E4C37E8
P 800 2650
F 0 "#PWR?" H 800 2400 50  0001 C CNN
F 1 "GND" V 805 2522 50  0000 R CNN
F 2 "" H 800 2650 50  0001 C CNN
F 3 "" H 800 2650 50  0001 C CNN
	1    800  2650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E4C418F
P 800 2550
F 0 "#PWR?" H 800 2300 50  0001 C CNN
F 1 "GND" V 805 2422 50  0000 R CNN
F 2 "" H 800 2550 50  0001 C CNN
F 3 "" H 800 2550 50  0001 C CNN
	1    800  2550
	0    1    1    0   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5E4C606D
P 1600 2650
F 0 "#PWR?" H 1600 2500 50  0001 C CNN
F 1 "VDD" V 1600 2850 50  0000 C CNN
F 2 "" H 1600 2650 50  0001 C CNN
F 3 "" H 1600 2650 50  0001 C CNN
	1    1600 2650
	0    1    1    0   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5E4C6990
P 1600 2750
F 0 "#PWR?" H 1600 2600 50  0001 C CNN
F 1 "VDD" V 1600 2950 50  0000 C CNN
F 2 "" H 1600 2750 50  0001 C CNN
F 3 "" H 1600 2750 50  0001 C CNN
	1    1600 2750
	0    1    1    0   
$EndComp
$EndSCHEMATC
