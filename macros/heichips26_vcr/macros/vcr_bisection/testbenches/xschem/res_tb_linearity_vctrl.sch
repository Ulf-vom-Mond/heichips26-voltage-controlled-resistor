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
x1=-0.00325
x2=0.00175
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
N 1110 -700 1110 -660 {lab=VDD}
N 1110 -600 1110 -560 {lab=GND}
N 570 -470 570 -450 {lab=vd}
N 510 -470 570 -470 {lab=vd}
N 570 -390 570 -370 {lab=GND}
N 1100 -470 1120 -470 {lab=vb}
N 1100 -470 1100 -450 {lab=vb}
N 1100 -390 1100 -370 {lab=GND}
N 580 -610 580 -580 {lab=GND}
N 580 -700 580 -670 {lab=vsweep}
N 570 -470 620 -470 {lab=vd}
N 980 -660 980 -590 {lab=GND}
N 980 -750 980 -720 {lab=vc_p}
N 860 -560 860 -530 {lab=vc_p}
N 680 -470 710 -470 {lab=#net1}
N 1010 -470 1100 -470 {lab=vb}
N 780 -550 780 -530 {lab=VDD}
N 780 -410 780 -390 {lab=GND}
C {devices/launcher.sym} 1700 -1410 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="VCR authors" rev=1.0 lock=true}
C {devices/vsource.sym} 1110 -630 0 0 {name=VDD value=\{VDD\}}
C {devices/gnd.sym} 1110 -560 0 0 {name=l3 lab=GND}
C {vdd.sym} 1110 -700 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 1120 -470 0 1 {name=l12 sig_type=std_logic lab=vb}
C {devices/lab_pin.sym} 510 -470 0 0 {name=l22 sig_type=std_logic lab=vd}
C {devices/gnd.sym} 570 -370 0 0 {name=l26 lab=GND}
C {devices/code_shown.sym} 1960 -1410 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
.lib cornerCAP.lib cap_typ
"}
C {devices/gnd.sym} 1100 -370 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 580 -640 0 0 {name=VS value=1.5}
C {devices/gnd.sym} 580 -580 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 580 -700 0 0 {name=l5 sig_type=std_logic lab=vsweep}
C {devices/code_shown.sym} 90 -1550 0 0 {name=NGSPICE
only_toplevel=true 
value="
* .include ../../../netlist/pex/inverter_magic_pex_3.spice
.param VDD=3.3
.csparam VDD=VDD
.param Vcm=2
.csparam Vcm=Vcm
.param temp=27
.options savecurrents klu method=gear reltol=1e-3 abstol=1e-15 gmin=1e-15 rshunt=1e13
.control
let vcc = 0.75

save all
set appendwrite



repeat 5
  alter vc $&vcc

  * DC Sweep
  dc VS -1 1 1m
  remzerovec
  let vcc = vcc + 0.25
end
write @schname\\\\.raw
set appendwrite

* Plotting
plot (dc1.v(vd) - dc1.v(vb))/(dc1.i(vmeas)) (dc2.v(vd) - dc2.v(vb))/(dc2.i(vmeas)) (dc3.v(vd) - dc3.v(vb))/(dc3.i(vmeas)) (dc4.v(vd) - dc4.v(vb))/(dc4.i(vmeas)) (dc5.v(vd) - dc5.v(vb))/(dc5.i(vmeas)) ylimit 0 10k

plot dc1.i(vmeas) dc2.i(vmeas) dc3.i(vmeas) dc4.i(vmeas) dc5.i(vmeas)

* Write Data
unset appendwrite
set wr_vecnames
set wr_singlescale
wrdata ../plot_simulations/data/@schname\\\\.txt v(vc_p) dc1.v(vsweep)/(dc1.i(Vmeas)) dc2.v(vsweep)/(dc2.i(Vmeas)) dc3.v(vsweep)/(dc3.i(Vmeas)) dc4.v(vsweep)/(dc4.i(Vmeas)) dc5.v(vsweep)/(dc5.i(Vmeas))

write res_tb_linearity.raw

*quit
.endc
"}
C {ammeter.sym} 650 -470 3 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {vsource_arith.sym} 570 -420 0 0 {name=E2 VOL="\{Vcm\}+V(vsweep)/2"}
C {vsource_arith.sym} 1100 -420 0 0 {name=E3 VOL="\{Vcm\}-V(vsweep)/2"}
C {devices/vsource.sym} 980 -690 0 0 {name=vc value=0}
C {devices/lab_pin.sym} 980 -750 0 0 {name=l8 sig_type=std_logic lab=vc_p}
C {devices/lab_pin.sym} 860 -560 1 0 {name=l9 sig_type=std_logic lab=vc_p}
C {vcr_bisection.sym} 860 -470 0 0 {name=x1}
C {devices/launcher.sym} 1700 -1360 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/gnd.sym} 980 -590 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 780 -390 0 0 {name=l10 lab=GND}
C {vdd.sym} 780 -550 0 0 {name=l11 lab=VDD}
