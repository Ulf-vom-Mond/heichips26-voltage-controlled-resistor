v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for transient analysis - VCR} 740 -1730 0 0 1 1 {}
N 1000 -740 1000 -640 {lab=VDD}
N 1000 -560 1000 -540 {lab=VSS}
N 960 -560 1000 -560 {lab=VSS}
N 1000 -580 1000 -560 {lab=VSS}
N 860 -560 860 -540 {lab=GND}
N 860 -560 900 -560 {lab=GND}
N 1100 -580 1100 -540 {lab=VSS}
N 1100 -660 1100 -640 {lab=vctrl}
N 1180 -660 1260 -660 {lab=vctrl}
N 1400 -560 1400 -540 {lab=VSS}
N 1400 -640 1400 -620 {lab=vr1}
N 1380 -640 1400 -640 {lab=vr1}
N 1480 -560 1480 -540 {lab=VSS}
N 1480 -680 1480 -620 {lab=vr2}
N 1320 -600 1320 -540 {lab=VSS}
N 1320 -740 1320 -720 {lab=VDD}
N 1380 -680 1480 -680 {lab=vr2}
N 1180 -580 1180 -540 {lab=VSS}
N 1180 -660 1180 -640 {lab=vctrl}
N 1100 -660 1180 -660 {lab=vctrl}
C {devices/launcher.sym} 1160 -860 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="VCR authors" rev=1.0 lock=true}
C {devices/code_shown.sym} 1580 -1610 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
.lib cornerCAP.lib cap_typ

.include $::PDK_ROOT/$::PDK/libs.ref/sg13cmos5l_stdcell/spice/sg13cmos5l_stdcell.spice
"}
C {devices/code_shown.sym} 20 -1660 0 0 {name=NGSPICE1
only_toplevel=true 
value="
.param temp=27

* Derived timing parameters

.options savecurrents klu method=gear reltol=1e-6 abstol=1e-12 gmin=1e-15 noinit
.probe alli
.control

echo
echo # ------------------------------------------------------------------------------
echo # VCM sweep:
echo # ------------------------------------------------------------------------------
echo

unset appendwrite
set wr_vecnames
set wr_singlescale

let vdd_var = 3.3
let record_periods = 2
let v_to_f = 2e6
let vctrl_var = 0.1

set voltages = ( 0.1 0.5 3.3 )
foreach vctrl_var $voltages
	break

	let f = v_to_f/$vctrl_var
	let period = 1/f
	let tstop = record_periods*period
	let tstep = period/100
	echo vctrl=$vctrl_var, f=$&f, period=$&period, tstop=$&tstop, tstep=$&tstep
	alter v0 = $vctrl_var

	let vdm = 1
	let vcm = 0.55
	while vcm < 2.8
		let v1 = $&vcm - $&vdm/2
		let v2 = $&vcm + $&vdm/2
		echo vctrl=$vctrl_var, vcm=$&vcm, vdm=$&vdm, v1=$&v1, v2=$&v2
		alter v1 = $&v1
		alter v2 = $&v2
		tran $&tstep $&tstop
		wrdata ../plot_simulations/data/@schname\\\\_vco_vcm.txt vctrl i(v1) vr1 vr2 x1.clk
		set appendwrite
		unset wr_vecnames
		let vcm = $&vcm + 0.05
	end
end

echo
echo # ------------------------------------------------------------------------------
echo # VDM sweep:
echo # ------------------------------------------------------------------------------
echo

*unset appendwrite
set appendwrite
set wr_vecnames

set voltages = ( 0.1 0.5 3.3 )
foreach vctrl_var $voltages
	let f = v_to_f/$vctrl_var
	let period = 1/f
	let tstop = record_periods*period
	let tstep = period/100
	echo vctrl=$vctrl_var, f=$&f, period=$&period, tstop=$&tstop, tstep=$&tstep
	alter v0 = $vctrl_var

*	let vdm = -$&vdd_var
	let vdm = 2.836
	let vcm = $&vdd_var/2
	while vdm < $&vdd_var
		let v1 = $&vcm - $&vdm/2
		let v2 = $&vcm + $&vdm/2
		echo vctrl=$vctrl_var, vcm=$&vcm, vdm=$&vdm, v1=$&v1, v2=$&v2
		alter v1 = $&v1
		alter v2 = $&v2
		tran $&tstep $&tstop
		wrdata ../plot_simulations/data/@schname\\\\_vco_vdm.txt vctrl i(v1) vr1 vr2 x1.clk
		set appendwrite
		unset wr_vecnames
		let vdm = vdm + 0.052
	end
end

echo
echo # ------------------------------------------------------------------------------
echo # Vctrl sweep:
echo # ------------------------------------------------------------------------------
echo

unset appendwrite
set wr_vecnames

let vdm = $&vdd_var/2
let vcm = $&vdd_var/2
let v1 = $&vcm - $&vdm/2
let v2 = $&vcm + $&vdm/2
echo v1=$&v1, v2=$&v2
alter v1 $&v1
alter v2 $&v2

while $&vctrl_var < 3.4
	let f = v_to_f/$&vctrl_var
	let period = 1/f
	let tstop = record_periods*period
	let tstep = period/100
	echo vctrl=$&vctrl_var, f=$&f, period=$&period, tstop=$&tstop, tstep=$&tstep

	alter v0 = $&vctrl_var
	tran $&tstep $&tstop
	wrdata ../plot_simulations/data/@schname\\\\_vco_vctrl.txt vctrl i(v1) vr1 vr2 x1.clk
	set appendwrite
	unset wr_vecnames
	let vctrl_var = vctrl_var * 1.05
end

*quit
.endc
"}
C {devices/vsource.sym} 1000 -610 0 0 {name=VDD value=3.3}
C {lab_pin.sym} 1000 -740 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 1000 -540 0 1 {name=l11 lab=VSS}
C {gnd.sym} 860 -540 0 0 {name=l10 lab=GND}
C {res.sym} 930 -560 1 0 {name=R2
value=0
footprint=1206
device=resistor
m=1
}
C {isource.sym} 1100 -610 0 0 {name=I0 value=0
spice_ignore=true}
C {devices/gnd.sym} 1100 -540 0 1 {name=l13 lab=VSS}
C {devices/gnd.sym} 1320 -540 0 1 {name=l1 lab=VSS}
C {lab_pin.sym} 1320 -740 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1400 -640 2 0 {name=p3 sig_type=std_logic lab=vr1
}
C {devices/vsource.sym} 1400 -590 0 0 {name=V1 value=0}
C {devices/vsource.sym} 1480 -590 0 0 {name=V2 value=0}
C {devices/gnd.sym} 1400 -540 0 1 {name=l3 lab=VSS}
C {devices/gnd.sym} 1480 -540 0 1 {name=l4 lab=VSS}
C {lab_pin.sym} 1480 -640 2 0 {name=p4 sig_type=std_logic lab=vr2
}
C {devices/vsource.sym} 1180 -610 0 0 {name=V0 value=0}
C {devices/gnd.sym} 1180 -540 0 1 {name=l5 lab=VSS}
C {lab_pin.sym} 1180 -660 1 0 {name=p5 sig_type=std_logic lab=vctrl}
C {switched_cap_cell_wcap.sym} 1700 -720 0 0 {name=x1}
