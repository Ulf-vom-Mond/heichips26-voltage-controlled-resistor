v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 -340 -180 {}
N 190 0 220 0 {lab=T2}
N -60 0 -20 0 {lab=#net1}
N 10 -0 10 50 {lab=vcm}
N -150 0 -120 0 {lab=T1}
N 10 -70 10 -40 {lab=Vctrl}
N -30 50 10 50 {lab=vcm}
N -30 -290 110 -290 {lab=vcm}
N -150 -50 -150 0 {lab=T1}
N -200 0 -150 0 {lab=T1}
N 190 -50 190 0 {lab=T2}
N 40 0 190 0 {lab=T2}
N 170 -230 170 -220 {lab=#net2}
N -170 -290 -160 -290 {lab=#net3}
N -170 -230 -170 -220 {lab=#net3}
N -30 -290 -30 50 {lab=vcm}
N -100 -290 -30 -290 {lab=vcm}
N -270 -130 -220 -130 {lab=Vdd}
N 100 -130 120 -130 {lab=vdd}
N -270 -90 -240 -90 {lab=Vss}
N -120 -130 -90 -130 {lab=vss}
N 220 -130 250 -130 {lab=vss}
N 70 -90 100 -90 {lab=vss}
N -100 -90 -50 -90 {lab=#net4}
N 240 -90 290 -90 {lab=#net5}
N -190 -50 -190 -30 {lab=#net3}
N -350 -30 -190 -30 {lab=#net3}
N -350 -230 -350 -30 {lab=#net3}
N -350 -230 -170 -230 {lab=#net3}
N -170 -290 -170 -230 {lab=#net3}
N 150 -50 150 -30 {lab=#net2}
N 30 -30 150 -30 {lab=#net2}
N 30 -230 30 -30 {lab=#net2}
N 30 -230 170 -230 {lab=#net2}
N 170 -290 170 -230 {lab=#net2}
C {res.sym} -130 -290 1 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} 140 -290 1 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {ipin.sym} -200 0 0 0 {name=p1 lab=T1}
C {ipin.sym} 220 0 2 0 {name=p2 lab=T2}
C {ipin.sym} 10 -70 1 0 {name=p3 lab=Vctrl
}
C {ammeter.sym} -90 0 3 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {lab_pin.sym} 20 -290 0 0 {name=p6 sig_type=std_logic lab=vcm}
C {sg13cmos5l_pr/sg13_hv_pmos.sym} 10 -20 1 0 {name=M1
l=10u
w=50u
 ng=10
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {ipin.sym} -270 -130 0 0 {name=p4 lab=Vdd}
C {ipin.sym} -270 -90 0 0 {name=p5 lab=Vss}
C {lab_pin.sym} 100 -130 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -90 -130 2 0 {name=p8 sig_type=std_logic lab=vss}
C {lab_pin.sym} 250 -130 2 0 {name=p9 sig_type=std_logic lab=vss}
C {lab_pin.sym} 70 -90 0 0 {name=p10 sig_type=std_logic lab=vss}
C {isource.sym} -50 -60 2 0 {name=I0 value=25u}
C {isource.sym} 290 -60 2 0 {name=I1 value=25u}
C {lab_pin.sym} 290 -30 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -50 -30 0 0 {name=p12 sig_type=std_logic lab=vdd}
C {macros/voltage_controlled_resistors/macros/opamp/schematic/xschem/op_amp_ver_2.sym} -170 -120 3 0 {name=x1}
C {macros/voltage_controlled_resistors/macros/opamp/schematic/xschem/op_amp_ver_2.sym} 170 -120 3 0 {name=x2}
