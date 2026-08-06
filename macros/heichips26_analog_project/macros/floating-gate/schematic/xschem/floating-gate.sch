v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Floating gate Resistor} 990 -1700 0 0 1 1 {}
N 1220 -1200 1220 -1150 {lab=#net1}
N 1310 -1340 1310 -1300 {lab=#net2}
N 1220 -1200 1310 -1200 {lab=#net1}
N 1130 -1200 1220 -1200 {lab=#net1}
N 1070 -1270 1090 -1270 {lab=#net3}
N 1070 -1340 1130 -1340 {lab=#net3}
N 1350 -1270 1370 -1270 {lab=#net2}
N 1310 -1340 1370 -1340 {lab=#net2}
N 1370 -1340 1370 -1270 {lab=#net2}
N 1310 -1240 1310 -1200 {lab=#net1}
N 1130 -1240 1130 -1200 {lab=#net1}
N 1370 -1340 1440 -1340 {lab=#net2}
N 1440 -1340 1440 -1150 {lab=#net2}
N 1330 -1120 1400 -1120 {lab=#net4}
N 1260 -1120 1330 -1120 {lab=#net4}
N 1330 -1120 1330 -1050 {lab=#net4}
N 1440 -1090 1440 -1010 {lab=#net5}
N 1220 -1090 1220 -1010 {lab=#net5}
N 1330 -1010 1440 -1010 {lab=#net5}
N 1130 -1340 1130 -1300 {lab=#net3}
N 1070 -1340 1070 -1270 {lab=#net3}
N 1370 -1380 1370 -1340 {lab=#net2}
N 1130 -1380 1130 -1340 {lab=#net3}
N 1090 -1050 1330 -1050 {lab=#net4}
N 1250 -1270 1310 -1270 {lab=#net6}
N 1250 -1270 1250 -1170 {lab=#net6}
N 1130 -1270 1250 -1270 {lab=#net6}
N 1250 -1170 1380 -1170 {lab=#net6}
N 1380 -1070 1380 -950 {lab=#net6}
N 1160 -1120 1220 -1120 {lab=#net6}
N 1160 -1120 1160 -1070 {lab=#net6}
N 1160 -1070 1380 -1070 {lab=#net6}
N 1380 -1170 1380 -1070 {lab=#net6}
N 1380 -1070 1480 -1070 {lab=#net6}
N 1480 -1120 1480 -1070 {lab=#net6}
N 1440 -1120 1480 -1120 {lab=#net6}
N 1330 -1010 1330 -950 {lab=#net5}
N 1220 -1010 1330 -1010 {lab=#net5}
N 770 -1250 770 -1200 {lab=Rout}
N 770 -1390 770 -1310 {lab=Rin}
N 810 -1280 950 -1280 {lab=Vc}
N 650 -1280 650 -1260 {lab=VSS}
N 650 -1280 770 -1280 {lab=VSS}
C {title-3.sym} 0 0 0 0 {name=11 author="Pintilie Sebastian" rev=1.0 lock=true}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1330 -1270 0 1 {name=M2
l=4u
w=7u
ng=20
m=1
mm_ok=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1110 -1270 0 0 {name=M4
l=4u
w=7u
ng=20
m=1
mm_ok=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1240 -1120 0 1 {name=M3
l=4u
w=7u
 ng=20
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1420 -1120 0 0 {name=M1
l=4u
w=7u
 ng=20
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {bindkeys_cheatsheet.sym} 500 -1940 0 0 {}
C {iopin.sym} 1130 -1410 3 0 {name=p2 lab=VDD}
C {ipin.sym} 1360 -1420 1 0 {name=p3 lab=Rin}
C {opin.sym} 1330 -910 1 0 {name=p4 lab=Rout}
C {ipin.sym} 1070 -1050 0 0 {name=p5 lab=Vc}
C {iopin.sym} 1380 -920 1 0 {name=p8 lab=VSS}
C {opin.sym} 770 -1200 1 0 {name=p6 lab=Rout}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 790 -1280 0 1 {name=M5
l=4u
w=7u
 ng=20
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {ipin.sym} 950 -1280 2 0 {name=p7 lab=Vc}
C {ipin.sym} 770 -1390 1 0 {name=p1 lab=Rin}
C {iopin.sym} 650 -1260 1 0 {name=p9 lab=VSS}
