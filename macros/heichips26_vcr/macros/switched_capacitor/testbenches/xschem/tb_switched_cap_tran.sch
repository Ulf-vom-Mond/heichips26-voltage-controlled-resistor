v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for transient analysis - VCR} 740 -1730 0 0 1 1 {}
N 1000 -740 1000 -640 {lab=VDD}
N 1000 -560 1000 -540 {lab=VSS}
N 960 -560 1000 -560 {lab=VSS}
N 1000 -580 1000 -560 {lab=VSS}
N 860 -560 860 -540 {lab=GND}
N 860 -560 900 -560 {lab=GND}
N 1100 -580 1100 -540 {lab=VSS}
N 1100 -660 1100 -640 {lab=#net1}
N 1100 -660 1160 -660 {lab=#net1}
N 1300 -560 1300 -540 {lab=VSS}
N 1300 -640 1300 -620 {lab=#net2}
N 1280 -640 1300 -640 {lab=#net2}
N 1380 -560 1380 -540 {lab=VSS}
N 1380 -680 1380 -620 {lab=#net3}
N 1220 -600 1220 -540 {lab=VSS}
N 1220 -740 1220 -720 {lab=VDD}
N 1280 -680 1310 -680 {lab=vr}
N 1370 -680 1380 -680 {lab=#net3}
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
.param temp=27
.param f = 100Meg

* Derived timing parameters
.param period = \{1/f\}
.param ton    = \{period/2\}
.csparam tstop  = \{5*period\}
.csparam tstep  = \{period/100\}
.param ictrl  = \{f*3.3e-12\}
.param tr     = \{period/1000\}
.param tf     = \{period/1000\}

.param vdm = 3.3V
.param vcm = \{vdm/2\}
.param v1  = \{vcm - vdm/2\}
.param v2  = \{vcm + vdm/2\}

.options savecurrents klu method=gear reltol=1e-3 abstol=1e-12 gmin=1e-15
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
meas tran period_sim TRIG i(r1) VAL=1m RISE=1 TARG i(r1) VAL=1m RISE=2
meas tran n_periods TRIG i(r1) VAL=1m RISE=1 TARG i(r1) VAL=1m RISE=LAST
meas tran i_avg AVG i(r1) FROM=0 TO=n_periods
meas tran v_avg AVG vr FROM=0 TO=n_periods
*meas tran r_avg AVG r_var

let npts = length(time) - 1
let i_mavg = integ(i(r1))[1, npts] / time[1, npts]
let v_mavg = integ(vr)[1, npts] / time[1, npts]
let r_mavg = v_mavg/i_mavg
let r_avg = v_avg/i_avg
let f_sim = 1/period_sim
let plot_y_lim = 1.2*r_avg

print period_sim f_sim r_avg

* Plotting
plot vr v_avg v_mavg
plot i(R1) i_avg i_mavg
plot r_avg r_mavg ylimit 0 $&plot_y_lim

* Write Data
unset appendwrite
set wr_vecnames
set wr_singlescale
wrdata ../plot_simulations/data/@schname\\\\.txt v(vr) v(VDD) i(r1)

*quit
.endc
"}
C {devices/vsource.sym} 1000 -610 0 0 {name=VDD value=3.3}
C {lab_pin.sym} 1000 -740 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 1000 -540 0 1 {name=l11 lab=VSS}
C {gnd.sym} 860 -540 0 0 {name=l10 lab=GND}
C {res.sym} 930 -560 1 0 {name=R2
value=0
footprint=1206
device=resistor
m=1
}
C {isource.sym} 1100 -610 0 0 {name=I0 value=\{ictrl\}}
C {devices/gnd.sym} 1100 -540 0 1 {name=l13 lab=VSS}
C {res.sym} 1340 -680 1 0 {name=R1
value=100
footprint=1206
device=resistor
m=1
}
C {switched_cap_cell.sym} 1220 -660 0 0 {name=x1}
C {devices/gnd.sym} 1220 -540 0 1 {name=l1 lab=VSS}
C {lab_pin.sym} 1220 -740 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1290 -680 3 0 {name=p3 sig_type=std_logic lab=vr
}
C {devices/vsource.sym} 1300 -590 0 0 {name=V1 value=\{v1\}}
C {devices/vsource.sym} 1380 -590 0 0 {name=V2 value=\{v2\}}
C {devices/gnd.sym} 1300 -540 0 1 {name=l3 lab=VSS}
C {devices/gnd.sym} 1380 -540 0 1 {name=l4 lab=VSS}
