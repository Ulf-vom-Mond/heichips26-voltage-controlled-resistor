v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for transient analysis - VCR} 740 -1730 0 0 1 1 {}
N 1180 -740 1180 -640 {lab=VAPWR}
N 1180 -560 1180 -540 {lab=VSS}
N 1140 -560 1180 -560 {lab=VSS}
N 1180 -580 1180 -560 {lab=VSS}
N 1040 -560 1040 -540 {lab=GND}
N 1040 -560 1080 -560 {lab=GND}
N 1280 -580 1280 -540 {lab=VSS}
N 1280 -660 1280 -640 {lab=#net1}
N 1860 -560 1860 -540 {lab=VSS}
N 1860 -640 1860 -620 {lab=#net2}
N 1940 -560 1940 -540 {lab=VSS}
N 1940 -680 1940 -620 {lab=vr}
N 1680 -780 1680 -760 {lab=VAPWR}
N 1340 -580 1340 -540 {lab=VSS}
N 1340 -660 1340 -640 {lab=#net1}
N 1280 -660 1340 -660 {lab=#net1}
N 1740 -680 1940 -680 {lab=vr}
N 1740 -640 1860 -640 {lab=#net2}
N 960 -550 960 -530 {lab=VSS}
N 960 -630 960 -610 {lab=VPWR}
N 1640 -800 1640 -760 {lab=VPWR}
N 1660 -560 1660 -540 {lab=VSS}
N 1560 -640 1580 -640 {lab=VSS}
N 1560 -620 1580 -620 {lab=VSS}
N 1540 -600 1580 -600 {lab=VPWR}
N 1560 -700 1580 -700 {lab=VSS}
N 1560 -620 1560 -540 {lab=VSS}
N 1740 -600 1760 -600 {lab=clkout}
N 1260 -660 1280 -660 {lab=#net1}
N 1340 -660 1360 -660 {lab=#net1}
N 1420 -660 1580 -660 {lab=vctrl}
N 1560 -640 1560 -620 {lab=VSS}
N 1560 -700 1560 -640 {lab=VSS}
N 1540 -700 1560 -700 {lab=VSS}
C {devices/launcher.sym} 1160 -860 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="VCR authors" rev=1.0 lock=true}
C {devices/code_shown.sym} 1580 -1610 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
.lib cornerCAP.lib cap_typ

.include $::PDK_ROOT/$::PDK/libs.ref/sg13cmos5l_stdcell/spice/sg13cmos5l_stdcell.spice
"}
C {devices/code_shown.sym} 20 -1650 0 0 {name=NGSPICE1
only_toplevel=true 
value="
.include ../../../netlist/pex/switched_cap_cell_magic_pex_1_manual_caps.spice

.param temp=27
.param vctrl  = 0.1
*.param f      = \{2e6/vctrl\}
.param f = 10Meg

* Derived timing parameters
.param period = \{1/f\}
.param ton    = \{period/2\}
.csparam tstop  = \{5*period\}
.csparam tstep  = \{period/100\}
.param ictrl  = \{f*3.3e-12\}
.param tr     = \{period/1000\}
.param tf     = \{period/1000\}

.param VDD = 3.3
.csparam VDD=VDD
.param vdm = 3.3
.param vcm = \{VDD/2\}
.param v1  = \{vcm - vdm/2\}
.param v2  = \{vcm + vdm/2\}

.options savecurrents klu method=gear reltol=1e-6 abstol=1e-12 gmin=1e-15
.probe alli
.control

save all
set appendwrite

tran \{$&tstep\} \{$&tstop\}
remzerovec

save all
set appendwrite

write @schname\\\\.raw
set appendwrite

*let r_var = vr/i(r1)
meas tran period_sim TRIG i(V1) VAL=1m RISE=1 TARG i(V1) VAL=1m RISE=2
meas tran n_periods TRIG i(V1) VAL=1m RISE=1 TARG i(V1) VAL=1m RISE=LAST
meas tran i_avg AVG i(V1) FROM=0 TO=n_periods
meas tran v_avg AVG vr FROM=0 TO=n_periods
*meas tran r_avg AVG r_var

let npts = length(time) - 1
let i_mavg = integ(i(V1))[1, npts] / time[1, npts]
let v_mavg = integ(vr)[1, npts] / time[1, npts]
let r_mavg = v_mavg/i_mavg
let r_avg = v_avg/i_avg
let f_sim = 1/period_sim
let plot_y_lim = 1.2*r_avg

print period_sim f_sim r_avg

* Plotting
*plot vr v_avg v_mavg
plot i(V1) i_avg i_mavg
plot r_avg r_mavg ylimit 0 $&plot_y_lim
plot clkout
plot i(victrl) mean(i(victrl))
plot vctrl

* Write Data
unset appendwrite
set wr_vecnames
set wr_singlescale
wrdata ../plot_simulations/data/@schname\\\\.txt v(vr) v(VDD) i(V1)

*quit
.endc
"}
C {devices/vsource.sym} 1180 -610 0 0 {name=VDD value=3.3}
C {lab_pin.sym} 1180 -740 0 1 {name=p2 sig_type=std_logic lab=VAPWR}
C {devices/gnd.sym} 1180 -540 0 1 {name=l11 lab=VSS}
C {gnd.sym} 1040 -540 0 0 {name=l10 lab=GND}
C {res.sym} 1110 -560 1 0 {name=R2
value=0
footprint=1206
device=resistor
m=1
}
C {isource.sym} 1280 -610 0 0 {name=I0 value=30u
}
C {devices/gnd.sym} 1280 -540 0 1 {name=l13 lab=VSS}
C {devices/gnd.sym} 1660 -540 0 1 {name=l1 lab=VSS}
C {lab_pin.sym} 1680 -780 0 1 {name=p1 sig_type=std_logic lab=VAPWR}
C {lab_pin.sym} 1940 -680 0 1 {name=p3 sig_type=std_logic lab=vr
}
C {devices/vsource.sym} 1860 -590 0 0 {name=V1 value=\{v1\}}
C {devices/vsource.sym} 1940 -590 0 0 {name=V2 value=\{v2\}}
C {devices/gnd.sym} 1860 -540 0 1 {name=l3 lab=VSS}
C {devices/gnd.sym} 1940 -540 0 1 {name=l4 lab=VSS}
C {devices/vsource.sym} 1340 -610 0 0 {name=V0 value=3.3
spice_ignore=true}
C {devices/gnd.sym} 1340 -540 0 1 {name=l5 lab=VSS}
C {lab_pin.sym} 1440 -660 3 1 {name=p4 sig_type=std_logic lab=vctrl
}
C {devices/vsource.sym} 960 -580 0 0 {name=VPWR value=1.2}
C {devices/gnd.sym} 960 -530 0 1 {name=l6 lab=VSS}
C {lab_pin.sym} 960 -630 0 1 {name=p5 sig_type=std_logic lab=VPWR}
C {lab_pin.sym} 1640 -800 0 1 {name=p6 sig_type=std_logic lab=VPWR}
C {lab_pin.sym} 1540 -700 0 0 {name=p7 sig_type=std_logic lab=VPWR
spice_ignore=true}
C {lab_pin.sym} 1540 -600 0 0 {name=p8 sig_type=std_logic lab=VPWR}
C {devices/gnd.sym} 1560 -540 0 1 {name=l7 lab=VSS}
C {noconn.sym} 1740 -600 3 1 {name=l8}
C {devices/gnd.sym} 1260 -660 1 1 {name=l9 lab=VSS
spice_ignore=true}
C {switched_cap_cell_pex.sym} 1660 -660 0 0 {name=x1}
C {lab_pin.sym} 1760 -600 0 1 {name=p9 sig_type=std_logic lab=clkout
}
C {code_shown.sym} 1320 -890 0 0 {value="
.ic v(x1.osc_0.c1)=0 v(x1.vco_0.vc)=1.65
"
}
C {ammeter.sym} 1390 -660 1 1 {name=victrl savecurrent=true }
