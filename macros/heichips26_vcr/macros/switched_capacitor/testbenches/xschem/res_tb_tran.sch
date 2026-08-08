v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1640 -820 2440 -420 {flags=graph
y1=0.23667236
y2=1.1870723
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.005
x2=0
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
N 120 -480 120 -440 {lab=VDD}
N 120 -380 120 -340 {lab=GND}
N 1100 -480 1100 -420 {lab=vd}
N 1100 -480 1120 -480 {lab=vd}
N 1100 -360 1100 -340 {lab=GND}
N 940 -440 960 -440 {lab=vb}
N 940 -440 940 -420 {lab=vb}
N 940 -360 940 -340 {lab=GND}
N 320 -380 320 -370 {lab=GND}
N 1060 -480 1100 -480 {lab=vd}
N 740 -250 740 -220 {lab=GND}
N 900 -440 940 -440 {lab=vb}
N 840 -540 840 -520 {lab=VDD}
N 840 -400 840 -360 {lab=GND}
N 900 -480 1000 -480 {lab=#net1}
N 320 -480 320 -460 {lab=vsweep}
N 240 -400 240 -380 {lab=GND}
N 240 -380 320 -380 {lab=GND}
N 320 -400 320 -380 {lab=GND}
N 240 -480 240 -460 {lab=vsweep}
N 240 -480 320 -480 {lab=vsweep}
N 320 -520 320 -480 {lab=vsweep}
N 460 -250 460 -220 {lab=GND}
N 740 -440 780 -440 {lab=sw2}
N 460 -460 460 -310 {lab=sw1}
N 460 -460 780 -460 {lab=sw1}
N 740 -440 740 -310 {lab=sw2}
C {devices/launcher.sym} 1700 -1410 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="VCR authors" rev=1.0 lock=true}
C {devices/vsource.sym} 120 -410 0 0 {name=VDD value=\{VDD\}}
C {devices/gnd.sym} 120 -340 0 0 {name=l3 lab=GND}
C {vdd.sym} 120 -480 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 960 -440 0 1 {name=l12 sig_type=std_logic lab=vb}
C {devices/lab_pin.sym} 1120 -480 0 1 {name=l22 sig_type=std_logic lab=vd}
C {devices/gnd.sym} 1100 -340 0 1 {name=l26 lab=GND}
C {devices/gnd.sym} 940 -340 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 320 -430 0 0 {name=VS value="PWL(0 -3.3 0.1m VDD)"
spice_ignore=true}
C {devices/gnd.sym} 320 -370 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 320 -520 0 0 {name=l5 sig_type=std_logic lab=vsweep}
C {devices/code_shown.sym} 90 -1550 0 0 {name=NGSPICE
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

tran 20p 300n
remzerovec

save all
set appendwrite

write @schname\\\\.raw
set appendwrite

* Plotting
*plot v(vsweep) 
*plot i(Vmeas)
*plot v(sw1)-4 v(sw2)-8
print mean(v(vd) - v(vb))/mean(i(Vmeas))

*quit
.endc
"}
C {ammeter.sym} 1030 -480 1 1 {name=Vmeas savecurrent=true spice_ignore=0}
C {vsource_arith.sym} 1100 -390 0 0 {name=E2 VOL="\{Vcm\}+V(vsweep)/2"}
C {vsource_arith.sym} 940 -390 0 0 {name=E3 VOL="\{Vcm\}-V(vsweep)/2"}
C {devices/vsource.sym} 460 -280 0 0 {name=vc value="PULSE(0 3.3 \{0.01*period\} 100p 100p \{0.48*period\} \{period\})"}
C {devices/gnd.sym} 740 -220 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 840 -360 0 0 {name=l10 lab=GND}
C {vdd.sym} 840 -540 0 0 {name=l11 lab=VDD}
C {switched_cap_cell.sym} 840 -460 0 0 {name=x1}
C {devices/vsource.sym} 240 -430 0 0 {name=VS1 value=1}
C {devices/code_shown.sym} 1590 -1240 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
.lib cornerCAP.lib cap_typ

.include $::PDK_ROOT/$::PDK/libs.ref/sg13cmos5l_stdcell/spice/sg13cmos5l_stdcell.spice
"}
C {devices/gnd.sym} 460 -220 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 460 -400 0 1 {name=l8 sig_type=std_logic lab=sw1}
C {devices/lab_pin.sym} 740 -400 0 1 {name=l13 sig_type=std_logic lab=sw2}
C {devices/vsource.sym} 740 -280 0 0 {name=vc1 value="PULSE(0 3.3 \{-0.01*period\} 100p 100p \{0.52*period\} \{period\})"}
