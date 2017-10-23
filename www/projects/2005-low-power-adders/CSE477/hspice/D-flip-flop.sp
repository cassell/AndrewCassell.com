* HSPICE file created from D-flip-flop.ext - technology: mmi07
*
* Header file for an ASIC circuit HSPICE run
*
.option post
.option post_version=9007  $ mmi's nst program require this
.option ACCT=1 BRIEF=1
.option NUMDGT=8 MEASDGT=8 $ for output printing
.option ACCURATE           $ this is for transient analysis only
*
VVDD Vdd 0 1.00
Vclock clock 0 PWL 0.20NS 0.00V 30.00NS 0.00V 30.20NS 1.00V 60.00NS 1.00V
+ 60.20NS 0.00V 90.00NS 0.00V 90.20NS 1.00V 120.00NS 1.00V
VD D 0 PWL 0.20NS 0.00V 10.00NS 0.00V 10.20NS 1.00V 20.00NS 1.00V
+ 20.20NS 0.00V 50.00NS 0.00V 50.20NS 1.00V 70.00NS 1.00V
+ 70.20NS 0.00V 80.00NS 0.00V 80.20NS 1.00V 100.00NS 1.00V
+ 100.20NS 0.00V 120.00NS 0.00V
.TRANS 0.1NS 240.00NS
* HSPICE file created from D-flip-flop.ext - technology: mmi07

.measure avgpow avg power from 0 to 120.00NS
.measure maxpow max power from 0 to 120.00NS
.measure rmspow rms power from 0 to 120.00NS


.measure lsub avg i(vvdd) from 140.00NS to 240.00NS
.measure lgatea avg i(vD) from 140.00NS to 240.00NS
.measure lgateb avg i(vclock) from 140.00NS to 240.00NS

.option scale=0.01u

m0 clockbar clock VDD Vdd pch  w=400 l=7
+ ad=28336 pd=378 as=102752 ps=1015 
m1 z@10 clockbar VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m2 VDD z@10 active_n50_1760 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30884 ps=359 
m3 active_n50_1760 z@11 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m4 VDD clockbar z@12 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m5 z@12 D VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m6 VDD z@12 z@11 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=58344 ps=647 
m7 z@11 active_n50_1760 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m8 z@13 clock VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m9 VDD z@13 z@14 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30884 ps=359 
m10 z@14 Q VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m11 VDD clock z@15 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m12 z@15 z@11 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m13 clockbar clock GND GND nch  w=200 l=7
+ ad=4800 pd=115 as=0 ps=0 
m14 z@10 clockbar GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m15 z@16 z@10 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m16 active_n50_1760 z@11 z@16 GND nch  w=200 l=7
+ ad=2451 pd=59 as=0 ps=0 
m17 z@17 clockbar GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m18 z@12 D z@17 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m19 z@18 z@12 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m20 z@11 active_n50_1760 z@18 GND nch  w=400 l=7
+ ad=5034 pd=122 as=0 ps=0 
m21 VDD z@15 Q Vdd pch  w=800 l=7
+ ad=0 pd=0 as=54432 ps=585 
m22 Q z@14 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m23 z@13 clock GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m24 z@19 z@13 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m25 z@14 Q z@19 GND nch  w=200 l=7
+ ad=2451 pd=59 as=0 ps=0 
m26 z@20 clock GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m27 z@15 z@11 z@20 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m28 z@21 z@15 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m29 Q z@14 z@21 GND nch  w=400 l=7
+ ad=2486 pd=60 as=0 ps=0 
** active_10170_n3410 == z@21
** active_8730_n1410 == z@20
** active_7290_n1420 == z@19
C0 GND GND 12.3fF
** active_3260_n3380 == z@18
** active_1820_n1380 == z@17
** active_380_n1390 == z@16
C1 VDD GND 19.9fF
C2 Q GND 7.0fF
** active_6340_n1420 == z@13
C3 z@13 GND 2.2fF
** active_6860_1730 == z@14
C4 z@14 GND 4.5fF
** active_600_n2470 == z@11
C5 z@11 GND 9.3fF
** active_n570_n1390 == z@10
C6 z@10 GND 2.2fF
C7 clockbar GND 5.2fF
C8 clock GND 6.7fF
C9 active_n50_1760 GND 4.5fF
** active_8300_1730 == z@15
C10 z@15 GND 4.4fF
** active_1390_1760 == z@12
C11 z@12 GND 4.4fF

** hspice subcircuit dictionary
*
* Tail file for an ASIC circuit HSPICE run
*
.protect
.LIB '/home/users2/kyusun/tool/model/libcmos007ucb.sp' CMOS1
.unprotect
* 
.end
