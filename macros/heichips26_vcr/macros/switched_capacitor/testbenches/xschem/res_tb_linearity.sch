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
N 680 -480 680 -460 {lab=vd}
N 610 -480 680 -480 {lab=vd}
N 680 -400 680 -380 {lab=GND}
N 1120 -480 1140 -480 {lab=vb}
N 1120 -480 1120 -460 {lab=vb}
N 1120 -400 1120 -380 {lab=GND}
N 600 -640 600 -610 {lab=GND}
N 600 -730 600 -700 {lab=vsweep}
N 680 -480 720 -480 {lab=vd}
N 780 -480 840 -480 {lab=#net1}
N 780 -640 780 -610 {lab=GND}
N 780 -730 780 -700 {lab=vc_p}
N 960 -480 1120 -480 {lab=vb}
N 820 -500 840 -500 {lab=vc_p}
N 900 -440 900 -380 {lab=GND}
N 900 -560 900 -540 {lab=VDD}
N 960 -500 980 -500 {lab=vinv}
C {devices/launcher.sym} 1700 -1410 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="VCR authors" rev=1.0 lock=true}
C {devices/code_shown.sym} 1960 -1410 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {devices/code_shown.sym} 40 -1560 0 0 {name=NGSPICE
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
let vcc = 0.0

save all
set appendwrite



repeat 5
  alter vc $&vcc

  * DC Sweep
  dc VS -3.3 3.3 10m
  remzerovec
  let vcc = vcc + 0.6
end
write @schname\\\\.raw
set appendwrite

* Plotting
plot dc1.i(Vmeas) dc2.i(Vmeas) dc3.i(Vmeas) dc4.i(Vmeas) dc5.i(Vmeas)
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
C {devices/vsource.sym} 1100 -670 0 0 {name=VDD value=\{VDD\}}
C {devices/gnd.sym} 1100 -600 0 0 {name=l3 lab=GND}
C {vdd.sym} 1100 -740 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 1140 -480 0 1 {name=l12 sig_type=std_logic lab=vb}
C {devices/lab_pin.sym} 610 -480 0 0 {name=l22 sig_type=std_logic lab=vd}
C {devices/gnd.sym} 680 -380 0 0 {name=l26 lab=GND}
C {devices/gnd.sym} 1120 -380 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 600 -670 0 0 {name=VS value="PWL(0 -1 10m 1)"}
C {devices/gnd.sym} 600 -610 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 600 -730 0 0 {name=l5 sig_type=std_logic lab=vsweep}
C {ammeter.sym} 750 -480 3 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {vsource_arith.sym} 680 -430 0 0 {name=E2 VOL="\{Vcm\}+V(vsweep)/2"}
C {vsource_arith.sym} 1120 -430 0 0 {name=E3 VOL="\{Vcm\}-V(vsweep)/2"}
C {devices/vsource.sym} 780 -670 0 0 {name=vc value=0}
C {devices/gnd.sym} 780 -610 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 780 -730 0 0 {name=l8 sig_type=std_logic lab=vc_p}
C {devices/lab_pin.sym} 820 -500 0 0 {name=l9 sig_type=std_logic lab=vc_p}
C {transmission_gate.sym} 900 -480 0 0 {name=x1}
C {devices/gnd.sym} 900 -380 0 0 {name=l10 lab=GND}
C {vdd.sym} 900 -560 0 0 {name=l11 lab=VDD}
C {lab_pin.sym} 980 -500 0 1 {name=p1 sig_type=std_logic lab=vinv}
