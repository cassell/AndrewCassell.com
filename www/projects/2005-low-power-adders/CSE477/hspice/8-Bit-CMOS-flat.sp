* HSPICE file created from 8-Bit-CMOS-flat.ext - technology: mmi07
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
Vclock clock 0 PWL 0.20NS 0.00V 2.00NS 0.00V 2.20NS 1.00V 4.00NS 1.00V
+ 4.20NS 0.00V 6.00NS 0.00V 6.20NS 1.00V 8.00NS 1.00V
+ 8.20NS 0.00V 10.00NS 0.00V 10.20NS 1.00V 12.00NS 1.00V
+ 12.20NS 0.00V 14.00NS 0.00V 14.20NS 1.00V 16.00NS 1.00V
+ 16.20NS 0.00V 18.00NS 0.00V 18.20NS 1.00V 20.00NS 1.00V
+ 20.20NS 0.00V 22.00NS 0.00V 22.20NS 1.00V 24.00NS 1.00V
+ 24.20NS 0.00V 26.00NS 0.00V 26.20NS 1.00V 28.00NS 1.00V
+ 28.20NS 0.00V 32.00NS 0.00V 32.20NS 1.00V 34.00NS 1.00V
VJUMP JUMP 0 PWL 0.20NS 0.00V 6.00NS 0.00V 6.20NS 1.00V 34.00NS 1.00V
Vj7 j7 0 PWL 0.20NS 0.00V 34.00NS 0.00V
Vj6 j6 0 PWL 0.20NS 0.00V 34.00NS 0.00V
Vj5 j5 0 PWL 0.20NS 0.00V 34.00NS 0.00V
Vj4 j4 0 PWL 0.20NS 0.00V 34.00NS 0.00V
Vj3 j3 0 PWL 0.20NS 0.00V 34.00NS 0.00V
Vj2 j2 0 PWL 0.20NS 0.00V 34.00NS 0.00V
Vj1 j1 0 PWL 0.20NS 0.00V 34.00NS 0.00V
Vj0 j0 0 PWL 0.20NS 0.00V 34.00NS 0.00V
Vb0 b0 0 PWL 0.20NS 1.00V 34.00NS 1.00V
Vb1 b1 0 PWL 0.20NS 1.00V 34.00NS 1.00V
Vb2 b2 0 PWL 0.20NS 0.00V 34.00NS 0.00V
Vb3 b3 0 PWL 0.20NS 1.00V 34.00NS 1.00V
Vb4 b4 0 PWL 0.20NS 0.00V 34.00NS 0.00V
Vb5 b5 0 PWL 0.20NS 1.00V 34.00NS 1.00V
Vb6 b6 0 PWL 0.20NS 0.00V 34.00NS 0.00V
Vb7 b7 0 PWL 0.20NS 1.00V 34.00NS 1.00V
.TRANS 0.1NS 34.00NS
* HSPICE file created from 8-Bit-CMOS-flat.ext - technology: mmi07

.option scale=0.01u

