v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -60 40 -60 60 {lab=VSS}
N 60 40 60 60 {lab=VSS}
N -60 -60 -60 -30 {lab=i_in}
N -60 -60 0 -60 {lab=i_in}
N 0 -60 -0 -0 {lab=i_in}
N -20 0 -0 0 {lab=i_in}
N -0 -0 20 -0 {lab=i_in}
N -100 0 -60 0 {lab=VSS}
N -100 0 -100 40 {lab=VSS}
N -100 40 -60 40 {lab=VSS}
N -60 30 -60 40 {lab=VSS}
N 60 0 100 0 {lab=VSS}
N 100 0 100 40 {lab=VSS}
N 60 40 100 40 {lab=VSS}
N 60 30 60 40 {lab=VSS}
N -60 -100 -60 -60 {lab=i_in}
N 60 -100 60 -30 {lab=i_out}
N 0 60 60 60 {lab=VSS}
N 0 60 0 80 {lab=VSS}
N -60 60 0 60 {lab=VSS}
C {sg13_lv_nmos.sym} 40 0 0 0 {name=M1
l=5.0u
w=6.0u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13_lv_nmos.sym} -40 0 0 1 {name=M2
l=5.0u
w=6.0u
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/ipin.sym} -60 -100 1 0 {name=p10 lab=i_in}
C {devices/opin.sym} 60 -100 3 0 {name=p2 lab=i_out}
C {devices/iopin.sym} 0 80 1 0 {name=p1 lab=VSS}
