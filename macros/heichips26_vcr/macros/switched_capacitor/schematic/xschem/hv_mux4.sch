v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 240 -80 240 -60 {lab=VDD}
N 240 60 240 80 {lab=VSS}
N 0 -360 0 -340 {lab=VSS}
N -260 -400 -80 -400 {lab=in1}
N 0 -500 0 -480 {lab=VDD}
N 0 -80 0 -60 {lab=VSS}
N -260 -120 -80 -120 {lab=in2}
N 0 -220 0 -200 {lab=VDD}
N 320 0 340 0 {lab=out}
N 80 -140 100 -140 {lab=#net1}
N 80 -420 120 -420 {lab=#net2}
N 0 200 0 220 {lab=VSS}
N -260 160 -80 160 {lab=in3}
N 0 60 0 80 {lab=VDD}
N 0 480 0 500 {lab=VSS}
N -260 440 -80 440 {lab=in4}
N 0 340 0 360 {lab=VDD}
N 100 -140 100 -10 {lab=#net1}
N 100 -10 160 -10 {lab=#net1}
N 120 -420 120 -30 {lab=#net2}
N 120 -30 160 -30 {lab=#net2}
N 80 140 100 140 {lab=#net3}
N 80 420 120 420 {lab=#net4}
N 100 10 100 140 {lab=#net3}
N 100 10 160 10 {lab=#net3}
N 120 30 120 420 {lab=#net4}
N 120 30 160 30 {lab=#net4}
N -160 -440 -160 400 {lab=nsel4}
N -160 400 -80 400 {lab=nsel4}
N -180 -500 -100 -500 {lab=nsel1}
N -100 -500 -100 -440 {lab=nsel1}
N -100 -440 -80 -440 {lab=nsel1}
N -180 -480 -120 -480 {lab=nsel2}
N -180 -460 -140 -460 {lab=nsel3}
N -120 -480 -120 -160 {lab=nsel2}
N -120 -160 -80 -160 {lab=nsel2}
N -140 120 -80 120 {lab=nsel3}
N -140 -460 -140 120 {lab=nsel3}
N -180 -440 -160 -440 {lab=nsel4}
C {devices/ipin.sym} -260 -400 0 0 {name=p10 lab=in1}
C {devices/iopin.sym} -540 -60 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} -540 60 1 0 {name=p1 lab=VSS}
C {devices/opin.sym} 340 0 0 0 {name=p6 lab=out}
C {lab_pin.sym} 0 -340 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 240 80 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 -500 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 240 -80 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} -260 -120 0 0 {name=p9 lab=in2}
C {lab_pin.sym} 0 -60 3 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 -220 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {hv_nor4.sym} 240 0 0 0 {name=x1}
C {hv_nor.sym} 0 -420 0 0 {name=x2}
C {hv_nor.sym} 0 -140 0 0 {name=x4}
C {devices/ipin.sym} -260 160 0 0 {name=p15 lab=in3}
C {lab_pin.sym} 0 220 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 60 1 0 {name=p17 sig_type=std_logic lab=VDD}
C {hv_nor.sym} 0 140 0 0 {name=x5}
C {devices/ipin.sym} -260 440 0 0 {name=p18 lab=in4}
C {lab_pin.sym} 0 500 3 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 340 1 0 {name=p20 sig_type=std_logic lab=VDD}
C {hv_nor.sym} 0 420 0 0 {name=x6}
C {devices/ipin.sym} -180 -500 0 0 {name=p2 lab=nsel1}
C {devices/ipin.sym} -180 -460 0 0 {name=p14 lab=nsel3}
C {devices/ipin.sym} -180 -480 0 0 {name=p8 lab=nsel2}
C {devices/ipin.sym} -180 -440 0 0 {name=p21 lab=nsel4}
