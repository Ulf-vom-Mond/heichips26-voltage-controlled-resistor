v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for Output Voltage Swing analysis - Inverter} 520 -1730 0 0 1 1 {}
N 1040 -600 1040 -560 {lab=GND}
N 1140 -780 1180 -780 {lab=vin}
N 1180 -700 1180 -680 {lab=#net1}
N 1180 -780 1180 -760 {lab=vin}
N 1180 -580 1180 -560 {lab=GND}
N 1140 -780 1140 -680 {lab=vin}
N 1040 -780 1140 -780 {lab=vin}
N 1040 -680 1040 -660 {lab=#net2}
N 1040 -780 1040 -740 {lab=vin}
C {devices/code_shown.sym} 40 -1630 0 0 {name=NGSPICE
only_toplevel=true
value="
.include ../../../netlist/pex/inverter_magic_pex_3.spice

.param f = 1k

.param temp=27

.options savecurrents klu method=gear reltol=1e-3 abstol=1e-15 gmin=1e-15
.control

save all

* Operating Point Analysis
op
remzerovec
write @schname\\\\.raw
set appendwrite

*set f_vals = ( 10k 100k 1Meg 10Meg 100Meg )
set f_vals = ( 10k 100k )
set n = 1
foreach f_val $f_vals
	let period = 1/$f_val
	let tstop = 3*period
	let tstep = period/10
	echo f=$f_val, period=$&period, tstop=$&tstop, tstep=$&tstep
 	*alterparam f=$f_val
	alter VAC = 'sin(0 10m $f_val)'

	tran $&tstep $&tstop
	plot i(vout1)
	* Save the current and a normalized time vector
	*echo counter: $n
	*let i_$f_val = i(vout1)
	*let t_$f_val = time * $f_val
	*let n = $n + 1
	*echo name: i_$f_val

	*destroy all
end

*plot i_0 vs t_0 i_1 vs t_1 i_2 vs t_2 i_3 vs t_3 i_4 vs t_4
*plot i_0 vs t_0 i_1 vs t_1

remzerovec
write @schname\\\\.raw
set appendwrite

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
C {devices/vsource.sym} 1040 -630 0 0 {name=VDD value=3.3}
C {devices/gnd.sym} 1040 -560 0 1 {name=l4 lab=GND}
C {ammeter.sym} 1180 -730 0 0 {name=vout1 savecurrent=true spice_ignore=0}
C {devices/gnd.sym} 1180 -560 0 0 {name=l10 lab=GND
w=n_w}
C {current_reference_40uA.sym} 1160 -640 0 0 {name=x1}
C {devices/vsource.sym} 1040 -710 0 0 {name=VAC value="sin(0 10m \{f\})"}
C {devices/lab_pin.sym} 1180 -780 0 1 {name=l19 sig_type=std_logic lab=vin}
