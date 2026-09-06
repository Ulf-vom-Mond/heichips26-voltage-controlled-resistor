v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -10 0 0 {lab=out}
N 0 0 160 0 {lab=out}
N 0 0 0 130 {lab=out}
N 160 0 160 130 {lab=out}
N 100 -120 100 -40 {lab=VDD}
N -60 -40 -40 -40 {lab=in4}
N 100 20 100 160 {lab=in2}
N 100 160 120 160 {lab=in2}
N -120 160 -40 160 {lab=in1}
N -160 20 100 20 {lab=in2}
N -160 -20 -120 -20 {lab=in1}
N -120 -20 -120 160 {lab=in1}
N 480 0 600 0 {lab=out}
N 0 160 0 220 {lab=VSS}
N 160 160 160 220 {lab=VSS}
N 0 -90 0 -70 {lab=#net1}
N 0 -40 100 -40 {lab=VDD}
N 320 0 320 130 {lab=out}
N 260 60 260 160 {lab=in3}
N 260 160 280 160 {lab=in3}
N 320 160 320 220 {lab=VSS}
N 160 0 320 0 {lab=out}
N 480 0 480 130 {lab=out}
N 420 100 420 160 {lab=in4}
N 420 160 440 160 {lab=in4}
N 480 160 480 220 {lab=VSS}
N 320 0 480 0 {lab=out}
N -160 60 260 60 {lab=in3}
N 0 -120 100 -120 {lab=VDD}
N 100 -200 100 -120 {lab=VDD}
N 0 -170 0 -150 {lab=#net2}
N 0 -200 100 -200 {lab=VDD}
N 0 -250 0 -230 {lab=#net3}
N 100 -280 100 -200 {lab=VDD}
N -60 100 420 100 {lab=in4}
N -60 -40 -60 100 {lab=in4}
N -80 100 -60 100 {lab=in4}
N -80 -120 -80 100 {lab=in4}
N -100 100 -80 100 {lab=in4}
N -80 -120 -40 -120 {lab=in4}
N -100 -200 -100 100 {lab=in4}
N -160 100 -100 100 {lab=in4}
N -100 -200 -40 -200 {lab=in4}
N -120 -280 -120 -20 {lab=in1}
N -120 -280 -40 -280 {lab=in1}
N 0 -340 0 -310 {lab=VDD}
N 0 -280 100 -280 {lab=VDD}
N 100 -340 100 -280 {lab=VDD}
C {devices/ipin.sym} -160 -20 0 0 {name=p10 lab=in1}
C {devices/iopin.sym} 0 -400 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} 0 280 1 0 {name=p1 lab=VSS}
C {devices/opin.sym} 600 0 0 0 {name=p6 lab=out}
C {code_shown.sym} 240 -290 0 0 {value="
.param w   = 10u
.param ng  = 4
.param n_ng = ng
.param n_w = \{3u*n_ng\}
.param n_l = 0.45u
.param p_ng = ng
.param p_w = \{10u*p_ng\}
.param p_l = 0.4u
"}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 140 160 0 0 {name=M2
l=\{n_l\}
w=\{n_w\}
 ng=\{ng\}
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} -20 -280 0 0 {name=M3
l=\{p_l\}
w=\{p_w\}
ng=\{ng\}
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} -20 160 0 0 {name=M1
l=\{n_l\}
w=\{n_w\}
 ng=\{ng\}
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} -20 -40 0 0 {name=M4
l=\{p_l\}
w=\{p_w\}
ng=\{ng\}
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/ipin.sym} -160 20 0 0 {name=p2 lab=in2}
C {lab_pin.sym} 0 220 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 160 220 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 -340 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 100 -340 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 300 160 0 0 {name=M5
l=\{n_l\}
w=\{n_w\}
 ng=\{ng\}
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 320 220 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 460 160 0 0 {name=M6
l=\{n_l\}
w=\{n_w\}
 ng=\{ng\}
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 480 220 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -160 60 0 0 {name=p12 lab=in3}
C {devices/ipin.sym} -160 100 0 0 {name=p13 lab=in4}
C {sg13_lv_pmos.sym} -20 -120 0 0 {name=M7
l=\{p_l\}
w=\{p_w\}
ng=\{ng\}
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} -20 -200 0 0 {name=M8
l=\{p_l\}
w=\{p_w\}
ng=\{ng\}
m=1
model=sg13_hv_pmos
spiceprefix=X
}