m0 active_960_1840 JUMP VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=2.96863e+06 ps=29389 
m1 VDD active_960_1840 z@10 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=31184 ps=364 
m2 z@10 j7 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m3 VDD JUMP z@11 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m4 z@11 s7 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m5 VDD z@11 mux7 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=57876 ps=642 
m6 mux7 z@10 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m7 z@12 JUMP VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m8 VDD z@12 z@13 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=31184 ps=364 
m9 z@13 j6 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m10 VDD JUMP z@14 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m11 z@14 s6 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m12 active_960_1840 JUMP GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=8052 ps=197 
m13 z@15 active_960_1840 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m14 z@10 j7 z@15 GND nch  w=200 l=7
+ ad=2279 pd=54 as=0 ps=0 
m15 z@16 JUMP GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m16 z@11 s7 z@16 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m17 z@17 z@11 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m18 mux7 z@10 z@17 GND nch  w=400 l=7
+ ad=2549 pd=62 as=0 ps=0 
m19 VDD z@14 mux6 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=57876 ps=642 
m20 mux6 z@13 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m21 z@18 JUMP VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m22 VDD z@18 z@19 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=31184 ps=364 
m23 z@19 j5 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m24 VDD JUMP z@20 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m25 z@20 s5 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m26 z@12 JUMP GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m27 z@21 z@12 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m28 z@13 j6 z@21 GND nch  w=200 l=7
+ ad=2279 pd=54 as=0 ps=0 
m29 z@22 JUMP GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m30 z@14 s6 z@22 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m31 z@23 z@14 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m32 mux6 z@13 z@23 GND nch  w=400 l=7
+ ad=2549 pd=62 as=0 ps=0 
m33 VDD z@20 mux5 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=57876 ps=642 
m34 mux5 z@19 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m35 z@24 JUMP VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m36 VDD z@24 z@25 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=31184 ps=364 
m37 z@25 j4 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m38 VDD JUMP z@26 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m39 z@26 s4 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m40 z@18 JUMP GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m41 z@27 z@18 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m42 z@19 j5 z@27 GND nch  w=200 l=7
+ ad=2279 pd=54 as=0 ps=0 
m43 z@28 JUMP GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m44 z@20 s5 z@28 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m45 z@29 z@20 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m46 mux5 z@19 z@29 GND nch  w=400 l=7
+ ad=2549 pd=62 as=0 ps=0 
m47 VDD z@26 mux4 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=57876 ps=642 
m48 mux4 z@25 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m49 z@30 JUMP VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m50 VDD z@30 z@31 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=31184 ps=364 
m51 z@31 j3 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m52 VDD JUMP z@32 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m53 z@32 s3 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m54 z@24 JUMP GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m55 z@33 z@24 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m56 z@25 j4 z@33 GND nch  w=200 l=7
+ ad=2279 pd=54 as=0 ps=0 
m57 z@34 JUMP GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m58 z@26 s4 z@34 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m59 z@35 z@26 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m60 mux4 z@25 z@35 GND nch  w=400 l=7
+ ad=2549 pd=62 as=0 ps=0 
m61 VDD z@32 mux3 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=57876 ps=642 
m62 mux3 z@31 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m63 z@36 JUMP VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m64 VDD z@36 z@37 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=31184 ps=364 
m65 z@37 j2 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m66 VDD JUMP z@38 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m67 z@38 s2 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m68 z@30 JUMP GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m69 z@39 z@30 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m70 z@31 j3 z@39 GND nch  w=200 l=7
+ ad=2279 pd=54 as=0 ps=0 
m71 z@40 JUMP GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m72 z@32 s3 z@40 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m73 z@41 z@32 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m74 mux3 z@31 z@41 GND nch  w=400 l=7
+ ad=2549 pd=62 as=0 ps=0 
m75 VDD z@38 mux2 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=57876 ps=642 
m76 mux2 z@37 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m77 z@42 JUMP VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m78 VDD z@42 z@43 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=31184 ps=364 
m79 z@43 j1 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m80 VDD JUMP z@44 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m81 z@44 s1 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m82 z@36 JUMP GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m83 z@45 z@36 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m84 z@37 j2 z@45 GND nch  w=200 l=7
+ ad=2279 pd=54 as=0 ps=0 
m85 z@46 JUMP GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m86 z@38 s2 z@46 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m87 z@47 z@38 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m88 mux2 z@37 z@47 GND nch  w=400 l=7
+ ad=2549 pd=62 as=0 ps=0 
m89 VDD z@44 mux1 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=57876 ps=642 
m90 mux1 z@43 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m91 z@48 JUMP VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m92 VDD z@48 z@49 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=31184 ps=364 
m93 z@49 j0 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m94 VDD JUMP z@50 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m95 z@50 s0 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m96 z@42 JUMP GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m97 z@51 z@42 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m98 z@43 j1 z@51 GND nch  w=200 l=7
+ ad=2279 pd=54 as=0 ps=0 
m99 z@52 JUMP GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m100 z@44 s1 z@52 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m101 z@53 z@44 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m102 mux1 z@43 z@53 GND nch  w=400 l=7
+ ad=2549 pd=62 as=0 ps=0 
m103 VDD z@50 mux0 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=57876 ps=642 
m104 mux0 z@49 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m105 z@48 JUMP GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m106 z@54 z@48 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m107 z@49 j0 z@54 GND nch  w=200 l=7
+ ad=2279 pd=54 as=0 ps=0 
m108 z@55 JUMP GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m109 z@50 s0 z@55 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m110 z@56 z@50 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m111 mux0 z@49 z@56 GND nch  w=400 l=7
+ ad=2549 pd=62 as=0 ps=0 
m112 z@57 clock VDD Vdd pch  w=400 l=7
+ ad=28336 pd=378 as=0 ps=0 
m113 z@58 z@57 VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m114 VDD z@58 z@59 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30884 ps=359 
m115 z@59 z@60 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m116 VDD z@57 z@61 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m117 z@61 mux7 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m118 VDD z@61 z@60 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=58344 ps=647 
m119 z@60 z@59 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m120 z@62 clock VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m121 VDD z@62 z@63 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30884 ps=359 
m122 z@63 ff7 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m123 VDD clock z@64 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m124 z@64 z@60 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m125 z@57 clock GND GND nch  w=200 l=7
+ ad=4800 pd=115 as=0 ps=0 
m126 z@58 z@57 GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m127 z@65 z@58 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m128 z@59 z@60 z@65 GND nch  w=200 l=7
+ ad=2451 pd=59 as=0 ps=0 
m129 z@66 z@57 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m130 z@61 mux7 z@66 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m131 z@67 z@61 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m132 z@60 z@59 z@67 GND nch  w=400 l=7
+ ad=5034 pd=122 as=0 ps=0 
m133 VDD z@64 ff7 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=59152 ps=662 
m134 ff7 z@63 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m135 z@68 clock VDD Vdd pch  w=400 l=7
+ ad=28336 pd=378 as=0 ps=0 
m136 z@69 z@68 VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m137 VDD z@69 z@70 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30884 ps=359 
m138 z@70 z@71 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m139 VDD z@68 z@72 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m140 z@72 mux6 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m141 VDD z@72 z@71 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=58344 ps=647 
m142 z@71 z@70 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m143 z@73 clock VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m144 VDD z@73 z@74 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30884 ps=359 
m145 z@74 ff6 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m146 VDD clock z@75 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m147 z@75 z@71 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m148 z@62 clock GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m149 z@76 z@62 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m150 z@63 ff7 z@76 GND nch  w=200 l=7
+ ad=2451 pd=59 as=0 ps=0 
m151 z@77 clock GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m152 z@64 z@60 z@77 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m153 z@78 z@64 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m154 ff7 z@63 z@78 GND nch  w=400 l=7
+ ad=4453 pd=105 as=0 ps=0 
m155 z@68 clock GND GND nch  w=200 l=7
+ ad=4800 pd=115 as=0 ps=0 
m156 z@69 z@68 GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m157 z@79 z@69 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m158 z@70 z@71 z@79 GND nch  w=200 l=7
+ ad=2451 pd=59 as=0 ps=0 
m159 z@80 z@68 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m160 z@72 mux6 z@80 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m161 z@81 z@72 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m162 z@71 z@70 z@81 GND nch  w=400 l=7
+ ad=5034 pd=122 as=0 ps=0 
m163 VDD z@75 ff6 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=116476 ps=1612 
m164 ff6 z@74 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m165 z@82 clock VDD Vdd pch  w=400 l=7
+ ad=28336 pd=378 as=0 ps=0 
m166 z@83 z@82 VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m167 VDD z@83 z@84 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30884 ps=359 
m168 z@84 z@85 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m169 VDD z@82 z@86 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m170 z@86 mux5 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m171 VDD z@86 z@85 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=58344 ps=647 
m172 z@85 z@84 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m173 z@87 clock VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m174 VDD z@87 z@88 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30884 ps=359 
m175 z@88 ff5 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m176 VDD clock z@89 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m177 z@89 z@85 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m178 z@73 clock GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m179 z@90 z@73 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m180 z@74 ff6 z@90 GND nch  w=200 l=7
+ ad=2451 pd=59 as=0 ps=0 
m181 z@91 clock GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m182 z@75 z@71 z@91 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m183 z@92 z@75 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m184 ff6 z@74 z@92 GND nch  w=400 l=7
+ ad=13940 pd=329 as=0 ps=0 
m185 z@82 clock GND GND nch  w=200 l=7
+ ad=4800 pd=115 as=0 ps=0 
m186 z@83 z@82 GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m187 z@93 z@83 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m188 z@84 z@85 z@93 GND nch  w=200 l=7
+ ad=2451 pd=59 as=0 ps=0 
m189 z@94 z@82 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m190 z@86 mux5 z@94 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m191 z@95 z@86 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m192 z@85 z@84 z@95 GND nch  w=400 l=7
+ ad=5034 pd=122 as=0 ps=0 
m193 VDD z@89 ff5 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=59392 ps=666 
m194 ff5 z@88 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m195 z@96 clock VDD Vdd pch  w=400 l=7
+ ad=28336 pd=378 as=0 ps=0 
m196 z@97 z@96 VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m197 VDD z@97 z@98 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30884 ps=359 
m198 z@98 z@99 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m199 VDD z@96 z@100 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m200 z@100 mux4 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m201 VDD z@100 z@99 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=58344 ps=647 
m202 z@99 z@98 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m203 z@101 clock VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m204 VDD z@101 z@102 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30884 ps=359 
m205 z@102 ff4 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m206 VDD clock z@103 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m207 z@103 z@99 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m208 z@87 clock GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m209 z@104 z@87 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m210 z@88 ff5 z@104 GND nch  w=200 l=7
+ ad=2451 pd=59 as=0 ps=0 
m211 z@105 clock GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m212 z@89 z@85 z@105 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m213 z@106 z@89 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m214 ff5 z@88 z@106 GND nch  w=400 l=7
+ ad=4313 pd=101 as=0 ps=0 
m215 z@96 clock GND GND nch  w=200 l=7
+ ad=4800 pd=115 as=0 ps=0 
m216 z@97 z@96 GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m217 z@107 z@97 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m218 z@98 z@99 z@107 GND nch  w=200 l=7
+ ad=2451 pd=59 as=0 ps=0 
m219 z@108 z@96 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m220 z@100 mux4 z@108 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m221 z@109 z@100 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m222 z@99 z@98 z@109 GND nch  w=400 l=7
+ ad=5034 pd=122 as=0 ps=0 
m223 VDD z@103 ff4 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=116476 ps=1612 
m224 ff4 z@102 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m225 z@110 clock VDD Vdd pch  w=400 l=7
+ ad=28336 pd=378 as=0 ps=0 
m226 z@111 z@110 VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m227 VDD z@111 z@112 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30884 ps=359 
m228 z@112 z@113 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m229 VDD z@110 z@114 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m230 z@114 mux3 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m231 VDD z@114 z@113 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=58344 ps=647 
m232 z@113 z@112 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m233 z@115 clock VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m234 VDD z@115 z@116 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30884 ps=359 
m235 z@116 ff3 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m236 VDD clock z@117 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m237 z@117 z@113 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m238 z@101 clock GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m239 z@118 z@101 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m240 z@102 ff4 z@118 GND nch  w=200 l=7
+ ad=2451 pd=59 as=0 ps=0 
m241 z@119 clock GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m242 z@103 z@99 z@119 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m243 z@120 z@103 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m244 ff4 z@102 z@120 GND nch  w=400 l=7
+ ad=13940 pd=329 as=0 ps=0 
m245 z@110 clock GND GND nch  w=200 l=7
+ ad=4800 pd=115 as=0 ps=0 
m246 z@111 z@110 GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m247 z@121 z@111 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m248 z@112 z@113 z@121 GND nch  w=200 l=7
+ ad=2451 pd=59 as=0 ps=0 
m249 z@122 z@110 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m250 z@114 mux3 z@122 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m251 z@123 z@114 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m252 z@113 z@112 z@123 GND nch  w=400 l=7
+ ad=5034 pd=122 as=0 ps=0 
m253 VDD z@117 ff3 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=59140 ps=661 
m254 ff3 z@116 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m255 z@124 clock VDD Vdd pch  w=400 l=7
+ ad=28336 pd=378 as=0 ps=0 
m256 z@125 z@124 VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m257 VDD z@125 z@126 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30884 ps=359 
m258 z@126 z@127 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m259 VDD z@124 z@128 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m260 z@128 mux2 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m261 VDD z@128 z@127 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=58344 ps=647 
m262 z@127 z@126 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m263 z@129 clock VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m264 VDD z@129 z@130 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30884 ps=359 
m265 z@130 ff2 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m266 VDD clock z@131 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m267 z@131 z@127 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m268 z@115 clock GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m269 z@132 z@115 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m270 z@116 ff3 z@132 GND nch  w=200 l=7
+ ad=2451 pd=59 as=0 ps=0 
m271 z@133 clock GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m272 z@117 z@113 z@133 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m273 z@134 z@117 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m274 ff3 z@116 z@134 GND nch  w=400 l=7
+ ad=4460 pd=106 as=0 ps=0 
m275 z@124 clock GND GND nch  w=200 l=7
+ ad=4800 pd=115 as=0 ps=0 
m276 z@125 z@124 GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m277 z@135 z@125 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m278 z@126 z@127 z@135 GND nch  w=200 l=7
+ ad=2451 pd=59 as=0 ps=0 
m279 z@136 z@124 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m280 z@128 mux2 z@136 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m281 z@137 z@128 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m282 z@127 z@126 z@137 GND nch  w=400 l=7
+ ad=5034 pd=122 as=0 ps=0 
m283 VDD z@131 ff2 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=56332 ps=615 
m284 ff2 z@130 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m285 z@138 clock VDD Vdd pch  w=400 l=7
+ ad=28336 pd=378 as=0 ps=0 
m286 z@139 z@138 VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m287 VDD z@139 z@140 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30884 ps=359 
m288 z@140 z@141 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m289 VDD z@138 z@142 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m290 z@142 mux1 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m291 VDD z@142 z@141 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=58344 ps=647 
m292 z@141 z@140 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m293 z@143 clock VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m294 VDD z@143 z@144 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30884 ps=359 
m295 z@144 ff1 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m296 VDD clock z@145 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m297 z@145 z@141 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m298 z@129 clock GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m299 z@146 z@129 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m300 z@130 ff2 z@146 GND nch  w=200 l=7
+ ad=2451 pd=59 as=0 ps=0 
m301 z@147 clock GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m302 z@131 z@127 z@147 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m303 z@148 z@131 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m304 ff2 z@130 z@148 GND nch  w=400 l=7
+ ad=4453 pd=105 as=0 ps=0 
m305 z@138 clock GND GND nch  w=200 l=7
+ ad=4800 pd=115 as=0 ps=0 
m306 z@139 z@138 GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m307 z@149 z@139 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m308 z@140 z@141 z@149 GND nch  w=200 l=7
+ ad=2451 pd=59 as=0 ps=0 
m309 z@150 z@138 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m310 z@142 mux1 z@150 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m311 z@151 z@142 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m312 z@141 z@140 z@151 GND nch  w=400 l=7
+ ad=5034 pd=122 as=0 ps=0 
m313 VDD z@145 ff1 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=58912 ps=658 
m314 ff1 z@144 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m315 z@152 clock VDD Vdd pch  w=400 l=7
+ ad=28336 pd=378 as=0 ps=0 
m316 z@153 z@152 VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m317 VDD z@153 z@154 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30884 ps=359 
m318 z@154 z@155 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m319 VDD z@152 z@156 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m320 z@156 mux0 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m321 VDD z@156 z@155 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=58344 ps=647 
m322 z@155 z@154 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m323 z@157 clock VDD Vdd pch  w=400 l=7
+ ad=14988 pd=157 as=0 ps=0 
m324 VDD z@157 z@158 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30884 ps=359 
m325 z@158 ff0 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m326 VDD clock z@159 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=30092 ps=346 
m327 z@159 z@155 VDD Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m328 z@143 clock GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m329 z@160 z@143 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m330 z@144 ff1 z@160 GND nch  w=200 l=7
+ ad=2451 pd=59 as=0 ps=0 
m331 z@161 clock GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m332 z@145 z@141 z@161 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m333 z@162 z@145 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m334 ff1 z@144 z@162 GND nch  w=400 l=7
+ ad=4593 pd=109 as=0 ps=0 
m335 z@152 clock GND GND nch  w=200 l=7
+ ad=4800 pd=115 as=0 ps=0 
m336 z@153 z@152 GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m337 z@163 z@153 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m338 z@154 z@155 z@163 GND nch  w=200 l=7
+ ad=2451 pd=59 as=0 ps=0 
m339 z@164 z@152 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m340 z@156 mux0 z@164 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m341 z@165 z@156 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m342 z@155 z@154 z@165 GND nch  w=400 l=7
+ ad=5034 pd=122 as=0 ps=0 
m343 VDD z@159 ff0 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=56392 ps=616 
m344 ff0 z@158 VDD Vdd pch  w=800 l=7
+ ad=0 pd=0 as=0 ps=0 
m345 z@157 clock GND GND nch  w=200 l=7
+ ad=2195 pd=52 as=0 ps=0 
m346 z@166 z@157 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m347 z@158 ff0 z@166 GND nch  w=200 l=7
+ ad=2451 pd=59 as=0 ps=0 
m348 z@167 clock GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m349 z@159 z@155 z@167 GND nch  w=200 l=7
+ ad=2577 pd=63 as=0 ps=0 
m350 z@168 z@159 GND GND nch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m351 ff0 z@158 z@168 GND nch  w=400 l=7
+ ad=4565 pd=109 as=0 ps=0 
m352 z@169 ff7 VDD Vdd pch  w=800 l=7
+ ad=69126 pd=954 as=0 ps=0 
m353 z@170 ff5 VDD Vdd pch  w=800 l=7
+ ad=69169 pd=955 as=0 ps=0 
m354 inv3 ff3 VDD Vdd pch  w=800 l=7
+ ad=69126 pd=954 as=0 ps=0 
m355 VDD z@171 buff2 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=76267 ps=1073 
m356 z@171 ff2 VDD Vdd pch  w=800 l=7
+ ad=34650 pd=385 as=0 ps=0 
m357 z@169 ff7 GND GND nch  w=400 l=7
+ ad=11455 pd=269 as=0 ps=0 
m358 z@170 ff5 GND GND nch  w=400 l=7
+ ad=11455 pd=269 as=0 ps=0 
m359 inv3 ff3 GND GND nch  w=400 l=7
+ ad=11455 pd=269 as=0 ps=0 
m360 GND z@171 buff2 GND nch  w=400 l=7
+ ad=0 pd=0 as=11455 ps=269 
m361 z@171 ff2 GND GND nch  w=400 l=7
+ ad=2276 pd=54 as=0 ps=0 
m362 inv1 ff1 VDD Vdd pch  w=800 l=7
+ ad=69126 pd=954 as=0 ps=0 
m363 VDD z@172 buff0 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=76032 ps=1069 
m364 z@172 ff0 VDD Vdd pch  w=800 l=7
+ ad=35106 pd=393 as=0 ps=0 
m365 inv1 ff1 GND GND nch  w=400 l=7
+ ad=11455 pd=269 as=0 ps=0 
m366 GND z@172 buff0 GND nch  w=400 l=7
+ ad=0 pd=0 as=11455 ps=269 
m367 z@172 ff0 GND GND nch  w=400 l=7
+ ad=2010 pd=47 as=0 ps=0 
m368 z@173 b7 VDD Vdd pch  w=1200 l=7
+ ad=54512 pd=518 as=0 ps=0 
m369 VDD z@169 z@173 Vdd pch  w=1200 l=7
+ ad=0 pd=0 as=0 ps=0 
m370 z@174 z@175 z@173 Vdd pch  w=1200 l=7
+ ad=64352 pd=687 as=0 ps=0 
m371 z@176 z@169 VDD Vdd pch  w=400 l=7
+ ad=8624 pd=83 as=0 ps=0 
m372 z@174 b7 z@176 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m373 z@177 z@174 z@178 Vdd pch  w=400 l=7
+ ad=53137 pd=639 as=40664 ps=427 
m374 VDD z@169 z@178 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m375 VDD b7 z@178 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m376 VDD z@175 z@178 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m377 GND b7 z@179 GND nch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m378 z@179 z@169 GND GND nch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m379 z@174 z@175 z@179 GND nch  w=600 l=7
+ ad=2300 pd=55 as=0 ps=0 
m380 z@180 z@169 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m381 z@174 b7 z@180 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m382 z@181 z@169 VDD Vdd pch  w=600 l=7
+ ad=13024 pd=123 as=0 ps=0 
m383 z@182 b7 z@181 Vdd pch  w=600 l=7
+ ad=13024 pd=123 as=0 ps=0 
m384 z@177 z@175 z@182 Vdd pch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m385 z@183 b6 VDD Vdd pch  w=1200 l=7
+ ad=54512 pd=518 as=0 ps=0 
m386 VDD ff6 z@183 Vdd pch  w=1200 l=7
+ ad=0 pd=0 as=0 ps=0 
m387 z@175 z@184 z@183 Vdd pch  w=1200 l=7
+ ad=133500 pd=1833 as=0 ps=0 
m388 z@185 ff6 VDD Vdd pch  w=400 l=7
+ ad=8624 pd=83 as=0 ps=0 
m389 z@175 b6 z@185 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m390 z@186 z@175 z@187 Vdd pch  w=400 l=7
+ ad=52674 pd=642 as=40664 ps=427 
m391 VDD ff6 z@187 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m392 VDD b6 z@187 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m393 VDD z@184 z@187 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m394 z@177 z@174 z@188 GND nch  w=200 l=7
+ ad=2216 pd=52 as=0 ps=0 
m395 GND z@169 z@188 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m396 GND b7 z@188 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m397 GND z@175 z@188 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m398 z@189 z@169 GND GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m399 z@190 b7 z@189 GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m400 z@177 z@175 z@190 GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m401 GND b6 z@191 GND nch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m402 z@191 ff6 GND GND nch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m403 z@175 z@184 z@191 GND nch  w=600 l=7
+ ad=10352 pd=252 as=0 ps=0 
m404 z@192 ff6 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m405 z@175 b6 z@192 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m406 z@193 ff6 VDD Vdd pch  w=600 l=7
+ ad=13024 pd=123 as=0 ps=0 
m407 z@194 b6 z@193 Vdd pch  w=600 l=7
+ ad=13024 pd=123 as=0 ps=0 
m408 z@186 z@184 z@194 Vdd pch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m409 z@195 b5 VDD Vdd pch  w=1200 l=7
+ ad=54512 pd=518 as=0 ps=0 
m410 VDD z@170 z@195 Vdd pch  w=1200 l=7
+ ad=0 pd=0 as=0 ps=0 
m411 z@184 z@196 z@195 Vdd pch  w=1200 l=7
+ ad=133504 pd=1833 as=0 ps=0 
m412 z@197 z@170 VDD Vdd pch  w=400 l=7
+ ad=8624 pd=83 as=0 ps=0 
m413 z@184 b5 z@197 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m414 z@198 z@184 z@199 Vdd pch  w=400 l=7
+ ad=52196 pd=634 as=40664 ps=427 
m415 VDD z@170 z@199 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m416 VDD b5 z@199 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m417 VDD z@196 z@199 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m418 z@186 z@175 z@200 GND nch  w=200 l=7
+ ad=2090 pd=49 as=0 ps=0 
m419 GND ff6 z@200 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m420 GND b6 z@200 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m421 GND z@184 z@200 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m422 z@201 ff6 GND GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m423 z@202 b6 z@201 GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m424 z@186 z@184 z@202 GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m425 GND b5 z@203 GND nch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m426 z@203 z@170 GND GND nch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m427 z@184 z@196 z@203 GND nch  w=600 l=7
+ ad=10352 pd=252 as=0 ps=0 
m428 z@204 z@170 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m429 z@184 b5 z@204 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m430 z@205 z@170 VDD Vdd pch  w=600 l=7
+ ad=13024 pd=123 as=0 ps=0 
m431 z@206 b5 z@205 Vdd pch  w=600 l=7
+ ad=13024 pd=123 as=0 ps=0 
m432 z@198 z@196 z@206 Vdd pch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m433 z@207 b4 VDD Vdd pch  w=1200 l=7
+ ad=54512 pd=518 as=0 ps=0 
m434 VDD ff4 z@207 Vdd pch  w=1200 l=7
+ ad=0 pd=0 as=0 ps=0 
m435 z@196 cout3 z@207 Vdd pch  w=1200 l=7
+ ad=133508 pd=1833 as=0 ps=0 
m436 z@208 ff4 VDD Vdd pch  w=400 l=7
+ ad=8624 pd=83 as=0 ps=0 
m437 z@196 b4 z@208 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m438 z@209 z@196 z@210 Vdd pch  w=400 l=7
+ ad=52222 pd=634 as=40664 ps=427 
m439 VDD ff4 z@210 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m440 VDD b4 z@210 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m441 VDD cout3 z@210 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m442 z@198 z@184 z@211 GND nch  w=200 l=7
+ ad=2314 pd=55 as=0 ps=0 
m443 GND z@170 z@211 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m444 GND b5 z@211 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m445 GND z@196 z@211 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m446 z@212 z@170 GND GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m447 z@213 b5 z@212 GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m448 z@198 z@196 z@213 GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m449 GND b4 z@214 GND nch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m450 z@214 ff4 GND GND nch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m451 z@196 cout3 z@214 GND nch  w=600 l=7
+ ad=10352 pd=252 as=0 ps=0 
m452 z@215 ff4 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m453 z@196 b4 z@215 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m454 z@216 ff4 VDD Vdd pch  w=600 l=7
+ ad=13024 pd=123 as=0 ps=0 
m455 z@217 b4 z@216 Vdd pch  w=600 l=7
+ ad=13024 pd=123 as=0 ps=0 
m456 z@209 cout3 z@217 Vdd pch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m457 z@218 b3 VDD Vdd pch  w=1200 l=7
+ ad=54512 pd=518 as=0 ps=0 
m458 VDD inv3 z@218 Vdd pch  w=1200 l=7
+ ad=0 pd=0 as=0 ps=0 
m459 cout3 cout2 z@218 Vdd pch  w=1200 l=7
+ ad=133512 pd=1833 as=0 ps=0 
m460 z@219 inv3 VDD Vdd pch  w=400 l=7
+ ad=8624 pd=83 as=0 ps=0 
m461 cout3 b3 z@219 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m462 z@220 cout3 z@221 Vdd pch  w=400 l=7
+ ad=52319 pd=636 as=40664 ps=427 
m463 VDD inv3 z@221 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m464 VDD b3 z@221 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m465 VDD cout2 z@221 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m466 z@209 z@196 z@222 GND nch  w=200 l=7
+ ad=2314 pd=55 as=0 ps=0 
m467 GND ff4 z@222 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m468 GND b4 z@222 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m469 GND cout3 z@222 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m470 z@223 ff4 GND GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m471 z@224 b4 z@223 GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m472 z@209 cout3 z@224 GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m473 GND b3 z@225 GND nch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m474 z@225 inv3 GND GND nch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m475 cout3 cout2 z@225 GND nch  w=600 l=7
+ ad=10352 pd=252 as=0 ps=0 
m476 z@226 inv3 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m477 cout3 b3 z@226 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m478 z@227 inv3 VDD Vdd pch  w=600 l=7
+ ad=13024 pd=123 as=0 ps=0 
m479 z@228 b3 z@227 Vdd pch  w=600 l=7
+ ad=13024 pd=123 as=0 ps=0 
m480 z@220 cout2 z@228 Vdd pch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m481 z@229 b2 VDD Vdd pch  w=1200 l=7
+ ad=54512 pd=518 as=0 ps=0 
m482 VDD buff2 z@229 Vdd pch  w=1200 l=7
+ ad=0 pd=0 as=0 ps=0 
m483 cout2 cout1 z@229 Vdd pch  w=1200 l=7
+ ad=133516 pd=1833 as=0 ps=0 
m484 z@230 buff2 VDD Vdd pch  w=400 l=7
+ ad=8624 pd=83 as=0 ps=0 
m485 cout2 b2 z@230 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m486 z@231 cout2 z@232 Vdd pch  w=400 l=7
+ ad=52384 pd=637 as=40664 ps=427 
m487 VDD buff2 z@232 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m488 VDD b2 z@232 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m489 VDD cout1 z@232 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m490 z@220 cout3 z@233 GND nch  w=200 l=7
+ ad=2307 pd=55 as=0 ps=0 
m491 GND inv3 z@233 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m492 GND b3 z@233 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m493 GND cout2 z@233 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m494 z@234 inv3 GND GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m495 z@235 b3 z@234 GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m496 z@220 cout2 z@235 GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m497 GND b2 z@236 GND nch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m498 z@236 buff2 GND GND nch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m499 cout2 cout1 z@236 GND nch  w=600 l=7
+ ad=10352 pd=252 as=0 ps=0 
m500 z@237 buff2 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m501 cout2 b2 z@237 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m502 z@238 buff2 VDD Vdd pch  w=600 l=7
+ ad=13024 pd=123 as=0 ps=0 
m503 z@239 b2 z@238 Vdd pch  w=600 l=7
+ ad=13024 pd=123 as=0 ps=0 
m504 z@231 cout1 z@239 Vdd pch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m505 z@240 b1 VDD Vdd pch  w=1200 l=7
+ ad=54512 pd=518 as=0 ps=0 
m506 VDD inv1 z@240 Vdd pch  w=1200 l=7
+ ad=0 pd=0 as=0 ps=0 
m507 cout1 cout0 z@240 Vdd pch  w=1200 l=7
+ ad=133520 pd=1833 as=0 ps=0 
m508 z@241 inv1 VDD Vdd pch  w=400 l=7
+ ad=8624 pd=83 as=0 ps=0 
m509 cout1 b1 z@241 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m510 z@242 cout1 z@243 Vdd pch  w=400 l=7
+ ad=52445 pd=638 as=40664 ps=427 
m511 VDD inv1 z@243 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m512 VDD b1 z@243 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m513 VDD cout0 z@243 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m514 z@231 cout2 z@244 GND nch  w=200 l=7
+ ad=2279 pd=54 as=0 ps=0 
m515 GND buff2 z@244 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m516 GND b2 z@244 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m517 GND cout1 z@244 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m518 z@245 buff2 GND GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m519 z@246 b2 z@245 GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m520 z@231 cout1 z@246 GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m521 GND b1 z@247 GND nch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m522 z@247 inv1 GND GND nch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m523 cout1 cout0 z@247 GND nch  w=600 l=7
+ ad=10352 pd=252 as=0 ps=0 
m524 z@248 inv1 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m525 cout1 b1 z@248 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m526 z@249 inv1 VDD Vdd pch  w=600 l=7
+ ad=13024 pd=123 as=0 ps=0 
m527 z@250 b1 z@249 Vdd pch  w=600 l=7
+ ad=13024 pd=123 as=0 ps=0 
m528 z@242 cout0 z@250 Vdd pch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m529 z@251 b0 VDD Vdd pch  w=1200 l=7
+ ad=54512 pd=518 as=0 ps=0 
m530 VDD buff0 z@251 Vdd pch  w=1200 l=7
+ ad=0 pd=0 as=0 ps=0 
m531 cout0 GND z@251 Vdd pch  w=1200 l=7
+ ad=133524 pd=1833 as=0 ps=0 
m532 z@252 buff0 VDD Vdd pch  w=400 l=7
+ ad=8624 pd=83 as=0 ps=0 
m533 cout0 b0 z@252 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m534 z@253 cout0 z@254 Vdd pch  w=400 l=7
+ ad=52124 pd=633 as=40664 ps=427 
m535 VDD buff0 z@254 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m536 VDD b0 z@254 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m537 VDD GND z@254 Vdd pch  w=400 l=7
+ ad=0 pd=0 as=0 ps=0 
m538 z@242 cout1 z@255 GND nch  w=200 l=7
+ ad=2174 pd=51 as=0 ps=0 
m539 GND inv1 z@255 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m540 GND b1 z@255 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m541 GND cout0 z@255 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m542 z@256 inv1 GND GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m543 z@257 b1 z@256 GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m544 z@242 cout0 z@257 GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m545 GND b0 z@258 GND nch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m546 z@258 buff0 GND GND nch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m547 cout0 GND z@258 GND nch  w=600 l=7
+ ad=10352 pd=252 as=0 ps=0 
m548 z@259 buff0 GND GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m549 cout0 b0 z@259 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m550 z@260 buff0 VDD Vdd pch  w=600 l=7
+ ad=13024 pd=123 as=0 ps=0 
m551 z@261 b0 z@260 Vdd pch  w=600 l=7
+ ad=13024 pd=123 as=0 ps=0 
m552 z@253 GND z@261 Vdd pch  w=600 l=7
+ ad=0 pd=0 as=0 ps=0 
m553 z@253 cout0 z@262 GND nch  w=200 l=7
+ ad=2362 pd=57 as=0 ps=0 
m554 GND buff0 z@262 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m555 GND b0 z@262 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m556 GND GND z@262 GND nch  w=200 l=7
+ ad=0 pd=0 as=0 ps=0 
m557 z@263 buff0 GND GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m558 z@264 b0 z@263 GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m559 z@253 GND z@264 GND nch  w=300 l=7
+ ad=0 pd=0 as=0 ps=0 
m560 VDD z@265 s7 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=202680 ps=3185 
m561 VDD z@266 z@265 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=27852 ps=272 
m562 VDD z@177 z@266 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=27888 ps=272 
m563 VDD z@267 s6 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=248940 ps=3956 
m564 VDD z@268 z@267 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=27852 ps=272 
m565 VDD z@186 z@268 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=27888 ps=272 
m566 VDD z@269 s5 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=295272 ps=4729 
m567 VDD z@270 z@269 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=27852 ps=272 
m568 VDD z@198 z@270 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=27888 ps=272 
m569 VDD z@271 s4 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=341892 ps=5506 
m570 VDD z@272 z@271 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=27852 ps=272 
m571 VDD z@209 z@272 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=27888 ps=272 
m572 VDD z@273 s3 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=332412 ps=5348 
m573 VDD z@274 z@273 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=27852 ps=272 
m574 VDD z@220 z@274 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=27888 ps=272 
m575 VDD z@275 s2 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=286044 ps=4575 
m576 VDD z@276 z@275 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=27852 ps=272 
m577 VDD z@231 z@276 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=27888 ps=272 
m578 VDD z@277 s1 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=239580 ps=3800 
m579 VDD z@278 z@277 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=27852 ps=272 
m580 VDD z@242 z@278 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=27888 ps=272 
m581 VDD z@279 s0 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=193440 ps=3031 
m582 VDD z@280 z@279 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=27852 ps=272 
m583 VDD z@253 z@280 Vdd pch  w=800 l=7
+ ad=0 pd=0 as=27888 ps=272 
m584 GND z@265 s7 GND nch  w=400 l=7
+ ad=0 pd=0 as=2549 ps=62 
m585 GND z@266 z@265 GND nch  w=400 l=7
+ ad=0 pd=0 as=2048 ps=48 
m586 GND z@177 z@266 GND nch  w=400 l=7
+ ad=0 pd=0 as=2034 ps=47 
m587 GND z@267 s6 GND nch  w=400 l=7
+ ad=0 pd=0 as=2549 ps=62 
m588 GND z@268 z@267 GND nch  w=400 l=7
+ ad=0 pd=0 as=2048 ps=48 
m589 GND z@186 z@268 GND nch  w=400 l=7
+ ad=0 pd=0 as=2034 ps=47 
m590 GND z@269 s5 GND nch  w=400 l=7
+ ad=0 pd=0 as=2549 ps=62 
m591 GND z@270 z@269 GND nch  w=400 l=7
+ ad=0 pd=0 as=2048 ps=48 
m592 GND z@198 z@270 GND nch  w=400 l=7
+ ad=0 pd=0 as=2034 ps=47 
m593 GND z@271 s4 GND nch  w=400 l=7
+ ad=0 pd=0 as=2549 ps=62 
m594 GND z@272 z@271 GND nch  w=400 l=7
+ ad=0 pd=0 as=2048 ps=48 
m595 GND z@209 z@272 GND nch  w=400 l=7
+ ad=0 pd=0 as=2034 ps=47 
m596 GND z@273 s3 GND nch  w=400 l=7
+ ad=0 pd=0 as=2549 ps=62 
m597 GND z@274 z@273 GND nch  w=400 l=7
+ ad=0 pd=0 as=2048 ps=48 
m598 GND z@220 z@274 GND nch  w=400 l=7
+ ad=0 pd=0 as=2034 ps=47 
m599 GND z@275 s2 GND nch  w=400 l=7
+ ad=0 pd=0 as=2549 ps=62 
m600 GND z@276 z@275 GND nch  w=400 l=7
+ ad=0 pd=0 as=2048 ps=48 
m601 GND z@231 z@276 GND nch  w=400 l=7
+ ad=0 pd=0 as=2034 ps=47 
m602 GND z@277 s1 GND nch  w=400 l=7
+ ad=0 pd=0 as=2549 ps=62 
m603 GND z@278 z@277 GND nch  w=400 l=7
+ ad=0 pd=0 as=2048 ps=48 
m604 GND z@242 z@278 GND nch  w=400 l=7
+ ad=0 pd=0 as=2034 ps=47 
m605 GND z@279 s0 GND nch  w=400 l=7
+ ad=0 pd=0 as=2549 ps=62 
m606 GND z@280 z@279 GND nch  w=400 l=7
+ ad=0 pd=0 as=2048 ps=48 
m607 GND z@253 z@280 GND nch  w=400 l=7
+ ad=0 pd=0 as=2034 ps=47 
** active_132980_n83640 == z@280
C0 z@280 GND 3.5fF
** active_132030_n83640 == z@279
C1 z@279 GND 3.5fF
** active_117160_n83640 == z@278
C2 z@278 GND 3.5fF
** active_116210_n83640 == z@277
C3 z@277 GND 3.5fF
** active_101130_n83640 == z@276
C4 z@276 GND 3.5fF
** active_100180_n83640 == z@275
C5 z@275 GND 3.5fF
** active_85520_n83640 == z@274
C6 z@274 GND 3.5fF
** active_84570_n83640 == z@273
C7 z@273 GND 3.5fF
** active_69490_n83640 == z@272
C8 z@272 GND 3.5fF
** active_68540_n83640 == z@271
C9 z@271 GND 3.5fF
** active_53670_n83640 == z@270
C10 z@270 GND 3.5fF
** active_52720_n83640 == z@269
C11 z@269 GND 3.5fF
** active_37750_n83640 == z@268
C12 z@268 GND 3.5fF
** active_36800_n83640 == z@267
C13 z@267 GND 3.5fF
** active_21830_n83640 == z@266
C14 z@266 GND 3.5fF
** active_20880_n83640 == z@265
C15 z@265 GND 3.5fF
** active_133250_n60500 == z@264
** active_132760_n60500 == z@263
** active_128470_n59510 == z@262
C16 z@262 GND 2.9fF
** active_133250_n56310 == z@261
** active_132760_n56310 == z@260
** active_127240_n59480 == z@259
** active_124410_n63480 == z@258
C17 z@258 GND 4.7fF
** active_117400_n60500 == z@257
** active_116910_n60500 == z@256
** active_112620_n59510 == z@255
C18 z@255 GND 2.9fF
** active_128900_n59510 == z@253
C19 z@253 GND 7.4fF
** active_128470_n56300 == z@254
C20 z@254 GND 4.7fF
** active_127240_n56290 == z@252
** active_124840_n56280 == z@251
C21 z@251 GND 5.7fF
** active_117400_n56310 == z@250
** active_116910_n56310 == z@249
** active_111390_n59480 == z@248
** active_108560_n63480 == z@247
C22 z@247 GND 4.7fF
** active_101550_n60500 == z@246
** active_101060_n60500 == z@245
** active_96770_n59510 == z@244
C23 z@244 GND 2.9fF
** active_113050_n59510 == z@242
C24 z@242 GND 7.4fF
** active_112620_n56300 == z@243
C25 z@243 GND 4.7fF
** active_111390_n56290 == z@241
** active_108990_n56280 == z@240
C26 z@240 GND 5.7fF
** active_101550_n56310 == z@239
** active_101060_n56310 == z@238
** active_95540_n59480 == z@237
** active_92710_n63480 == z@236
C27 z@236 GND 4.7fF
** active_85700_n60500 == z@235
** active_85210_n60500 == z@234
** active_80920_n59510 == z@233
C28 z@233 GND 2.9fF
** active_97200_n59510 == z@231
C29 z@231 GND 7.4fF
** active_96770_n56300 == z@232
C30 z@232 GND 4.7fF
** active_95540_n56290 == z@230
** active_93140_n56280 == z@229
C31 z@229 GND 5.7fF
** active_85700_n56310 == z@228
** active_85210_n56310 == z@227
** active_79690_n59480 == z@226
** active_76860_n63480 == z@225
C32 z@225 GND 4.7fF
** active_69850_n60500 == z@224
** active_69360_n60500 == z@223
** active_65070_n59510 == z@222
C33 z@222 GND 2.9fF
** active_81350_n59510 == z@220
C34 z@220 GND 7.4fF
** active_80920_n56300 == z@221
C35 z@221 GND 4.7fF
** active_79690_n56290 == z@219
** active_77290_n56280 == z@218
C36 z@218 GND 5.7fF
** active_69850_n56310 == z@217
** active_69360_n56310 == z@216
** active_63840_n59480 == z@215
** active_61010_n63480 == z@214
C37 z@214 GND 4.7fF
** active_54000_n60500 == z@213
** active_53510_n60500 == z@212
** active_49220_n59510 == z@211
C38 z@211 GND 2.9fF
** active_65500_n59510 == z@209
C39 z@209 GND 7.4fF
** active_65070_n56300 == z@210
C40 z@210 GND 4.7fF
** active_63840_n56290 == z@208
** active_61440_n56280 == z@207
C41 z@207 GND 5.7fF
** active_54000_n56310 == z@206
** active_53510_n56310 == z@205
** active_47990_n59480 == z@204
** active_45160_n63480 == z@203
C42 z@203 GND 4.7fF
** active_38150_n60500 == z@202
** active_37660_n60500 == z@201
** active_33370_n59510 == z@200
C43 z@200 GND 2.9fF
** active_49650_n59510 == z@198
C44 z@198 GND 7.4fF
** active_49220_n56300 == z@199
C45 z@199 GND 4.7fF
** active_47990_n56290 == z@197
** active_45590_n56280 == z@195
C46 z@195 GND 5.7fF
** active_38150_n56310 == z@194
** active_37660_n56310 == z@193
** active_32140_n59480 == z@192
** active_29310_n63480 == z@191
C47 z@191 GND 4.7fF
** active_22300_n60500 == z@190
** active_21810_n60500 == z@189
** active_17520_n59510 == z@188
C48 z@188 GND 2.9fF
** active_33800_n59510 == z@186
C49 z@186 GND 7.4fF
** active_33370_n56300 == z@187
C50 z@187 GND 4.7fF
** active_32140_n56290 == z@185
** active_29740_n56280 == z@183
C51 z@183 GND 5.7fF
** active_22300_n56310 == z@182
** active_21810_n56310 == z@181
** active_16290_n59480 == z@180
** active_13460_n63480 == z@179
C52 z@179 GND 4.7fF
** active_17950_n59510 == z@177
C53 z@177 GND 7.4fF
** active_17520_n56300 == z@178
C54 z@178 GND 4.7fF
** active_16290_n56290 == z@176
** active_15340_n63480 == z@174
C55 z@174 GND 8.1fF
** active_13890_n56280 == z@173
C56 z@173 GND 5.7fF
C57 b0 GND 10.3fF
C58 b1 GND 10.3fF
C59 cout0 GND 22.7fF
C60 b2 GND 10.3fF
C61 cout1 GND 22.7fF
C62 b3 GND 10.3fF
C63 cout2 GND 22.7fF
C64 b4 GND 10.3fF
C65 cout3 GND 22.7fF
C66 b5 GND 10.3fF
** active_46855_n42680 == z@196
C67 z@196 GND 22.7fF
C68 b6 GND 10.3fF
** active_31005_n42680 == z@184
C69 z@184 GND 22.7fF
C70 b7 GND 10.3fF
** active_15155_n42680 == z@175
C71 z@175 GND 22.7fF
C72 buff0 GND 14.6fF
C73 inv1 GND 13.3fF
** active_121655_n35805 == z@172
C74 z@172 GND 4.7fF
C75 buff2 GND 14.6fF
C76 inv3 GND 13.3fF
** active_45900_n43450 == z@170
C77 z@170 GND 13.3fF
** active_14200_n43450 == z@169
C78 z@169 GND 13.3fF
** active_89985_n35595 == z@171
C79 z@171 GND 4.7fF
** active_124590_n19500 == z@168
** active_123150_n17500 == z@167
** active_121710_n17510 == z@166
** active_117680_n19470 == z@165
** active_116240_n17470 == z@164
** active_114800_n17480 == z@163
** active_108740_n19500 == z@162
** active_107300_n17500 == z@161
** active_105860_n17510 == z@160
C80 ff0 GND 7.8fF
** active_120760_n17510 == z@157
C81 z@157 GND 2.2fF
** active_121280_n14360 == z@158
C82 z@158 GND 4.5fF
** active_115020_n18560 == z@155
C83 z@155 GND 9.3fF
** active_113850_n17480 == z@153
C84 z@153 GND 2.2fF
** active_111820_n17490 == z@152
C85 z@152 GND 5.2fF
** active_101830_n19470 == z@151
** active_100390_n17470 == z@150
** active_98950_n17480 == z@149
** active_92890_n19500 == z@148
** active_91450_n17500 == z@147
** active_90010_n17510 == z@146
C86 ff1 GND 8.2fF
** active_104910_n17510 == z@143
C87 z@143 GND 2.2fF
** active_114370_n14330 == z@154
C88 z@154 GND 4.5fF
** active_122720_n14360 == z@159
C89 z@159 GND 4.4fF
** active_105430_n14360 == z@144
C90 z@144 GND 4.5fF
** active_99170_n18560 == z@141
C91 z@141 GND 9.3fF
** active_98000_n17480 == z@139
C92 z@139 GND 2.2fF
** active_95970_n17490 == z@138
C93 z@138 GND 5.2fF
** active_85980_n19470 == z@137
** active_84540_n17470 == z@136
** active_83100_n17480 == z@135
** active_77040_n19500 == z@134
** active_75600_n17500 == z@133
** active_74160_n17510 == z@132
C94 ff2 GND 7.8fF
** active_89060_n17510 == z@129
C95 z@129 GND 2.2fF
** active_98520_n14330 == z@140
C96 z@140 GND 4.5fF
** active_115810_n14330 == z@156
C97 z@156 GND 4.4fF
** active_106870_n14360 == z@145
C98 z@145 GND 4.4fF
** active_89580_n14360 == z@130
C99 z@130 GND 4.5fF
** active_83320_n18560 == z@127
C100 z@127 GND 9.3fF
** active_82150_n17480 == z@125
C101 z@125 GND 2.2fF
** active_80120_n17490 == z@124
C102 z@124 GND 5.2fF
** active_70130_n19470 == z@123
** active_68690_n17470 == z@122
** active_67250_n17480 == z@121
** active_61190_n19500 == z@120
** active_59750_n17500 == z@119
** active_58310_n17510 == z@118
C103 ff3 GND 8.2fF
** active_73210_n17510 == z@115
C104 z@115 GND 2.2fF
** active_82670_n14330 == z@126
C105 z@126 GND 4.5fF
** active_99960_n14330 == z@142
C106 z@142 GND 4.4fF
** active_91020_n14360 == z@131
C107 z@131 GND 4.4fF
** active_73730_n14360 == z@116
C108 z@116 GND 4.5fF
** active_67470_n18560 == z@113
C109 z@113 GND 9.3fF
** active_66300_n17480 == z@111
C110 z@111 GND 2.2fF
** active_64270_n17490 == z@110
C111 z@110 GND 5.2fF
** active_54280_n19470 == z@109
** active_52840_n17470 == z@108
** active_51400_n17480 == z@107
** active_45340_n19500 == z@106
** active_43900_n17500 == z@105
** active_42460_n17510 == z@104
C112 ff4 GND 21.0fF
** active_57360_n17510 == z@101
C113 z@101 GND 2.2fF
** active_66820_n14330 == z@112
C114 z@112 GND 4.5fF
** active_84110_n14330 == z@128
C115 z@128 GND 4.4fF
** active_75170_n14360 == z@117
C116 z@117 GND 4.4fF
** active_57880_n14360 == z@102
C117 z@102 GND 4.5fF
** active_51620_n18560 == z@99
C118 z@99 GND 9.3fF
** active_50450_n17480 == z@97
C119 z@97 GND 2.2fF
** active_48420_n17490 == z@96
C120 z@96 GND 5.2fF
** active_38430_n19470 == z@95
** active_36990_n17470 == z@94
** active_35550_n17480 == z@93
** active_29490_n19500 == z@92
** active_28050_n17500 == z@91
** active_26610_n17510 == z@90
C121 ff5 GND 8.3fF
** active_41510_n17510 == z@87
C122 z@87 GND 2.2fF
** active_50970_n14330 == z@98
C123 z@98 GND 4.5fF
** active_68260_n14330 == z@114
C124 z@114 GND 4.4fF
** active_59320_n14360 == z@103
C125 z@103 GND 4.4fF
** active_42030_n14360 == z@88
C126 z@88 GND 4.5fF
** active_35770_n18560 == z@85
C127 z@85 GND 9.3fF
** active_34600_n17480 == z@83
C128 z@83 GND 2.2fF
** active_32570_n17490 == z@82
C129 z@82 GND 5.2fF
** active_22580_n19470 == z@81
** active_21140_n17470 == z@80
** active_19700_n17480 == z@79
** active_13640_n19500 == z@78
** active_12200_n17500 == z@77
** active_10760_n17510 == z@76
C130 ff6 GND 21.0fF
** active_25660_n17510 == z@73
C131 z@73 GND 2.2fF
** active_35120_n14330 == z@84
C132 z@84 GND 4.5fF
** active_52410_n14330 == z@100
C133 z@100 GND 4.4fF
** active_43470_n14360 == z@89
C134 z@89 GND 4.4fF
** active_26180_n14360 == z@74
C135 z@74 GND 4.5fF
** active_19920_n18560 == z@71
C136 z@71 GND 9.3fF
** active_18750_n17480 == z@69
C137 z@69 GND 2.2fF
** active_16720_n17490 == z@68
C138 z@68 GND 5.2fF
** active_6730_n19470 == z@67
** active_5290_n17470 == z@66
** active_3850_n17480 == z@65
C139 ff7 GND 8.2fF
** active_9810_n17510 == z@62
C140 z@62 GND 2.2fF
** active_19270_n14330 == z@70
C141 z@70 GND 4.5fF
** active_36560_n14330 == z@86
C142 z@86 GND 4.4fF
** active_27620_n14360 == z@75
C143 z@75 GND 4.4fF
** active_10330_n14360 == z@63
C144 z@63 GND 4.5fF
** active_4070_n18560 == z@60
C145 z@60 GND 9.3fF
** active_2900_n17480 == z@58
C146 z@58 GND 2.2fF
** active_870_n17490 == z@57
C147 z@57 GND 5.2fF
C148 clock GND 83.8fF
** active_3420_n14330 == z@59
C149 z@59 GND 4.5fF
** active_20710_n14330 == z@72
C150 z@72 GND 4.4fF
** active_11770_n14360 == z@64
C151 z@64 GND 4.4fF
** active_4860_n14330 == z@61
C152 z@61 GND 4.4fF
** active_115740_n150 == z@56
** active_114300_1850 == z@55
** active_112860_1840 == z@54
C153 mux0 GND 7.6fF
** active_99890_n150 == z@53
** active_98450_1850 == z@52
** active_97010_1840 == z@51
** active_111910_1840 == z@48
C154 z@48 GND 2.2fF
C155 s0 GND 32.9fF
C156 mux1 GND 7.6fF
** active_84040_n150 == z@47
** active_82600_1850 == z@46
** active_81160_1840 == z@45
** active_96060_1840 == z@42
C157 z@42 GND 2.2fF
C158 s1 GND 41.0fF
C159 mux2 GND 7.6fF
** active_68190_n150 == z@41
** active_66750_1850 == z@40
** active_65310_1840 == z@39
** active_80210_1840 == z@36
C160 z@36 GND 2.2fF
C161 s2 GND 49.2fF
C162 j2 GND 2.0fF
C163 mux3 GND 7.6fF
** active_52340_n150 == z@35
** active_50900_1850 == z@34
** active_49460_1840 == z@33
** active_64360_1840 == z@30
C164 z@30 GND 2.2fF
C165 s3 GND 57.4fF
C166 j3 GND 2.0fF
C167 mux4 GND 7.6fF
** active_36490_n150 == z@29
** active_35050_1850 == z@28
** active_33610_1840 == z@27
** active_48510_1840 == z@24
C168 z@24 GND 2.2fF
C169 s4 GND 59.1fF
C170 mux5 GND 7.6fF
** active_20640_n150 == z@23
** active_19200_1850 == z@22
** active_17760_1840 == z@21
** active_32660_1840 == z@18
C171 z@18 GND 2.2fF
C172 s5 GND 50.9fF
C173 mux6 GND 7.6fF
** active_4790_n150 == z@17
** active_3350_1850 == z@16
** active_1910_1840 == z@15
C174 GND GND 496.0fF
** active_16810_1840 == z@12
C175 z@12 GND 2.2fF
C176 s6 GND 42.7fF
C177 mux7 GND 7.6fF
C178 VDD GND 700.5fF
C179 active_960_1840 GND 2.2fF
C180 s7 GND 34.5fF
C181 JUMP GND 51.8fF
** active_112430_4990 == z@49
C182 z@49 GND 4.5fF
** active_96580_4990 == z@43
C183 z@43 GND 4.5fF
** active_80730_4990 == z@37
C184 z@37 GND 4.5fF
** active_64880_4990 == z@31
C185 z@31 GND 4.5fF
** active_49030_4990 == z@25
C186 z@25 GND 4.5fF
** active_33180_4990 == z@19
C187 z@19 GND 4.5fF
** active_17330_4990 == z@13
C188 z@13 GND 4.5fF
** active_1480_4990 == z@10
C189 z@10 GND 4.5fF
** active_113870_4990 == z@50
C190 z@50 GND 4.4fF
** active_98020_4990 == z@44
C191 z@44 GND 4.4fF
** active_82170_4990 == z@38
C192 z@38 GND 4.4fF
** active_66320_4990 == z@32
C193 z@32 GND 4.4fF
** active_50470_4990 == z@26
C194 z@26 GND 4.4fF
** active_34620_4990 == z@20
C195 z@20 GND 4.4fF
** active_18770_4990 == z@14
C196 z@14 GND 4.4fF
** active_2920_4990 == z@11
C197 z@11 GND 4.4fF

** hspice subcircuit dictionary
*
* Tail file for an ASIC circuit HSPICE run
*
.protect
.LIB '/home/users2/kyusun/tool/model/libcmos007ucb.sp' CMOS1
.unprotect
* 
.end
