v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -140 40 -140 60 {lab=VSS
spice_ignore=short}
N -140 -60 -140 -40 {lab=VDD
spice_ignore=short}
N -0 180 0 300 {lab=#net1}
N 0 -300 40 -300 {lab=#net1}
N 0 300 40 300 {lab=#net1}
N 180 -280 240 -280 {lab=#net2
}
N 340 -40 340 -20 {lab=VSS
}
N 340 -140 340 -120 {lab=VDD
}
N 340 160 340 180 {lab=VSS
}
N 340 60 340 80 {lab=VDD
}
N 280 -160 420 -160 {lab=out1}
N 280 -160 280 -80 {lab=out1}
N 280 -80 300 -80 {lab=out1}
N 420 -260 420 -160 {lab=out1}
N 400 -260 420 -260 {lab=out1}
N 420 200 420 300 {lab=nout2}
N 400 300 420 300 {lab=nout2}
N 280 200 420 200 {lab=nout2}
N 280 120 280 200 {lab=nout2}
N 280 120 300 120 {lab=nout2}
N 420 -260 480 -260 {lab=out1}
N 180 280 240 280 {lab=#net3}
N 400 120 480 120 {lab=out2}
N 400 -80 480 -80 {lab=nout1}
N 420 300 480 300 {lab=nout2}
N -200 -0 -180 0 {lab=in}
N 100 320 100 340 {lab=VSS}
N 100 220 100 240 {lab=VDD}
N 100 -340 100 -320 {lab=VDD}
N 100 -240 100 -220 {lab=VSS}
N -80 0 -0 -0 {lab=#net1}
N 0 -300 -0 -0 {lab=#net1}
N -140 220 -140 240 {lab=VSS
spice_ignore=short}
N -140 120 -140 140 {lab=VDD
spice_ignore=short}
N -200 -0 -200 180 {lab=in}
N -220 0 -200 -0 {lab=in}
N -200 180 -180 180 {lab=in}
N -80 180 -0 180 {lab=#net1}
N -0 -0 -0 180 {lab=#net1}
N 320 -340 320 -320 {lab=VDD
}
N 320 -200 320 -180 {lab=VSS
}
N 220 -240 240 -240 {lab=#net4
}
N 40 -120 60 -120 {lab=en}
N 320 220 320 240 {lab=VDD
}
N 320 360 320 380 {lab=VSS
}
N 220 320 240 320 {lab=en
}
N 100 -80 100 -60 {lab=VSS
}
N 100 -180 100 -160 {lab=VDD
}
N 40 -120 40 0 {lab=en}
N -220 -120 40 -120 {lab=en}
N 40 -0 220 -0 {lab=en}
N 220 -0 220 320 {lab=en}
N 160 -120 220 -120 {lab=#net4}
N 220 -240 220 -120 {lab=#net4}
C {lab_pin.sym} -140 -60 2 0 {name=p1 sig_type=std_logic lab=VDD
}
C {low_th_inverter.sym} 100 280 0 0 {name=x7
}
C {high_th_inverter.sym} 100 -280 0 0 {name=x8
}
C {lab_pin.sym} 100 220 2 0 {name=p23 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 100 -340 2 0 {name=p24 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 340 -140 2 0 {name=p30 sig_type=std_logic lab=VDD
}
C {hv_inverter_40u.sym} 340 -80 0 0 {name=x10
}
C {lab_pin.sym} 340 60 2 0 {name=p32 sig_type=std_logic lab=VDD
}
C {hv_inverter_40u.sym} 340 120 0 0 {name=x11
}
C {code_shown.sym} -600 -370 0 0 {value="
.include ../../../netlist/pex/hv_inverter_0u3_magic_pex_3.spice
.param w   = 0.3u
.param ng  = 1
.param n_ng = ng
.param n_w = \{w*n_ng\}
.param n_l = 0.45u
.param p_ng = ng
.param p_w = \{1*w*p_ng\}
.param p_l = 0.4u
"}
C {opin.sym} 480 -260 0 0 {name=p2 lab=out1}
C {opin.sym} 480 -80 0 0 {name=p3 lab=nout1}
C {opin.sym} 480 120 0 0 {name=p4 lab=out2}
C {opin.sym} 480 300 0 0 {name=p5 lab=nout2}
C {ipin.sym} -220 0 0 0 {name=p6 lab=in}
C {iopin.sym} -400 20 1 0 {name=p7 lab=VSS}
C {iopin.sym} -400 -20 3 0 {name=p8 lab=VDD}
C {lab_pin.sym} -140 60 0 1 {name=p9 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 100 -220 0 1 {name=p10 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 340 -20 0 1 {name=p12 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 340 180 0 1 {name=p13 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 100 340 0 1 {name=p16 sig_type=std_logic lab=VSS
}
C {hv_inverter_0u3.sym} -140 0 0 0 {name=x1
}
C {hv_inverter_0u3_pex.sym} -140 180 0 0 {name=x2
spice_ignore=true}
C {lab_pin.sym} -140 120 2 0 {name=p17 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} -140 240 0 1 {name=p18 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 320 -340 2 0 {name=p19 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 320 -180 0 1 {name=p20 sig_type=std_logic lab=VSS
}
C {ipin.sym} -220 -120 0 0 {name=p21 lab=en
}
C {hv_nor.sym} 320 -260 0 0 {name=x5}
C {lab_pin.sym} 320 220 2 0 {name=p11 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 320 380 0 1 {name=p22 sig_type=std_logic lab=VSS
}
C {hv_nand.sym} 320 300 0 0 {name=x4}
C {lab_pin.sym} 100 -180 2 0 {name=p14 sig_type=std_logic lab=VDD
}
C {hv_inverter_40u.sym} 100 -120 0 0 {name=x3
}
C {lab_pin.sym} 100 -60 0 1 {name=p15 sig_type=std_logic lab=VSS
}
