v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -220 0 -160 {lab=VDD}
N 300 -220 300 -160 {lab=VDD}
N 420 -220 420 -160 {lab=VDD}
N 360 -160 380 -160 {lab=Ibias}
N 360 -160 360 -100 {lab=Ibias}
N 340 -160 360 -160 {lab=Ibias}
N 420 -130 420 -100 {lab=Ibias}
N 200 -160 200 -100 {lab=Ibias}
N 360 -100 420 -100 {lab=Ibias}
N 200 -100 360 -100 {lab=Ibias}
N -120 -60 -120 -30 {lab=#net1}
N 0 -60 120 -60 {lab=#net1}
N 120 -60 120 -30 {lab=#net1}
N 0 -130 0 -60 {lab=#net1}
N -120 -60 0 -60 {lab=#net1}
N -120 60 -120 90 {lab=#net2}
N 120 60 120 90 {lab=#net3}
N 0 120 80 120 {lab=#net2}
N 0 60 0 120 {lab=#net2}
N -80 120 0 120 {lab=#net2}
N -120 60 0 60 {lab=#net2}
N -120 30 -120 60 {lab=#net2}
N -120 120 -120 180 {lab=VSS}
N 120 120 120 180 {lab=VSS}
N 300 120 300 180 {lab=VSS}
N 120 60 200 60 {lab=#net3}
N 120 30 120 60 {lab=#net3}
N 200 60 200 120 {lab=#net3}
N 200 120 260 120 {lab=#net3}
N 300 60 300 90 {lab=out}
N -120 0 -60 0 {lab=VDD}
N 60 0 120 0 {lab=VDD}
N 40 -160 200 -160 {lab=Ibias}
N 420 -100 420 -60 {lab=Ibias}
N 300 60 340 60 {lab=out}
N 300 -130 300 60 {lab=out}
N 160 0 200 0 {lab=+}
N -200 0 -160 0 {lab=-}
C {code_shown.sym} -120 -430 0 0 {value="
.param n_w = 1.2u
.param n_l = 1.5u
.param p_w = 2u
.param p_l = 0.4u
.param bcm = 1
"}
C {devices/iopin.sym} -400 -40 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} -400 40 1 0 {name=p1 lab=VSS}
C {sg13_lv_pmos.sym} 20 -160 0 1 {name=M9
l=p_l
w=bcm*p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 0 -220 3 1 {name=p15 sig_type=std_logic lab=VDD}
C {sg13_lv_pmos.sym} 320 -160 0 1 {name=M10
l=p_l
w=bcm*p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 300 -220 3 1 {name=p16 sig_type=std_logic lab=VDD}
C {sg13_lv_pmos.sym} 400 -160 0 0 {name=M11
l=p_l
w=p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 420 -220 3 1 {name=p17 sig_type=std_logic lab=VDD}
C {sg13_lv_pmos.sym} 140 0 0 1 {name=M12
l=p_l
w=p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} -140 0 0 0 {name=M13
l=p_l
w=p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 100 120 0 0 {name=M14
l=n_l
w=n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} -100 120 0 1 {name=M15
l=n_l
w=n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} -120 180 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 120 180 3 0 {name=p19 sig_type=std_logic lab=VSS}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 280 120 0 0 {name=M16
l=n_l
w=n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 300 180 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -60 0 0 1 {name=p21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 60 0 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {ipin.sym} 420 -60 1 1 {name=p23 lab=Ibias}
C {opin.sym} 340 60 0 0 {name=p24 lab=out}
C {ipin.sym} 200 0 0 1 {name=p25 lab=+}
C {ipin.sym} -200 0 0 0 {name=p26 lab=-}
