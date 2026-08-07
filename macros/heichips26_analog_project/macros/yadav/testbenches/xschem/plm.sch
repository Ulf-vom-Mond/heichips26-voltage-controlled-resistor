v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -24960 8130 -24960 8180 {lab=GND}
N -25080 7850 -25080 7870 {lab=#net1}
N -25180 8030 -25140 8030 {lab=#net2}
N -24860 8030 -24860 8050 {lab=#net3}
N -25180 8030 -25180 8050 {lab=#net2}
N -24860 8110 -24860 8120 {lab=#net4}
N -25180 8110 -25180 8120 {lab=#net5}
N -24860 8180 -24860 8190 {lab=GND}
N -25180 8180 -25180 8190 {lab=GND}
N -25270 7830 -25270 7840 {lab=GND}
N -25270 7740 -25270 7770 {lab=Vdif}
N -25080 7750 -25080 7790 {lab=GND}
N -25080 7750 -25050 7750 {lab=GND}
N -25050 7750 -25050 7760 {lab=GND}
N -25020 7850 -25020 7870 {lab=#net6}
N -25020 7750 -25020 7790 {lab=GND}
N -25020 7750 -24990 7750 {lab=GND}
N -24990 7750 -24990 7760 {lab=GND}
N -24900 8030 -24860 8030 {lab=#net3}
C {devices/launcher.sym} -24670 7920 0 0 {name=h3
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} -26690 7670 0 0 {name=NGSPICE
only_toplevel=true 
value="
* .include ../../../netlist/pex/inverter_magic_pex_3.spice
.param temp=27
.options savecurrents klu method=gear reltol=1e-3 abstol=1e-15 gmin=1e-15 rshunt=1e10
.control
.param Vcm=1.25
.csparam Vcm=Vcm
save all
set appendwrite

* DC Sweep
* dc vcon 1 1.5 1m
* remzerovec

* plot v(vres)/i(Vres)
*plot v(VStage1)
*plot v(VStage2)


let vcc = 0.2
let Vcm = 1.65

repeat 5
  alter vcons $&vcc

  * DC Sweep
  dc Vdifs -1.6 1.6 1m
  remzerovec
  let vcc = vcc + 0.3
end
set appendwrite

*plot dc1.v(V1)/(dc1.i(Vres)) dc2.v(V1)/(dc2.i(Vres)) dc3.v(V1)/(dc3.i(Vres)) dc4.v(V1)/(dc4.i(Vres)) dc5.v(V1)/(dc5.i(Vres))

*plot dc1.v(V1)/(dc1.i(Vres6)) dc2.v(V1)/(dc2.i(Vres6)) dc3.v(V1)/(dc3.i(Vres6)) dc4.v(V1)/(dc4.i(Vres6)) dc5.v(V1)/(dc5.i(Vres6))

plot (dc1.i(Vres)) (dc2.i(Vres)) (dc3.i(Vres)) (dc4.i(Vres)) (dc5.i(Vres))

plot (dc1.i(Vres6)) (dc2.i(Vres6)) (dc3.i(Vres6)) (dc4.i(Vres6))  (dc5.i(Vres6))


* Write Data
unset appendwrite
set wr_vecnames
set wr_singlescale

*quit
.endc
"}
C {ammeter.sym} -25180 8080 2 0 {name=Vres savecurrent=true spice_ignore=0}
C {devices/code_shown.sym} -26710 7500 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {devices/vsource.sym} -25080 7820 2 0 {name=vdds value=3.3}
C {devices/gnd.sym} -25050 7760 0 0 {name=l5 lab=GND}
C {ammeter.sym} -25080 7900 0 0 {name=Vdd savecurrent=true spice_ignore=0}
C {devices/gnd.sym} -24960 8180 0 0 {name=l32 lab=GND}
C {ammeter.sym} -24860 8080 0 1 {name=Vres6 savecurrent=true spice_ignore=0}
C {vsource_arith.sym} -25180 8150 0 0 {name=E1 VOL="\{Vcm\} + v(Vdif)/2"}
C {vsource_arith.sym} -24860 8150 0 0 {name=E2 VOL="\{Vcm\} - v(Vdif)/2"}
C {devices/gnd.sym} -25180 8190 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -24860 8190 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -25270 7800 0 0 {name=Vdifs value=0}
C {devices/gnd.sym} -25270 7840 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -25270 7740 0 0 {name=l7 sig_type=std_logic lab=Vdif}
C {YadavVCR.sym} -25020 8030 0 0 {name=x1}
C {devices/vsource.sym} -25020 7820 2 0 {name=vcons value=0}
C {devices/gnd.sym} -24990 7760 0 0 {name=l8 lab=GND}
C {ammeter.sym} -25020 7900 0 0 {name=Vcon savecurrent=true spice_ignore=0}
