v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1640 -820 2440 -420 {flags=graph
y1=0.858
y2=1.518
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
N 680 -610 680 -580 {lab=GND}
N 680 -700 680 -670 {lab=vc_p}
N 680 -700 740 -700 {lab=vc_p}
N 900 -700 920 -700 {lab=out1}
N 900 -680 920 -680 {lab=out2}
C {devices/launcher.sym} 1700 -1410 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="VCR authors" rev=1.0 lock=true}
C {devices/code_shown.sym} 90 -1550 0 0 {name=NGSPICE
only_toplevel=true 
value="
* .include ../../../netlist/pex/inverter_magic_pex_3.spice
.param VDD=3.3
.csparam VDD=VDD
.param temp=27
.options savecurrents klu method=gear reltol=1e-3 abstol=1e-15 gmin=1e-15
.control

save all
set appendwrite

* DC Sweep
tran 100p 1u
remzerovec
end
write @schname\\\\.raw
set appendwrite

* Plotting
plot v(out1) v(out2)+4 v(vc_p)-4

*quit
.endc
"}
C {devices/vsource.sym} 680 -640 0 0 {name=vc value="PULSE(0 VDD 0 1p 1p 0.5u 1u)"}
C {devices/gnd.sym} 680 -580 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 680 -700 0 0 {name=l8 sig_type=std_logic lab=vc_p}
C {devices/code_shown.sym} 1590 -1240 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt

.include $::PDK_ROOT/$::PDK/libs.ref/sg13cmos5l_stdcell/spice/sg13cmos5l_stdcell.spice
"}
C {deadtime_generator.sym} 820 -700 0 0 {name=x4}
C {lab_pin.sym} 920 -700 0 1 {name=p1 sig_type=std_logic lab=out1}
C {lab_pin.sym} 920 -680 0 1 {name=p2 sig_type=std_logic lab=out2}
