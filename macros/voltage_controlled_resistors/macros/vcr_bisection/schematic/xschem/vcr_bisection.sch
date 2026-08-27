v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 40 -350 60 -350 {lab=Vdd}
N 160 -350 180 -350 {lab=Vss}
N 20 -370 60 -370 {lab=#net1}
N -60 -370 -40 -370 {lab=Vdd}
N 130 -300 130 -280 {lab=#net2}
N 130 -280 230 -280 {lab=#net2}
N 230 -440 230 -280 {lab=#net2}
N 110 -440 230 -440 {lab=#net2}
N 110 -440 110 -420 {lab=#net2}
N 1060 -350 1080 -350 {lab=Vdd}
N 1180 -350 1200 -350 {lab=Vss}
N 1040 -370 1080 -370 {lab=#net3}
N 960 -370 980 -370 {lab=Vdd}
N 1150 -300 1150 -280 {lab=#net4}
N 1130 -440 1250 -440 {lab=#net4}
N 1130 -440 1130 -420 {lab=#net4}
N 230 -440 250 -440 {lab=#net2}
N 1150 -280 1250 -280 {lab=#net4}
N 1110 -440 1130 -440 {lab=#net4}
N 90 -300 90 0 {lab=T1}
N 0 0 90 0 {lab=T1}
N 460 0 460 40 {lab=Vcm}
N 460 -70 460 -40 {lab=#net5}
N 530 -220 550 -220 {lab=Vdd}
N 370 -200 390 -200 {lab=Vss}
N 530 -150 550 -150 {lab=#net6}
N 610 -150 660 -150 {lab=Vdd}
N 480 -300 500 -300 {lab=Vctrl}
N 500 -300 500 -280 {lab=Vctrl}
N 330 -280 330 40 {lab=Vcm}
N 330 -280 460 -280 {lab=Vcm}
N 330 -440 330 -280 {lab=Vcm}
N 330 40 460 40 {lab=Vcm}
N 490 0 520 0 {lab=#net7}
N 550 -0 550 40 {lab=Vcm}
N 460 40 550 40 {lab=Vcm}
N 330 -440 1050 -440 {lab=Vcm}
N 310 -440 330 -440 {lab=Vcm}
N 580 0 1110 -0 {lab=T2}
N 90 0 430 0 {lab=T1}
N 1250 -440 1250 -280 {lab=#net4}
N 1110 0 1310 0 {lab=T2}
N 1110 -300 1110 0 {lab=T2}
N 460 -40 550 -40 {lab=#net5}
C {res.sym} 280 -440 3 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {ipin.sym} 0 0 0 0 {name=p1 lab=T1}
C {ipin.sym} 1310 0 2 0 {name=p2 lab=T2}
C {sg13cmos5l_pr/sg13_hv_pmos.sym} 460 -20 1 0 {name=M1
l=10u
w=50u
 ng=6
 m=2
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 40 -350 0 0 {name=p7 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 180 -350 2 0 {name=p9 sig_type=std_logic lab=Vss}
C {isource.sym} -10 -370 3 0 {name=I0 value=5u}
C {opamp_rtr.sym} 150 -320 3 0 {name=x1}
C {lab_pin.sym} -60 -370 0 0 {name=p18 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 1060 -350 0 0 {name=p19 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 1200 -350 2 0 {name=p20 sig_type=std_logic lab=Vss}
C {isource.sym} 1010 -370 3 0 {name=I3 value=5u}
C {opamp_rtr.sym} 1170 -320 3 0 {name=x2}
C {lab_pin.sym} 960 -370 0 0 {name=p21 sig_type=std_logic lab=Vdd}
C {res.sym} 1080 -440 3 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {voltage_diff.sym} 460 -170 1 0 {name=x3}
C {lab_pin.sym} 550 -220 2 0 {name=p22 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 370 -200 0 0 {name=p23 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 660 -150 2 0 {name=p24 sig_type=std_logic lab=Vdd}
C {isource.sym} 580 -150 1 0 {name=I4 value=5u}
C {ipin.sym} 480 -300 0 0 {name=p25 lab=Vctrl
}
C {ipin.sym} -120 -220 0 0 {name=p3 lab=Vdd}
C {ipin.sym} -120 -190 0 0 {name=p4 lab=Vss}
C {lab_pin.sym} 330 -280 0 0 {name=p5 sig_type=std_logic lab=Vcm}
C {sg13cmos5l_pr/sg13_hv_pmos.sym} 550 -20 1 0 {name=M2
l=10u
w=50u
 ng=6
 m=2
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
