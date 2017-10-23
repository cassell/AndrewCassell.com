* HSPICE file created from mirror-adder-cmos.ext - technology: mmi07
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
VA A 0 PWL 0.20NS 0.00V 10.00NS 0.00V 10.20NS 1.00V 20.00NS 1.00V
+ 20.20NS 0.00V 30.00NS 0.00V 30.20NS 1.00V 40.00NS 1.00V
+ 40.20NS 0.00V 50.00NS 0.00V 50.20NS 1.00V 60.00NS 1.00V
+ 60.20NS 0.00V 70.00NS 0.00V 70.20NS 1.00V 80.00NS 1.00V
VB B 0 PWL 0.20NS 0.00V 20.00NS 0.00V 20.20NS 1.00V 40.00NS 1.00V
+ 40.20NS 0.00V 60.00NS 0.00V 60.20NS 1.00V 80.00NS 1.00V
VCin Cin 0 PWL 0.20NS 0.00V 40.00NS 0.00V 40.20NS 1.00V 80.00NS 1.00V
.TRANS 0.1NS 200.00NS
* HSPICE file created from mirror-adder-cmos.ext - technology: mmi07

.measure avgpow avg power from 0 to 80.00NS
.measure maxpow max power from 0 to 80.00NS
.measure rmspow rms power from 0 to 80.00NS


.measure lsub avg i(vvdd) from 100.00NS to 200.00NS
.measure lgatea avg i(va) from 100.00NS to 200.00NS
.measure lgateb avg i(vb) from 100.00NS to 200.00NS
.measure lgatecin avg i(vcin) from 100.00NS to 200.00NS



.option scale=0.01u

m0 z@10 A VDD Vdd pch  w=1200 l=7
+ ad=54512 pd=518 as=137592 ps=1320 
m1 VDD B z@10 Vdd pch  w=1200 l=7
+ ad=0 pd=0 as=0 ps=0 
m2 Cout Cin z@10 Vdd pch  w=1200 l=7
+ ad=64352 pd=687 as=0 ps=0 
m3 z@11 B VDD Vdd pch  w=400 l=7
+ ad=8624 pd=83 as=0 ps=0 
m4 Cout A z@11 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m5 Sum Cout z@12 Vdd pch  w=400 l=7
+ ad=46324 pd=538 as=40664 ps=427 
m6 VDD B z@12 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m7 VDD A z@12 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m8 VDD Cin z@12 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m9 GND A z@13 GND nch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m10 z@13 B GND GND nch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m11 Cout Cin z@13 GND nch  w=600 l=7
+ ad=2300 pd=55 as=0 ps=0 
m12 z@14 B GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m13 Cout A z@14 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m14 z@15 B VDD Vdd pch  w=600 l=7
+ ad=13024 pd=123 as=0 ps=0 
m15 z@16 A z@15 Vdd pch  w=600 l=7
+ ad=13024 pd=123 as=0 ps=0 
m16 Sum Cin z@16 Vdd pch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m17 Sum Cout z@17 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m18 GND B z@17 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m19 GND A z@17 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m20 GND Cin z@17 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m21 z@18 B GND GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m22 z@19 A z@18 GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m23 Sum Cin z@19 GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
** active_1610_4560 == z@19
** active_1120_4560 == z@18
** active_n3170_5550 == z@17
C0 z@17 GND 2.9fF
** active_1610_8750 == z@16
** active_1120_8750 == z@15
** active_n4400_5580 == z@14
C1 GND GND 10.3fF
** active_n7230_1580 == z@13
C2 z@13 GND 4.7fF
C3 Sum GND 5.8fF
** active_n3170_8760 == z@12
C4 z@12 GND 4.7fF
** active_n4400_8770 == z@11
C5 Cout GND 8.1fF
** active_n6800_8780 == z@10
C6 z@10 GND 5.7fF
C7 VDD GND 18.4fF
C8 A GND 10.0fF
C9 Cin GND 7.7fF
C10 B GND 9.7fF

** hspice subcircuit dictionary
*
* Tail file for an ASIC circuit HSPICE run
*
.protect
.LIB '/home/users2/kyusun/tool/model/libcmos007ucb.sp' CMOS1
.unprotect
* 
.end
