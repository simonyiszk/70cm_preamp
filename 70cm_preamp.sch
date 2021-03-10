EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "434 MHz LNA"
Date "2021 január"
Rev "v02"
Comp "HA5KFU"
Comment1 ""
Comment2 "       Keri"
Comment3 "v02 - HA7BM"
Comment4 "v01 - HA8KDA"
$EndDescr
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5DF66D76
P 7050 1850
F 0 "J2" H 7149 1826 50  0000 L CNN
F 1 "RF_OUT" H 7149 1735 50  0000 L CNN
F 2 "70cm_preamp:SMA_Amphenol_901-144_Vertical" H 7050 1850 50  0001 C CNN
F 3 "https://www.tme.eu/Document/b4dd5925cecd78bf6385fa91265dd943/RF2-145A-T-17-50-G-HDW.pdf" H 7050 1850 50  0001 C CNN
F 4 "43-28-28" H 7050 1850 50  0001 C CNN "Lomex"
F 5 "RF2-145A-T-17-50-G-HDW " H 7050 1850 50  0001 C CNN "TME"
	1    7050 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5DF66E82
P 7050 2400
F 0 "#PWR07" H 7050 2150 50  0001 C CNN
F 1 "GND" H 7055 2227 50  0000 C CNN
F 2 "" H 7050 2400 50  0001 C CNN
F 3 "" H 7050 2400 50  0001 C CNN
	1    7050 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J1
U 1 1 5DF686B1
P 4200 1850
F 0 "J1" H 4450 1850 50  0000 C CNN
F 1 "RF_IN" H 4400 1750 50  0000 C CNN
F 2 "70cm_preamp:SMA_Amphenol_901-144_Vertical" H 4200 1850 50  0001 C CNN
F 3 "https://www.tme.eu/Document/b4dd5925cecd78bf6385fa91265dd943/RF2-145A-T-17-50-G-HDW.pdf" H 4200 1850 50  0001 C CNN
F 4 "43-28-28" H 4200 1850 50  0001 C CNN "Lomex"
F 5 "RF2-145A-T-17-50-G-HDW " H 4200 1850 50  0001 C CNN "TME"
	1    4200 1850
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5DF68779
P 4200 2400
F 0 "#PWR01" H 4200 2150 50  0001 C CNN
F 1 "GND" H 4205 2227 50  0000 C CNN
F 2 "" H 4200 2400 50  0001 C CNN
F 3 "" H 4200 2400 50  0001 C CNN
	1    4200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2400 4200 2050
Wire Wire Line
	7050 2400 7050 2050
$Comp
L Regulator_Linear:LM78L05_TO92 U3
U 1 1 601C026E
P 6550 4600
F 0 "U3" H 6550 4842 50  0000 C CNN
F 1 "LM78M05" H 6550 4751 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6550 4825 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM78L05A.pdf" H 6550 4550 50  0001 C CNN
	1    6550 4600
	-1   0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 601ABDE5
P 5650 4600
F 0 "F1" V 5453 4600 50  0000 C CNN
F 1 "Fuse 200mA" V 5544 4600 50  0000 C CNN
F 2 "" V 5580 4600 50  0001 C CNN
F 3 "~" H 5650 4600 50  0001 C CNN
	1    5650 4600
	0    1    1    0   
$EndComp
$Comp
L Device:Transformer_1P_1S T1
U 1 1 601AC6A1
P 3900 5300
F 0 "T1" H 3900 5681 50  0000 C CNN
F 1 "Transformer_1P_1S" H 3900 5590 50  0000 C CNN
F 2 "" H 3900 5300 50  0001 C CNN
F 3 "https://www.tme.eu/hu/details/bvei3052848/pcb-transzformatorok/hahn/bv-ei-305-2848/" H 3900 5300 50  0001 C CNN
F 4 " BVEI3052848" H 3900 5300 50  0001 C CNN "TME"
	1    3900 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 601C18DD
P 6000 4950
F 0 "C2" H 6115 4996 50  0000 L CNN
F 1 "100n" H 6115 4905 50  0000 L CNN
F 2 "70cm_preamp:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6038 4800 50  0001 C CNN
F 3 "~" H 6000 4950 50  0001 C CNN
	1    6000 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4600 6250 4600
$Comp
L power:GNDA #PWR0105
U 1 1 601D7D5D
P 4700 6100
F 0 "#PWR0105" H 4700 5850 50  0001 C CNN
F 1 "GNDA" H 4705 5927 50  0000 C CNN
F 2 "" H 4700 6100 50  0001 C CNN
F 3 "" H 4700 6100 50  0001 C CNN
	1    4700 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 601D8420
