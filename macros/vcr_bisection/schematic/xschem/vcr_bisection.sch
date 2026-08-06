v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 -340 -180 {}
N -30 -150 110 -150 {lab=vcm}
N 170 -150 170 -0 {lab=T2}
N 40 0 170 -0 {lab=T2}
N -160 0 -120 0 {lab=T1}
N -160 -150 -160 0 {lab=T1}
N -60 0 -20 0 {lab=#net1}
N 10 -0 10 50 {lab=vcm}
N 170 -0 220 0 {lab=T2}
N -200 0 -160 0 {lab=T1}
N 60 -190 60 -70 {lab=Vctrl}
N 10 -70 10 -40 {lab=Vctrl}
N 10 -70 60 -70 {lab=Vctrl}
N -30 50 10 50 {lab=vcm}
N -30 -150 -30 50 {lab=vcm}
N -100 -150 -30 -150 {lab=vcm}
C {capa.sym} -290 -130 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"
spice_ignore=true}
C {res.sym} -130 -150 1 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} 140 -150 1 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {ipin.sym} -200 0 0 0 {name=p1 lab=T1}
C {ipin.sym} 220 0 2 0 {name=p2 lab=T2}
C {ipin.sym} 60 -190 1 0 {name=p3 lab=Vctrl
}
C {ammeter.sym} -90 0 3 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {lab_pin.sym} 20 -150 0 0 {name=p6 sig_type=std_logic lab=vcm}
C {sg13cmos5l_pr/sg13_hv_pmos.sym} 10 -20 1 0 {name=M1
l=10u
w=50u
 ng=10
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
