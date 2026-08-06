v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {FGw=2u
FGl=4u
FGng=1}
F {}
E {}
T {Floating gate Resistor} 990 -1700 0 0 1 1 {}
N 1220 -1200 1220 -1150 {lab=#net1}
N 1310 -1340 1310 -1300 {lab=Rin}
N 1220 -1200 1310 -1200 {lab=#net1}
N 1130 -1200 1220 -1200 {lab=#net1}
N 1070 -1270 1090 -1270 {lab=VDD}
N 1070 -1340 1130 -1340 {lab=VDD}
N 1350 -1270 1370 -1270 {lab=Rin}
N 1310 -1340 1370 -1340 {lab=Rin}
N 1370 -1340 1370 -1270 {lab=Rin}
N 1310 -1240 1310 -1200 {lab=#net1}
N 1130 -1240 1130 -1200 {lab=#net1}
N 1370 -1340 1440 -1340 {lab=Rin}
N 1440 -1340 1440 -1150 {lab=Rin}
N 1330 -1120 1400 -1120 {lab=Vc}
N 1260 -1120 1330 -1120 {lab=Vc}
N 1330 -1120 1330 -1050 {lab=Vc}
N 1440 -1090 1440 -1010 {lab=Rout}
N 1330 -1010 1440 -1010 {lab=Rout}
N 1220 -1090 1220 -1010 {lab=Rout}
N 1330 -1010 1330 -950 {lab=Rout}
N 1220 -1010 1330 -1010 {lab=Rout}
N 1130 -1340 1130 -1300 {lab=VDD}
N 1070 -1340 1070 -1270 {lab=VDD}
N 1370 -1380 1370 -1340 {lab=Rin}
N 1130 -1380 1130 -1340 {lab=VDD}
N 1090 -1050 1330 -1050 {lab=Vc}
N 1250 -1270 1310 -1270 {lab=VSS}
N 1250 -1270 1250 -1170 {lab=VSS}
N 1130 -1270 1250 -1270 {lab=VSS}
N 1250 -1170 1380 -1170 {lab=VSS}
N 1380 -1070 1380 -950 {lab=VSS}
N 1160 -1120 1220 -1120 {lab=VSS}
N 1160 -1120 1160 -1070 {lab=VSS}
N 1160 -1070 1380 -1070 {lab=VSS}
N 1380 -1170 1380 -1070 {lab=VSS}
N 1380 -1070 1480 -1070 {lab=VSS}
N 1480 -1120 1480 -1070 {lab=VSS}
N 1440 -1120 1480 -1120 {lab=VSS}
C {title-3.sym} 0 0 0 0 {name=11 author="Pintilie Sebastian" rev=1.0 lock=true}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1330 -1270 0 1 {name=M2
l=FGl
w=FGw
 ng=FGng
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1110 -1270 0 0 {name=M4
l=FGl
w=FGw
ng=FGng
m=1
mm_ok=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1240 -1120 0 1 {name=M3
l=FGl
w=FGw
 ng=FGng
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1420 -1120 0 0 {name=M1
l=FGl
w=FGw
 ng=FGng
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {bindkeys_cheatsheet.sym} 500 -1940 0 0 {}
C {iopin.sym} 1130 -1380 3 0 {name=p2 lab=VDD}
C {ipin.sym} 1370 -1380 1 0 {name=p3 lab=Rin}
C {opin.sym} 1330 -950 1 0 {name=p4 lab=Rout}
C {ipin.sym} 1090 -1050 0 0 {name=p5 lab=Vc}
C {iopin.sym} 1380 -950 1 0 {name=p8 lab=VSS}
