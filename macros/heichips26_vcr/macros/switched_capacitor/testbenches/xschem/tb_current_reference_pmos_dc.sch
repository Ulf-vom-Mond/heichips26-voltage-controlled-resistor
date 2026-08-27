v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1660 -720 2460 -320 {flags=graph
y1=-0.6
y2=0.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.075
x2=1.425
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin
vout"
color="4 21"
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
autoload=0}
B 2 1660 -1160 2460 -760 {flags=graph
y1=0.00063999866
y2=0.0014399978
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.075
x2=1.425
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
color=4
node=i(VDD)}
T {Testbench for Output Voltage Swing analysis - Inverter} 520 -1730 0 0 1 1 {}
N 1040 -660 1040 -560 {lab=GND}
N 1040 -780 1040 -720 {lab=#net1}
N 1180 -780 1180 -760 {lab=#net1}
N 1140 -660 1140 -560 {lab=GND}
N 1040 -780 1180 -780 {lab=#net1}
N 1180 -580 1180 -560 {lab=#net2}
N 1180 -660 1180 -640 {lab=#net3}
N 1180 -500 1180 -460 {lab=GND}
C {devices/code_shown.sym} 40 -1630 0 0 {name=NGSPICE
only_toplevel=true 
value="
.include ../../../netlist/pex/inverter_magic_pex_3.spice
.param temp=27
.options savecurrents klu method=gear reltol=1e-3 abstol=1e-15 gmin=1e-15
.control

save all

* Operating Point Analysis
op
remzerovec
write @schname\\\\.raw
set appendwrite

* DC Sweep
dc VDD 2.5 4 0.01 Vload 0 2.5 0.25
remzerovec
write @schname\\\\.raw
set appendwrite

meas dc ymax MAX i(vout1)

* Plotting
plot i(vout1) ylimit 0 $&ymax
plot deriv(i(vout1))/$&ymax*100 ylimit 0 4

dc temp -40 85 5 Vload 0 2.25 0.25

meas dc ymax MAX i(vout1)

* Plotting
plot i(vout1) ylimit 0 $&ymax
plot deriv(i(vout1))/$&ymax*1000 ylimit -0.1 0.1

* Measurement
*meas dc Vgsp_at_Vcm when vout=Vcm
*print Vgsp_at_Vcm

* Write Data
*unset appendwrite
*set wr_vecnames
*set wr_singlescale
*wrdata ../plot_simulations/data/@schname\\\\.txt v(vin) v(vout)

*quit
.endc
"}
C {devices/launcher.sym} 1720 -1340 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1720 -1220 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw dc"
}
C {devices/launcher.sym} 1720 -1280 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 1960 -1330 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {devices/vsource.sym} 1040 -690 0 0 {name=VDD value=3.3}
C {devices/gnd.sym} 1040 -560 0 1 {name=l4 lab=GND}
C {ammeter.sym} 1180 -610 0 0 {name=vout1 savecurrent=true spice_ignore=0}
C {devices/gnd.sym} 1140 -560 0 0 {name=l10 lab=GND
w=n_w}
C {current_reference_pmos_40uA.sym} 1160 -720 0 0 {name=x1}
C {devices/gnd.sym} 1180 -460 0 0 {name=l1 lab=GND
w=n_w}
C {devices/vsource.sym} 1180 -530 0 0 {name=Vload value=1.4}