P 7100 4950
F 0 "C3" H 7215 4996 50  0000 L CNN
F 1 "100n" H 7215 4905 50  0000 L CNN
F 2 "70cm_preamp:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7138 4800 50  0001 C CNN
F 3 "~" H 7100 4950 50  0001 C CNN
	1    7100 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0106
U 1 1 601E39A7
P 6000 5200
F 0 "#PWR0106" H 6000 4950 50  0001 C CNN
F 1 "GNDA" H 6005 5027 50  0000 C CNN
F 2 "" H 6000 5200 50  0001 C CNN
F 3 "" H 6000 5200 50  0001 C CNN
	1    6000 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0107
U 1 1 601E3D51
P 6550 5200
F 0 "#PWR0107" H 6550 4950 50  0001 C CNN
F 1 "GNDA" H 6555 5027 50  0000 C CNN
F 2 "" H 6550 5200 50  0001 C CNN
F 3 "" H 6550 5200 50  0001 C CNN
	1    6550 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5100 6000 5200
$Comp
L power:GNDA #PWR0108
U 1 1 601E8368
P 7100 5200
F 0 "#PWR0108" H 7100 4950 50  0001 C CNN
F 1 "GNDA" H 7105 5027 50  0000 C CNN
F 2 "" H 7100 5200 50  0001 C CNN
F 3 "" H 7100 5200 50  0001 C CNN
	1    7100 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4600 7100 4600
Wire Wire Line
	7100 5200 7100 5100
$Comp
L power:+9V #PWR0109
U 1 1 601F6885
P 7100 4500
F 0 "#PWR0109" H 7100 4350 50  0001 C CNN
F 1 "+9V" H 7115 4673 50  0000 C CNN
F 2 "" H 7100 4500 50  0001 C CNN
F 3 "" H 7100 4500 50  0001 C CNN
	1    7100 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4500 7100 4600
Connection ~ 7100 4600
$Comp
L Device:L L1
U 1 1 6021555C
P 7450 4600
F 0 "L1" V 7640 4600 50  0000 C CNN
F 1 "220n" V 7549 4600 50  0000 C CNN
F 2 "70cm_preamp:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7450 4600 50  0001 C CNN
F 3 "https://www.tme.eu/hu/details/0805as-r22j-08/smd-0805-induktorok/fastron/" H 7450 4600 50  0001 C CNN
F 4 " 0805AS-R22J-08" H 7450 4600 50  0001 C CNN "TME"
F 5 "RF" V 7350 4600 50  0000 C CNN "RF"
	1    7450 4600
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_Coaxial J3
U 1 1 6021A7DC
P 7800 4100
F 0 "J3" V 7900 4150 50  0000 L CNN
F 1 "RF+DC" V 8000 4000 50  0000 L CNN
F 2 "70cm_preamp:SMA_Amphenol_132289_EdgeMount" H 7800 4100 50  0001 C CNN
F 3 "https://www.tme.eu/Document/b4dd5925cecd78bf6385fa91265dd943/RF2-145A-T-17-50-G-HDW.pdf" H 7800 4100 50  0001 C CNN
F 4 "43-28-28" H 7800 4100 50  0001 C CNN "Lomex"
F 5 "RF2-145A-T-17-50-G-HDW " H 7800 4100 50  0001 C CNN "TME"
	1    7800 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7800 5250 7800 5100
Wire Wire Line
	7800 4800 7800 4600
Connection ~ 7800 4600
$Comp
L power:GNDA #PWR0111
U 1 1 6022329F
P 8000 5450
F 0 "#PWR0111" H 8000 5200 50  0001 C CNN
F 1 "GNDA" H 8005 5277 50  0000 C CNN
F 2 "" H 8000 5450 50  0001 C CNN
F 3 "" H 8000 5450 50  0001 C CNN
	1    8000 5450
	0    -1   1    0   
$EndComp
$Comp
L power:GNDA #PWR0112
U 1 1 60226CA6
P 8000 4100
F 0 "#PWR0112" H 8000 3850 50  0001 C CNN
F 1 "GNDA" H 8005 3927 50  0000 C CNN
F 2 "" H 8000 4100 50  0001 C CNN
F 3 "" H 8000 4100 50  0001 C CNN
	1    8000 4100
	0    -1   1    0   
$EndComp
$Comp
L Device:CP C1
U 1 1 60233EE0
P 5300 4950
F 0 "C1" H 5418 4996 50  0000 L CNN
F 1 "470u" H 5418 4905 50  0000 L CNN
F 2 "70cm_preamp:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5338 4800 50  0001 C CNN
F 3 "~" H 5300 4950 50  0001 C CNN
	1    5300 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5100 5300 5200
