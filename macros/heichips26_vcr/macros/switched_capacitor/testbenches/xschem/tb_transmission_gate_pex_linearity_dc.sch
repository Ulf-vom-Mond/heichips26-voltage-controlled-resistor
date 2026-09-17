v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for linearity analysis - VCR} 740 -1730 0 0 1 1 {}
N 1440 -1120 1440 -1000 {lab=VDD}
N 1440 -940 1440 -920 {lab=GND}
N 1680 -780 1680 -760 {lab=GND}
N 1520 -940 1520 -920 {lab=GND}
N 1780 -980 1780 -920 {lab=GND}
N 1780 -1120 1780 -1100 {lab=VDD}
N 1520 -1060 1520 -1000 {lab=#net1}
N 1520 -1060 1700 -1060 {lab=#net1}
N 1600 -940 1600 -920 {lab=GND}
N 1600 -1040 1600 -1000 {lab=#net2}
N 1600 -1040 1700 -1040 {lab=#net2}
N 1680 -860 1680 -840 {lab=in}
N 1680 -1020 1700 -1020 {lab=in}
N 1880 -1020 1880 -860 {lab=out}
N 1860 -1020 1880 -1020 {lab=out}
N 1680 -860 1750 -860 {lab=in}
N 1680 -1020 1680 -860 {lab=in}
N 1810 -860 1880 -860 {lab=out}
C {devices/launcher.sym} 1560 -1120 0 0 {name=h2
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
C {devices/vsource.sym} 1440 -970 0 0 {name=VDD value=3.3}
C {devices/gnd.sym} 1440 -920 0 0 {name=l3 lab=GND}
C {vdd.sym} 1440 -1120 0 0 {name=l7 lab=VDD}
C {devices/vsource.sym} 1680 -810 0 0 {name=vcm value=1.65}
C {devices/gnd.sym} 1680 -760 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 1520 -970 0 0 {name=vctrl value=3.3}
C {devices/gnd.sym} 1520 -920 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 1780 -920 0 0 {name=l10 lab=GND}
C {vdd.sym} 1780 -1120 0 0 {name=l11 lab=VDD}
C {devices/vsource.sym} 1600 -970 0 0 {name=vnctrl value=0}
C {devices/gnd.sym} 1600 -920 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 1780 -860 1 0 {name=vdm value=1}
C {lab_pin.sym} 1680 -1020 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_pin.sym} 1880 -1020 0 1 {name=p2 sig_type=std_logic lab=out}
C {transmission_gate_pex.sym} 1780 -1040 0 0 {name=x1}
