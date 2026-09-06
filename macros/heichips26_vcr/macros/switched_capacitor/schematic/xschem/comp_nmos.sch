v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 280 -120 320 -120 {lab=out}
N -100 -120 0 -120 {lab=#net1}
N 0 -180 0 -120 {lab=#net1}
N -60 -180 0 -180 {lab=#net1}
N 100 -120 100 -90 {lab=#net2}
N -100 -120 -100 -90 {lab=#net1}
N -100 -150 -100 -120 {lab=#net1}
N 0 -180 60 -180 {lab=#net1}
N -100 -240 -100 -180 {lab=VDD}
N 100 -240 100 -180 {lab=VDD}
N 0 0 0 70 {lab=#net3}
N 0 0 100 0 {lab=#net3}
N -100 -30 -100 0 {lab=#net3}
N 100 -30 100 0 {lab=#net3}
N -100 0 0 0 {lab=#net3}
N -100 -60 -40 -60 {lab=VSS}
N 40 -60 100 -60 {lab=VSS}
N -180 -60 -140 -60 {lab=-}
N 140 -60 180 -60 {lab=+}
N 280 -240 280 -180 {lab=VDD}
N 100 -120 200 -120 {lab=#net2}
N 100 -150 100 -120 {lab=#net2}
N 200 -180 200 -120 {lab=#net2}
N 200 -180 240 -180 {lab=#net2}
N 280 -120 280 70 {lab=out}
N 280 -150 280 -120 {lab=out}
N 0 100 0 160 {lab=VSS}
N 280 100 280 160 {lab=VSS}
N 40 100 200 100 {lab=Ibias}
N 200 40 200 100 {lab=Ibias}
N 200 40 340 40 {lab=Ibias}
N 340 40 340 100 {lab=Ibias}
N 320 100 340 100 {lab=Ibias}
N 340 100 360 100 {lab=Ibias}
N 340 40 400 40 {lab=Ibias}
N 400 100 400 160 {lab=VSS}
N 400 40 400 70 {lab=Ibias}
N 400 0 400 40 {lab=Ibias}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 120 -60 0 1 {name=M8
l=n_l
w=n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} -80 -180 0 1 {name=M6
l=p_l
w=p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 80 -180 0 0 {name=M1
l=p_l
w=p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} -120 -60 0 0 {name=M3
l=n_l
w=n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {code_shown.sym} -120 -430 0 0 {value="
.param n_w = 1.2u
.param n_l = 1.5u
.param p_w = 2u
.param p_l = 0.4u
"}
C {sg13_lv_pmos.sym} 260 -180 0 0 {name=M2
l=p_l
w=p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 20 100 0 1 {name=M4
l=n_l
w=2*n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 300 100 0 1 {name=M5
l=n_l
w=2*n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 380 100 0 0 {name=M7
l=n_l
w=n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {devices/iopin.sym} -400 -40 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} -400 40 1 0 {name=p1 lab=VSS}
C {ipin.sym} -180 -60 0 0 {name=p2 lab=-}
C {ipin.sym} 180 -60 0 1 {name=p3 lab=+}
C {ipin.sym} 400 0 3 1 {name=p4 lab=Ibias}
C {opin.sym} 320 -120 0 0 {name=p5 lab=out}
C {lab_pin.sym} 0 160 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 280 160 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 400 160 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 40 -60 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -40 -60 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -100 -240 3 1 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 100 -240 3 1 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 280 -240 3 1 {name=p14 sig_type=std_logic lab=VDD}
