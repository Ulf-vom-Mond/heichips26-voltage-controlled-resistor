v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 80 -460 80 -440 {lab=VSS}
N 80 -560 80 -540 {lab=VDD}
N 280 460 280 480 {lab=VSS}
N 280 320 280 340 {lab=VDD}
N 360 400 380 400 {lab=out4}
N 280 -320 280 -300 {lab=VSS}
N 280 -460 280 -440 {lab=VDD}
N 360 -380 380 -380 {lab=nout1}
N 280 -60 280 -40 {lab=VSS}
N 280 -200 280 -180 {lab=VDD}
N 360 -120 380 -120 {lab=nout2}
N 80 -220 80 -200 {lab=VSS}
N 80 -320 80 -300 {lab=VDD}
N 280 200 280 220 {lab=VSS}
N 280 60 280 80 {lab=VDD}
N 360 140 380 140 {lab=nout3}
N 140 -500 180 -500 {lab=#net1}
N 180 -500 180 -400 {lab=#net1}
N 180 -400 200 -400 {lab=#net1}
N 20 -500 40 -500 {lab=msb}
N 20 -500 20 120 {lab=msb}
N 0 -260 0 -100 {lab=lsb}
N 0 -100 200 -100 {lab=lsb}
N 140 -260 160 -260 {lab=#net2}
N 160 -360 160 -260 {lab=#net2}
N 160 -360 200 -360 {lab=#net2}
N 20 120 200 120 {lab=msb}
N 0 -260 40 -260 {lab=lsb}
N 0 -100 0 420 {lab=lsb}
N 0 420 200 420 {lab=lsb}
N 20 120 20 380 {lab=msb}
N 20 380 200 380 {lab=msb}
N -20 -500 20 -500 {lab=msb}
N -20 -460 0 -460 {lab=lsb}
N 0 -460 0 -260 {lab=lsb}
N 180 -400 180 -140 {lab=#net1}
N 180 -140 200 -140 {lab=#net1}
N 160 -260 160 160 {lab=#net2}
N 160 160 200 160 {lab=#net2}
C {devices/iopin.sym} -540 -60 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} -540 60 1 0 {name=p1 lab=VSS}
C {hv_inverter_40u.sym} 80 -500 0 0 {name=x3}
C {lab_pin.sym} 80 -440 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 80 -560 1 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} -20 -500 0 0 {name=p14 lab=msb}
C {devices/ipin.sym} -20 -460 0 0 {name=p21 lab=lsb}
C {hv_nand.sym} 280 400 0 0 {name=x7}
C {lab_pin.sym} 280 480 3 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 280 320 1 0 {name=p23 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 280 -300 3 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 280 -460 1 0 {name=p25 sig_type=std_logic lab=VDD}
C {hv_nand.sym} 280 -120 0 0 {name=x9}
C {lab_pin.sym} 280 -40 3 0 {name=p26 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 280 -200 1 0 {name=p27 sig_type=std_logic lab=VDD}
C {hv_inverter_40u.sym} 80 -260 0 0 {name=x10}
C {lab_pin.sym} 80 -200 3 0 {name=p28 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 80 -320 1 0 {name=p29 sig_type=std_logic lab=VDD}
C {hv_nand.sym} 280 140 0 0 {name=x11}
C {lab_pin.sym} 280 220 3 0 {name=p30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 280 60 1 0 {name=p31 sig_type=std_logic lab=VDD}
C {hv_nand.sym} 280 -380 0 0 {name=x8}
C {devices/opin.sym} 380 -380 0 0 {name=p6 lab=nout1}
C {devices/opin.sym} 380 -120 0 0 {name=p3 lab=nout2}
C {devices/opin.sym} 380 140 0 0 {name=p4 lab=nout3}
C {devices/opin.sym} 380 400 0 0 {name=p5 lab=nout4}
