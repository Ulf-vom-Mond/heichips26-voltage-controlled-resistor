v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for Output Voltage Swing analysis - Inverter} 520 -1730 0 0 1 1 {}
N 1380 -600 1380 -500 {lab=GND}
N 1380 -820 1380 -660 {lab=#net1}
N 1380 -820 1480 -820 {lab=#net1}
N 1480 -820 1480 -720 {lab=#net1}
N 1480 -600 1480 -500 {lab=GND}
N 1520 -600 1520 -580 {lab=#net2}
N 1560 -600 1560 -580 {lab=#net3}
N 1520 -520 1520 -500 {lab=GND}
N 1560 -520 1560 -500 {lab=GND}
N 1520 -740 1520 -720 {lab=#net4}
N 1540 -740 1540 -720 {lab=#net5}
N 1560 -740 1560 -720 {lab=#net6}
N 1480 -820 1520 -820 {lab=#net1}
N 1520 -820 1520 -800 {lab=#net1}
N 1520 -820 1540 -820 {lab=#net1}
N 1540 -820 1540 -800 {lab=#net1}
N 1540 -820 1560 -820 {lab=#net1}
N 1560 -820 1560 -800 {lab=#net1}
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
dc VDD 2.5 4 0.01
remzerovec
write @schname\\\\.raw
set appendwrite

meas dc ymax MAX i(vout1)

* Plotting
plot i(vout1) i(vout2) i(vout3) i(vout4) i(vout5)
*plot i(vout1) ylimit 0 $&ymax
*plot deriv(i(vout1))/$&ymax*100 ylimit 0 4

dc temp -40 85 10

meas dc ymax MAX i(vout1)

* Plotting
*plot i(vout1) ylimit 0 $&ymax
*plot deriv(i(vout1))/$&ymax*100 ylimit -0.1 0.1

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
C {devices/vsource.sym} 1380 -630 0 0 {name=VDD value=3.3}
C {devices/gnd.sym} 1380 -500 0 1 {name=l4 lab=GND}
C {ammeter.sym} 1520 -770 2 0 {name=vout1 savecurrent=true spice_ignore=0}
C {devices/gnd.sym} 1480 -500 0 0 {name=l10 lab=GND
w=n_w}
C {bias_current_generator.sym} 1520 -660 0 0 {name=x2}
C {ammeter.sym} 1540 -770 2 0 {name=vout2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1560 -770 2 0 {name=vout3 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1520 -550 0 0 {name=vout4 savecurrent=true spice_ignore=0}
C {ammeter.sym} 1560 -550 0 0 {name=vout5 savecurrent=true spice_ignore=0}
C {devices/gnd.sym} 1520 -500 0 0 {name=l1 lab=GND
w=n_w}
C {devices/gnd.sym} 1560 -500 0 0 {name=l3 lab=GND
w=n_w}
