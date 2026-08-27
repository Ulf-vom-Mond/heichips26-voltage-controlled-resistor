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
N 580 -350 600 -350 {lab=Vdd}
N 700 -350 720 -350 {lab=Vss}
N 560 -370 600 -370 {lab=#net3}
N 480 -370 500 -370 {lab=Vdd}
N 670 -300 670 -280 {lab=#net4}
N 770 -440 770 -280 {lab=#net4}
N 650 -440 770 -440 {lab=#net4}
N 650 -440 650 -420 {lab=#net4}
N 230 -440 250 -440 {lab=#net2}
N 670 -280 770 -280 {lab=#net4}
N 630 -440 650 -440 {lab=#net4}
N 330 -440 570 -440 {lab=Vcm}
N 630 0 860 0 {lab=T2}
N 90 -300 90 0 {lab=T1}
N 0 0 90 0 {lab=T1}
N 630 -300 630 0 {lab=T2}
N 310 -440 330 -440 {lab=Vcm}
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
N 90 0 430 0 {lab=T1}
N 490 0 630 0 {lab=T2}
N 330 40 460 40 {lab=Vcm}
C {res.sym} 280 -440 3 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {ipin.sym} 0 0 0 0 {name=p1 lab=T1}
C {ipin.sym} 860 0 2 0 {name=p2 lab=T2}
C {sg13cmos5l_pr/sg13_hv_pmos.sym} 460 -20 1 0 {name=M1
l=10u
w=50u
 ng=10
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
C {lab_pin.sym} 580 -350 0 0 {name=p19 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 720 -350 2 0 {name=p20 sig_type=std_logic lab=Vss}
C {isource.sym} 530 -370 3 0 {name=I3 value=5u}
C {opamp_rtr.sym} 690 -320 3 0 {name=x2}
C {lab_pin.sym} 480 -370 0 0 {name=p21 sig_type=std_logic lab=Vdd}
C {res.sym} 600 -440 3 0 {name=R2
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
