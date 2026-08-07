v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -60 -60 -60 -40 {lab=VDD}
N 60 -60 60 -40 {lab=VDD}
N -60 30 -60 60 {lab=i_in}
N -60 60 0 60 {lab=i_in}
N 0 0 0 60 {lab=i_in}
N -20 0 0 0 {lab=i_in}
N 0 0 20 0 {lab=i_in}
N -100 0 -60 0 {lab=VDD}
N -100 -40 -100 0 {lab=VDD}
N -100 -40 -60 -40 {lab=VDD}
N -60 -40 -60 -30 {lab=VDD}
N 60 0 100 0 {lab=VDD}
N 100 -40 100 0 {lab=VDD}
N 60 -40 100 -40 {lab=VDD}
N 60 -40 60 -30 {lab=VDD}
N -60 60 -60 100 {lab=i_in}
N 60 30 60 100 {lab=i_out1}
N 0 -60 60 -60 {lab=VDD}
N 0 -80 0 -60 {lab=VDD}
N -60 -60 0 -60 {lab=VDD}
C {devices/ipin.sym} -60 100 1 1 {name=p10 lab=i_in}
C {devices/opin.sym} 60 100 3 1 {name=p2 lab=i_out}
C {devices/iopin.sym} 0 -80 1 1 {name=p1 lab=VDD}
C {sg13_lv_pmos.sym} 40 0 0 0 {name=M2
l=10.0u
w=80.0u
ng=10
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} -40 0 0 1 {name=M1
l=10.0u
w=80.0u
ng=10
m=1
model=sg13_hv_pmos
spiceprefix=X
}
