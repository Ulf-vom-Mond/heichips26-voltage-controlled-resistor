v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Floating gate Resistor} 990 -1700 0 0 1 1 {}
N 1070 -1270 1090 -1270 {lab=Rin}
N 1070 -1340 1130 -1340 {lab=Rin}
N 1130 -1240 1130 -1200 {lab=#net1}
N 1130 -1340 1130 -1300 {lab=Rin}
N 1070 -1340 1070 -1270 {lab=Rin}
N 1130 -1380 1130 -1340 {lab=Rin}
N 1130 -1340 1330 -1340 {lab=Rin}
N 1330 -1340 1330 -1100 {lab=Rin}
N 1350 -890 1350 -860 {lab=VSS}
N 980 -1320 980 -1310 {lab=VDD}
N 940 -1320 940 -1280 {lab=VDD}
N 940 -1320 980 -1320 {lab=VDD}
N 980 -1380 980 -1320 {lab=VDD}
N 980 -1250 980 -1200 {lab=#net1}
N 980 -1200 1130 -1200 {lab=#net1}
N 980 -1280 1020 -1280 {lab=VSS}
N 1130 -1270 1220 -1270 {lab=VSS}
N 1130 -1200 1170 -1200 {lab=#net1}
N 1170 -1200 1170 -1100 {lab=#net1}
N 1250 -1070 1290 -1070 {lab=Vc}
N 1250 -1130 1250 -1070 {lab=Vc}
N 1210 -1070 1250 -1070 {lab=Vc}
N 1120 -1130 1250 -1130 {lab=Vc}
N 1330 -1070 1400 -1070 {lab=VSS}
N 1040 -1070 1170 -1070 {lab=VSS}
N 1170 -1040 1170 -1010 {lab=Rout}
N 1210 -1010 1330 -1010 {lab=Rout}
N 1330 -1040 1330 -1010 {lab=Rout}
N 1210 -1010 1210 -930 {lab=Rout}
N 1170 -1010 1210 -1010 {lab=Rout}
C {title-3.sym} 0 0 0 0 {name=11 author="Pintilie Sebastian" rev=1.0 lock=true}
C {iopin.sym} 980 -1380 3 0 {name=p2 lab=VDD}
C {ipin.sym} 1130 -1380 1 0 {name=p3 lab=Rin}
C {opin.sym} 1210 -930 1 0 {name=p4 lab=Rout}
C {ipin.sym} 1120 -1130 2 1 {name=p5 lab=Vc}
C {iopin.sym} 1350 -860 1 0 {name=p8 lab=VSS}
C {lab_pin.sym} 1350 -890 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1220 -1270 1 0 {name=p6 sig_type=std_logic lab=VSS}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 1310 -1070 0 0 {name=M1
l=0.13u
w=2u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 1110 -1270 0 0 {name=M2
l=0.13u
w=0.5u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 960 -1280 0 0 {name=M3
l=0.13u
w=0.5u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 1020 -1280 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 1190 -1070 0 1 {name=M4
l=0.13u
w=2u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 1400 -1070 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1040 -1070 0 0 {name=p10 sig_type=std_logic lab=VSS}
