v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 220 320 220 340 {lab=VSS}
N -1080 60 -1080 80 {lab=VSS}
N -1080 -80 -1080 -60 {lab=VDD}
N -400 60 -400 120 {lab=VSS
spice_ignore=short}
N -400 -120 -400 -60 {lab=VDD
spice_ignore=short}
N -460 -60 -440 -60 {lab=out1
spice_ignore=short}
N -460 60 -440 60 {lab=out1
spice_ignore=short}
N -460 0 -460 60 {lab=out1
spice_ignore=short}
N -400 0 -400 30 {lab=#net1
spice_ignore=short}
N 220 -80 240 -80 {lab=#net2
}
N 400 -80 420 -80 {lab=r1
}
N 0 320 0 340 {lab=VSS
}
N -400 -30 -400 0 {lab=#net1
spice_ignore=short}
N -460 -60 -460 0 {lab=out1
spice_ignore=short}
N -600 80 -600 120 {lab=VSS}
N -600 -120 -600 -40 {lab=VDD}
N -500 0 -460 0 {lab=out1}
N -400 0 -280 0 {lab=#net1}
N 220 140 240 140 {lab=#net2
}
N 400 140 420 140 {lab=r2
}
N 0 220 0 240 {lab=VDD
}
N -280 -300 -280 0 {lab=#net1}
N -280 -300 -240 -300 {lab=#net1}
N -280 0 -280 300 {lab=#net1}
N -280 300 -240 300 {lab=#net1}
N -100 -280 -40 -280 {lab=#net3
}
N 0 -240 0 -220 {lab=VSS
}
N 0 -340 0 -320 {lab=VDD
}
N 80 280 160 280 {lab=#net4}
N 0 -60 0 -40 {lab=VSS
}
N 0 -160 0 -140 {lab=VDD
}
N 60 -100 240 -100 {lab=#net5}
N 0 140 0 160 {lab=VSS
}
N 0 40 0 60 {lab=VDD
}
N -60 -180 80 -180 {lab=#net6}
N -60 -180 -60 -100 {lab=#net6}
N -60 -100 -40 -100 {lab=#net6}
N 80 -280 80 -180 {lab=#net6}
N 60 -280 80 -280 {lab=#net6}
N 80 200 80 280 {lab=#net4}
N 60 280 80 280 {lab=#net4}
N -60 200 80 200 {lab=#net4}
N -60 100 -60 200 {lab=#net4}
N -60 100 -40 100 {lab=#net4}
N 140 -280 140 -120 {lab=#net6}
N 80 -280 140 -280 {lab=#net6}
N 160 120 240 120 {lab=#net4}
N 220 140 220 260 {lab=#net2}
N 220 -80 220 140 {lab=#net2
}
N -100 280 -40 280 {lab=#net7}
N 60 100 240 100 {lab=#net8}
N 160 120 160 280 {lab=#net4}
N 140 -120 240 -120 {lab=#net6}
N -720 0 -700 0 {lab=vctrl}
C {iopin.sym} 420 -80 0 0 {name=p5 lab=r1}
C {iopin.sym} 420 140 0 0 {name=p6 lab=r2}
C {devices/iopin.sym} -1080 -80 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} -1080 80 1 0 {name=p7 lab=VSS}
C {lab_pin.sym} -1080 -60 3 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1080 60 1 0 {name=p9 sig_type=std_logic lab=VSS}
C {sg13cmos5l_pr/cap_cmomi.sym} 220 290 0 0 {name=C1
model=cap_cmomi
w=30e-6
l=30e-6
mmin=1
mmax=4
feed=double
subblock=0
m=1
mm_ok=1
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} -420 60 0 0 {name=M2
l=\{n_l\}
w=\{n_w\}
 ng=\{ng\}
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} -420 -60 0 0 {name=M3
l=\{p_l\}
w=\{p_w\}
ng=\{ng\}
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} -400 -120 2 0 {name=p1 sig_type=std_logic lab=VDD
}
C {transmission_gate.sym} 320 -100 0 0 {name=x2
}
C {lab_pin.sym} 320 -160 2 0 {name=p14 sig_type=std_logic lab=VDD
}
C {devices/gnd.sym} -400 120 0 1 {name=l3 lab=VSS
}
C {devices/gnd.sym} 320 -40 0 1 {name=l8 lab=VSS
}
C {devices/gnd.sym} 0 340 0 1 {name=l12 lab=VSS
}
C {lab_pin.sym} 0 220 2 0 {name=p15 sig_type=std_logic lab=VDD
}
C {hv_inverter_40u.sym} 0 280 0 0 {name=x4
}
C {osc.sym} -600 20 0 0 {name=x5}
C {devices/gnd.sym} -600 120 0 1 {name=l14 lab=VSS}
C {lab_pin.sym} -600 -120 2 0 {name=p17 sig_type=std_logic lab=VDD}
C {transmission_gate.sym} 320 120 0 0 {name=x6
}
C {lab_pin.sym} 320 60 2 0 {name=p22 sig_type=std_logic lab=VDD
}
C {devices/gnd.sym} 320 180 0 1 {name=l18 lab=VSS
}
C {low_th_inverter.sym} -180 280 0 0 {name=x7
}
C {high_th_inverter.sym} -180 -280 0 0 {name=x8
}
C {devices/gnd.sym} -180 -240 0 1 {name=l4 lab=VSS
}
C {lab_pin.sym} -180 240 2 0 {name=p23 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} -180 -320 2 0 {name=p24 sig_type=std_logic lab=VDD
}
C {devices/gnd.sym} -180 320 0 1 {name=l5 lab=VSS
}
C {devices/gnd.sym} 0 -220 0 1 {name=l6 lab=VSS
}
C {lab_pin.sym} 0 -340 2 0 {name=p27 sig_type=std_logic lab=VDD
}
C {hv_inverter_40u.sym} 0 -280 0 0 {name=x9
}
C {devices/gnd.sym} 0 -40 0 1 {name=l7 lab=VSS
}
C {lab_pin.sym} 0 -160 2 0 {name=p30 sig_type=std_logic lab=VDD
}
C {hv_inverter_40u.sym} 0 -100 0 0 {name=x10
}
C {devices/gnd.sym} 0 160 0 1 {name=l9 lab=VSS
}
C {lab_pin.sym} 0 40 2 0 {name=p32 sig_type=std_logic lab=VDD
}
C {hv_inverter_40u.sym} 0 100 0 0 {name=x11
}
C {devices/gnd.sym} 220 340 0 1 {name=l1 lab=VSS
}
C {iopin.sym} -720 0 2 0 {name=p2 lab=vctrl}
C {code_shown.sym} -600 -370 0 0 {value="
.param w   = 0.3u
.param ng  = 1
.param n_ng = ng
.param n_w = \{w*n_ng\}
.param n_l = 0.45u
.param p_ng = ng
.param p_w = \{1*w*p_ng\}
.param p_l = 0.4u
"}
C {lab_pin.sym} -480 0 1 0 {name=p3 sig_type=std_logic lab=out1
}
