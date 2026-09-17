v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -80 0 -80 60 {
lab=vin}
N -120 0 -80 0 {
lab=vin}
N -80 -60 -80 0 {
lab=vin}
N 0 -120 0 -90 {lab=VDD}
N -80 60 -40 60 {lab=vin}
N -80 -60 -40 -60 {lab=vin}
N 0 0 0 30 {lab=#net1}
N 0 90 0 120 {lab=VSS}
N 0 -60 100 -60 {lab=VDD}
N 0 60 100 60 {lab=VSS}
N 0 0 140 0 {
lab=#net1}
N 0 -30 0 0 {lab=#net1}
N 100 60 100 120 {lab=VSS}
N 100 -120 100 -60 {lab=VDD}
N 180 -120 180 -40 {lab=VDD}
N 180 40 180 120 {lab=VSS}
N 240 0 280 0 {lab=vout}
C {devices/ipin.sym} -120 0 0 0 {name=p10 lab=vin}
C {devices/iopin.sym} 0 -120 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} 0 120 1 0 {name=p1 lab=VSS}
C {sg13_lv_nmos.sym} -20 60 0 0 {name=M1
l=\{n_l\}
w=\{n_ng*n_w\}
ng=\{n_ng\}
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} -20 -60 0 0 {name=M2
l=\{p_l\}
w=\{p_ng*p_w\}
ng=\{n_ng\}
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/opin.sym} 280 0 0 0 {name=p6 lab=vout}
C {lab_pin.sym} 100 -120 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 100 120 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {code_shown.sym} 220 -230 0 0 {value="
.param n_ng = 2
.param n_w = 10u
.param n_l = 0.45u
.param p_ng = 2
.param p_w = 1u
.param p_l = 0.45u
"}
C {hv_inverter_6u5.sym} 180 0 0 0 {name=x4
}
C {lab_pin.sym} 180 120 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 180 -120 1 0 {name=p3 sig_type=std_logic lab=VDD}
