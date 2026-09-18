v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for transient analysis - Inverter} 740 -1730 0 0 1 1 {}
N 880 -1180 880 -1020 {lab=VDD}
N 880 -960 880 -940 {lab=GND}
N 1480 -1080 1540 -1080 {lab=out}
N 980 -1080 980 -1020 {lab=#net1}
N 980 -960 980 -940 {lab=GND}
N 980 -1080 1280 -1080 {lab=#net1}
N 1380 -1000 1380 -940 {lab=GND}
N 1380 -1180 1380 -1120 {lab=VDD}
N 1700 -1100 1720 -1100 {lab=nout1
spice_ignore=true}
N 1700 -1120 1720 -1120 {lab=out1
spice_ignore=true}
N 1700 -1040 1720 -1040 {lab=out2
spice_ignore=true}
N 1700 -1060 1720 -1060 {lab=nout2
spice_ignore=true}
N 1620 -1180 1620 -1160 {lab=VDD
spice_ignore=true}
N 1620 -1000 1620 -940 {lab=GND
spice_ignore=true}
N 1220 -960 1220 -940 {lab=GND
}
N 1220 -1040 1220 -1020 {lab=vc
}
N 1100 -1040 1220 -1040 {lab=vc}
N 1220 -1040 1280 -1040 {lab=vc}
N 1100 -960 1100 -940 {lab=GND
}
N 1100 -1040 1100 -1020 {lab=vc
}
N 1060 -1040 1100 -1040 {lab=vc}
C {devices/code_shown.sym} 90 -1340 0 0 {name=NGSPICE
only_toplevel=true 
value="
.include ../../../netlist/pex/vco_magic_pex_1.spice

.ic v(vc)=1.65

.param VDD=3.3
.csparam VDD=VDD
.param Vcm=VDD/2
.param temp=27
.param Cload=10p
.param Rload=1k

.param period = 1500n
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
plot out vc
*plot out1+4 out2+4 nout1 nout2

* Write Data
unset appendwrite
set wr_vecnames
set wr_singlescale
*wrdata ../plot_simulations/data/@schname\\\\.txt v(vin1) v(vin2) v(vout)

*quit
.endc
"}
C {devices/launcher.sym} 980 -1200 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 2200 -1540 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/vsource.sym} 880 -990 0 0 {name=VDD value=\{VDD\}}
C {vdd.sym} 880 -1180 0 0 {name=l7 lab=VDD}
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
C {devices/vsource.sym} 980 -990 0 0 {name=vctrl value=3.3}
C {vdd.sym} 1380 -1180 0 0 {name=l4 lab=VDD}
C {devices/lab_pin.sym} 1720 -1120 0 1 {name=l15 sig_type=std_logic lab=out1
spice_ignore=true}
C {devices/lab_pin.sym} 1720 -1100 0 1 {name=l16 sig_type=std_logic lab=nout1
spice_ignore=true}
C {devices/lab_pin.sym} 1720 -1060 0 1 {name=l17 sig_type=std_logic lab=nout2
spice_ignore=true}
C {devices/lab_pin.sym} 1720 -1040 0 1 {name=l18 sig_type=std_logic lab=out2
spice_ignore=true}
C {devices/gnd.sym} 880 -940 0 0 {name=l10 lab=GND
w=n_w}
C {devices/gnd.sym} 980 -940 0 0 {name=l1 lab=GND
w=n_w}
C {devices/gnd.sym} 1380 -940 0 0 {name=l3 lab=GND
w=n_w}
C {pulse_shaper.sym} 1620 -1080 0 0 {name=x2
spice_ignore=true}
C {vdd.sym} 1620 -1180 0 0 {name=l5 lab=VDD
spice_ignore=true}
C {devices/gnd.sym} 1620 -940 0 0 {name=l6 lab=GND
w=n_w
spice_ignore=true}
C {vco_pex.sym} 1380 -1060 0 0 {name=x1}
C {sg13cmos5l_pr/cap_cmomi.sym} 1220 -990 0 0 {name=C1
model=cap_cmomi
w=40e-6
l=12e-6
mmin=1
mmax=4
feed=double
subblock=0
m=1
mm_ok=1
spiceprefix=X
}
C {devices/gnd.sym} 1220 -940 0 0 {name=l8 lab=GND
w=n_w
}
C {devices/lab_pin.sym} 1060 -1040 0 0 {name=l9 sig_type=std_logic lab=vc}
C {sg13cmos5l_pr/cap_cmomi.sym} 1100 -990 0 0 {name=C2
model=cap_cmomi
w=23e-6
l=20e-6
mmin=1
mmax=4
feed=double
subblock=0
m=1
mm_ok=1
spiceprefix=X
}
C {devices/gnd.sym} 1100 -940 0 0 {name=l11 lab=GND
w=n_w
}
