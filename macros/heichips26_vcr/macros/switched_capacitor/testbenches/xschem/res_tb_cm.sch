v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1640 -820 2440 -420 {flags=graph
y1=0.858
y2=1.518
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.00225
x2=0.00275
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(vmeas)
color=4
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
autoload=0}
T {Testbench for linearity analysis - VCR} 740 -1730 0 0 1 1 {}
N 1100 -740 1100 -700 {lab=VDD}
N 1100 -640 1100 -600 {lab=GND}
N 420 -380 420 -360 {lab=vd}
N 350 -380 420 -380 {lab=vd}
N 420 -300 420 -280 {lab=GND}
N 1140 -460 1160 -460 {lab=vb}
N 1140 -460 1140 -440 {lab=vb}
N 1140 -380 1140 -360 {lab=GND}
N 600 -640 600 -610 {lab=GND}
N 600 -730 600 -700 {lab=vsweep}
N 420 -380 460 -380 {lab=vd}
N 520 -380 780 -380 {lab=#net1}
N 780 -640 780 -610 {lab=GND}
N 780 -730 780 -700 {lab=vc_p}
N 980 -460 1140 -460 {lab=vb}
N 580 -480 600 -480 {lab=vc_p}
N 460 -640 460 -610 {lab=GND}
N 460 -730 460 -700 {lab=vcm_sweep}
N 780 -460 780 -380 {lab=#net1}
N 780 -460 820 -460 {lab=#net1}
N 740 -480 820 -480 {lab=#net2}
N 580 -560 580 -480 {lab=vc_p}
N 540 -480 580 -480 {lab=vc_p}
N 580 -560 780 -560 {lab=vc_p}
N 780 -560 780 -500 {lab=vc_p}
N 780 -500 820 -500 {lab=vc_p}
C {devices/launcher.sym} 1700 -1410 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="VCR authors" rev=1.0 lock=true}
C {devices/code_shown.sym} 1350 -1240 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt

.include $::PDK_ROOT/$::PDK/libs.ref/sg13cmos5l_stdcell/spice/sg13cmos5l_stdcell.spice
"}
C {devices/vsource.sym} 1100 -670 0 0 {name=VDD value=\{VDD\}}
C {devices/gnd.sym} 1100 -600 0 0 {name=l3 lab=GND}
C {vdd.sym} 1100 -740 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 1160 -460 0 1 {name=l12 sig_type=std_logic lab=vb}
C {devices/lab_pin.sym} 350 -380 0 0 {name=l22 sig_type=std_logic lab=vd}
C {devices/gnd.sym} 420 -280 0 0 {name=l26 lab=GND}
C {devices/gnd.sym} 1140 -360 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 600 -670 0 0 {name=VS value=0}
C {devices/gnd.sym} 600 -610 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 600 -730 0 0 {name=l5 sig_type=std_logic lab=vsweep}
C {ammeter.sym} 490 -380 3 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/vsource.sym} 780 -670 0 0 {name=vc value=3.3}
C {devices/gnd.sym} 780 -610 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 780 -730 0 0 {name=l8 sig_type=std_logic lab=vc_p}
C {devices/lab_pin.sym} 540 -480 0 0 {name=l9 sig_type=std_logic lab=vc_p}
C {transmission_gate.sym} 900 -480 0 0 {name=x1}
C {devices/code_shown.sym} 10 -1600 0 0 {name=NGSPICE
only_toplevel=true 
value="
* .include ../../../netlist/pex/inverter_magic_pex_3.spice
.param VDD=3.3
.csparam VDD=VDD
.param Vcm=VDD/2
.csparam Vcm=Vcm
.param v1=0
.csparam v1=v1
.param v2=0
.csparam v2=v2
.param temp=27
.options savecurrents klu method=gear reltol=1e-3 abstol=1e-15 gmin=1e-15
.control
let vcc = 0.5

save all
set appendwrite



repeat 5
  alter Vcm $&vcc

  * DC Sweep
  dc VS -1 1 10m
  remzerovec
  let vcc = vcc + 0.460
end
write @schname\\\\.raw
set appendwrite

* Plotting
plot dc1.i(Vmeas) dc2.i(Vmeas) dc3.i(Vmeas) dc4.i(Vmeas) dc5.i(Vmeas)
plot dc1.v(vsweep)/dc1.i(Vmeas) dc2.v(vsweep)/dc2.i(Vmeas) dc3.v(vsweep)/dc3.i(Vmeas) dc4.v(vsweep)/dc4.i(Vmeas) dc5.v(vsweep)/dc5.i(Vmeas)
*plot dc1.v(vinv) dc2.v(vinv) dc3.v(vinv) dc4.v(vinv) dc5.v(vinv)
*plot dc1.v(vc_p) dc2.v(vc_p) dc3.v(vc_p) dc4.v(vc_p) dc5.v(vc_p)
*plot dc1.v(vd) dc2.v(vd) dc3.v(vd) dc4.v(vd) dc5.v(vd)
*plot dc1.v(vb) dc2.v(vb) dc3.v(vb) dc4.v(vb) dc5.v(vb)


* Write Data
unset appendwrite
set wr_vecnames
set wr_singlescale
wrdata ../plot_simulations/data/@schname\\\\.txt v(vc_p) dc1.v(vsweep)/(dc1.i(Vmeas)) dc2.v(vsweep)/(dc2.i(Vmeas)) dc3.v(vsweep)/(dc3.i(Vmeas)) dc4.v(vsweep)/(dc4.i(Vmeas)) dc5.v(vsweep)/(dc5.i(Vmeas))



*quit
.endc
"}
C {vsource_arith.sym} 420 -330 0 0 {name=E2 VOL="V(vcm_sweep)+V(vsweep)/2"}
C {vsource_arith.sym} 1140 -410 0 0 {name=E3 VOL="V(vcm_sweep)-V(vsweep)/2"}
C {devices/vsource.sym} 460 -670 0 0 {name=Vcm value=1}
C {devices/gnd.sym} 460 -610 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 460 -730 0 0 {name=l14 sig_type=std_logic lab=vcm_sweep}
C {inverter.sym} 660 -480 0 0 {name=x2}
C {vdd.sym} 660 -520 0 0 {name=l15 lab=VDD}
C {devices/gnd.sym} 660 -440 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} 900 -420 0 0 {name=l10 lab=GND}
C {vdd.sym} 900 -540 0 0 {name=l11 lab=VDD}
