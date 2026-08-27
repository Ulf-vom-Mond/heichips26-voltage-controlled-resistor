v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1660 -720 2460 -320 {flags=graph
y1=0.9
y2=2.4
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
y1=0.0014399977
y2=0.0022399968
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
N 840 -740 840 -720 {lab=GND}
N 840 -820 840 -800 {lab=#net1}
N 840 -820 900 -820 {lab=#net1}
N 1100 -980 1100 -960 {lab=#net2}
N 1040 -1040 1060 -1040 {lab=#net2}
N 1040 -1040 1040 -980 {lab=#net2}
N 1040 -980 1100 -980 {lab=#net2}
N 1100 -1010 1100 -980 {lab=#net2}
N 760 -1100 760 -800 {lab=#net3}
N 1100 -1100 1100 -1040 {lab=#net3}
N 940 -1100 1100 -1100 {lab=#net3}
N 940 -1100 940 -1000 {lab=#net3}
N 1100 -740 1100 -720 {lab=GND
}
N 940 -880 940 -850 {lab=#net4}
N 940 -820 940 -720 {lab=GND}
N 1100 -1100 1220 -1100 {lab=#net3}
N 840 -1100 940 -1100 {lab=#net3}
N 940 -880 1100 -880 {lab=#net4}
N 940 -970 940 -880 {lab=#net4}
N 1100 -900 1100 -880 {lab=#net4}
N 1220 -1100 1220 -880 {lab=#net3}
N 840 -940 840 -820 {lab=#net1}
N 870 -1000 900 -1000 {lab=#net5}
N 800 -1000 810 -1000 {lab=#net1}
N 800 -1000 800 -940 {lab=#net1}
N 800 -940 840 -940 {lab=#net1}
N 840 -960 840 -940 {lab=#net1}
N 840 -1100 840 -1000 {lab=#net3}
N 760 -1100 840 -1100 {lab=#net3}
N 760 -740 760 -720 {lab=GND}
N 1100 -880 1100 -840 {lab=#net4}
N 1140 -880 1140 -840 {lab=#net3}
N 1140 -880 1220 -880 {lab=#net3}
C {devices/code_shown.sym} -770 -1270 0 0 {name=NGSPICE
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
dc Vg 3.3 0 -0.01
remzerovec
write @schname\\\\.raw
set appendwrite

* Plotting
plot i(vout1)
plot deriv(i(vout1)) mean(deriv(i(vout1)))
plot i(VDD)
*plot vin

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
C {devices/vsource.sym} 760 -770 0 0 {name=VDD value=3.3}
C {devices/gnd.sym} 840 -720 0 1 {name=l26 lab=GND}
C {devices/vsource.sym} 840 -770 0 0 {name=Vg value=0
}
C {ammeter.sym} 1100 -930 0 1 {name=vout1 savecurrent=true }
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 920 -820 0 0 {name=M8
l=1.4u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 940 -720 0 1 {name=l1 lab=GND}
C {devices/gnd.sym} 760 -720 0 1 {name=l4 lab=GND}
C {sg13_lv_pmos.sym} 1080 -1040 0 0 {name=M6
l=2.0u
w=10.0u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 920 -1000 0 0 {name=M1
l=1u
w=1u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/gnd.sym} 1100 -720 0 1 {name=l3 lab=GND
}
C {sg13_lv_pmos.sym} 840 -980 1 1 {name=M4
l=1u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {current_reference_40uA.sym} 1120 -800 0 1 {name=x3
}
