v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for transient analysis - VCR} 740 -1730 0 0 1 1 {}
N 1040 -710 1040 -670 {lab=VDD}
N 1040 -610 1040 -570 {lab=GND}
N 570 -470 570 -450 {lab=vd}
N 510 -470 570 -470 {lab=vd}
N 580 -610 580 -580 {lab=GND}
N 580 -700 580 -670 {lab=vsweep}
N 570 -470 620 -470 {lab=vd}
N 680 -470 740 -470 {lab=#net1}
N 710 -610 710 -580 {lab=GND}
N 710 -700 710 -670 {lab=vc_p}
N 690 -510 740 -510 {lab=vc_p}
N 1100 -470 1120 -470 {lab=vb}
N 850 -390 850 -370 {lab=GND}
N 850 -570 850 -550 {lab=VDD}
N 570 -390 570 -370 {lab=GND}
N 1100 -470 1100 -450 {lab=vb}
N 960 -470 1100 -470 {lab=vb}
N 1100 -390 1100 -370 {lab=GND}
C {devices/launcher.sym} 1190 -540 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="VCR authors" rev=1.0 lock=true}
C {devices/vsource.sym} 1040 -640 0 0 {name=VDD value=\{VDD\}}
C {devices/gnd.sym} 1040 -570 0 0 {name=l3 lab=GND}
C {vdd.sym} 1040 -710 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 1120 -470 0 1 {name=l12 sig_type=std_logic lab=vb}
C {devices/lab_pin.sym} 510 -470 0 0 {name=l22 sig_type=std_logic lab=vd}
C {devices/gnd.sym} 570 -370 0 0 {name=l26 lab=GND}
C {devices/code_shown.sym} 1960 -1410 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {devices/gnd.sym} 1100 -370 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 580 -640 0 0 {name=VS value=3.3}
C {devices/gnd.sym} 580 -580 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 580 -700 0 0 {name=l5 sig_type=std_logic lab=vsweep}
C {devices/code_shown.sym} 90 -1550 0 0 {name=NGSPICE
only_toplevel=true 
value="
* .include ../../../netlist/pex/inverter_magic_pex_3.spice
.param VDD=1.5
.csparam VDD=VDD
.param Vcm=VDD/2
.csparam Vcm=Vcm
.param temp=27
.options savecurrents klu method=gear reltol=1e-3 abstol=1e-15 gmin=1e-15
.control
let vcc = 1.3

save all
set appendwrite



repeat 5
  alter vc $&vcc

  * DC Sweep
  * dc VS -1.5 1.5 1m
  dc VS 0.001 1.5 1m
  remzerovec
  let vcc = vcc + 0.3
end
write @schname\\\\.raw
set appendwrite

* Plotting
plot dc1.v(vsweep)/(dc1.i(Vmeas)) dc2.v(vsweep)/(dc2.i(Vmeas)) dc3.v(vsweep)/(dc3.i(Vmeas)) dc4.v(vsweep)/(dc4.i(Vmeas)) dc5.v(vsweep)/(dc5.i(Vmeas))


* Write Data
unset appendwrite
set wr_vecnames
set wr_singlescale

*quit
.endc
"}
C {ammeter.sym} 650 -470 3 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {vsource_arith.sym} 570 -420 0 0 {name=E2 VOL="\{Vcm\}+V(vsweep)/2"}
C {vsource_arith.sym} 1100 -420 0 0 {name=E3 VOL="\{Vcm\}-V(vsweep)/2"}
C {devices/vsource.sym} 710 -640 0 0 {name=vc value=0}
C {devices/gnd.sym} 710 -580 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 710 -700 0 0 {name=l8 sig_type=std_logic lab=vc_p}
C {devices/lab_pin.sym} 690 -510 0 0 {name=l9 sig_type=std_logic lab=vc_p}
C {devices/gnd.sym} 850 -370 0 0 {name=l10 lab=GND}
C {vdd.sym} 850 -570 0 0 {name=l11 lab=VDD}
C {/home/raiku/k/heichips26-voltage-controlled-resistor/macros/heichips26_analog_project/macros/floating-gate/schematic/xschem/floating-gate.sym} 850 -470 0 0 {name=x1}
C {res.sym} 1190 -310 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1280 -330 0 0 {name=l13 lab=GND}
C {vdd.sym} 1280 -450 0 0 {name=l14 lab=VDD}
