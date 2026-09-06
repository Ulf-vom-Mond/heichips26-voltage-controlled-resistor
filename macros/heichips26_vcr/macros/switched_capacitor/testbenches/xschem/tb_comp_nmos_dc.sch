v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for Output Voltage Swing analysis - Inverter} 520 -1730 0 0 1 1 {}
N 1080 -860 1080 -820 {lab=VDD}
N 1080 -760 1080 -720 {lab=GND}
N 1360 -820 1360 -800 {lab=inp}
N 1340 -820 1360 -820 {lab=inp}
N 1360 -740 1360 -720 {lab=GND}
N 1220 -860 1420 -860 {lab=inn}
N 1220 -860 1220 -800 {lab=inn}
N 1220 -740 1220 -720 {lab=GND}
N 1200 -860 1220 -860 {lab=inn}
N 1360 -820 1420 -820 {lab=inp}
N 1460 -800 1460 -720 {lab=GND}
N 1480 -1070 1480 -1050 {lab=VDD}
N 1480 -950 1480 -880 {lab=#net1}
N 1520 -950 1520 -930 {lab=GND}
N 1460 -900 1460 -880 {lab=VDD}
N 1540 -840 1580 -840 {lab=vout}
C {devices/code_shown.sym} 40 -1610 0 0 {name=NGSPICE
only_toplevel=true 
value="
.include ../../../netlist/pex/inverter_magic_pex_3.spice
.param VDD=3.3
.csparam VDD=VDD
.param Vcm=VDD/2
.csparam Vcm=Vcm
.param temp=27
.param Cload=10p
.param Rload=1k
.options savecurrents klu method=gear reltol=1e-3 abstol=1e-15 gmin=1e-15
.control

save all

* Operating Point Analysis
op
remzerovec
write @schname\\\\.raw
set appendwrite

* DC Sweep
dc Vinp 0 $&VDD 1m Vinn 0 $&VDD 0.5
remzerovec
write @schname\\\\.raw
set appendwrite

* Plotting
plot inp vout

* Write Data
unset appendwrite
set wr_vecnames
set wr_singlescale
*wrdata ../plot_simulations/data/@schname\\\\.txt v(vin) v(vout)

*quit
.endc
"}
C {devices/launcher.sym} 1140 -1000 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
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
C {devices/vsource.sym} 1080 -790 0 0 {name=VDD value=\{VDD\}}
C {devices/gnd.sym} 1080 -720 0 0 {name=l3 lab=GND}
C {vdd.sym} 1080 -860 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 1580 -840 0 1 {name=l12 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 1340 -820 0 0 {name=l22 sig_type=std_logic lab=inp}
C {devices/gnd.sym} 1360 -720 0 0 {name=l26 lab=GND}
C {devices/vsource.sym} 1360 -770 0 0 {name=Vinp value=0
}
C {devices/lab_pin.sym} 1200 -860 0 0 {name=l6 sig_type=std_logic lab=inn}
C {devices/gnd.sym} 1220 -720 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 1220 -770 0 0 {name=Vinn value=\{VDD/2\}
}
C {vdd.sym} 1460 -900 0 0 {name=l13 lab=VDD}
C {devices/gnd.sym} 1460 -720 0 1 {name=l9 lab=GND}
C {current_reference_pmos_40uA.sym} 1500 -1010 0 1 {name=x1}
C {devices/gnd.sym} 1520 -930 0 1 {name=l15 lab=GND}
C {vdd.sym} 1480 -1070 0 0 {name=l16 lab=VDD}
C {comp_nmos.sym} 1480 -840 0 0 {name=x2}
