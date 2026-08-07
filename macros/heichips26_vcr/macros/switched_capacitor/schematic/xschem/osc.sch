v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -240 0 -100 {lab=#net1}
N 40 -140 40 -100 {lab=#net2}
N 40 -140 320 -140 {lab=#net2}
N 320 -260 320 -140 {lab=#net2}
N 360 -120 360 -100 {lab=#net3}
N 80 -260 80 -220 {lab=vout}
N 580 80 580 100 {lab=vout}
N 440 -220 440 -100 {lab=vout}
N 80 -220 440 -220 {lab=vout}
N 40 -260 40 -180 {lab=#net4}
N 180 -180 400 -180 {lab=#net4}
N 400 -180 400 -100 {lab=#net4}
N -300 -120 -300 -100 {lab=VSS}
N -300 -260 -300 -240 {lab=VDD}
N 580 160 580 200 {lab=VSS}
N 640 -100 660 -100 {lab=VDD}
N 640 -260 660 -260 {lab=VSS}
N 880 -320 880 -310 {lab=VDD}
N 880 -40 880 0 {lab=VSS}
N 800 -80 840 -80 {lab=#net5}
N 800 -280 840 -280 {lab=#net6}
N 240 -20 240 0 {lab=VSS}
N 240 -120 240 -90 {lab=#net3}
N 240 -120 360 -120 {lab=#net3}
N 360 -260 360 -120 {lab=#net3}
N -120 -340 -120 -330 {lab=VDD}
N -120 -270 -120 -240 {lab=#net1}
N -120 -240 0 -240 {lab=#net1}
N 0 -260 0 -240 {lab=#net1}
N 880 -80 920 -80 {lab=VSS}
N 920 -80 920 -40 {lab=VSS}
N 880 -40 920 -40 {lab=VSS}
N 880 -50 880 -40 {lab=VSS}
N 880 -280 920 -280 {lab=VDD}
N 920 -320 920 -280 {lab=VDD}
N 880 -320 920 -320 {lab=VDD}
N 880 -360 880 -320 {lab=VDD}
N -120 -300 -80 -300 {lab=VDD}
N -80 -340 -80 -300 {lab=VDD}
N -120 -340 -80 -340 {lab=VDD}
N -120 -360 -120 -340 {lab=VDD}
N 240 -60 280 -60 {lab=VSS}
N 280 -60 280 -20 {lab=VSS}
N 240 -20 280 -20 {lab=VSS}
N 240 -30 240 -20 {lab=VSS}
N 180 -60 200 -60 {lab=#net4}
N 180 -180 180 -60 {lab=#net4}
N 40 -180 180 -180 {lab=#net4}
N -180 -300 -160 -300 {lab=#net4}
N -180 -300 -180 -180 {lab=#net4}
N -180 -180 40 -180 {lab=#net4}
N 400 -180 880 -180 {lab=#net4}
N -180 -140 -40 -140 {lab=ictrl}
N -40 -140 -40 -100 {lab=ictrl}
N 580 80 900 80 {lab=vout}
N 580 -220 580 80 {lab=vout}
N 440 -220 580 -220 {lab=vout}
C {nmos_current_mirror2.sym} -20 -60 0 0 {name=x1}
C {pmos_current_mirror2.sym} 20 -320 0 0 {name=x2}
C {pmos_current_mirror1.sym} 340 -320 0 0 {name=x4}
C {nmos_current_mirror2.sym} 380 -60 0 0 {name=x5}
C {capa.sym} 580 130 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/iopin.sym} -300 -260 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} -300 -100 1 0 {name=p7 lab=VSS}
C {lab_pin.sym} -300 -240 3 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -300 -120 1 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 0 3 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 400 0 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 580 200 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 40 -360 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 360 -360 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {low_th_inverter.sym} 720 -280 0 0 {name=x3}
C {high_th_inverter.sym} 720 -80 0 0 {name=x6}
C {lab_pin.sym} 720 -40 3 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 720 -240 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 720 -320 1 0 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 720 -120 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {sg13_lv_nmos.sym} 860 -80 0 0 {name=M1
l=1.0u
w=20.0u
ng=20
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 860 -280 0 0 {name=M2
l=1.0u
w=20.0u
ng=20
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 880 0 3 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 880 -360 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {sg13_lv_nmos.sym} 220 -60 0 0 {name=M3
l=1.0u
w=20.0u
ng=20
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 240 0 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {sg13_lv_pmos.sym} -140 -300 0 0 {name=M4
l=1.0u
w=20.0u
ng=20
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} -120 -360 1 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} -180 -140 0 0 {name=p18 lab=ictrl}
C {devices/opin.sym} 900 80 0 0 {name=p19 lab=vout}
C {lab_pin.sym} 640 -100 1 0 {name=p20 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 640 -260 3 0 {name=p21 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 910 -180 3 0 {name=vc value="PULSE(0 3.3 0 100p 100p 50n 100n)"}
C {lab_pin.sym} 940 -180 3 0 {name=p22 sig_type=std_logic lab=VSS}
