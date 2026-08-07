v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -25360 8120 -25360 8150 {lab=GND}
N -25360 8010 -25360 8060 {lab=#net1}
N -25160 7840 -25130 7840 {lab=GND}
N -25060 7920 -25060 7980 {lab=#net2}
N -25060 8080 -25060 8130 {lab=GND}
N -25070 7840 -25060 7840 {lab=#net3}
N -25060 7840 -25060 7860 {lab=#net3}
N -25160 8030 -25140 8030 {lab=#net4}
N -24980 8030 -24960 8030 {lab=#net5}
N -24960 8030 -24960 8050 {lab=#net5}
N -25160 8030 -25160 8050 {lab=#net4}
N -24960 8110 -24960 8120 {lab=#net6}
N -25160 8110 -25160 8120 {lab=#net7}
N -24960 8180 -24960 8190 {lab=GND}
N -25160 8180 -25160 8190 {lab=GND}
N -25240 8010 -25140 8010 {lab=#net8}
N -25360 8010 -25300 8010 {lab=#net1}
N -25270 7830 -25270 7840 {lab=GND}
N -25270 7740 -25270 7770 {lab=Vdif}
C {devices/launcher.sym} -24960 7880 0 0 {name=h3
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} -26550 7710 0 0 {name=NGSPICE
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
  dc Vdifs -0.8 0.8 1m
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
C {ammeter.sym} -25160 8080 2 0 {name=Vres savecurrent=true spice_ignore=0}
C {devices/code_shown.sym} -26030 7480 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {devices/vsource.sym} -25360 8090 0 0 {name=vcons value=0}
C {devices/vsource.sym} -25100 7840 1 0 {name=vdds value=3.3}
C {devices/gnd.sym} -25360 8150 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -25160 7840 1 0 {name=l5 lab=GND}
C {ammeter.sym} -25270 8010 3 0 {name=Vcon savecurrent=true spice_ignore=0}
C {ammeter.sym} -25060 7890 0 0 {name=Vdd savecurrent=true spice_ignore=0}
C {bindkeys_cheatsheet.sym} -25270 7340 0 0 {}
C {yadav.sym} -25060 8030 0 0 {name=x1}
C {devices/gnd.sym} -25060 8130 0 0 {name=l32 lab=GND}
C {ammeter.sym} -24960 8080 0 1 {name=Vres6 savecurrent=true spice_ignore=0}
C {vsource_arith.sym} -25160 8150 0 0 {name=E1 VOL="\{Vcm\} + v(Vdif)/2"}
C {vsource_arith.sym} -24960 8150 0 0 {name=E2 VOL="\{Vcm\} - v(Vdif)/2"}
C {devices/gnd.sym} -25160 8190 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -24960 8190 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -25270 7800 0 0 {name=Vdifs value=0}
C {devices/gnd.sym} -25270 7840 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -25270 7740 0 0 {name=l7 sig_type=std_logic lab=Vdif}
