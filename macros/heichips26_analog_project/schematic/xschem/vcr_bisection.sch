v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 -340 -180 {}
N 60 -60 60 -40 {lab=xxx}
N 20 -40 60 -40 {lab=xxx}
N -40 -60 -40 -40 {lab=xxx}
N -40 -150 110 -150 {lab=#net1}
N -40 -150 -40 -120 {lab=#net1}
N -100 -150 -40 -150 {lab=#net1}
N 170 -150 170 -0 {lab=T2}
N 40 0 170 -0 {lab=T2}
N -160 0 -120 0 {lab=T1}
N -160 -150 -160 0 {lab=T1}
N -60 0 -20 0 {lab=#net2}
N 10 -0 10 50 {lab=GND}
N 170 -0 220 0 {lab=T2}
N -200 0 -160 0 {lab=T1}
N 60 -190 60 -120 {lab=Vctrl}
N 20 -60 20 -40 {lab=xxx}
N -40 -40 20 -40 {lab=xxx}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} -20 -10 0 0 {name=M1
l=0.5u
w=100000.0u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {capa.sym} -40 -90 0 0 {name=C1
m=1
value=10000n
footprint=1206
device="ceramic capacitor"
}
C {res.sym} -130 -150 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 140 -150 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {ipin.sym} -200 0 0 0 {name=p1 lab=T1}
C {ipin.sym} 220 0 2 0 {name=p2 lab=T2}
C {ipin.sym} 60 -190 1 0 {name=p3 lab=Vctrl
}
C {ipin.sym} 10 50 3 0 {name=p4 lab=GND}
C {ammeter.sym} -90 0 3 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {capa.sym} 60 -90 0 0 {name=C2
m=1
value=10000n
footprint=1206
device="ceramic capacitor"
}
C {lab_pin.sym} 20 -60 0 0 {name=p5 sig_type=std_logic lab=vg}
