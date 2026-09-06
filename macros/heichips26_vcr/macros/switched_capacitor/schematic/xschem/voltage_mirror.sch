v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 -140 100 -80 {lab=VSS}
N 260 -140 260 -80 {lab=VSS}
N 180 -140 220 -140 {lab=Ibias}
N 100 -200 180 -200 {lab=Ibias}
N 180 -200 180 -140 {lab=Ibias}
N 140 -140 180 -140 {lab=Ibias}
N 260 -200 260 -170 {lab=nout}
N 100 -200 100 -170 {lab=Ibias}
N 260 -220 260 -200 {lab=nout}
N 100 40 100 100 {lab=VDD}
N 260 -300 260 -280 {lab=VDD}
N 100 140 180 140 {lab=#net1}
N 180 100 180 140 {lab=#net1}
N 260 40 260 100 {lab=VDD}
N 180 100 220 100 {lab=#net1}
N 140 100 180 100 {lab=#net1}
N 100 200 100 260 {lab=VSS}
N 0 200 60 200 {lab=Ibias}
N 100 140 100 170 {lab=#net1}
N 260 130 260 160 {lab=out}
N 260 160 260 180 {lab=out}
N 260 240 260 260 {lab=VSS}
N -140 0 -100 0 {lab=in}
N 0 -220 0 -200 {lab=Ibias}
N 0 -200 100 -200 {lab=Ibias}
N 0 0 0 200 {lab=Ibias}
N 260 -200 360 -200 {lab=nout}
N 260 160 360 160 {lab=out}
N -40 0 0 0 {lab=Ibias}
N 0 -200 0 0 {lab=Ibias}
N 100 130 100 140 {lab=#net1}
C {devices/iopin.sym} -400 -40 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} -400 40 1 0 {name=p1 lab=VSS}
C {ipin.sym} -140 0 0 0 {name=p2 lab=in}
C {opin.sym} 360 160 0 0 {name=p5 lab=out}
C {lab_pin.sym} 260 -80 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 260 -300 3 1 {name=p12 sig_type=std_logic lab=VDD}
C {opin.sym} 360 -200 0 0 {name=p3 lab=nout}
C {code_shown.sym} -220 -230 0 0 {value="
.param n_w = 6u
.param n_l = 5u
.param p_w = 10u
.param p_l = 2u
"}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 120 -140 0 1 {name=M1
l=n_l
w=1.9*n_w
 ng=2
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/rhigh.sym} -70 0 3 0 {name=R1
w=0.5e-6
l=34e-6
model=rhigh
body=GND
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13_lv_pmos.sym} 120 100 0 1 {name=M2
l=p_l
w=p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 240 -140 0 0 {name=M3
l=n_l
w=n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 240 100 0 0 {name=M4
l=p_l
w=p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 80 200 0 0 {name=M5
l=n_l
w=n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/rhigh.sym} 260 -250 0 0 {name=R2
w=0.5e-6
l=34e-6
model=rhigh
body=GND
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13cmos5l_pr/rhigh.sym} 260 210 0 0 {name=R3
w=0.5e-6
l=34e-6
model=rhigh
body=GND
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {ipin.sym} 0 -220 1 0 {name=p4 lab=Ibias}
C {lab_pin.sym} 100 -80 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 260 260 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 100 260 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 260 40 3 1 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 100 40 3 1 {name=p13 sig_type=std_logic lab=VDD}
