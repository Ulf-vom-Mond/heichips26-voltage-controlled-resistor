v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 160 -120 160 -40 {lab=VDD}
N 80 0 120 0 {lab=#net1}
N 0 60 0 120 {lab=VSS}
N -100 -20 -80 -20 {lab=in1}
N -100 20 -80 20 {lab=in2}
N 0 -120 0 -60 {lab=VDD}
N 220 0 240 0 {lab=out}
N 160 40 160 120 {lab=VSS}
C {devices/ipin.sym} -100 -20 0 0 {name=p10 lab=in1}
C {devices/iopin.sym} 0 -200 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} 0 240 1 0 {name=p1 lab=VSS}
C {devices/opin.sym} 240 0 0 0 {name=p6 lab=out}
C {code_shown.sym} 240 -290 0 0 {value="
.param w   = 10u
.param ng  = 4
.param n_ng = ng
.param n_w = \{3u*n_ng\}
.param n_l = 0.45u
.param p_ng = ng
.param p_w = \{10u*p_ng\}
.param p_l = 0.4u
"}
C {devices/ipin.sym} -100 20 0 0 {name=p2 lab=in2}
C {lab_pin.sym} 0 120 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 160 120 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 -120 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 160 -120 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {hv_nand.sym} 0 0 0 0 {name=x4}
C {hv_inverter_40u.sym} 160 0 0 0 {name=x1}
