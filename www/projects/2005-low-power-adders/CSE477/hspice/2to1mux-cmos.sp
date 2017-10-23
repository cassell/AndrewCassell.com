* HSPICE file created from 2to1mux-cmos.ext - technology: mmi07
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
VD0 D0 0 PWL 0.20NS 0.00V 10.00NS 0.00V 10.20NS 1.00V 20.00NS 1.00V
+ 20.20NS 0.00V 30.00NS 0.00V 30.20NS 1.00V 40.00NS 1.00V
+ 40.20NS 0.00V 50.00NS 0.00V 50.20NS 1.00V 60.00NS 1.00V
+ 60.20NS 0.00V 70.00NS 0.00V 70.20NS 1.00V 80.00NS 1.00V
VD1 D1 0 PWL 0.20NS 0.00V 20.00NS 0.00V 20.20NS 1.00V 40.00NS 1.00V
+ 40.20NS 0.00V 60.00NS 0.00V 60.20NS 1.00V 80.00NS 1.00V
VSel Sel 0 PWL 0.20NS 0.00V 40.00NS 0.00V 40.20NS 1.00V 80.00NS 1.00V
.TRANS 0.1NS 200.00NS
* HSPICE file created from 2to1mux-cmos.ext - technology: mmi07

.measure avgpow avg power from 0 to 80.00NS
.measure maxpow max power from 0 to 80.00NS
.measure rmspow rms power from 0 to 80.00NS


.measure lsub avg i(vvdd) from 100.00NS to 200.00NS
.measure lgatea avg i(vD0) from 100.00NS to 200.00NS
.measure lgateb avg i(vD1) from 100.00NS to 200.00NS
.measure lgatecin avg i(vSel) from 100.00NS to 200.00NS


.option scale=0.01u

m0 z@10 Sel VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=46708 ps=461 
m1 VDD z@10 BnandSelnot Vdd pch  w=400 l=7
+ ad=0 pd=0 as=31184 ps=364 
m2 BnandSelnot D0 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m3 VDD Sel AnandSel Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m4 AnandSel D1 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m5 VDD AnandSel Z Vdd pch  w=800 l=7
+ ad=0 pd=0 as=47516 ps=471 
m6 Z BnandSelnot VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m7 z@10 Sel GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m8 z@11 z@10 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m9 BnandSelnot D0 z@11 GND nch  w=200 l=7
+ ad=2279 pd=54 as=0 ps=0 
m10 z@12 Sel GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m11 AnandSel D1 z@12 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m12 z@13 AnandSel GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m13 Z BnandSelnot z@13 GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
** active_3260_n3380 == z@13
** active_1820_n1380 == z@12
** active_380_n1390 == z@11
C0 GND GND 5.3fF
C1 Z GND 5.2fF
C2 VDD GND 8.6fF
** active_n570_n1390 == z@10
C3 z@10 GND 2.2fF
C4 D1 GND 2.1fF
C5 Sel GND 3.3fF
C6 BnandSelnot GND 4.5fF
C7 AnandSel GND 4.4fF

** hspice subcircuit dictionary
*
* Tail file for an ASIC circuit HSPICE run
*
.protect
.LIB '/home/users2/kyusun/tool/model/libcmos007ucb.sp' CMOS1
.unprotect
* 
.end
