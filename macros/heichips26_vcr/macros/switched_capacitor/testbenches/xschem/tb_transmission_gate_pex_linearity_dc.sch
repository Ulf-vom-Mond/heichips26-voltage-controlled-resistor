v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for linearity analysis - VCR} 740 -1730 0 0 1 1 {}
N 1800 -580 1800 -460 {lab=VDD}
N 1800 -400 1800 -380 {lab=GND}
N 2040 -240 2040 -220 {lab=GND}
N 1880 -400 1880 -380 {lab=GND}
N 2140 -440 2140 -380 {lab=GND}
N 2140 -580 2140 -560 {lab=VDD}
N 1880 -520 1880 -460 {lab=#net1}
N 1880 -520 2060 -520 {lab=#net1}
N 1960 -400 1960 -380 {lab=GND}
N 1960 -500 1960 -460 {lab=#net2}
N 1960 -500 2060 -500 {lab=#net2}
N 2040 -320 2040 -300 {lab=in}
N 2040 -480 2060 -480 {lab=in}
N 2240 -480 2240 -320 {lab=out}
N 2220 -480 2240 -480 {lab=out}
N 2040 -320 2110 -320 {lab=in}
N 2040 -480 2040 -320 {lab=in}
N 2170 -320 2240 -320 {lab=out}
C {devices/launcher.sym} 1700 -1410 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="VCR authors" rev=1.0 lock=true}
C {devices/code_shown.sym} 1960 -1410 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {devices/code_shown.sym} 50 -1560 0 0 {name=NGSPICE1
only_toplevel=true 
value="
.include ../../../netlist/pex/transmission_gate_magic_pex_3.spice

.param temp=27

* Derived timing parameters

.options savecurrents klu method=gear reltol=1e-3 abstol=1e-15 gmin=1e-15
.probe alli
.control

unset appendwrite
set wr_vecnames
set wr_singlescale

echo
echo # ------------------------------------------------------------------------------
echo # VCM sweep:
echo # ------------------------------------------------------------------------------
echo

dc vcm -1 3.3 0.05 vdm 0.1 2.1 0.5
let vcm = (out+in)/2
let R = (in-out)/i(vdm)
plot R vs vcm
wrdata ../plot_simulations/data/@schname\\\\_vcm.txt in out i(vdm)

echo
echo # ------------------------------------------------------------------------------
echo # VDM sweep:
echo # ------------------------------------------------------------------------------
echo

dc vdm -3.3 3.3 0.052 vcm 0.65 2.65 0.5
let vdm = out-in
let R = (in-out)/i(vdm)
plot R vs vdm
wrdata ../plot_simulations/data/@schname\\\\_vdm.txt in out i(vdm)

.endc
"}
C {devices/vsource.sym} 1800 -430 0 0 {name=VDD value=3.3}
C {devices/gnd.sym} 1800 -380 0 0 {name=l3 lab=GND}
C {vdd.sym} 1800 -580 0 0 {name=l7 lab=VDD}
C {devices/vsource.sym} 2040 -270 0 0 {name=vcm value=1.65}
C {devices/gnd.sym} 2040 -220 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 1880 -430 0 0 {name=vctrl value=3.3}
C {devices/gnd.sym} 1880 -380 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 2140 -380 0 0 {name=l10 lab=GND}
C {vdd.sym} 2140 -580 0 0 {name=l11 lab=VDD}
C {devices/vsource.sym} 1960 -430 0 0 {name=vnctrl value=0}
C {devices/gnd.sym} 1960 -380 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 2140 -320 1 0 {name=vdm value=1}
C {lab_pin.sym} 2040 -480 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_pin.sym} 2240 -480 0 1 {name=p2 sig_type=std_logic lab=out}
C {transmission_gate_pex.sym} 2140 -500 0 0 {name=x1}
