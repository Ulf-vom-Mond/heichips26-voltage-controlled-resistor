v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 60 -300 120 -300 {lab=#net1}
N 60 -340 60 -300 {lab=#net1}
N 60 -340 80 -340 {lab=#net1}
N 40 -340 60 -340 {lab=#net1}
N 40 -220 60 -220 {lab=#net2}
N 60 -260 60 -220 {lab=#net2}
N 60 -220 80 -220 {lab=#net2}
N 0 -260 60 -260 {lab=#net2}
N 0 -260 0 -250 {lab=#net2}
N 120 -310 120 -300 {lab=#net1}
N 0 -310 0 -260 {lab=#net2}
N 120 -400 120 -340 {lab=VDD}
N 0 -400 120 -400 {lab=VDD}
N 0 -400 0 -340 {lab=VDD}
N 120 -20 120 0 {lab=VSS}
N 120 -220 160 -220 {lab=VSS}
N 160 -220 160 0 {lab=VSS}
N 120 -280 120 -250 {lab=#net1}
N 240 -220 280 -220 {lab=VSS}
N 240 -190 240 -180 {lab=#net3}
N 120 -190 120 -180 {lab=#net3}
N 120 -280 240 -280 {lab=#net1}
N 240 -280 240 -250 {lab=#net1}
N 60 -260 180 -260 {lab=#net2}
N 180 -260 180 -220 {lab=#net2}
N 180 -220 200 -220 {lab=#net2}
N 360 -220 400 -220 {lab=VSS}
N 360 -190 360 -180 {lab=#net3}
N 240 -180 360 -180 {lab=#net3}
N 240 -280 360 -280 {lab=#net1}
N 360 -280 360 -250 {lab=#net1}
N 300 -260 300 -220 {lab=#net2}
N 300 -220 320 -220 {lab=#net2}
N 480 -220 520 -220 {lab=VSS}
N 480 -190 480 -180 {lab=#net3}
N 360 -180 480 -180 {lab=#net3}
N 360 -280 480 -280 {lab=#net1}
N 480 -280 480 -250 {lab=#net1}
N 420 -260 420 -220 {lab=#net2}
N 420 -220 440 -220 {lab=#net2}
N 180 -260 300 -260 {lab=#net2}
N 300 -260 420 -260 {lab=#net2}
N 540 -260 540 -220 {lab=#net2}
N 540 -220 560 -220 {lab=#net2}
N 420 -260 540 -260 {lab=#net2}
N 600 -220 600 0 {lab=VSS}
N 120 -300 120 -280 {lab=#net1}
N 600 -280 600 -250 {lab=iout}
N 120 -100 120 -80 {lab=#net4
}
N 120 -180 120 -160 {lab=#net3}
N 0 -420 0 -400 {lab=VDD}
N 120 0 160 0 {lab=VSS}
N 280 -220 280 0 {lab=VSS}
N 280 0 400 0 {lab=VSS}
N 400 -220 400 0 {lab=VSS}
N 520 -220 520 0 {lab=VSS}
N 520 0 600 0 {lab=VSS}
N 400 0 520 0 {lab=VSS}
N 0 0 120 0 {lab=VSS}
N 0 0 0 20 {lab=VSS}
N 0 -220 0 0 {lab=VSS}
N 160 0 280 0 {lab=VSS}
N 120 -180 240 -180 {lab=#net3}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 20 -220 0 1 {name=M8
l=n_l
w=n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 20 -340 0 1 {name=M6
l=p_l
w=p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 100 -340 0 0 {name=M1
l=p_l
w=p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 100 -220 0 0 {name=M3
l=n_l
w=n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/rppd.sym} 120 -130 0 1 {name=R2
w=2e-6
l=21.9e-6
model=rppd
body=VSS
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 70.0e-6 / @w + 260.0 * ( (@b + 1)* @l + ( 1.081*( @w + 6.0e-9 ) + 0.18e-6 )*@b ) / ( @w + 6.0e-9 ) ) / @m  )"
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 220 -220 0 0 {name=M2
l=n_l
w=n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 340 -220 0 0 {name=M4
l=n_l
w=n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 460 -220 0 0 {name=M5
l=n_l
w=n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 580 -220 0 0 {name=M7
l=n_l
w=n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/rsil.sym} 120 -50 0 1 {name=R3
w=0.5e-6
l=365e-6
model=rsil
body=VSS
spiceprefix=X
 m=1
  mm_ok=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( @l ) / ( @w + 1.0e-8 ) ) / @m  )"
}
C {iopin.sym} 0 20 1 0 {name=p3 lab=VSS}
C {iopin.sym} 0 -420 3 0 {name=p4 lab=VDD}
C {iopin.sym} 600 -280 1 1 {name=p6 lab=iout}
C {code_shown.sym} 220 -450 0 0 {value="
.param n_w = 6u
.param n_l = 5u
.param p_w = 10u
.param p_l = 2u
"}
