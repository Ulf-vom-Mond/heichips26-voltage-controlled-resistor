v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for Output Voltage Swing analysis - Inverter} 520 -1730 0 0 1 1 {}
N 1040 -520 1040 -500 {lab=GND}
N 1040 -680 1040 -580 {lab=#net1}
N 1180 -680 1180 -660 {lab=#net1}
N 1120 -680 1180 -680 {lab=#net1}
N 1120 -630 1140 -630 {lab=#net1}
N 1120 -680 1120 -630 {lab=#net1}
N 1180 -520 1180 -500 {lab=GND}
N 1180 -600 1180 -580 {lab=#net2}
N 1180 -630 1240 -630 {lab=GND}
N 1240 -630 1240 -500 {lab=GND}
N 1040 -680 1120 -680 {lab=#net1}
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
dc VS 0 6.6 0.01
remzerovec
write @schname\\\\.raw
set appendwrite

* Plotting
plot -i(VDD)

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
C {devices/launcher.sym} 1100 -840 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1720 -1280 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 1920 -1710 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {devices/vsource.sym} 1040 -550 0 0 {name=VDD value=3.3}
C {devices/gnd.sym} 1040 -500 0 1 {name=l4 lab=GND}
C {devices/gnd.sym} 1180 -500 0 0 {name=l10 lab=GND
w=n_w}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1160 -630 0 0 {name=M4
l=0.45u
w=5u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {devices/vsource.sym} 1180 -550 0 0 {name=VS value=3.3}
C {devices/gnd.sym} 1240 -500 0 0 {name=l1 lab=GND
w=n_w}
