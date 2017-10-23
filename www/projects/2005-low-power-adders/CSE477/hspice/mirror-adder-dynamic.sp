* HSPICE file created from mirror-adder-dynamic.ext - technology: mmi07
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
Vclock clock 0 PWL 0.20NS 0.00V 10.00NS 0.00V 10.20NS 1.00V 20.00NS 1.00V
+ 20.20NS 0.00V 30.00NS 0.00V 30.20NS 1.00V 40.00NS 1.00V
+ 40.20NS 0.00V 50.00NS 0.00V 50.20NS 1.00V 60.00NS 1.00V
+ 60.20NS 0.00V 70.00NS 0.00V 70.20NS 1.00V 80.00NS 1.00V
+ 80.20NS 0.00V 90.00NS 0.00V 90.20NS 1.00V 100.00NS 1.00V
+ 100.20NS 0.00V 110.00NS 0.00V 110.20NS 1.00V 120.00NS 1.00V
+ 120.20NS 0.00V 130.00NS 0.00V 130.20NS 1.00V 140.00NS 1.00V
+ 140.20NS 0.00V 150.00NS 0.00V 150.20NS 1.00V 160.00NS 1.00V
+ 160.20NS 0.00V 170.00NS 0.00V 170.20NS 1.00V 180.00NS 1.00V
VA A 0 PWL 0.20NS 0.00V 20.00NS 0.00V 20.20NS 1.00V 40.00NS 1.00V
+ 40.20NS 0.00V 60.00NS 0.00V 60.20NS 1.00V 80.00NS 1.00V
+ 80.20NS 0.00V 100.00NS 0.00V 100.20NS 1.00V 120.00NS 1.00V
+ 120.20NS 0.00V 140.00NS 0.00V 140.20NS 1.00V 160.00NS 1.00V
+ 160.20NS 0.00V 180.00NS 0.00V
VB B 0 PWL 0.20NS 0.00V 40.00NS 0.00V 40.20NS 1.00V 80.00NS 1.00V
+ 80.20NS 0.00V 120.00NS 0.00V 120.20NS 1.00V 160.00NS 1.00V
+ 160.20NS 0.00V 180.00NS 0.00V
VCin Cin 0 PWL 0.20NS 0.00V 80.00NS 0.00V 80.20NS 1.00V 160.00NS 1.00V
+ 160.20NS 0.00V 180.00NS 0.00V
.TRANS 0.1NS 300.00NS
* HSPICE file created from mirror-adder-dynamic.ext - technology: mmi07

.measure avgpow avg power from 0 to 180.00NS
.measure maxpow max power from 0 to 180.00NS
.measure rmspow rms power from 0 to 180.00NS


.measure lsub avg i(vvdd) from 200.00NS to 300.00NS
.measure lgatea avg i(va) from 200.00NS to 300.00NS
.measure lgateb avg i(vb) from 200.00NS to 300.00NS
.measure lgatecin avg i(vcin) from 200.00NS to 300.00NS

.option scale=0.01u

m0 Cout clock VDD Vdd pch  w=1200 l=7
+ ad=60756 pd=690 as=54824 ps=508 
m1 Sum clock VDD Vdd pch  w=1200 l=7
+ ad=52496 pd=604 as=0 ps=0 
m2 z@10 clock GND GND nch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m3 z@10 A z@11 GND nch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m4 z@11 B z@10 GND nch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m5 Cout Cin z@11 GND nch  w=600 l=7
+ ad=1744 pd=38 as=0 ps=0 
m6 z@12 B z@10 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m7 Cout A z@12 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m8 z@13 clock GND GND nch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m9 Sum Cout z@14 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m10 z@13 B z@14 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m11 z@13 A z@14 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m12 z@13 Cin z@14 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m13 z@15 B z@13 GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m14 z@16 A z@15 GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m15 Sum Cin z@16 GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
** active_3400_4560 == z@16
** active_2910_4560 == z@15
** active_n1380_5550 == z@14
C0 z@14 GND 2.9fF
** active_n1990_1550 == z@13
C1 z@13 GND 7.0fF
** active_n4400_5580 == z@12
** active_n7230_1580 == z@11
C2 z@11 GND 4.5fF
** active_n7750_1580 == z@10
C3 z@10 GND 5.1fF
C4 GND GND 5.6fF
C5 Sum GND 6.6fF
C6 VDD GND 7.1fF
C7 Cin GND 11.1fF
C8 B GND 12.7fF
C9 A GND 13.2fF
C10 Cout GND 7.9fF
C11 clock GND 2.8fF

** hspice subcircuit dictionary
*
* Tail file for an ASIC circuit HSPICE run
*
.protect
.LIB '/home/users2/kyusun/tool/model/libcmos007ucb.sp' CMOS1
.unprotect
* 
.end
