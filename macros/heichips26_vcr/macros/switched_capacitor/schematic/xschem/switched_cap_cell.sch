v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 180 320 180 340 {lab=VSS}
N -900 60 -900 80 {lab=VSS}
N -900 -80 -900 -60 {lab=VDD}
N 180 -80 200 -80 {lab=#net1
}
N 360 -80 380 -80 {lab=r1
}
N -500 -200 -500 -180 {lab=VSS}
N -500 -340 -500 -320 {lab=VDD}
N -200 0 -160 0 {lab=clk}
N 180 140 200 140 {lab=#net1
}
N 360 140 380 140 {lab=r2
}
N 180 140 180 260 {lab=#net1}
N 180 -80 180 140 {lab=#net1
}
N 100 -120 200 -120 {lab=#net2}
N -620 -40 -600 -40 {lab=vctrl}
N 0 -40 100 -40 {lab=#net2}
N 100 -120 100 -40 {lab=#net2}
N 0 -20 120 -20 {lab=#net3}
N 120 -100 120 -20 {lab=#net3}
N 120 -100 200 -100 {lab=#net3}
N 0 40 100 40 {lab=VDD}
N 100 40 100 120 {lab=VDD}
N 100 120 200 120 {lab=VDD}
N 0 20 120 20 {lab=#net4}
N 120 20 120 100 {lab=#net4}
N 120 100 200 100 {lab=#net4}
N -80 80 -80 120 {lab=VSS}
N -80 -120 -80 -80 {lab=VDD}
N -240 100 -240 140 {lab=VSS}
N -240 -140 -240 -100 {lab=VDD}
N -500 20 -500 40 {lab=VSS}
N -500 -120 -500 -100 {lab=VDD}
N -400 -60 -360 -60 {lab=vco_clk}
N -360 -60 -360 -20 {lab=vco_clk}
N -360 -20 -300 -20 {lab=vco_clk}
N -400 -280 -340 -280 {lab=VSS}
N -340 -280 -340 -60 {lab=VSS}
N -340 -60 -300 -60 {lab=VSS}
N -440 200 -440 220 {lab=VSS}
N -440 100 -440 140 {lab=#net5}
N -440 100 -300 100 {lab=#net5}
N -360 120 -360 140 {lab=#net6}
N -360 120 -300 120 {lab=#net6}
N -360 200 -360 220 {lab=VSS}
C {iopin.sym} 380 -80 0 0 {name=p5 lab=r1}
C {iopin.sym} 380 140 0 0 {name=p6 lab=r2}
C {devices/iopin.sym} -900 -80 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} -900 80 1 0 {name=p7 lab=VSS}
C {lab_pin.sym} -900 -60 3 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -900 60 1 0 {name=p9 sig_type=std_logic lab=VSS}
C {sg13cmos5l_pr/cap_cmomi.sym} 180 290 0 0 {name=C1
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
C {transmission_gate.sym} 280 -100 0 0 {name=x2
}
C {lab_pin.sym} 280 -160 2 0 {name=p14 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} -500 -340 2 0 {name=p17 sig_type=std_logic lab=VDD}
C {transmission_gate.sym} 280 120 0 0 {name=x6
}
C {lab_pin.sym} 280 60 2 0 {name=p22 sig_type=std_logic lab=VDD
}
C {iopin.sym} -620 -40 2 0 {name=p2 lab=vctrl}
C {lab_pin.sym} -180 0 1 0 {name=p3 sig_type=std_logic lab=clk
}
C {osc.sym} -500 -260 0 0 {name=x1
spice_ignore=true}
C {pulse_shaper.sym} -80 0 0 0 {name=x3
}
C {lab_pin.sym} -80 -120 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -500 -180 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -80 120 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 280 -40 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 280 180 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 180 340 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {hv_mux4.sym} -240 0 0 0 {name=x4
}
C {lab_pin.sym} -240 140 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -240 -140 2 0 {name=p18 sig_type=std_logic lab=VDD}
C {vco.sym} -500 -40 0 0 {name=x5}
C {lab_pin.sym} -500 -120 2 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -500 40 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -440 170 0 0 {name=vselA value=0}
C {devices/vsource.sym} -360 170 0 0 {name=vselB value=3.3}
C {lab_pin.sym} -440 220 0 1 {name=p21 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -360 220 0 1 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -300 20 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -300 60 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -380 -60 1 0 {name=p26 sig_type=std_logic lab=vco_clk
}
C {lab_pin.sym} -340 -280 0 1 {name=p31 sig_type=std_logic lab=VSS}
