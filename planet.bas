10 ' THIS PROGRAM IS ADAPTED FROM ... "LOW PRECISION FORMULAE FOR PLANETARY POSITIONS"
11 ' BY T.C. VAN FLANDERN AND K.F. PULKKINEN, US NAVAL OBSERVATORY, WASHINGTON
20 ' THE ASTROPHYSICAL JOURNAL SUPPLEMENT SERIESM 41:391-411, 1979 NOVEMBER
30 ' PROGRAM WRITTEN BY E. STANTON MAXEY M.D.
40 PRINT "THIS IS PLANET"
50 DEFDBL I, B
60 DEFINT V, A, C
70 DEFSTR P
80 DIM B(33), BA(33), BB(33), P(8,50)
90 BP2=6.283185370:' PI * 2
100 P="##.##":P1="##":P2="###"
110 BP3=1296000: ' ARCSECONDS IN A CIRCLE
120 ' FUNDAMENTAL ARGUMENTS
130 BA(7)=.779072:BB(7)=.00273790931:' Ls
140 BA(8)=VAL(".993126"):BB(8)=.0027377785:' Gs
150 BA(9)=.700695:BB(9)=.011367714:' L1
160 BA(10)=.485541:BB(10)=.01136759566:' G1
170 BA(11)=.566441:BB(11)=.01136762384:' F1
180 BA(12)=VAL(".505498"):BB(12)=VAL(".00445046867"):' L2
190 BA(13)=.140023:BB(13)=.00445036173:' G2
200 BA(14)=.292498:BB(14)=.00445040017:' F2
210 BA(15)=VAL(".987353"):BB(15)=.00145575328:' L4
220 BA(16)=VAL(".053856"):BB(16)=.00145561327:' G4
230 BA(17)=VAL(".849694"):BB(17)=.00145569465:' F4
240 BA(18)=.089608:BB(18)=.00023080893:' L5
250 BA(19)=VAL(".056531"):BB(19)=BB(18):' G5
260 BA(20)=VAL(".814794"):BB(20)=BB(18):' F5
270 BA(21)=.133295:BB(21)=.00009294371:' L6
280 BA(22)=.882987:BB(22)=BB(21):' G6
290 BA(23)=VAL(".821218"):BB(23)=BB(21):' F6
300 BA(24)=VAL(".870169"):BB(24)=VAL(".00003269438"):' L7
310 BA(25)=.400589:BB(25)=BB(24):' G7
320 BA(26)=VAL(".664614"):BB(26)=.00003265562:' F7
330 BA(27)=.846912:BB(27)=.00001672092:' L8
340 BA(28)=VAL(".725368"):BB(28)=BB(27):' G8
350 BA(29)=.480856:BB(29)=.00001663715:' F8
360 BA(31)=VAL(".663854"):BB(31)=.00001115482:' F8
370 BA(32)=.04102:BB(32)=.0000110486:' L9
380 BA(33)=.357355:BB(33)=BB(32):' G9
390 P(0,0)="101113":' EACH 2 DIGITS EQUALS NUMBER OF FUNDAMENTAL ARGUMENT
400 ' PLON COEFFICIENTS
410 ' LENGTH OF STRING GIVES TOTAL ARGUMENTS USED
420 ' +/- ALLOWS STRING SPLITTING AND EVALUATION
430 ' MERCURY
440 P(0,1)="84378 0S+ 1+ 0+ 0"
450 P(0,2)="10733 0S+ 2+ 0+ 0"
460 P(0,3)="1892 0S+ 3+ 0+ 0"
470 P(0,4)="-646 0S+ 0+ 2+ 0"
480 P(0,5)="381 0S+ 4+ 0+ 0"
490 P(0,6)="-306 0S+ 1- 2+ 0"
500 P(0,7)="-274 0S+ 1+ 2+ 0"
510 P(0,8)="-92 0S+ 2+ 2+ 0"
520 P(0,9)="83 0S+ 5+ 0+ 0"
530 P(0,10)="-28 0S+ 3+ 2+ 0"
540 P(0,11)="25 0S+ 2- 2+ 0"
550 P(0,12)="19 0S+ 6+ 0+ 0"
560 P(0,13)="-9 0S+ 4+ 2+ 0"
570 P(0,14)="8 1S+ 1+ 0+ 0"
580 P(0,15)="7 0C+ 2+ 0- 5"
590 ' VENUS
600 P(1,0)="081314"
610 P(1,1)="2814 0S+ 0+ 0+ 2"
620 P(1,2)="-181  0S+ 0+ 0+ 2"
630 P(1,3)="-20 1S+ 0+ 1+ 0"
640 P(1,4)="12 0S+ 0+ 2+ 0"
650 P(1,5)="-10 0C+ 2- 2+ 0"
660 P(1,6)="7 0C+ 3- 3+ 0"
670 ' EARTH
680 P(2,0)="010708131619"
690 P(2,1)="6910 0S+ 0+ 0+ 1+ 0+ 0+ 0"
700 P(2,2)="72 0S+ 0+ 0+ 2+ 0+ 0+ 0"
710 P(2,3)="-17 1S+ 0+ 0+ 1+ 0+ 0+ 0"
720 P(2,4)="-7 0C+ 0+ 0+ 1+ 0+ 0- 1"
730 P(2,5)="6 0S+ 1- 1+ 0+ 0+ 0+ 0"
740 P(2,6)="5 0S+ 0+ 0+ 4+ 0- 8+ 3"
750 P(2,7)="-5 0C+ 0+ 0+ 2- 2+ 0+ 0"
760 P(2,8)="-4 0S+ 0+ 0+ 1- 1+ 0+ 0"
770 P(2,9)="4 0C+ 0+ 0+ 4+ 0- 8+ 3"
780 P(2,10)="3 0S+ 0+ 0+ 2- 2+ 0+ 0"
790 P(2,11)="-3 0S+ 0+ 0+ 0+ 0+ 0+ 1"
800 P(2,12)="-3 0S+ 0+ 0+ 2+ 0+ 0- 2"
810 ' MARS
820 P(3,0)="0813161719"
830 P(3,1)="38451 0S+ 0+ 0+ 1+ 0+ 0"
840 P(3,2)="2238 0S+ 0+ 0+ 2+ 0+ 0"
850 P(3,3)="181 0S+ 0+ 0+ 3+ 0+ 0"
860 P(3,4)="-52 0S+ 0+ 0+ 0+ 2+ 0"
870 P(3,5)="37 1S+ 0+ 0+ 1+ 0+ 0"
880 P(3,6)="-22 0C+ 0+ 0+ 1+ 0- 2"
890 P(3,7)="-19 0S+ 0+ 0+ 1+ 0- 1"
900 P(3,8)="17 0C+ 0+ 0+ 1+ 0- 1"
910 P(3,9)="17 0S+ 0+ 0+ 4+ 0+ 0"
920 P(3,10)="-16 0C+ 0+ 0+ 2+ 0- 2"
930 P(3,11)="13 0C+ 1+ 0- 2+ 0+ 0"
940 P(3,12)="-10 0S+ 0+ 0+ 1- 2+ 0"
950 P(3,13)="-10 0S+ 0+ 0+ 1+ 2+ 0"
960 P(3,14)="7 0C+ 1+ 0- 1+ 0+ 0"
970 P(3,15)="-7 0C+ 2+ 0- 3+ 0+ 0"
980 P(3,16)="-5 0S+ 0+ 1- 3+ 0+ 0"
990 P(3,17)="-5 0S+ 1+ 0- 1+ 0+ 0"
1000 P(3,18)="-5 0S+ 1+ 0- 2+ 0+ 0"
1010 P(3,19)="-4 0C+ 2+ 0- 4+ 0+ 0"
1020 P(3,20)="4 1S+ 0+ 0+ 2+ 0+ 0"
1030 P(3,21)="4 0C+ 0+ 0+ 0+ 0+ 1"
1040 P(3,22)="3 0C+ 0+ 1- 3+ 0+ 0"
1050 P(3,23)="3 0S+ 0+ 0+ 2+ 0- 2"
1060 ' JUPITER
1070 P(4,0)="18192225"
1080 P(4,1)="19934 0S+ 0+ 1+ 0+ 0"
1090 P(4,2)="5023 1C+ 0+ 0+ 0+ 0"
1100 P(4,3)="2511 0C+ 0+ 0+ 0+ 0"
1110 P(4,4)="1093 0C+ 0+ 2- 5+ 0"
1120 P(4,5)="601 0S+ 0+ 2+ 0+ 0"
1130 P(4,6)="-479 0S+ 0+ 2- 5+ 0"
1140 P(4,7)="-185 0S+ 0+ 2- 2+ 0"
1150 P(4,8)="137 0S+ 0+ 3- 5+ 0"
1160 P(4,9)="-131 0S+ 0+ 1- 2+ 0"
1170 P(4,10)="79 0C+ 0+ 1- 1+ 0"
1180 P(4,11)="-76 0C+ 0+ 2- 2+ 0"
1190 P(4,12)="-74 1C+ 0+ 1+ 0+ 0"
1200 P(4,13)="68 1S+ 0+ 1+ 0+ 0"
1210 P(4,14)="66 0C+ 0+ 2- 3+ 0"
1220 P(4,15)="63 0C+ 0+ 3- 5+ 0"
1230 P(4,16)="53 0C+ 0+ 1- 5+ 0"
1240 P(4,17)="49 0S+ 0+ 2- 3+ 0"
1250 P(4,18)="-43 1S+ 0+ 2- 5+ 0"
1260 P(4,19)="-37 0C+ 0+ 1+ 0+ 0"
1270 P(4,20)="25 0S+ 2+ 0+ 0+ 0"
1280 P(4,21)="25 0S+ 0+ 3+ 0+ 0"
1290 P(4,22)="-23 0S+ 0+ 1- 5+ 0"
1300 P(4,23)="-19 1C+ 0+ 2- 5+ 0"
1310 P(4,24)="17 0C+ 0+ 2- 4+ 0"
1320 P(4,25)="17 0C+ 0+ 3- 3+ 0"
1330 P(4,26)="-14 0S+ 0+ 1- 1+ 0"
1340 P(4,27)="-13 0S+ 0+ 3- 4+ 0"
1350 P(4,28)="-9 0C+ 2+ 0+ 0+ 0"
1360 P(4,29)="9 0C+ 0+ 0+ 1+ 0"
1370 P(4,30)="-9 0S+ 0+ 0+ 1+ 0"
1380 P(4,31)="-9 0S+ 0+ 3- 2+ 0"
1390 P(4,32)="9 0S+ 0+ 4- 5+ 0"
1400 P(4,33)="9 0S+ 0+ 2- 6+ 3"
1410 P(4,34)="-8 0C+ 0+ 4-10+ 0"
1420 P(4,35)="7 0C+ 0+ 3- 4+ 0"
1430 P(4,36)="-7 0C+ 0+ 1- 3+ 0"
1440 P(4,37)="-7 0S+ 0+ 4-10+ 0"
1450 P(4,38)="-7 0S+ 0+ 3- 3+ 0"
1460 P(4,39)="6 0C+ 0+ 4- 5+ 0"
1470 P(4,40)="-6 0S+ 0+ 3- 3+ 0")
1480 ' SATURN
1490 P(5,0)="19212225"
1500 P(5,1)="23045 0S+ 0+ 0+ 1+ 0"
1510 P(5,2)="5014 1C+ 0+ 0+ 0+ 0"
1520 P(5,3)="-2689 0C+ 2+ 0- 5+ 0"
1530 P(5,4)="2507 0C+ 0+ 0+ 0+ 0"
1540 P(5,5)="1177 0S+ 2+ 0- 5+ 0"
1550 P(5,6)="-826 0C+ 2+ 0- 4+ 0"
1560 P(5,7)="802 0S+ 0+ 0+ 2+ 0"
1570 P(5,8)="425 0S+ 1+ 0- 2+ 0"
1580 P(5,9)="-229 1C+ 0+ 0+ 1+ 0"
1590 P(5,10)="-153 0c+ 2+ 0- 6+ 0"
1600 P(5,11)="-142 1S+ 0+ 0+ 1+ 0"
1610 P(5,12)="-114 0C+ 0+ 0+ 1+ 0"
1620 P(5,13)="101 1S+ 2+ 0- 5+ 0"
1630 P(5,14)="-70 0C+ 0+ 2+ 0+ 0"
1640 P(5,15)="67 0S+ 0+ 2+ 0+ 0"
1650 P(5,16)="66 0S+ 2+ 0- 6+ 0"
1660 P(5,17)="60 1C+ 2+ 0- 5+ 0"
1670 P(5,18)="41 0S+ 1+ 0- 3+ 0"
1680 P(5,19)="39 0S+ 0+ 0+ 3+ 0"
1690 P(5,20)="31 0S+ 1+ 0- 1+ 0"
1700 P(5,21)="31 0S+ 2+ 0- 2+ 0"
1710 P(5,22)="-29 0C+ 2+ 0- 3+ 0"
1720 P(5,23)="-28 0S+ 2+ 0- 6+ 3"
1730 P(5,24)="28 0C+ 1+ 0- 3+ 0"
1740 P(5,25)="22 1S+ 2+ 0- 4+ 0"
1750 P(5,26)="-22 0S+ 0+ 0+ 1- 3"
1760 P(5,27)="20 0S+ 2+ 0- 3+ 0"
1770 P(5,28)="20 0C+ 4+ 0-10+ 0"
1780 P(5,29)="19 0C+ 0+ 0+ 2- 3"
1790 P(5,30)="19 0S+ 4+ 0-10+ 0"
1800 P(5,31)="-17 1C+ 0+ 0+ 2+ 0"
1810 P(5,32)="-16 0C+ 0+ 0+ 1- 3"
1820 P(5,33)="-12 0S+ 2+ 0- 4+ 0"
1830 P(5,34)="12 0C+ 1+ 0+ 0+ 0"
1840 P(5,35)="-12 0S+ 0+ 0+ 2- 2"
1850 P(5,36)="-11 1S+ 0+ 0+ 2+ 0"
1860 P(5,37)="-11 0C+ 2+ 0- 7+ 0"
1870 P(5,38)="10 0S+ 0+ 0+ 2- 3"
1880 P(5,39)="10 0C+ 2+ 0- 2+ 0"
1890 P(5,40)="9 0S+ 4+ 0- 9+ 0"
1900 P(5,41)="-8 0S+ 0+ 0+ 1- 2"
1910 P(5,42)="-8 0C+ 0+ 2+ 1+ 0"
1920 P(5,43)="8 0C+ 0+ 2- 1+ 0"
1930 P(5,44)="8 0C+ 0+ 0+ 1- 1"
1940 P(5,45)="-8 0S+ 0+ 2- 1+ 0"
1950 P(5,46)="7 0S+ 0+ 2+ 1+ 0"
1960 P(5,47)="-7 0C+ 1+ 0- 2+ 0"
1970 P(5,48)="-7 0C+ 0+ 0+ 2+ 0"
1980 P(5,49)="-6 1S+ 4+ 0-10+ 0"
1990 P(5,50)="6 1C+ 4+ 0-10+ 0"
2000 ' URANUS
2010 P(6,0)="1922252682"
2020 P(6,1)="19397 0S+ 0+ 0+ 1+ 0+ 0"
2030 P(6,2)="570 0S+ 0+ 0+ 2+ 0+ 0"
2040 P(6,3)="-536 1C+ 0+ 0+ 1+ 0+ 0"
2050 P(6,4)="143 0S+ 0+ 1- 2+ 0+ 0"
2060 P(6,5)="110 1S+ 0+ 0+ 1+ 0+ 0"
2070 P(6,6)="102 0S+ 0+ 1- 3+ 0+ 0"
2080 P(6,7)="76 0C+ 0+ 1- 3+ 0+ 0"
2090 P(6,8)="-49 0S+ 1+ 0- 1+ 0+ 0"
2100 P(6,9)="32 2C+ 0+ 0+ 0+ 0+ 0"
2110 P(6,10)="-30 1C+ 0+ 0+ 2+ 0+ 0"
2120 P(6,11)="29 0S+ 2- 6+ 3+ 0+ 0"
2130 P(6,12)="29 0C+ 0+ 0+ 2+ 0- 0"
2140 P(6,13)="-28 0C+ 0+ 0+ 1+ 0- 1"
2150 P(6,14)="23 0S+ 0+ 0+ 3+ 0+ 0"
2160 P(6,15)="-21 0C+ 1+ 0- 1+ 0+ 0"
2170 P(6,16)="20 0S+ 0+ 0+ 1+ 0- 1"
2180 P(6,17)="20 0C+ 0+ 1- 2+ 0+ 0"
2190 P(6,18)="-19 0C+ 0+ 1- 1+ 0+ 0"
2200 P(6,19)="17 0S+ 0+ 0+ 2+ 0- 3"
2210 P(6,20)="14 0S+ 0+ 0+ 3+ 0- 3"
2220 P(6,21)="13 0S+ 0+ 1- 1+ 0+ 0"
2230 P(6,22)="-12 2C+ 0+ 0+ 1+ 0+ 0"
2240 P(6,23)="-12 0C+ 0+ 0+ 1+ 0+ 0"
2250 P(6,24)="10 0S+ 0+ 0+ 2+ 0- 2"
2260 P(6,25)="-9 0S+ 0+ 0+ 0+ 2+ 0"
2270 P(6,26)="-9 2S+ 0+ 0+ 1+ 0+ 0"
2280 P(6,27)="9 0C+ 0+ 0+ 2+ 0- 3"
2290 P(6,28)="8 1C+ 0+ 1- 2+ 0+ 0"
2300 P(6,29)="7 1C+ 0+ 1- 3+ 0+ 0"
2310 P(6,30)="-7 1S+ 0+ 1- 3+ 0+ 0"
2320 P(6,31)="7 1S+ 0+ 0+ 2+ 0+ 0"
2330 P(6,32)="6 0S+ 2- 6+ 2+ 0+ 0"
2340 P(6,33)="6 0C+ 2- 6+ 2+ 0+ 0"
2350 P(6,34)="5 0S+ 0+ 1- 4+ 0+ 0"
2360 P(6,35)="-4 0S+ 0+ 0+ 3+ 0- 4"
2370 P(6,36)="4 0C+ 0+ 0+ 3+ 0- 3"
2380 P(6,37)="-3 0C+ 0+ 0+ 0+ 0+ 1"
2390 P(6,38)="-2 0S+ 0+ 0+ 0+ 0+ 1"
2400 ' NEPTUNE
2410 P(7,0)="1922252829"
2420 P(7,1)="3523 0S+ 0+ 0+ 0+ 1+ 0"
2430 P(7,2)="-50 0S+ 0+ 0+ 0+ 0+ 2"
2440 P(7,3)="-43 1C+ 0+ 0+ 0+ 1+ 0"
2450 P(7,4)="29 0S+ 1+ 0+ 0- 1+ 0"
2460 P(7,5)="19 0S+ 0+ 0+ 0+ 2+ 0"
2470 P(7,6)="-18 0C+ 1+ 0+ 0- 1+ 0"
2480 P(7,7)="13 0C+ 0+ 1+ 0- 1+ 0"
2490 P(7,8)="13 0S+ 0+ 1+ 0- 1+ 0"
2500 P(7,9)="-9 0S+ 0+ 0+ 2- 3+ 0"
2510 P(7,10)="9 0C+ 0+ 0+ 2- 2+ 0"
2520 P(7,11)="-5 0C+ 0+ 0+ 2- 3+ 0"
2530 P(7,12)="-4 1S+ 0+ 0+ 0+ 1+ 0"
2540 P(7,13)="4 0C+ 0+ 0+ 1- 2+ 0"
2550 P(7,14)="4 2S+ 0+ 0+ 0+ 1+ 0"
2560 ' PLUTO
2570 P(8,0)="3233"
2580 P(8,1)="101577 0S+ 1+ 0"
2590 P(8,2)="15517 0S+ 0+ 2"
2600 P(8,3)="-3593 0S+ 0+ 2"
2610 P(8,4)="3414 0S+ 3+ 0"
2620 P(8,5)="-2201 0S+ 1- 2"
2630 P(8,6)="-1871 0S+ 1+ 2"
2640 P(8,7)="839 0S+ 4+ 0"
2650 P(8,8)="-757 0S+ 2+ 2"
2660 P(8,9)="-285 0S+ 3+ 2"
2670 P(8,10)="227 2S+ 1+ 0"
2680 P(8,11)="218 0S+ 2- 2"
2690 P(8,12)="200 1S+ 1+ 0" 
2700 ' PROBLEM INSERTION
2710 PRINT "INSERT PROBLEM"
2720 PRINT "PLANETS ARE SEQUENTIALLY NUMBERED."
2730 PRINT "   MERCURY = 0"
2740 PRINT "   VENUS   = 1"
2750 PRINT "   PLUTO   = 8"
2760 PRINT "NUMBER > 8 = END.":PRINT ""
2770 INPUT "PLANET NUMBER";A
2780 IF A>8 THEN END
2790 ' CONVERT GREGORIAN CALENDAR TO JULIAN DATE.
2800 INPUT "MONTH";IM
2810 INPUT "DAY";ID
2820 INPUT "YEAR";IY
2830 IJD=367*IY
2840 IJD=IJD-FIX(7*(IY-FIX((IM+9)/12))/4)
2850 IJD=IJD-FIX(3*(FIX((IY+FIX((IM-9)/7))/100)+1)/4)
2860 IJD=IJD+FIX(275+IM/9)+ID+1721029#
2870 IJD=IJD-0.5# 'HALF-DAY DRIFT IN STANDARD
2880 ITT=IJD-2451545# 'ITT=T
2890 IT=ITT/36525#+1# 'IT=TIME IN JULIAN CENTURIES
2900 GOTO 2950
2910 'B(7-33)=FUNDAMENTAL ARGUMENTS IN DOUBLE PRECISION
2920 B(V)=BA(V)+BB(V)+ITT
2930 B(V)=B(V)-FIX(B(V)) 'GET PART OF REVOLUTION
2940 RETURN
2950 ' A=NUMBER OF PLANET BEING PROCESSED
2960 ON A+1 GOTO 2970,3000,3010,3020,3030,3040,3050,3060,3070
2970 V=9:VI=15:GOTO 3080 'MERCURY
2980 'V=NUMBER OF L ARGUMENT
2990 'V1 = NUMBER OF ITERATIONS PER PLANET
3000 V=12:VI=6:GOTO 3080 ' VENUS
3010 V=7:VI=12:GOTO 3080 ' EARTH
3020 V=15:VI=20:GOTO 3080 ' MARS
3030 V=18:VI=40:GOTO 3080 ' JUPITER
3040 V=21:VI=50:GOTO 3080 ' SATURN
3050 V=24:VI=38:GOTO 3080 ' URANUS
3060 V=27:VI=14:GOTO 3080 ' NEPTUNE
3070 V=31:VI=12:GOTO 3080 ' PLUTO
3080 GOSUB 2920
3090 BL(A)=B(V)*BP ' L IN ARC SECONDS
3100 FOR C=1 TO LEN(P(A,0)) STEP 2
3110 ' CALCULATE PLON TRIG ARGUMENTS
3120 V=VAL(MID$(P(1,0),C,2)):GOSUB 2920:B(V)=B(V)*BP2 'B(V) IN RADIANS
3130 NEXT C
3140 BG(A)=BL(A) 'BG(A) = LAMBDA
3150 FOR V=1 TO V1 ' V1= NUMBER OF ITERATIONS
3160 V2=INSTR(P(A,V)," ")-1
3170 BCO=VAL(LEFT$(P(A,V),V2)) ' BCO=COEFFICIENT PEELED OFF THE DATA STRING
3180 ITF=VAL(MID$(P(A,V),V2+2,1)) ' ITF = T FACTOR PEELED OUT OF DATA STRING
3190 IF ITF<>0 THEN HCO=BCO*IT*ITF ' MULTIPLY BY T FACTOR IF > 0
3200 FOR V3=1 TO LEN(P(A,0))/2
3210 BV=VAL(MID$(P(A,0)2*V3-1,2))
3220 BT=BT+VAL(MID$(P(A,V),V2+I+3*V3))*B(BV)
3230 NEXT V3
3240 ' DO EITHER SINE OR COSINE
3250 IF MID$(P(A,V),V2+3,1)="C" THEN 3270
3260 BG(A)=BG(A)+BCO*SIN(BT):GOTO 3280
3270 BG(A)=BG(A)+BCO*COS(BT)
3280 BT=0:NEXT V
3290 IF A=2 THEN BG(A)=BG(A)+648000# ' RECIP OF SUN FOR EARTH
3300 IF BG(A)>BP3 THEN BG(A)=BG(A)-BP3
3310 IF BG(A)<0 THEN BG(A)=BG(A)+BP3:GOTO 3310
3320 PRINT"LAMBDA=";BG(A);"ARC SEC"
3330 BM=FIX(BG(A)/600)
3340 BS=BG(A)-BM*600
3350 BD=FIX(BM/60#)
3360 BM=BM-BD*60:IF BD=-1 AND BM=60 THEN BD=0:BM=0
3370 PRINT USING P2;BD;:PRINT"# ";
3380 PRINT USING P1;BM;:PRINT"' ";
3390 PRINT USING P;BS;:PRINT CHR$(34)
3400 PRINT:PRINT "INSERT NEW PROBLEM"
3410 GOTO 2720
