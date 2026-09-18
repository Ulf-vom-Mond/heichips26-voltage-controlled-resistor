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
N 1160 -810 1160 -770 {lab=VDD}
N 1160 -710 1160 -670 {lab=GND}
N 570 -470 570 -450 {lab=vd}
N 510 -470 570 -470 {lab=vd}
N 570 -390 570 -370 {lab=GND}
N 1260 -470 1280 -470 {lab=vb}
N 1260 -470 1260 -450 {lab=vb}
N 1260 -390 1260 -370 {lab=GND}
N 580 -610 580 -580 {lab=GND}
N 580 -700 580 -670 {lab=vsweep}
N 570 -470 620 -470 {lab=vd}
N 1030 -770 1030 -700 {lab=GND}
N 1030 -860 1030 -830 {lab=vc_p}
N 780 -610 780 -580 {lab=vc_p}
N 680 -470 710 -470 {lab=#net1}
N 1170 -470 1260 -470 {lab=vb}
N 750 -600 750 -580 {lab=VDD}
N 750 -420 750 -400 {lab=GND}
N 830 -600 830 -580 {lab=GND}
N 870 -600 890 -600 {lab=GND}
N 890 -600 890 -580 {lab=GND}
N 870 -600 870 -580 {lab=GND}
N 850 -600 870 -600 {lab=GND}
N 850 -600 850 -580 {lab=GND}
N 830 -600 850 -600 {lab=GND}
N 850 -620 850 -600 {lab=GND}
N 810 -620 810 -580 {lab=VDD}
N 950 -600 950 -580 {lab=GND}
N 990 -600 1010 -600 {lab=GND}
N 1010 -600 1010 -580 {lab=GND}
N 990 -600 990 -580 {lab=GND}
N 970 -600 990 -600 {lab=GND}
N 970 -600 970 -580 {lab=GND}
N 950 -600 970 -600 {lab=GND}
N 970 -620 970 -600 {lab=GND}
N 930 -620 930 -580 {lab=VDD}
N 1070 -600 1070 -580 {lab=GND}
N 1110 -600 1130 -600 {lab=GND}
N 1130 -600 1130 -580 {lab=GND}
N 1110 -600 1110 -580 {lab=GND}
N 1090 -600 1110 -600 {lab=GND}
N 1090 -600 1090 -580 {lab=GND}
N 1070 -600 1090 -600 {lab=GND}
N 1090 -620 1090 -600 {lab=GND}
N 1050 -620 1050 -580 {lab=VDD}
C {devices/launcher.sym} 1700 -1410 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="VCR authors" rev=1.0 lock=true}
C {devices/vsource.sym} 1160 -740 0 0 {name=VDD value=\{VDD\}}
C {devices/gnd.sym} 1160 -670 0 0 {name=l3 lab=GND}
C {vdd.sym} 1160 -810 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 1280 -470 0 1 {name=l12 sig_type=std_logic lab=vb}
C {devices/lab_pin.sym} 510 -470 0 0 {name=l22 sig_type=std_logic lab=vd}
C {devices/gnd.sym} 570 -370 0 0 {name=l26 lab=GND}
C {devices/code_shown.sym} 1960 -1410 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
.lib cornerCAP.lib cap_typ
"}
C {devices/gnd.sym} 1260 -370 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 580 -640 0 0 {name=VS value=1.5}
C {devices/gnd.sym} 580 -580 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 580 -700 0 0 {name=l5 sig_type=std_logic lab=vsweep}
C {devices/code_shown.sym} 50 -1630 0 0 {name=NGSPICE
only_toplevel=true 
value="
* .include ../../../netlist/pex/inverter_magic_pex_3.spice
.param VDD=3.3
.csparam VDD=VDD
.param Vcm=0.8
.csparam Vcm=Vcm
.param temp=27
.options savecurrents klu method=gear reltol=1e-3 abstol=1e-15 gmin=1e-15 rshunt=1e13
.control
let vcc = 1.2

save all
set appendwrite



repeat 5
  alter vc $&vcc

  * DC Sweep
  dc VS -0.8 0.8 1m
  remzerovec
  let vcc = vcc + 0.5
end
write @schname\\\\.raw
set appendwrite

* Plotting
plot dc1.v(vsweep)/(dc1.i(vmeas)) dc2.v(vsweep)/(dc2.i(vmeas)) dc3.v(vsweep)/(dc3.i(vmeas)) dc4.v(vsweep)/(dc4.i(vmeas)) dc5.v(vsweep)/(dc5.i(vmeas)) ylimit 0 50k

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
C {vsource_arith.sym} 1260 -420 0 0 {name=E3 VOL="\{Vcm\}-V(vsweep)/2"}
C {devices/vsource.sym} 1030 -800 0 0 {name=vc value=0}
C {devices/lab_pin.sym} 1030 -860 0 0 {name=l8 sig_type=std_logic lab=vc_p}
C {devices/lab_pin.sym} 780 -610 1 0 {name=l9 sig_type=std_logic lab=vc_p}
C {vcr_bisection.sym} 730 -440 0 0 {name=x1}
C {devices/launcher.sym} 1700 -1360 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/gnd.sym} 1030 -700 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 750 -400 0 0 {name=l10 lab=GND}
C {vdd.sym} 750 -600 0 0 {name=l11 lab=VDD}
C {devices/gnd.sym} 850 -620 2 0 {name=l13 lab=GND}
C {vdd.sym} 810 -620 0 0 {name=l14 lab=VDD}
C {devices/gnd.sym} 970 -620 2 0 {name=l15 lab=GND}
C {vdd.sym} 930 -620 0 0 {name=l16 lab=VDD}
C {devices/gnd.sym} 1090 -620 2 0 {name=l17 lab=GND}
C {vdd.sym} 1050 -620 0 0 {name=l18 lab=VDD}
