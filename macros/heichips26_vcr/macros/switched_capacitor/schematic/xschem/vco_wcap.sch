v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 60 180 60 200 {lab=VSS
}
N 60 80 60 100 {lab=VDD
}
N -100 80 -100 100 {lab=VSS}
N -100 0 -100 20 {lab=vc}
N -100 0 0 0 {lab=vc}
N 0 -140 0 0 {lab=vc}
N 0 -140 20 -140 {lab=vc}
N 0 0 0 120 {lab=vc}
N 0 120 20 120 {lab=vc}
N 380 20 380 140 {lab=r}
N 380 20 400 20 {lab=r}
N 380 -160 380 -20 {lab=s}
N 380 -20 400 -20 {lab=s}
N 540 -20 560 -20 {lab=out}
N 460 -80 460 -60 {lab=VDD
}
N 460 60 460 80 {lab=VSS
}
N 520 -20 540 -20 {lab=out}
N 40 -340 540 -340 {lab=out}
N 540 -20 540 320 {lab=out}
N 40 320 540 320 {lab=out}
N 0 120 0 290 {lab=vc}
N 0 350 0 380 {lab=5uA-}
N -60 320 0 320 {lab=VSS}
N -60 -340 0 -340 {lab=VDD}
N 140 -160 200 -160 {lab=#net1}
N 140 140 200 140 {lab=#net2}
N 60 -120 60 -100 {lab=VSS}
N 60 -220 60 -200 {lab=VDD}
N 540 -340 540 -20 {lab=out}
N 80 180 80 200 {lab=40uA-}
N 80 -220 80 -200 {lab=40uA+}
N 0 -400 0 -370 {lab=5uA+}
N -280 60 -280 80 {lab=VSS}
N -280 -80 -280 -60 {lab=VDD}
N -200 -20 -160 -20 {lab=vthh}
N -160 -180 -160 -20 {lab=vthh}
N -160 -180 20 -180 {lab=vthh}
N -200 20 -160 20 {lab=vthl}
N -160 20 -160 160 {lab=vthl}
N -160 160 20 160 {lab=vthl}
N 520 20 560 20 {lab=nout}
N 0 -310 0 -140 {lab=vc}
N -380 0 -360 0 {lab=vctrl}
N -320 60 -320 80 {lab=10uA-}
N 240 -220 240 -200 {lab=VDD}
N 240 -120 240 -100 {lab=VSS}
N 300 -160 380 -160 {lab=s}
N 240 80 240 100 {lab=VDD}
N 240 180 240 200 {lab=VSS}
N 300 140 380 140 {lab=r}
N 860 -80 860 -60 {lab=VDD}
N 900 -80 900 -60 {lab=40uA-}
N 920 -80 920 -60 {lab=10uA-}
N 940 -80 940 -60 {lab=5uA-}
N 860 60 860 80 {lab=VSS}
N 940 60 940 80 {lab=5uA+}
N 900 60 900 80 {lab=40uA+}
N -120 0 -100 0 {lab=vc}
C {iopin.sym} -560 20 1 0 {name=p3 lab=VSS}
C {iopin.sym} -560 -20 3 0 {name=p4 lab=VDD}
C {iopin.sym} 560 20 0 0 {name=p1 lab=nout}
C {iopin.sym} 560 -20 0 0 {name=p2 lab=out}
C {iopin.sym} -380 0 0 1 {name=p6 lab=vctrl}
C {code_shown.sym} -560 -490 0 0 {value="
.ic v(vc)=1.65
"}
C {sg13cmos5l_pr/cap_cmomi.sym} -100 50 0 0 {name=C1
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
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 20 320 0 1 {name=M4
l=0.45u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {hv_rs-ff.sym} 460 0 0 0 {name=x1}
C {devices/lab_pin.sym} 380 -160 0 1 {name=l19 sig_type=std_logic lab=s}
C {devices/lab_pin.sym} 380 140 0 1 {name=l20 sig_type=std_logic lab=r}
C {code_shown.sym} -560 -410 0 0 {value="
.param cm_n_w = 6u
.param cm_n_l = 5u
.param cm_p_w = 10u
.param cm_p_l = 2u

.param inv_ng = 1
.param inv_n_w = 2u
.param inv_n_l = 0.45u
.param inv_p_w = 6.5u
.param inv_p_l = 0.4u
"}
C {sg13_lv_pmos.sym} 20 -340 0 1 {name=M6
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {comp_pmos.sym} 80 140 0 0 {name=x5
}
C {comp_nmos.sym} 80 -160 0 0 {name=x7}
C {devices/lab_pin.sym} 900 80 1 1 {name=l47 sig_type=std_logic lab=40uA+}
C {devices/lab_pin.sym} 900 -80 3 1 {name=l48 sig_type=std_logic lab=40uA-}
C {devices/lab_pin.sym} 80 -220 3 1 {name=l14 sig_type=std_logic lab=40uA+}
C {devices/lab_pin.sym} 80 200 3 0 {name=l15 sig_type=std_logic lab=40uA-}
C {devices/lab_pin.sym} 0 380 1 1 {name=l16 sig_type=std_logic lab=5uA-}
C {devices/lab_pin.sym} 0 -400 3 1 {name=l17 sig_type=std_logic lab=5uA+}
C {lab_pin.sym} 240 -220 3 1 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 240 -100 3 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 460 80 3 0 {name=p26 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 460 -80 3 1 {name=p27 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -60 -340 0 0 {name=p28 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -60 320 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 60 80 3 1 {name=p30 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 60 200 3 0 {name=p31 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 60 -220 3 1 {name=p32 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 60 -100 3 0 {name=p33 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -280 -80 3 1 {name=p34 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -280 80 3 0 {name=p35 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -100 100 3 0 {name=p36 sig_type=std_logic lab=VSS}
C {voltage_mirror_pmos.sym} -280 0 0 0 {name=x2}
C {devices/lab_pin.sym} 920 -80 3 1 {name=l1 sig_type=std_logic lab=10uA-}
C {devices/lab_pin.sym} 940 80 1 1 {name=l2 sig_type=std_logic lab=5uA+}
C {lab_pin.sym} 860 -80 3 1 {name=p43 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 860 80 3 0 {name=p44 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 940 -80 3 1 {name=l3 sig_type=std_logic lab=5uA-}
C {devices/lab_pin.sym} -320 80 1 1 {name=l4 sig_type=std_logic lab=10uA-}
C {devices/lab_pin.sym} -160 -180 0 0 {name=l5 sig_type=std_logic lab=vthh}
C {devices/lab_pin.sym} -160 160 0 0 {name=l6 sig_type=std_logic lab=vthl}
C {hv_inverter_6u5.sym} 240 -160 0 0 {name=x3}
C {lab_pin.sym} 240 80 3 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 240 200 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {hv_inverter_6u5.sym} 240 140 0 0 {name=x6}
C {bias_current_generator.sym} 900 0 0 0 {name=x8}
C {iopin.sym} -120 0 0 1 {name=p8 lab=vc}
