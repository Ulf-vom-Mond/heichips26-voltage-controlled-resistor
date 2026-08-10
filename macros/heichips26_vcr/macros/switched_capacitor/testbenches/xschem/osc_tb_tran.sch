v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1640 -820 2440 -420 {flags=graph
y1=1.1870723
y2=2.1374723
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0015
x2=0.0035
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(vmeas)
color=4
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
autoload=0}
T {Testbench for transient analysis - VCR} 740 -1730 0 0 1 1 {}
N 380 -760 380 -640 {lab=VDD}
N 780 -620 780 -560 {lab=0}
N 780 -760 780 -740 {lab=VDD}
N 380 -560 380 -540 {lab=0}
N 540 -580 540 -560 {lab=0}
N 540 -660 540 -640 {lab=#net1}
N 540 -660 680 -660 {lab=#net1}
N 460 -700 460 -640 {lab=#net2}
N 460 -700 680 -700 {lab=#net2}
N 460 -580 460 -560 {lab=0}
N 540 -560 780 -560 {lab=0}
N 460 -560 540 -560 {lab=0}
N 380 -560 460 -560 {lab=0}
N 380 -580 380 -560 {lab=0}
N 880 -700 900 -700 {lab=out1}
N 880 -680 900 -680 {lab=out2}
C {devices/launcher.sym} 1700 -1400 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="VCR authors" rev=1.0 lock=true}
C {devices/code_shown.sym} 1590 -1250 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
.lib cornerCAP.lib cap_typ

.include $::PDK_ROOT/$::PDK/libs.ref/sg13cmos5l_stdcell/spice/sg13cmos5l_stdcell.spice
"}
C {devices/code_shown.sym} 20 -1650 0 0 {name=NGSPICE1
only_toplevel=true 
value="
* .include ../../../netlist/pex/inverter_magic_pex_3.spice
.param VDD=3.3
.csparam VDD=VDD
.param Vcm=VDD/2
.csparam Vcm=Vcm
.param period=60n
.csparam period=period
.param temp=27
.options savecurrents klu method=gear reltol=1e-3 abstol=1e-15 gmin=1e-15
.probe alli
.control

save all
set appendwrite

tran 10n 0.5u
remzerovec

save all
set appendwrite

write @schname\\\\.raw
set appendwrite

* Plotting
*plot g1 out1 g2 out2
*plot xm12:d#branch xm8:d#branch xc1#branch xc2#branch
plot out1 out2

*quit
.endc
"}
C {devices/vsource.sym} 380 -610 0 0 {name=VDD value=3.3}
C {lab_pin.sym} 380 -760 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {isource.sym} 460 -610 0 0 {name=I1 value=20u
}
C {lab_pin.sym} 780 -760 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} 380 -540 0 0 {name=l1 lab=0}
C {isource.sym} 540 -610 0 0 {name=I3 value="PULSE(0 1m 10n 1n 1n 10n 20n 1)"
}
C {osc.sym} 780 -680 0 0 {name=x1}
C {lab_pin.sym} 900 -700 0 1 {name=p3 sig_type=std_logic lab=out1}
C {lab_pin.sym} 900 -680 0 1 {name=p4 sig_type=std_logic lab=out2}
