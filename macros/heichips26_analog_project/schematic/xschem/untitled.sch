v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 60 -60 60 -40 {lab=#net1}
N -40 -40 60 -40 {lab=#net1}
N -40 -60 -40 -40 {lab=#net1}
N -40 -150 110 -150 {lab=#net2}
N -40 -150 -40 -120 {lab=#net2}
N -100 -150 -40 -150 {lab=#net2}
N -160 0 -160 110 {lab=#net3}
N 90 0 170 -0 {lab=#net4}
N 170 -150 170 -0 {lab=#net4}
N 40 110 90 110 {lab=#net4}
N 90 0 90 110 {lab=#net4}
N 40 0 90 0 {lab=#net4}
N -160 110 -20 110 {lab=#net3}
N -160 0 -120 0 {lab=#net3}
N -160 -150 -160 0 {lab=#net3}
N -60 0 -20 0 {lab=#net5}
N 60 -180 250 -180 {lab=#net6}
N 60 -180 60 -120 {lab=#net6}
N 250 -120 250 -80 {lab=0}
N 90 110 90 140 {lab=#net4}
N 90 200 90 210 {lab=0}
N 10 -0 10 50 {lab=0}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} -20 -10 0 0 {name=M1
l=1.0u
w=100.0u
 ng=10
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {capa.sym} -40 -90 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 60 -90 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {res.sym} -130 -150 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 140 -150 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 10 110 1 0 {name=V1 value=1 savecurrent=false}
C {vsource.sym} -90 0 1 0 {name=V2 value=0 savecurrent=true}
C {vsource.sym} 250 -150 0 0 {name=V3 value=3 savecurrent=false}
C {gnd.sym} 250 -80 0 0 {name=l1 lab=0}
C {vsource.sym} 90 170 0 0 {name=V4 value=1 savecurrent=false}
C {gnd.sym} 90 210 0 0 {name=l2 lab=0}
C {simulator_commands_shown.sym} 300 -50 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
op
"}
C {gnd.sym} 10 50 0 0 {name=l3 lab=0}
C {devices/code_shown.sym} -420 50 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
