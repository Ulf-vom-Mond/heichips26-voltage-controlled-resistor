v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -25270 7920 -25270 7940 {lab=vtest}
N -25100 7950 -25100 8000 {lab=#net1}
N -25060 7950 -25060 8030 {lab=#net1}
N -25100 7950 -25060 7950 {lab=#net1}
N -25100 7920 -25100 7950 {lab=#net1}
N -25100 8060 -25100 8120 {lab=GND}
N -25170 8030 -25100 8030 {lab=GND}
N -25170 8030 -25170 8120 {lab=GND}
N -25170 8120 -25100 8120 {lab=GND}
N -25270 7920 -25240 7920 {lab=vtest}
N -25180 7920 -25100 7920 {lab=#net1}
N -25270 8000 -25270 8030 {lab=GND}
C {devices/launcher.sym} -24960 8070 0 0 {name=h3
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} -26020 7690 0 0 {name=NGSPICE
only_toplevel=true 
value="
* .include ../../../netlist/pex/inverter_magic_pex_3.spice
.param temp=27
.options savecurrents klu method=gear reltol=1e-3 abstol=1e-15 gmin=1e-15
.control
save all
set appendwrite

* DC Sweep
dc Vtest 0.07 1.5 1m
remzerovec

plot v(Vtest)/(i(Vmeas))

* Write Data
unset appendwrite
set wr_vecnames
set wr_singlescale

*quit
.endc
"}
C {devices/gnd.sym} -25100 8120 0 0 {name=l10 lab=GND}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} -25080 8030 0 1 {name=M5
l=4u
w=7u
ng=1
m=1
mm_ok=1
model=sg13_hv_nmos
spiceprefix=X
}
C {devices/gnd.sym} -25270 8030 0 0 {name=l1 lab=GND}
C {ammeter.sym} -25210 7920 3 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/code_shown.sym} -26030 7480 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {devices/vsource.sym} -25270 7970 0 0 {name=Vtest value=0}
C {devices/lab_pin.sym} -25270 7920 0 0 {name=l9 sig_type=std_logic lab=vtest}
