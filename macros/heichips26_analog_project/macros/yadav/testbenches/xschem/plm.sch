v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -25280 8120 -25280 8150 {lab=GND}
N -25280 8030 -25280 8060 {lab=#net1}
N -25280 8030 -25240 8030 {lab=#net1}
N -25360 8120 -25360 8150 {lab=GND}
N -25360 7990 -25360 8060 {lab=#net2}
N -25430 8120 -25430 8150 {lab=GND}
N -25430 7920 -25430 8060 {lab=#net3}
N -25360 7990 -25300 7990 {lab=#net2}
N -25240 7990 -25140 7990 {lab=#net4}
N -25430 7920 -25350 7920 {lab=#net3}
N -25180 8030 -25140 8030 {lab=#net5}
N -24950 8200 -24950 8230 {lab=GND}
N -24980 8030 -24950 8030 {lab=#net6}
N -24950 8030 -24950 8080 {lab=#net6}
N -25140 7990 -25140 8010 {lab=#net4}
N -25060 7920 -25060 7980 {lab=#net7}
N -25290 7920 -25060 7920 {lab=#net7}
N -25060 8080 -25060 8130 {lab=GND}
C {devices/launcher.sym} -24960 7880 0 0 {name=h3
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} -26760 7660 0 0 {name=NGSPICE
only_toplevel=true 
value="
* .include ../../../netlist/pex/inverter_magic_pex_3.spice
.param temp=27
.options savecurrents klu method=gear reltol=1e-3 abstol=1e-15 gmin=1e-15 rshunt=1e10
.control
save all
set appendwrite

* DC Sweep
* dc vcon 1 1.5 1m
* remzerovec

* plot v(vres)/i(Vres)
*plot v(VStage1)
*plot v(VStage2)



let vcc = 0.4
repeat 5
  alter vcons $&vcc

  * DC Sweep
  dc vress 0.3 3.3 1m
  remzerovec
  let vcc = vcc + 0.15
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
C {devices/gnd.sym} -25280 8150 0 0 {name=l1 lab=GND}
C {ammeter.sym} -25210 8030 3 0 {name=Vres savecurrent=true spice_ignore=0}
C {devices/code_shown.sym} -26030 7480 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {devices/vsource.sym} -25280 8090 0 0 {name=vress value=0}
C {devices/vsource.sym} -25360 8090 0 0 {name=vcons value=0}
C {devices/vsource.sym} -25430 8090 0 0 {name=vdds value=3.3}
C {devices/gnd.sym} -25360 8150 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -25430 8150 0 0 {name=l5 lab=GND}
C {ammeter.sym} -25270 7990 3 0 {name=Vcon savecurrent=true spice_ignore=0}
C {ammeter.sym} -25320 7920 3 0 {name=Vdd savecurrent=true spice_ignore=0}
C {bindkeys_cheatsheet.sym} -25270 7340 0 0 {}
C {devices/gnd.sym} -24950 8230 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -24950 8170 0 0 {name=vress1 value=1.25}
C {yadav.sym} -25060 8030 0 0 {name=x1}
C {devices/gnd.sym} -25060 8130 0 0 {name=l32 lab=GND}
C {ammeter.sym} -24950 8110 0 1 {name=Vres6 savecurrent=true spice_ignore=0}