$Comp
L power:GNDA #PWR0113
U 1 1 6025C01D
P 5300 5200
F 0 "#PWR0113" H 5300 4950 50  0001 C CNN
F 1 "GNDA" H 5305 5027 50  0000 C CNN
F 2 "" H 5300 5200 50  0001 C CNN
F 3 "" H 5300 5200 50  0001 C CNN
	1    5300 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4300 7800 4600
$Comp
L Device:D D2
U 1 1 6038F87A
P 4900 4850
F 0 "D2" V 4854 4929 50  0000 L CNN
F 1 "D" V 4945 4929 50  0000 L CNN
F 2 "70cm_preamp:D_SOD-123" H 4900 4850 50  0001 C CNN
F 3 "~" H 4900 4850 50  0001 C CNN
	1    4900 4850
	0    1    1    0   
$EndComp
$Comp
L Device:D D4
U 1 1 6038FDFF
P 4900 5750
F 0 "D4" V 4854 5829 50  0000 L CNN
F 1 "D" V 4945 5829 50  0000 L CNN
F 2 "70cm_preamp:D_SOD-123" H 4900 5750 50  0001 C CNN
F 3 "~" H 4900 5750 50  0001 C CNN
	1    4900 5750
	0    1    1    0   
$EndComp
$Comp
L Device:D D3
U 1 1 6039047D
P 4500 5750
F 0 "D3" V 4454 5829 50  0000 L CNN
F 1 "D" V 4545 5829 50  0000 L CNN
F 2 "70cm_preamp:D_SOD-123" H 4500 5750 50  0001 C CNN
F 3 "~" H 4500 5750 50  0001 C CNN
	1    4500 5750
	0    1    1    0   
$EndComp
$Comp
L Device:D D1
U 1 1 60390930
P 4500 4850
F 0 "D1" V 4454 4929 50  0000 L CNN
F 1 "D" V 4545 4929 50  0000 L CNN
F 2 "70cm_preamp:D_SOD-123" H 4500 4850 50  0001 C CNN
F 3 "~" H 4500 4850 50  0001 C CNN
	1    4500 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 5000 4500 5100
Wire Wire Line
	4300 5100 4500 5100
Connection ~ 4500 5100
Wire Wire Line
	4500 5100 4500 5600
Wire Wire Line
	4500 4600 4900 4600
Wire Wire Line
	4500 4600 4500 4700
Wire Wire Line
	4900 4700 4900 4600
Connection ~ 4900 4600
Wire Wire Line
	4900 4600 5300 4600
Wire Wire Line
	4900 5600 4900 5500
Wire Wire Line
	4300 5500 4900 5500
Connection ~ 4900 5500
Wire Wire Line
	4900 5500 4900 5000
Wire Wire Line
	4500 5900 4500 6000
Wire Wire Line
	4500 6000 4700 6000
Wire Wire Line
	4900 6000 4900 5900
Wire Wire Line
	4700 6000 4700 6100
Connection ~ 4700 6000
Wire Wire Line
	4700 6000 4900 6000
Wire Wire Line
	3200 5250 3350 5250
Wire Wire Line
	3350 5250 3350 5100
Wire Wire Line
	3350 5100 3500 5100
Wire Wire Line
	3500 5500 3350 5500
Wire Wire Line
	3350 5500 3350 5350
Wire Wire Line
	3350 5350 3200 5350
$Comp
L Connector:Conn_Coaxial J4
U 1 1 60210A1B
P 7800 5450
F 0 "J4" V 7950 5500 50  0000 C CNN
F 1 "RF" V 8050 5500 50  0000 C CNN
F 2 "70cm_preamp:SMA_Amphenol_132289_EdgeMount" H 7800 5450 50  0001 C CNN
F 3 "https://www.tme.eu/Document/b4dd5925cecd78bf6385fa91265dd943/RF2-145A-T-17-50-G-HDW.pdf" H 7800 5450 50  0001 C CNN
F 4 "43-28-28" H 7800 5450 50  0001 C CNN "Lomex"
F 5 "RF2-145A-T-17-50-G-HDW " H 7800 5450 50  0001 C CNN "TME"
	1    7800 5450
	0    -1   1    0   
$EndComp
Wire Wire Line
	5300 4600 5500 4600
Connection ~ 5300 4600
Wire Wire Line
	5800 4600 6000 4600
Connection ~ 6000 4600
Wire Wire Line
	7600 4600 7800 4600
Wire Wire Line
	7100 4600 7300 4600
Wire Notes Line
	2800 700  2800 6400
