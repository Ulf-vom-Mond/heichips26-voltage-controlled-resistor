v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -80 0 -60 0 {
lab=in}
N 0 -120 0 -60 {lab=VDD}
N 0 60 0 120 {lab=VSS}
N -60 -60 -40 -60 {lab=in}
N -60 60 -40 60 {lab=in}
N -60 0 -60 60 {lab=in}
N 0 0 0 30 {lab=out}
N -60 -60 -60 0 {lab=in}
N 0 0 20 0 {lab=out}
N 0 -30 0 0 {lab=out}
C {devices/ipin.sym} -80 0 0 0 {name=p10 lab=in}
C {devices/iopin.sym} 0 -120 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} 0 120 1 0 {name=p1 lab=VSS}
C {devices/opin.sym} 20 0 0 0 {name=p6 lab=out}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} -20 60 0 0 {name=M2
l=\{n_l\}
w=\{n_w\}
 ng=\{ng\}
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} -20 -60 0 0 {name=M3
l=\{p_l\}
w=\{p_w\}
ng=\{ng\}
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {code_shown.sym} 100 -250 0 0 {value="
.param w   = 10u
.param ng  = 4
.param n_ng = ng
.param n_w = \{3u*n_ng\}
.param n_l = 0.45u
.param p_ng = ng
.param p_w = \{10u*p_ng\}
.param p_l = 0.4u
"}
