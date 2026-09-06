v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -10 0 0 {lab=out}
N 0 0 160 0 {lab=out}
N 0 0 0 50 {lab=out}
N 160 0 160 50 {lab=out}
N 100 -180 100 -40 {lab=VDD}
N -60 -40 -40 -40 {lab=in2}
N -60 -40 -60 20 {lab=in2}
N 100 20 100 80 {lab=in2}
N 100 80 120 80 {lab=in2}
N -80 -120 -40 -120 {lab=in1}
N -80 80 -40 80 {lab=in1}
N -80 -120 -80 -20 {lab=in1}
N -60 20 100 20 {lab=in2}
N -120 20 -60 20 {lab=in2}
N -120 -20 -80 -20 {lab=in1}
N -80 -20 -80 80 {lab=in1}
N 160 0 200 0 {lab=out}
N 0 80 0 140 {lab=VSS}
N 160 80 160 140 {lab=VSS}
N 0 -180 0 -120 {lab=VDD}
N 0 -90 0 -70 {lab=#net1}
N 0 -40 100 -40 {lab=VDD}
C {devices/ipin.sym} -120 -20 0 0 {name=p10 lab=in1}
C {devices/iopin.sym} 0 -240 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} 0 200 1 0 {name=p1 lab=VSS}
C {devices/opin.sym} 200 0 0 0 {name=p6 lab=out}
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
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 140 80 0 0 {name=M2
l=\{n_l\}
w=\{n_w\}
 ng=\{ng\}
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} -20 -120 0 0 {name=M3
l=\{p_l\}
w=\{p_w\}
ng=\{ng\}
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} -20 80 0 0 {name=M1
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
C {devices/ipin.sym} -120 20 0 0 {name=p2 lab=in2}
C {lab_pin.sym} 0 140 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 160 140 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 -180 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 100 -180 1 0 {name=p7 sig_type=std_logic lab=VDD}