Wire Notes Line
	2800 6400 8600 6400
Wire Notes Line
	8600 700  8600 6400
Wire Notes Line
	2800 700  8600 700 
Wire Notes Line
	8600 3500 2800 3500
Text Notes 5400 3400 0    118  ~ 24
Erősítő
Text Notes 5250 3800 0    118  ~ 24
Tápegység
$Comp
L Device:C C4
U 1 1 60397086
P 7800 4950
F 0 "C4" H 7915 4996 50  0000 L CNN
F 1 "82p" H 7915 4905 50  0000 L CNN
F 2 "70cm_preamp:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7838 4800 50  0001 C CNN
F 3 "~" H 7800 4950 50  0001 C CNN
F 4 "RF" H 7650 4950 50  0000 C CNN "RF"
	1    7800 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4600 5300 4800
Wire Wire Line
	6000 4600 6000 4800
Wire Wire Line
	7100 4600 7100 4800
Wire Wire Line
	6550 4900 6550 5200
$Comp
L 70cm_preamp:Screw_Terminal_01x02 J5
U 1 1 6024C1F7
P 3000 5250
F 0 "J5" H 2918 5467 50  0000 C CNN
F 1 "230V AC" H 2918 5376 50  0000 C CNN
F 2 "" H 3000 5250 50  0001 C CNN
F 3 "~" H 3000 5250 50  0001 C CNN
	1    3000 5250
	-1   0    0    -1  
$EndComp
Text Notes 650  7650 0    50   ~ 0
Dobozok:\n5,1 x 5,1 x 3,2 cm: https://www.tme.eu/hu/details/alu-g0470/univerzalis-keszulekhazak/gainta/g-0470/\n3,8 x 9 x 3 cm: https://www.tme.eu/hu/details/alu-g0123/univerzalis-keszulekhazak/gainta/g-0123/
$Comp
L 70cm_preamp:PGA-103+ U2
U 1 1 60481085
P 6000 1850
F 0 "U2" H 6050 2215 50  0000 C CNN
F 1 "PGA-103+" H 6050 2124 50  0000 C CNN
F 2 "70cm_preamp:SOT-89-3" H 5600 2050 50  0001 C CNN
F 3 "https://www.minicircuits.com/pdfs/PGA-103+.pdf" H 5700 2150 50  0001 C CNN
	1    6000 1850
	1    0    0    -1  
$EndComp
$Comp
L 70cm_preamp:SF2446E U1
U 1 1 604815FC
P 4950 1950
F 0 "U1" H 4950 2275 50  0000 C CNN
F 1 "SF2446E" H 4950 2184 50  0000 C CNN
F 2 "70cm_preamp:SF2446E-Filter_Custom_HandSolder" H 4500 2200 50  0001 C CNN
F 3 "https://wireless.murata.com/datasheet?/RFM/data/sf2446e.pdf" H 4550 2300 50  0001 C CNN
	1    4950 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1850 4400 1850
$Comp
L power:GND #PWR0101
U 1 1 60486617
P 4550 2400
F 0 "#PWR0101" H 4550 2150 50  0001 C CNN
F 1 "GND" H 4555 2227 50  0000 C CNN
F 2 "" H 4550 2400 50  0001 C CNN
F 3 "" H 4550 2400 50  0001 C CNN
	1    4550 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60486FF7
P 5350 2400
F 0 "#PWR0102" H 5350 2150 50  0001 C CNN
F 1 "GND" H 5355 2227 50  0000 C CNN
F 2 "" H 5350 2400 50  0001 C CNN
F 3 "" H 5350 2400 50  0001 C CNN
	1    5350 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2100 4550 2100
Wire Wire Line
	4550 2100 4550 2200
Wire Wire Line
	4650 2200 4550 2200
Connection ~ 4550 2200
Wire Wire Line
	4550 2200 4550 2400
Wire Wire Line
	5250 2100 5350 2100
Wire Wire Line
	5350 2100 5350 2200
Wire Wire Line
	5250 2200 5350 2200
Connection ~ 5350 2200
Wire Wire Line
	5350 2200 5350 2400
$Comp
L power:GND #PWR0103
U 1 1 6048CBB9
P 5950 2400
F 0 "#PWR0103" H 5950 2150 50  0001 C CNN
F 1 "GND" H 5955 2227 50  0000 C CNN
F 2 "" H 5950 2400 50  0001 C CNN
F 3 "" H 5950 2400 50  0001 C CNN
	1    5950 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2100 5950 2400
Wire Wire Line
	5250 1850 5750 1850
Wire Wire Line
	6350 1850 6850 1850
$EndSCHEMATC
