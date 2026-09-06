v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 200 -80 200 -60 {lab=VDD}
N 200 60 200 80 {lab=VSS}
N 0 -80 0 -60 {lab=VSS}
N -260 -160 -80 -160 {lab=in1}
N 0 -220 0 -200 {lab=VDD}
N 0 200 0 220 {lab=VSS}
N -260 120 -80 120 {lab=in2}
N 0 60 0 80 {lab=VDD}
N 280 0 300 0 {lab=out}
N 80 140 100 140 {lab=#net1}
N 100 20 100 140 {lab=#net1}
N 100 20 120 20 {lab=#net1}
N 80 -140 100 -140 {lab=#net2}
N 100 -140 100 -20 {lab=#net2}
N 100 -20 120 -20 {lab=#net2}
N -180 -260 -180 -240 {lab=VSS}
N -180 -360 -180 -340 {lab=VDD}
N -120 -300 -100 -300 {lab=#net3}
N -100 -300 -100 160 {lab=#net3}
N -240 -300 -220 -300 {lab=sel}
N -100 160 -80 160 {lab=#net3}
N -240 -300 -240 -120 {lab=sel}
N -260 -300 -240 -300 {lab=sel}
N -240 -120 -80 -120 {lab=sel}
C {devices/ipin.sym} -260 -160 0 0 {name=p10 lab=in1}
C {devices/iopin.sym} -540 -60 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} -540 60 1 0 {name=p1 lab=VSS}
C {devices/opin.sym} 300 0 0 0 {name=p6 lab=out}
C {lab_pin.sym} 0 -60 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 200 80 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 -220 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 200 -80 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} -260 120 0 0 {name=p9 lab=in2}
C {lab_pin.sym} 0 220 3 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 60 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {hv_inverter_40u.sym} -180 -300 0 0 {name=x3}
C {lab_pin.sym} -180 -240 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -180 -360 1 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} -260 -300 0 0 {name=p14 lab=sel}
C {hv_nor.sym} 0 -140 0 0 {name=x1}
C {hv_nor.sym} 0 140 0 0 {name=x2}
C {hv_nor.sym} 200 0 0 0 {name=x4}
