v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for Output Voltage Swing analysis - Inverter} 520 -1730 0 0 1 1 {}
N 1120 -860 1120 -840 {lab=GND}
N 1120 -940 1120 -920 {lab=VDD}
N 1200 -860 1200 -840 {lab=GND}
N 1200 -960 1200 -920 {lab=in}
N 1200 -960 1240 -960 {lab=in}
N 1280 -1120 1280 -1100 {lab=VDD}
N 1280 -1040 1280 -1020 {lab=#net1}
C {devices/code_shown.sym} 40 -1630 0 0 {name=NGSPICE
only_toplevel=true 
value="
.include ../../../netlist/pex/inverter_magic_pex_3.spice
.param VDD = 3.3
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
dc VS 0 $&VDD 0.01
*dc VS 0 3.3 0.01 VDD 2.3 4.3 0.25
*dc VS 0 $&VDD 0.01 temp -40 80 30
*dc temp -40 85 1
remzerovec
write @schname\\\\.raw
set appendwrite

* Plotting
let vdm = nout-out
let vcm = (nout+out)/2
plot out nout
plot vdm vcm
*plot vcm
plot deriv(vdm)

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
C {devices/launcher.sym} 1420 -1100 0 0 {name=h2
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
C {devices/vsource.sym} 1120 -890 0 0 {name=VDD value=\{VDD\}}
C {devices/gnd.sym} 1120 -840 0 1 {name=l4 lab=GND}
C {devices/gnd.sym} 1200 -840 0 0 {name=l10 lab=GND
w=n_w}
C {devices/vsource.sym} 1200 -890 0 0 {name=VS value=3.3}
C {vdd.sym} 1120 -940 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 1400 -980 0 1 {name=l12 sig_type=std_logic lab=nout}
C {devices/lab_pin.sym} 1200 -960 3 1 {name=l1 sig_type=std_logic lab=in}
C {vdd.sym} 1320 -1020 0 0 {name=l8 lab=VDD}
C {devices/lab_pin.sym} 1400 -940 0 1 {name=l11 sig_type=std_logic lab=out}
C {devices/gnd.sym} 1320 -900 0 0 {name=l14 lab=GND
w=n_w}
C {isource.sym} 1280 -1070 0 0 {name=I0 value=10u}
C {vdd.sym} 1280 -1120 0 0 {name=l15 lab=VDD}
C {voltage_mirror.sym} 1320 -960 0 0 {name=x1}
