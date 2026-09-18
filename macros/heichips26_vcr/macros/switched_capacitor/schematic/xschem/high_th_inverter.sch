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
N 0 -250 0 -210 {lab=VDD}
N 0 -290 0 -250 {lab=VDD}
N 0 210 0 250 {lab=VSS}
N 0 250 0 290 {lab=VSS}
N -80 60 -40 60 {lab=vin}
N -80 -60 -40 -60 {lab=vin}
N 0 -150 0 -120 {lab=VDD}
N 0 -120 0 -90 {lab=VDD}
N 0 0 0 30 {lab=vout}
N 0 90 0 120 {lab=VSS}
N 0 120 0 150 {lab=VSS}
N -80 -180 -40 -180 {lab=VDD}
N -80 -250 -80 -180 {lab=VDD}
N -80 -250 0 -250 {lab=VDD}
N -80 180 -40 180 {lab=VSS}
N -80 180 -80 250 {lab=VSS}
N -80 250 0 250 {lab=VSS}
N -80 -120 0 -120 {lab=VDD}
N -80 -180 -80 -120 {lab=VDD}
N -80 120 0 120 {lab=VSS}
N -80 120 -80 180 {lab=VSS}
N 0 -180 100 -180 {lab=VDD}
N 0 -60 100 -60 {lab=VDD}
N 0 60 100 60 {lab=VSS}
N 0 180 100 180 {lab=VSS}
N 0 0 140 0 {
lab=vout}
N 0 -30 0 0 {lab=vout}
N 100 -180 100 -60 {lab=VDD}
N 100 60 100 180 {lab=VSS}
N 100 180 100 290 {lab=VSS}
N 100 -290 100 -180 {lab=VDD}
C {devices/ipin.sym} -120 0 0 0 {name=p10 lab=vin}
C {devices/iopin.sym} 0 -290 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} 0 290 1 0 {name=p1 lab=VSS}
C {devices/opin.sym} 140 0 0 0 {name=p6 lab=vout}
C {lab_pin.sym} 100 -290 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 100 290 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {code_shown.sym} 240 -230 0 0 {value="
.param n_ng = 2
.param n_w = 1u
.param n_l = 0.45u
.param p_ng = 2
.param p_w = 10u
.param p_l = 0.4u
"}
C {sg13_lv_nmos.sym} -20 180 0 0 {name=Mdummy1
l=\{n_l\}
w=\{n_w\}
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
spice_ignore=true}
C {sg13_lv_pmos.sym} -20 -180 0 0 {name=Mdummy2
l=\{p_l\}
w=\{p_w\}
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
spice_ignore=true}
C {sg13_lv_nmos.sym} -20 60 0 0 {name=M1
l=\{n_l\}
w=\{n_ng*n_w\}
ng=\{p_ng\}
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} -20 -60 0 0 {name=M2
l=\{p_l\}
w=\{p_ng*p_w\}
ng=\{p_ng\}
m=1
model=sg13_hv_pmos
spiceprefix=X
}
