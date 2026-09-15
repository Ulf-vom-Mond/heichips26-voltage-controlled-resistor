v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -40 80 -40 100 {lab=VDD
}
N 0 200 0 220 {lab=VSS
}
N 420 -220 420 -160 {lab=VDD}
N 0 -220 0 -160 {lab=VDD}
N 360 -160 380 -160 {lab=#net1}
N 0 -130 0 -100 {lab=#net1}
N 0 -100 60 -100 {lab=#net1}
N 60 -160 60 -100 {lab=#net1}
N 40 -160 60 -160 {lab=#net1}
N 240 -220 240 -160 {lab=VDD}
N 360 -160 360 -100 {lab=#net1}
N 0 -100 0 100 {lab=#net1}
N 420 160 420 220 {lab=VSS}
N 240 160 240 220 {lab=VSS}
N 240 100 240 130 {lab=#net2}
N 300 100 300 160 {lab=#net2}
N 280 160 300 160 {lab=#net2}
N 180 -160 200 -160 {lab=#net1}
N 180 -160 180 -100 {lab=#net1}
N 180 -100 360 -100 {lab=#net1}
N 240 -130 240 100 {lab=#net2}
N 60 -100 180 -100 {lab=#net1}
N 420 -130 420 -80 {lab=40uA+}
N 420 80 420 130 {lab=40uA-}
N 240 100 300 100 {lab=#net2}
N 300 160 380 160 {lab=#net2}
N 600 -220 600 -160 {lab=VDD}
N 540 -160 560 -160 {lab=#net1}
N 540 -160 540 -100 {lab=#net1}
N 360 -100 540 -100 {lab=#net1}
N 600 -130 600 100 {lab=#net3}
N 600 160 600 220 {lab=VSS}
N 600 100 600 130 {lab=#net3}
N 660 100 660 160 {lab=#net3}
N 640 160 660 160 {lab=#net3}
N 720 160 720 220 {lab=VSS}
N 660 160 680 160 {lab=#net3}
N 720 80 720 130 {lab=10uA-}
N 880 160 880 220 {lab=VSS}
N 820 100 820 160 {lab=#net3}
N 820 160 840 160 {lab=#net3}
N 600 100 660 100 {lab=#net3}
N 660 100 820 100 {lab=#net3}
N 880 -130 880 -100 {lab=#net4}
N 880 -100 940 -100 {lab=#net4}
N 940 -160 940 -100 {lab=#net4}
N 920 -160 940 -160 {lab=#net4}
N 880 -220 880 -160 {lab=VDD}
N 1060 -220 1060 -160 {lab=VDD}
N 1060 -130 1060 100 {lab=#net5}
N 880 -100 880 130 {lab=#net4}
N 1000 -160 1020 -160 {lab=#net4}
N 1000 -160 1000 -100 {lab=#net4}
N 940 -100 1000 -100 {lab=#net4}
N 1220 -220 1220 -160 {lab=VDD}
N 1220 -130 1220 -80 {lab=5uA+}
N 1160 -160 1180 -160 {lab=#net4}
N 1160 -160 1160 -100 {lab=#net4}
N 1000 -100 1160 -100 {lab=#net4}
N 1060 160 1060 220 {lab=VSS}
N 1060 100 1060 130 {lab=#net5}
N 1120 100 1120 160 {lab=#net5}
N 1100 160 1120 160 {lab=#net5}
N 1060 100 1120 100 {lab=#net5}
N 1220 160 1220 220 {lab=VSS}
N 1120 160 1180 160 {lab=#net5}
N 1220 80 1220 130 {lab=5uA-}
C {current_reference_40uA.sym} -20 140 0 0 {name=x4
}
C {sg13_lv_pmos.sym} 20 -160 0 1 {name=M11
l=cm_p_l
w=cm_p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 400 -160 0 0 {name=M12
l=cm_p_l
w=cm_p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 220 -160 0 0 {name=M13
l=cm_p_l
w=cm_p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 260 160 0 1 {name=M14
l=cm_n_l
w=cm_n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 400 160 0 0 {name=M15
l=cm_n_l
w=cm_n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 420 -220 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 420 220 1 1 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 240 -220 1 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 240 220 1 1 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 -220 1 0 {name=p20 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 220 1 1 {name=p21 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -40 80 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {sg13_lv_pmos.sym} 580 -160 0 0 {name=M1
l=cm_p_l
w=cm_p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 600 -220 1 0 {name=p37 sig_type=std_logic lab=VDD}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 620 160 0 1 {name=M2
l=cm_n_l
w=4*cm_n_w
 ng=4
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 700 160 0 0 {name=M3
l=cm_n_l
w=cm_n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 720 220 1 1 {name=p38 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 600 220 1 1 {name=p39 sig_type=std_logic lab=VSS}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 860 160 0 0 {name=M5
l=cm_n_l
w=cm_n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 880 220 1 1 {name=p40 sig_type=std_logic lab=VSS}
C {sg13_lv_pmos.sym} 900 -160 0 1 {name=M25
l=cm_p_l
w=2*cm_p_w
ng=2
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 1040 -160 0 0 {name=M26
l=cm_p_l
w=cm_p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 880 -220 1 0 {name=p41 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1060 -220 1 0 {name=p42 sig_type=std_logic lab=VDD}
C {sg13_lv_pmos.sym} 1200 -160 0 0 {name=M27
l=cm_p_l
w=cm_p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 1220 -220 1 0 {name=p43 sig_type=std_logic lab=VDD}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1080 160 0 1 {name=M28
l=cm_n_l
w=cm_n_w
 ng=2
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1200 160 0 0 {name=M29
l=cm_n_l
w=cm_n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 1220 220 1 1 {name=p44 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1060 220 1 1 {name=p45 sig_type=std_logic lab=VSS}
C {opin.sym} 420 -80 3 1 {name=p2 lab=40uA+}
C {iopin.sym} -160 20 1 0 {name=p7 lab=VSS}
C {iopin.sym} -160 -20 3 0 {name=p8 lab=VDD}
C {opin.sym} 420 80 3 0 {name=p1 lab=40uA-}
C {opin.sym} 720 80 3 0 {name=p3 lab=10uA-}
C {opin.sym} 1220 -80 3 1 {name=p4 lab=5uA+}
C {opin.sym} 1220 80 3 0 {name=p5 lab=5uA-}
C {code_shown.sym} -300 -230 0 0 {value="
.param cm_n_w = 6u
.param cm_n_l = 5u
.param cm_p_w = 10u
.param cm_p_l = 2u
"}
