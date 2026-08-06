v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 -340 -180 {}
N -40 -150 110 -150 {lab=vcm}
N -40 -150 -40 -120 {lab=vcm}
N -100 -150 -40 -150 {lab=vcm}
N 170 -150 170 -0 {lab=T2}
N 40 0 170 -0 {lab=T2}
N -160 0 -120 0 {lab=T1}
N -160 -150 -160 0 {lab=T1}
N -60 0 -20 0 {lab=#net1}
N 10 -0 10 50 {lab=GND}
N 170 -0 220 0 {lab=T2}
N -200 0 -160 0 {lab=T1}
N 60 -190 60 -70 {lab=Vctrl}
N 10 -70 10 -40 {lab=Vctrl}
N 10 -70 60 -70 {lab=Vctrl}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} -200 80 1 0 {name=M1
l=0.5u
w=100.0u
 ng=10
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
spice_ignore=true}
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
C {ipin.sym} 10 50 3 0 {name=p4 lab=GND}
C {ammeter.sym} -90 0 3 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} 10 -20 1 0 {name=M2
l=10u
w=20u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 20 -150 0 0 {name=p6 sig_type=std_logic lab=vcm}
