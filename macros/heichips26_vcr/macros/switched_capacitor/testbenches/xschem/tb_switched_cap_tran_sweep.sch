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
N 1100 -660 1100 -640 {lab=#net1}
N 1100 -660 1160 -660 {lab=#net1}
N 1300 -560 1300 -540 {lab=VSS}
N 1300 -640 1300 -620 {lab=vr1}
N 1280 -640 1300 -640 {lab=vr1}
N 1380 -560 1380 -540 {lab=VSS}
N 1380 -680 1380 -620 {lab=vr2}
N 1220 -600 1220 -540 {lab=VSS}
N 1220 -740 1220 -720 {lab=VDD}
N 1280 -680 1380 -680 {lab=vr2}
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

.options savecurrents klu method=gear reltol=1e-3 abstol=1e-12 gmin=1e-15
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
let record_periods = 10
let i_to_f = 3.3e-12
let ictrl = 1u

set currents = ( 3.3u 33u 330u )
foreach ictrl $currents
	let f = $ictrl/i_to_f
	let period = 1/f
	let tstop = record_periods*period
	let tstep = period/100
	echo ictrl=$ictrl, f=$&f, period=$&period, tstop=$&tstop, tstep=$&tstep
	alter i0 = $ictrl

	let vdm = 1
	let vcm = 0.55
	while vcm < 2.8
		let v1 = $&vcm - $&vdm/2
		let v2 = $&vcm + $&vdm/2
		echo vcm=$&vcm, vdm=$&vdm, v1=$&v1, v2=$&v2
		alter v1 = $&v1
		alter v2 = $&v2
		tran $&tstep $&tstop
		wrdata ../plot_simulations/data/@schname\\\\_vcm.txt i(i0) i(v1) vr1 vr2
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

unset appendwrite
set wr_vecnames

set currents = ( 3.3u 33u 330u )
foreach ictrl $currents
	let f = $ictrl/i_to_f
	let period = 1/f
	let tstop = record_periods*period
	let tstep = period/100
	echo ictrl=$ictrl, f=$&f, period=$&period, tstop=$&tstop, tstep=$&tstep
	alter i0 = $ictrl

	let vdm = -$&vdd_var
	let vcm = $&vdd_var/2
	while vdm < $&vdd_var
		let v1 = $&vcm - $&vdm/2
		let v2 = $&vcm + $&vdm/2
		echo ictrl=$ictrl, vcm=$&vcm, vdm=$&vdm, v1=$&v1, v2=$&v2
		alter v1 = $&v1
		alter v2 = $&v2
		tran $&tstep $&tstop
		wrdata ../plot_simulations/data/@schname\\\\_vdm.txt i(i0) i(v1) vr1 vr2
		set appendwrite
		unset wr_vecnames
		let vdm = vdm + 0.052
	end
end

echo
echo # ------------------------------------------------------------------------------
echo # Ictrl sweep:
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

while $&ictrl < 400u
	let f = $&ictrl/i_to_f
	let period = 1/f
	let tstop = record_periods*period
	let tstep = period/100
	echo ictrl=$&ictrl, f=$&f, period=$&period, tstop=$&tstop, tstep=$&tstep

	alter i0 = $&ictrl
	tran $&tstep $&tstop
	wrdata ../plot_simulations/data/@schname\\\\_ictrl.txt i(i0) i(v1) vr1 vr2
	set appendwrite
	unset wr_vecnames
	let ictrl = ictrl * 1.05
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
C {isource.sym} 1100 -610 0 0 {name=I0 value=0}
C {devices/gnd.sym} 1100 -540 0 1 {name=l13 lab=VSS}
C {switched_cap_cell.sym} 1220 -660 0 0 {name=x1}
C {devices/gnd.sym} 1220 -540 0 1 {name=l1 lab=VSS}
C {lab_pin.sym} 1220 -740 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1300 -640 2 0 {name=p3 sig_type=std_logic lab=vr1
}
C {devices/vsource.sym} 1300 -590 0 0 {name=V1 value=0}
C {devices/vsource.sym} 1380 -590 0 0 {name=V2 value=0}
C {devices/gnd.sym} 1300 -540 0 1 {name=l3 lab=VSS}
C {devices/gnd.sym} 1380 -540 0 1 {name=l4 lab=VSS}
C {lab_pin.sym} 1380 -640 2 0 {name=p4 sig_type=std_logic lab=vr2
}
