v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 60 -200 60 -160 {lab=#net1}
N 60 -200 80 -200 {lab=#net1}
N 40 -200 60 -200 {lab=#net1}
N 40 -60 60 -60 {lab=#net2}
N 60 -100 60 -60 {lab=#net2}
N 60 -60 80 -60 {lab=#net2}
N 120 -140 120 -100 {lab=#net2}
N 0 -160 0 -90 {lab=#net1}
N 120 -260 120 -230 {lab=#net3}
N 120 -100 120 -90 {lab=#net2}
N 760 -170 760 -140 {lab=iout}
N 120 -360 120 -340 {lab=#net4
}
N 0 0 120 0 {lab=VSS}
N 0 0 0 20 {lab=VSS}
N 0 -60 0 0 {lab=VSS}
N 60 -100 120 -100 {lab=#net2}
N 0 -160 60 -160 {lab=#net1}
N 0 -170 0 -160 {lab=#net1}
N 0 -440 0 -200 {lab=VDD}
N 0 -440 120 -440 {lab=VDD}
N 0 -460 0 -440 {lab=VDD}
N 120 -440 120 -420 {lab=VDD
spice_ignore=short}
N 60 -160 220 -160 {lab=#net1}
N 220 -200 220 -160 {lab=#net1}
N 220 -200 240 -200 {lab=#net1}
N 120 -140 280 -140 {lab=#net2}
N 120 -170 120 -140 {lab=#net2}
N 280 -170 280 -140 {lab=#net2}
N 120 -280 120 -260 {lab=#net3}
N 280 -260 280 -230 {lab=#net3}
N 280 -200 320 -200 {lab=VDD}
N 320 -440 320 -200 {lab=VDD}
N 220 -160 380 -160 {lab=#net1}
N 380 -200 380 -160 {lab=#net1}
N 380 -200 400 -200 {lab=#net1}
N 280 -140 440 -140 {lab=#net2}
N 440 -170 440 -140 {lab=#net2}
N 280 -260 440 -260 {lab=#net3}
N 440 -260 440 -230 {lab=#net3}
N 440 -200 480 -200 {lab=VDD}
N 480 -440 480 -200 {lab=VDD}
N 320 -440 480 -440 {lab=VDD}
N 380 -160 540 -160 {lab=#net1}
N 540 -200 540 -160 {lab=#net1}
N 540 -200 560 -200 {lab=#net1}
N 440 -140 600 -140 {lab=#net2}
N 600 -170 600 -140 {lab=#net2}
N 440 -260 600 -260 {lab=#net3}
N 600 -260 600 -230 {lab=#net3}
N 600 -200 640 -200 {lab=VDD}
N 640 -440 640 -200 {lab=VDD}
N 540 -160 700 -160 {lab=#net1}
N 700 -200 700 -160 {lab=#net1}
N 700 -200 720 -200 {lab=#net1}
N 760 -440 760 -200 {lab=VDD}
N 640 -440 760 -440 {lab=VDD}
N 480 -440 640 -440 {lab=VDD}
N 120 -60 120 0 {lab=VSS}
N 120 -200 160 -200 {lab=VDD}
N 160 -440 160 -200 {lab=VDD}
N 120 -440 160 -440 {lab=VDD}
N 160 -440 320 -440 {lab=VDD}
N 120 -260 280 -260 {lab=#net3}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 20 -60 0 1 {name=M8
l=n_l
w=n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 20 -200 0 1 {name=M6
l=p_l
w=p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 100 -200 0 0 {name=M1
l=p_l
w=p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 100 -60 0 0 {name=M3
l=n_l
w=n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/rppd.sym} 120 -390 0 1 {name=R2
w=2e-6
l=21.6e-6
model=rppd
body=VSS
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 70.0e-6 / @w + 260.0 * ( (@b + 1)* @l + ( 1.081*( @w + 6.0e-9 ) + 0.18e-6 )*@b ) / ( @w + 6.0e-9 ) ) / @m  )"
}
C {sg13cmos5l_pr/rsil.sym} 120 -310 0 1 {name=R3
w=0.5e-6
l=282e-6
model=rsil
body=VSS
spiceprefix=X
 m=1
  mm_ok=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( @l ) / ( @w + 1.0e-8 ) ) / @m  )"
}
C {iopin.sym} 0 20 1 0 {name=p3 lab=VSS}
C {iopin.sym} 0 -460 3 0 {name=p4 lab=VDD}
C {iopin.sym} 760 -140 3 1 {name=p6 lab=iout}
C {code_shown.sym} 280 -90 0 0 {value="
.param n_w = 6u
.param n_l = 5u
.param p_w = 10u
.param p_l = 2u
"}
C {sg13_lv_pmos.sym} 260 -200 0 0 {name=M2
l=p_l
w=p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 420 -200 0 0 {name=M4
l=p_l
w=p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 580 -200 0 0 {name=M5
l=p_l
w=p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 740 -200 0 0 {name=M7
l=p_l
w=p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
