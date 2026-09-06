v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -120 60 -120 120 {lab=VSS
spice_ignore=short}
N -120 -120 -120 -60 {lab=VDD
spice_ignore=short}
N -180 -60 -160 -60 {lab=in
spice_ignore=short}
N -180 60 -160 60 {lab=in
spice_ignore=short}
N -120 0 -120 30 {lab=#net1
spice_ignore=short}
N 280 320 280 340 {lab=VSS
}
N -120 -30 -120 0 {lab=#net1
spice_ignore=short}
N -180 0 -180 60 {lab=in
spice_ignore=short}
N -120 0 0 0 {lab=#net1}
N 280 220 280 240 {lab=VDD
}
N 0 -300 0 0 {lab=#net1}
N 0 -300 40 -300 {lab=#net1}
N 0 0 0 300 {lab=#net1}
N 0 300 40 300 {lab=#net1}
N 180 -280 240 -280 {lab=#net2
}
N 280 -240 280 -220 {lab=VSS
}
N 280 -340 280 -320 {lab=VDD
}
N 280 -60 280 -40 {lab=VSS
}
N 280 -160 280 -140 {lab=VDD
}
N 280 140 280 160 {lab=VSS
}
N 280 40 280 60 {lab=VDD
}
N 220 -180 360 -180 {lab=out1}
N 220 -180 220 -100 {lab=out1}
N 220 -100 240 -100 {lab=out1}
N 360 -280 360 -180 {lab=out1}
N 340 -280 360 -280 {lab=out1}
N 360 200 360 280 {lab=nout2}
N 340 280 360 280 {lab=nout2}
N 220 200 360 200 {lab=nout2}
N 220 100 220 200 {lab=nout2}
N 220 100 240 100 {lab=nout2}
N 360 -280 420 -280 {lab=out1}
N 180 280 240 280 {lab=#net3}
N 340 100 420 100 {lab=out2}
N 340 -100 420 -100 {lab=nout1}
N 360 280 420 280 {lab=nout2}
N -220 0 -180 0 {lab=in}
N -180 -60 -180 0 {lab=in
spice_ignore=short}
N 100 320 100 340 {lab=VSS}
N 100 220 100 240 {lab=VDD}
N 100 -340 100 -320 {lab=VDD}
N 100 -240 100 -220 {lab=VSS}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} -140 60 0 0 {name=M2
l=\{n_l\}
w=\{n_w\}
 ng=\{ng\}
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} -140 -60 0 0 {name=M3
l=\{p_l\}
w=\{p_w\}
ng=\{ng\}
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} -120 -120 2 0 {name=p1 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 280 220 2 0 {name=p15 sig_type=std_logic lab=VDD
}
C {hv_inverter_40u.sym} 280 280 0 0 {name=x4
}
C {low_th_inverter.sym} 100 280 0 0 {name=x7
}
C {high_th_inverter.sym} 100 -280 0 0 {name=x8
}
C {lab_pin.sym} 100 220 2 0 {name=p23 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 100 -340 2 0 {name=p24 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 280 -340 2 0 {name=p27 sig_type=std_logic lab=VDD
}
C {hv_inverter_40u.sym} 280 -280 0 0 {name=x9
}
C {lab_pin.sym} 280 -160 2 0 {name=p30 sig_type=std_logic lab=VDD
}
C {hv_inverter_40u.sym} 280 -100 0 0 {name=x10
}
C {lab_pin.sym} 280 40 2 0 {name=p32 sig_type=std_logic lab=VDD
}
C {hv_inverter_40u.sym} 280 100 0 0 {name=x11
}
C {code_shown.sym} -320 -370 0 0 {value="
.param w   = 0.3u
.param ng  = 1
.param n_ng = ng
.param n_w = \{w*n_ng\}
.param n_l = 0.45u
.param p_ng = ng
.param p_w = \{1*w*p_ng\}
.param p_l = 0.4u
"}
C {opin.sym} 420 -280 0 0 {name=p2 lab=out1}
C {opin.sym} 420 -100 0 0 {name=p3 lab=nout1}
C {opin.sym} 420 100 0 0 {name=p4 lab=out2}
C {opin.sym} 420 280 0 0 {name=p5 lab=nout2}
C {ipin.sym} -220 0 0 0 {name=p6 lab=in}
C {iopin.sym} -400 20 1 0 {name=p7 lab=VSS}
C {iopin.sym} -400 -20 3 0 {name=p8 lab=VDD}
C {lab_pin.sym} -120 120 0 1 {name=p9 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 100 -220 0 1 {name=p10 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 280 -220 0 1 {name=p11 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 280 -40 0 1 {name=p12 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 280 160 0 1 {name=p13 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 280 340 0 1 {name=p14 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 100 340 0 1 {name=p16 sig_type=std_logic lab=VSS
}
