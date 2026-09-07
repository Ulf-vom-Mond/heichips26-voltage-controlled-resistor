v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 240 -240 260 -240 {lab=#net1}
N 290 -200 290 -180 {lab=#net1}
N 240 -180 290 -180 {lab=#net1}
N 240 -240 240 -180 {lab=#net1}
N 320 -240 350 -240 {lab=out}
N 290 -260 290 -240 {lab=Vss}
N 140 -240 240 -240 {lab=#net1}
N -20 -260 20 -260 {lab=v2}
N 0 -220 20 -220 {lab=#net2}
N 70 -310 70 -290 {lab=Vdd}
N 90 -310 90 -290 {lab=#net3}
N 90 -390 90 -370 {lab=Vdd}
N 70 -190 70 -170 {lab=Vss}
N 120 -100 140 -100 {lab=#net2}
N 170 -60 170 -40 {lab=#net2}
N 120 -40 170 -40 {lab=#net2}
N 120 -100 120 -40 {lab=#net2}
N 170 -120 170 -100 {lab=Vss}
N 200 -100 240 -100 {lab=#net1}
N 240 -180 240 -100 {lab=#net1}
N 0 -100 120 -100 {lab=#net2}
N 180 0 350 0 {lab=out}
N 350 -240 350 0 {lab=out}
N 0 0 120 0 {lab=#net2}
N 0 -100 0 0 {lab=#net2}
N 0 -220 0 -100 {lab=#net2}
N 240 -740 260 -740 {lab=#net4}
N 290 -700 290 -680 {lab=#net4}
N 240 -680 290 -680 {lab=#net4}
N 240 -740 240 -680 {lab=#net4}
N 320 -740 350 -740 {lab=out}
N 290 -760 290 -740 {lab=Vss}
N 140 -740 240 -740 {lab=#net4}
N -20 -760 20 -760 {lab=v1}
N 0 -720 20 -720 {lab=#net5}
N 70 -810 70 -790 {lab=Vdd}
N 90 -810 90 -790 {lab=#net6}
N 90 -890 90 -870 {lab=Vdd}
N 70 -690 70 -670 {lab=Vss}
N 120 -600 140 -600 {lab=#net5}
N 170 -560 170 -540 {lab=#net5}
N 120 -540 170 -540 {lab=#net5}
N 120 -600 120 -540 {lab=#net5}
N 170 -620 170 -600 {lab=Vss}
N 200 -600 240 -600 {lab=#net4}
N 240 -680 240 -600 {lab=#net4}
N 0 -600 120 -600 {lab=#net5}
N 180 -500 350 -500 {lab=out}
N 350 -740 350 -500 {lab=out}
N 0 -500 120 -500 {lab=#net5}
N 0 -600 0 -500 {lab=#net5}
N 0 -720 0 -600 {lab=#net5}
N 350 -380 350 -240 {lab=out}
N 350 -380 460 -380 {lab=out}
N 350 -500 350 -380 {lab=out}
N 460 -380 460 -340 {lab=out}
N 460 -380 520 -380 {lab=out}
N 460 -280 460 -240 {lab=Vss}
C {opamp_rtr.sym} 40 -200 0 0 {name=x2}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 290 -220 3 0 {name=M2
l=1u
w=10u
 ng=4
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 290 -260 1 0 {name=p1 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 70 -310 1 0 {name=p3 sig_type=std_logic lab=Vdd}
C {isource.sym} 90 -340 0 0 {name=I0 value=5u}
C {lab_pin.sym} 90 -390 1 0 {name=p4 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 70 -170 3 0 {name=p6 sig_type=std_logic lab=Vss}
C {ipin.sym} 270 -410 0 0 {name=p8 lab=Vdd}
C {ipin.sym} 270 -380 0 0 {name=p9 lab=Vss}
C {ipin.sym} -20 -760 0 0 {name=p10 lab=v1}
C {ipin.sym} -20 -260 0 0 {name=p11 lab=v2}
C {sg13cmos5l_pr/rppd.sym} 150 0 1 0 {name=R1
w=0.5e-6
l=20e-6
model=rppd
body=vss
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 70.0e-6 / @w + 260.0 * ( (@b + 1)* @l + ( 1.081*( @w + 6.0e-9 ) + 0.18e-6 )*@b ) / ( @w + 6.0e-9 ) ) / @m  )"
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 170 -80 3 0 {name=M3
l=1u
w=10u
 ng=4
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 170 -120 1 0 {name=p12 sig_type=std_logic lab=Vss}
C {opamp_rtr.sym} 40 -700 0 0 {name=x1}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 290 -720 3 0 {name=M1
l=1u
w=10u
 ng=4
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 290 -760 1 0 {name=p2 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 70 -810 1 0 {name=p5 sig_type=std_logic lab=Vdd}
C {isource.sym} 90 -840 0 0 {name=I1 value=5u}
C {lab_pin.sym} 90 -890 1 0 {name=p7 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 70 -670 3 0 {name=p13 sig_type=std_logic lab=Vss}
C {sg13cmos5l_pr/rppd.sym} 150 -500 1 0 {name=R2
w=0.5e-6
l=20e-6
model=rppd
body=vss
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 70.0e-6 / @w + 260.0 * ( (@b + 1)* @l + ( 1.081*( @w + 6.0e-9 ) + 0.18e-6 )*@b ) / ( @w + 6.0e-9 ) ) / @m  )"
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 170 -580 3 0 {name=M4
l=1u
w=10u
 ng=4
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 170 -620 1 0 {name=p15 sig_type=std_logic lab=Vss}
C {sg13cmos5l_pr/rhigh.sym} 460 -310 0 0 {name=R3
w=0.5e-6
l=40e-6
model=rhigh
body=vss
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {lab_pin.sym} 460 -240 3 0 {name=p14 sig_type=std_logic lab=Vss}
C {ipin.sym} 520 -380 2 0 {name=p16 lab=out}
