v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for transient analysis - Inverter} 740 -1730 0 0 1 1 {}
N 1140 -1140 1140 -1020 {lab=VDD}
N 1140 -960 1140 -940 {lab=GND}
N 1480 -1080 1540 -1080 {lab=out}
N 1240 -1060 1240 -1020 {lab=#net1}
N 1240 -960 1240 -940 {lab=GND}
N 1240 -1060 1280 -1060 {lab=#net1}
N 1380 -1000 1380 -940 {lab=GND}
N 1380 -1140 1380 -1120 {lab=VDD}
N 1600 -1020 1600 -960 {lab=GND
spice_ignore=short}
N 1600 -1200 1600 -1140 {lab=VDD
spice_ignore=short}
N 1540 -1140 1560 -1140 {lab=out
spice_ignore=short}
N 1540 -1020 1560 -1020 {lab=out
spice_ignore=short}
N 1600 -1080 1600 -1050 {lab=#net2
spice_ignore=short}
N 1600 -1110 1600 -1080 {lab=#net2
spice_ignore=short}
N 1540 -1080 1540 -1020 {lab=out
spice_ignore=short}
N 1600 -1080 1720 -1080 {lab=#net2}
N 1720 -1380 1720 -1080 {lab=#net2}
N 1720 -1380 1760 -1380 {lab=#net2}
N 1720 -1080 1720 -780 {lab=#net2}
N 1720 -780 1760 -780 {lab=#net2}
N 1900 -1360 1940 -1360 {lab=#net3
}
N 1920 -1260 2060 -1260 {lab=out1}
N 1920 -1260 1920 -1160 {lab=out1}
N 1920 -1160 1940 -1160 {lab=out1}
N 2060 -1360 2060 -1260 {lab=out1}
N 2040 -1360 2060 -1360 {lab=out1}
N 2060 -900 2060 -800 {lab=out2}
N 2040 -800 2060 -800 {lab=out2}
N 1920 -900 2060 -900 {lab=out2}
N 1920 -1000 1920 -900 {lab=out2}
N 1920 -1000 1940 -1000 {lab=out2}
N 1900 -800 1940 -800 {lab=#net4}
N 1540 -1140 1540 -1080 {lab=out
spice_ignore=short}
N 2040 -1160 2080 -1160 {lab=nout1}
N 2060 -1360 2080 -1360 {lab=out1}
N 2060 -800 2080 -800 {lab=out2}
N 2040 -1000 2080 -1000 {lab=nout2}
C {devices/code_shown.sym} 90 -1340 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param VDD=3.3
.csparam VDD=VDD
.param Vcm=VDD/2
.param temp=27
.param Cload=10p
.param Rload=1k

.param period = 50n
.param ton    = \{period*2\}
.csparam tstop  = \{2*period\}
.csparam tstep  = \{period/100\}

.options savecurrents klu method=gear reltol=1e-4 abstol=1e-15 gmin=1e-15

.control

save all

* Operating Point Analysis
op
remzerovec
write @schname\\\\.raw
set appendwrite

* Transient Analysis
tran \{$&tstep\} \{$&tstop\}
write @schname\\\\.raw

* Plotting
*plot vc+12 thl+12 thh+12 s+8 r+4 vout
*plot vc thl thh vout
plot out
plot out1+4 out2+4 nout1 nout2

* Write Data
unset appendwrite
set wr_vecnames
set wr_singlescale
*wrdata ../plot_simulations/data/@schname\\\\.txt v(vin1) v(vin2) v(vout)

*quit
.endc
"}
C {devices/launcher.sym} 1240 -1160 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 2200 -1540 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/vsource.sym} 1140 -990 0 0 {name=VDD value=\{VDD\}}
C {vdd.sym} 1140 -1140 0 0 {name=l7 lab=VDD}
C {devices/code_shown.sym} 2140 -1710 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
.lib cornerCAP.lib cap_typ
"}
C {devices/lab_pin.sym} 1500 -1080 3 1 {name=l12 sig_type=std_logic lab=out}
C {devices/vsource.sym} 1240 -990 0 0 {name=vctrl value=0}
C {vco.sym} 1380 -1060 0 0 {name=x1}
C {vdd.sym} 1380 -1140 0 0 {name=l4 lab=VDD}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1580 -1020 0 0 {name=M2
l=\{n_l\}
w=\{n_w\}
 ng=\{ng\}
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 1580 -1140 0 0 {name=M3
l=\{p_l\}
w=\{p_w\}
ng=\{ng\}
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {hv_inverter_40u.sym} 1980 -800 0 0 {name=x4
}
C {low_th_inverter.sym} 1820 -800 0 0 {name=x7
}
C {high_th_inverter.sym} 1820 -1360 0 0 {name=x8
}
C {hv_inverter_40u.sym} 1980 -1360 0 0 {name=x9
}
C {hv_inverter_40u.sym} 1980 -1160 0 0 {name=x10
}
C {hv_inverter_40u.sym} 1980 -1000 0 0 {name=x11
}
C {code_shown.sym} 1400 -1450 0 0 {value="
.param w   = 0.3u
.param ng  = 1
.param n_ng = ng
.param n_w = \{w*n_ng\}
.param n_l = 0.45u
.param p_ng = ng
.param p_w = \{1*w*p_ng\}
.param p_l = 0.4u
"}
C {devices/lab_pin.sym} 2080 -1360 0 1 {name=l15 sig_type=std_logic lab=out1}
C {devices/lab_pin.sym} 2080 -1160 0 1 {name=l16 sig_type=std_logic lab=nout1}
C {devices/lab_pin.sym} 2080 -1000 0 1 {name=l17 sig_type=std_logic lab=nout2}
C {devices/lab_pin.sym} 2080 -800 0 1 {name=l18 sig_type=std_logic lab=out2}
C {vdd.sym} 1600 -1200 0 0 {name=l19 lab=VDD}
C {vdd.sym} 1820 -1400 0 0 {name=l20 lab=VDD}
C {vdd.sym} 1980 -1400 0 0 {name=l21 lab=VDD}
C {vdd.sym} 1980 -1200 0 0 {name=l22 lab=VDD}
C {vdd.sym} 1980 -1040 0 0 {name=l23 lab=VDD}
C {vdd.sym} 1980 -840 0 0 {name=l24 lab=VDD}
C {vdd.sym} 1820 -840 0 0 {name=l25 lab=VDD}
C {devices/gnd.sym} 1140 -940 0 0 {name=l10 lab=GND
w=n_w}
C {devices/gnd.sym} 1240 -940 0 0 {name=l1 lab=GND
w=n_w}
C {devices/gnd.sym} 1380 -940 0 0 {name=l3 lab=GND
w=n_w}
C {devices/gnd.sym} 1600 -960 0 0 {name=l5 lab=GND
w=n_w}
C {devices/gnd.sym} 1820 -1320 0 0 {name=l6 lab=GND
w=n_w}
C {devices/gnd.sym} 1980 -1320 0 0 {name=l8 lab=GND
w=n_w}
C {devices/gnd.sym} 1980 -1120 0 0 {name=l9 lab=GND
w=n_w}
C {devices/gnd.sym} 1980 -960 0 0 {name=l11 lab=GND
w=n_w}
C {devices/gnd.sym} 1980 -760 0 0 {name=l13 lab=GND
w=n_w}
C {devices/gnd.sym} 1820 -760 0 0 {name=l14 lab=GND
w=n_w}
