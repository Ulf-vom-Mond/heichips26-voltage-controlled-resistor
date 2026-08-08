v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -500 -20 -480 -20 {lab=sw1}
N -300 0 -300 80 {lab=r1}
N -300 0 -260 0 {lab=r1}
N -500 -120 -500 -20 {lab=sw1}
N -500 -120 -300 -120 {lab=sw1}
N -300 -120 -300 -40 {lab=sw1}
N 300 0 300 80 {lab=r2}
N 260 0 300 0 {lab=r2}
N 260 -20 500 -20 {lab=sw2}
N 300 -120 300 -40 {lab=#net1}
N 300 -120 400 -120 {lab=#net1}
N 0 -0 100 0 {lab=#net2}
N 260 -40 300 -40 {lab=#net1}
N 0 140 0 160 {lab=VSS}
N 0 -0 -0 80 {lab=#net2}
N -100 0 0 -0 {lab=#net2}
N 500 -120 500 -20 {lab=sw2}
N -900 60 -900 80 {lab=VSS}
N -900 -80 -900 -60 {lab=VDD}
N 480 -120 500 -120 {lab=sw2}
N -520 -120 -500 -120 {lab=sw1}
N 500 -120 520 -120 {lab=sw2}
N -400 -20 -260 -20 {lab=#net3}
N -300 -40 -260 -40 {lab=sw1}
C {transmission_gate.sym} -180 -20 0 0 {name=x1}
C {transmission_gate.sym} 180 -20 0 1 {name=x3}
C {lab_pin.sym} 0 160 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {ipin.sym} -520 -120 0 0 {name=p4 lab=sw1}
C {iopin.sym} -300 80 1 0 {name=p5 lab=r1}
C {iopin.sym} 300 80 1 0 {name=p6 lab=r2}
C {devices/iopin.sym} -900 -80 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} -900 80 1 0 {name=p7 lab=VSS}
C {lab_pin.sym} -900 -60 3 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -900 60 1 0 {name=p9 sig_type=std_logic lab=VSS}
C {sg13cmos5l_stdcells/sg13cmos5l_inv_1.sym} -440 -20 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_inv_1.sym} 440 -120 0 1 {name=x2 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {ipin.sym} 520 -120 0 1 {name=p1 lab=sw2}
C {lab_pin.sym} -180 -80 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 180 -80 1 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -180 40 3 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 180 40 3 0 {name=p13 sig_type=std_logic lab=VSS}
C {sg13cmos5l_pr/cap_cmomi.sym} 0 110 0 0 {name=C1
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
