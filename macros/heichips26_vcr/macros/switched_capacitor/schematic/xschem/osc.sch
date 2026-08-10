v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -0 -280 -0 -260 {lab=VDD}
N -200 -260 -200 -140 {lab=VDD}
N 520 -260 700 -260 {lab=VDD}
N 700 -260 700 -140 {lab=VDD}
N 360 -260 360 -140 {lab=VDD}
N 200 -260 360 -260 {lab=VDD}
N 200 -260 200 -140 {lab=VDD}
N 60 -260 200 -260 {lab=VDD}
N 60 -260 60 -140 {lab=VDD}
N 0 -260 60 -260 {lab=VDD}
N -60 -260 -60 -140 {lab=VDD}
N 0 -140 20 -140 {lab=#net1}
N 0 -240 0 -140 {lab=#net1}
N 0 -240 640 -240 {lab=#net1}
N 640 -240 640 -140 {lab=#net1}
N 640 -140 660 -140 {lab=#net1}
N -160 -140 -140 -140 {lab=ictrl}
N -140 -220 -140 -140 {lab=ictrl}
N -140 -220 140 -220 {lab=ictrl}
N 140 -220 140 -140 {lab=ictrl}
N 140 -140 160 -140 {lab=ictrl}
N 140 -220 300 -220 {lab=ictrl}
N 300 -220 300 -140 {lab=ictrl}
N 300 -140 320 -140 {lab=ictrl}
N 300 -140 300 -80 {lab=ictrl}
N 300 -80 360 -80 {lab=ictrl}
N 360 -110 360 -80 {lab=ictrl}
N 640 -140 640 -80 {lab=#net1}
N 640 -80 700 -80 {lab=#net1}
N 700 -110 700 -80 {lab=#net1}
N -100 -60 -60 -60 {lab=#net2}
N -60 -110 -60 -60 {lab=#net2}
N 60 -110 60 -60 {lab=start}
N 60 -60 100 -60 {lab=start}
N 160 -60 200 -60 {lab=out2}
N 200 -110 200 -60 {lab=out2}
N -200 -260 -60 -260 {lab=VDD}
N -60 -60 60 60 {lab=#net2}
N -60 60 60 -60 {lab=start}
N -20 -140 0 -140 {lab=#net1}
N -80 60 -60 60 {lab=start}
N 80 60 160 60 {lab=#net2}
N 200 -60 200 30 {lab=out2}
N -200 -60 -200 30 {lab=out1}
N -200 60 -200 180 {lab=VSS}
N -80 80 -80 90 {lab=start}
N -140 60 -80 60 {lab=start}
N 80 80 80 90 {lab=#net2}
N 60 60 80 60 {lab=#net2}
N -40 120 -20 120 {lab=start}
N -20 80 -20 120 {lab=start}
N -80 80 -20 80 {lab=start}
N -80 60 -80 80 {lab=start}
N 20 120 40 120 {lab=#net2}
N 20 80 20 120 {lab=#net2}
N 20 80 80 80 {lab=#net2}
N 80 60 80 80 {lab=#net2}
N -80 180 0 180 {lab=VSS}
N 360 -80 360 20 {lab=ictrl}
N 0 180 0 200 {lab=VSS}
N -60 -260 0 -260 {lab=VDD}
N 200 -60 220 -60 {lab=out2}
N 700 -80 700 70 {lab=#net1}
N 520 180 700 180 {lab=VSS}
N -200 -110 -200 -60 {lab=out1}
N -140 0 -140 60 {lab=start}
N -160 60 -140 60 {lab=start}
N 300 -220 460 -220 {lab=ictrl}
N 460 -220 460 -140 {lab=ictrl}
N 460 -140 480 -140 {lab=ictrl}
N 520 -260 520 -140 {lab=VDD}
N 360 -260 520 -260 {lab=VDD}
N 520 40 520 70 {lab=#net3}
N 520 100 520 180 {lab=VSS}
N 560 100 580 100 {lab=#net3}
N 580 40 580 100 {lab=#net3}
N 520 40 580 40 {lab=#net3}
N 520 -110 520 40 {lab=#net3}
N 580 100 660 100 {lab=#net3}
N 700 100 700 180 {lab=VSS}
N -80 120 -80 180 {lab=VSS}
N -200 180 -80 180 {lab=VSS}
N 80 180 200 180 {lab=VSS}
N 0 180 80 180 {lab=VSS}
N 200 60 200 180 {lab=VSS}
N 80 120 80 180 {lab=VSS}
N 200 180 520 180 {lab=VSS}
N -200 -60 -160 -60 {lab=out1}
N -220 -60 -200 -60 {lab=out1}
N -220 0 -140 0 {lab=start}
C {iopin.sym} 0 200 1 0 {name=p3 lab=VSS}
C {iopin.sym} 0 -280 3 0 {name=p4 lab=VDD}
C {sg13_lv_pmos.sym} -180 -140 0 1 {name=M3
l=2.0u
w=10.0u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} -40 -140 0 1 {name=M2
l=2.0u
w=10.0u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 40 -140 0 0 {name=M4
l=2.0u
w=10.0u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 180 -140 0 0 {name=M5
l=2.0u
w=10.0u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 340 -140 0 0 {name=M6
l=2.0u
w=10.0u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 680 -140 0 0 {name=M7
l=2.0u
w=10.0u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/cap_cmomi.sym} -130 -60 1 0 {name=C1
model=cap_cmomi
w=10e-6
l=10e-6
mmin=1
mmax=4
feed=double
subblock=0
m=1
mm_ok=1
spiceprefix=X
}
C {sg13cmos5l_pr/cap_cmomi.sym} 130 -60 1 0 {name=C2
model=cap_cmomi
w=10e-6
l=10e-6
mmin=1
mmax=4
feed=double
subblock=0
m=1
mm_ok=1
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} -180 60 0 1 {name=M8
l=0.45u
w=3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} -60 120 0 1 {name=M1
l=2u
w=1u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 180 60 0 0 {name=M12
l=0.45u
w=3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 60 120 0 0 {name=M11
l=2u
w=1u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 500 -140 0 0 {name=M13
l=2.0u
w=3.0u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 540 100 0 1 {name=M14
l=5u
w=6u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 680 100 0 0 {name=M15
l=5u
w=2u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {iopin.sym} 220 -60 0 0 {name=p1 lab=out2}
C {iopin.sym} -220 -60 0 1 {name=p2 lab=out1}
C {iopin.sym} -220 0 0 1 {name=p5 lab=start}
C {iopin.sym} 360 20 3 1 {name=p6 lab=ictrl}
