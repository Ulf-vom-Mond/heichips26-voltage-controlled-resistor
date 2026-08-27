v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1660 -720 2460 -320 {flags=graph
y1=0.6
y2=2.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.5
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
y1=0.0004799988
y2=0.001279998
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.5
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
N 900 -780 960 -780 {lab=#net1}
N 1000 -860 1000 -780 {lab=#net2}
N 900 -940 1000 -940 {lab=#net3}
N 1000 -940 1000 -920 {lab=#net3}
N 820 -700 820 -680 {lab=GND}
N 820 -940 820 -760 {lab=#net3}
N 1000 -750 1000 -680 {lab=GND}
N 900 -820 900 -780 {lab=#net1}
N 900 -940 900 -880 {lab=#net3}
N 820 -940 900 -940 {lab=#net3}
C {devices/code_shown.sym} 60 -1250 0 0 {name=NGSPICE
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
dc VDD 0 3.3 1m Vg 1 3.3 0.25
remzerovec
write @schname\\\\.raw
set appendwrite

* Plotting
plot i(vout1)

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
C {devices/vsource.sym} 820 -730 0 0 {name=VDD value=0}
C {devices/vsource.sym} 900 -850 0 0 {name=Vg value=0
}
C {ammeter.sym} 1000 -890 0 1 {name=vout1 savecurrent=true }
C {devices/gnd.sym} 1000 -680 0 1 {name=l1 lab=GND}
C {devices/gnd.sym} 820 -680 0 1 {name=l4 lab=GND}
C {sg13_lv_pmos.sym} 980 -780 0 0 {name=M1
l=1.0u
w=1.0u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
