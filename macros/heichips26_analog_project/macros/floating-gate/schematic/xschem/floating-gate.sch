v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Floating gate Resistor} 990 -1700 0 0 1 1 {}
N 770 -1250 770 -1200 {lab=#net1}
N 770 -1390 770 -1310 {lab=#net2}
N 810 -1280 950 -1280 {lab=#net3}
N 590 -1280 770 -1280 {lab=#net4}
N 670 -1420 670 -1390 {lab=#net2}
N 670 -1390 770 -1390 {lab=#net2}
N 590 -1390 670 -1390 {lab=#net2}
N 590 -1340 590 -1310 {lab=#net2}
N 520 -1340 590 -1340 {lab=#net2}
N 590 -1390 590 -1340 {lab=#net2}
N 520 -1340 520 -1280 {lab=#net2}
N 520 -1280 550 -1280 {lab=#net2}
N 590 -1250 590 -1200 {lab=#net1}
N 590 -1200 670 -1200 {lab=#net1}
N 670 -1200 670 -1160 {lab=#net1}
N 670 -1200 770 -1200 {lab=#net1}
N 1310 -1250 1310 -1200 {lab=#net5}
N 1310 -1350 1310 -1310 {lab=Rin}
N 1130 -1280 1310 -1280 {lab=VSS}
N 1130 -1340 1130 -1310 {lab=VDD}
N 1060 -1340 1130 -1340 {lab=VDD}
N 1130 -1390 1130 -1340 {lab=VDD}
N 1060 -1340 1060 -1280 {lab=VDD}
N 1060 -1280 1090 -1280 {lab=VDD}
N 1130 -1250 1130 -1200 {lab=#net5}
N 1130 -1200 1210 -1200 {lab=#net5}
N 1210 -1200 1210 -1180 {lab=#net5}
N 1210 -1200 1310 -1200 {lab=#net5}
N 1310 -1350 1390 -1350 {lab=Rin}
N 1310 -1390 1310 -1350 {lab=Rin}
N 1390 -1350 1390 -1280 {lab=Rin}
N 1350 -1280 1390 -1280 {lab=Rin}
N 1390 -1280 1450 -1280 {lab=Rin}
N 1450 -1280 1450 -1180 {lab=Rin}
N 1330 -1150 1410 -1150 {lab=Vc}
N 1150 -1150 1210 -1150 {lab=VSS}
N 1450 -1150 1500 -1150 {lab=VSS}
N 1330 -1180 1330 -1150 {lab=Vc}
N 1250 -1150 1330 -1150 {lab=Vc}
N 1210 -1120 1210 -1050 {lab=#net6}
N 1330 -1050 1450 -1050 {lab=#net6}
N 1450 -1120 1450 -1050 {lab=#net6}
N 1330 -1050 1330 -1010 {lab=#net6}
N 1210 -1050 1330 -1050 {lab=#net6}
C {title-3.sym} 0 0 0 0 {name=11 author="Pintilie Sebastian" rev=1.0 lock=true}
C {bindkeys_cheatsheet.sym} 500 -1940 0 0 {}
C {opin.sym} 670 -1150 1 0 {name=p6 lab=Rout}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 790 -1280 0 1 {name=M5
l=4u
w=7u
 ng=20
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {ipin.sym} 960 -1280 2 0 {name=p7 lab=Vc}
C {ipin.sym} 670 -1440 1 0 {name=p1 lab=Rin}
C {iopin.sym} 680 -1290 3 0 {name=p9 lab=VSS}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 570 -1280 0 0 {name=M1
l=4u
w=7u
 ng=20
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {opin.sym} 1330 -1010 1 0 {name=p2 lab=Rout}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1330 -1280 0 1 {name=M2
l=4u
w=7u
 ng=20
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {ipin.sym} 1330 -1180 1 0 {name=p3 lab=Vc}
C {ipin.sym} 1310 -1390 1 0 {name=p4 lab=Rin}
C {iopin.sym} 1220 -1280 3 0 {name=p5 lab=VSS}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1110 -1280 0 0 {name=M3
l=4u
w=7u
 ng=20
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {ipin.sym} 1130 -1390 1 0 {name=p8 lab=VDD}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1430 -1150 0 0 {name=M4
l=4u
w=7u
 ng=20
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1230 -1150 0 1 {name=M6
l=4u
w=7u
 ng=20
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {iopin.sym} 1150 -1150 2 0 {name=p10 lab=VSS}
C {iopin.sym} 1500 -1150 0 0 {name=p11 lab=VSS}
