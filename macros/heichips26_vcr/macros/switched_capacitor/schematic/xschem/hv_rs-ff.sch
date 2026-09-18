v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -80 0 -60 {lab=VSS}
N 0 200 0 220 {lab=VSS}
N 0 60 0 80 {lab=VDD}
N -100 -120 -80 -120 {lab=nQ}
N -100 -120 -100 -40 {lab=nQ}
N -100 -40 100 40 {lab=nQ}
N 100 40 100 140 {lab=nQ}
N 80 140 100 140 {lab=nQ}
N -100 120 -80 120 {lab=Q}
N -100 40 -100 120 {lab=Q}
N -100 40 100 -40 {lab=Q}
N 100 -140 100 -40 {lab=Q}
N 80 -140 100 -140 {lab=Q}
N -120 160 -80 160 {lab=nR}
N -120 -160 -80 -160 {lab=nS}
N 100 140 120 140 {lab=nQ}
N 100 -140 120 -140 {lab=Q}
N 0 -220 0 -200 {lab=VDD}
C {devices/ipin.sym} -120 -160 0 0 {name=p10 lab=nS}
C {devices/iopin.sym} 0 -280 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} 0 280 1 0 {name=p1 lab=VSS}
C {devices/opin.sym} 120 -140 0 0 {name=p6 lab=Q}
C {devices/ipin.sym} -120 160 0 0 {name=p2 lab=nR}
C {lab_pin.sym} 0 220 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 -60 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 -220 3 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 60 3 1 {name=p7 sig_type=std_logic lab=VDD}
C {devices/opin.sym} 120 140 0 0 {name=p8 lab=nQ}
C {hv_nand.sym} 0 -140 0 0 {name=x4}
C {hv_nand.sym} 0 140 0 0 {name=x5}
