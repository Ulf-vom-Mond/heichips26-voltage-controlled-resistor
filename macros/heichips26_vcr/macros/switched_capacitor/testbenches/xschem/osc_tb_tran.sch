v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1640 -820 2440 -420 {flags=graph
y1=0.046592372
y2=0.99699231
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.00225
x2=0.00275
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
N 120 -380 120 -340 {lab=VSS}
N 120 -480 120 -440 {lab=VDD}
N 460 -880 460 -840 {lab=#net1}
N 220 -820 220 -740 {lab=VSS}
N 220 -880 240 -880 {lab=VSS}
N 500 -860 500 -840 {lab=#net2}
N 320 -880 340 -880 {lab=#net3}
N 400 -880 460 -880 {lab=#net1}
N 220 -820 240 -820 {lab=VSS}
N 220 -880 220 -820 {lab=VSS}
N 300 -820 320 -820 {lab=#net3}
N 320 -880 320 -820 {lab=#net3}
N 300 -880 320 -880 {lab=#net3}
N 500 -960 500 -920 {lab=#net4}
N 500 -1080 500 -1020 {lab=VDD}
C {devices/launcher.sym} 1700 -1410 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="VCR authors" rev=1.0 lock=true}
C {devices/code_shown.sym} 1590 -1240 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt

.include $::PDK_ROOT/$::PDK/libs.ref/sg13cmos5l_stdcell/spice/sg13cmos5l_stdcell.spice
"}
C {lab_pin.sym} 120 -340 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} -600 -1830 0 0 {name=NGSPICE1
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
.control

save all
set appendwrite

tran 10n 3000n
remzerovec

save all
set appendwrite

write @schname\\\\.raw
set appendwrite

* Plotting
*plot v(vsweep) 
*plot i(Vmeas)
*plot v(sw1)-4 v(sw2)-8
*print mean(v(vd) - v(vb))/mean(i(Vmeas))
plot i(Vi1) i(Vi2)

*quit
.endc
"}
C {devices/vsource.sym} 120 -410 0 0 {name=VDD value=3.3}
C {nmos_current_mirror2.sym} 480 -800 0 0 {name=x1}
C {lab_pin.sym} 500 -740 3 0 {name=p1 sig_type=std_logic lab=VSS}
C {isource.sym} 270 -880 3 0 {name=I0 value="PULSE(0 20u 0 10n 10n 500n 1000n)"
spice_ignore=true}
C {lab_pin.sym} 220 -740 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {ammeter.sym} 500 -890 0 1 {name=Vi1 savecurrent=true spice_ignore=0}
C {lab_pin.sym} 120 -480 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 540 -840 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 500 -1080 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {ammeter.sym} 370 -880 3 1 {name=Vi2 savecurrent=true spice_ignore=0}
C {isource.sym} 270 -820 3 0 {name=I1 value=20u}
C {devices/vsource.sym} 500 -990 0 0 {name=VDD1 value="PULSE(0 2 0 10n 10n 500n 1000n)"}
