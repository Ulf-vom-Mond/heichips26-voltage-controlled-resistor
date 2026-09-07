v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 70 -310 70 -290 {lab=Vdd}
N 90 -310 90 -290 {lab=#net1}
N 90 -390 90 -370 {lab=Vdd}
N 320 -740 340 -740 {lab=Vdd}
N -20 -720 20 -720 {lab=v1}
N 70 -810 70 -790 {lab=Vdd}
N 90 -810 90 -790 {lab=#net2}
N 90 -890 90 -870 {lab=Vdd}
N 70 -690 70 -670 {lab=Vss}
N 0 -760 20 -760 {lab=out}
N 320 -240 340 -240 {lab=Vdd}
N -20 -960 320 -960 {lab=v1}
N -20 -960 -20 -720 {lab=v1}
N -40 -720 -20 -720 {lab=v1}
N 320 -500 440 -500 {lab=out}
N 0 -220 20 -220 {lab=v2}
N 0 -140 320 -140 {lab=v2}
N 0 -220 -0 -140 {lab=v2}
N -20 -220 0 -220 {lab=v2}
N 0 -260 20 -260 {lab=out}
N -0 -500 0 -260 {lab=out}
N -0 -500 320 -500 {lab=out}
N -0 -760 -0 -500 {lab=out}
N 320 -710 320 -500 {lab=out}
N 320 -210 320 -140 {lab=v2}
N 320 -960 320 -770 {lab=v1}
N 320 -500 320 -270 {lab=out}
N 140 -740 280 -740 {lab=#net3}
N 140 -240 280 -240 {lab=#net4}
C {opamp_rtr.sym} 40 -200 0 0 {name=x2}
C {lab_pin.sym} 70 -310 1 0 {name=p3 sig_type=std_logic lab=Vdd}
C {isource.sym} 90 -340 0 0 {name=I0 value=5u}
C {lab_pin.sym} 90 -390 1 0 {name=p4 sig_type=std_logic lab=Vdd}
C {ipin.sym} 530 -590 0 0 {name=p8 lab=Vdd}
C {ipin.sym} 530 -560 0 0 {name=p9 lab=Vss}
C {ipin.sym} -40 -720 0 0 {name=p10 lab=v1}
C {ipin.sym} -20 -220 0 0 {name=p11 lab=v2}
C {opamp_rtr.sym} 40 -700 0 0 {name=x1}
C {lab_pin.sym} 70 -810 1 0 {name=p5 sig_type=std_logic lab=Vdd}
C {isource.sym} 90 -840 0 0 {name=I1 value=5u}
C {lab_pin.sym} 90 -890 1 0 {name=p7 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 70 -670 3 0 {name=p13 sig_type=std_logic lab=Vss}
C {sg13cmos5l_pr/sg13_hv_pmos.sym} 300 -740 0 0 {name=M1
l=0.5u
w=30u
 ng=4
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 340 -740 2 0 {name=p2 sig_type=std_logic lab=Vdd}
C {sg13cmos5l_pr/sg13_hv_pmos.sym} 300 -240 0 0 {name=M2
l=0.5u
w=30u
 ng=4
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 340 -240 2 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 70 -190 3 0 {name=p6 sig_type=std_logic lab=Vss}
C {opin.sym} 440 -500 0 0 {name=p12 lab=out}
