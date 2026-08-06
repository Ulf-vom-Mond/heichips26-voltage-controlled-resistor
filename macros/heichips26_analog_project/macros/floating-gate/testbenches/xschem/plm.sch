v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -25280 8120 -25280 8150 {lab=GND}
N -25280 8030 -25280 8060 {lab=vres}
N -25280 8030 -25240 8030 {lab=vres}
N -25360 8120 -25360 8150 {lab=GND}
N -25360 7990 -25360 8060 {lab=vcon}
N -25430 8120 -25430 8150 {lab=GND}
N -25430 7920 -25430 8060 {lab=vdd}
N -25360 7990 -25300 7990 {lab=vcon}
N -25240 7990 -25140 7990 {lab=CON}
N -25430 7920 -25350 7920 {lab=vdd}
N -25180 8030 -25140 8030 {lab=RES}
N -24800 8050 -24800 8250 {lab=GND}
N -24800 7950 -24800 7990 {lab=RES}
N -24890 8020 -24800 8020 {lab=GND}
N -24800 7950 -24720 7950 {lab=RES}
N -24800 7910 -24800 7950 {lab=RES}
N -24720 7950 -24720 8020 {lab=RES}
N -24760 8020 -24720 8020 {lab=RES}
N -24720 8020 -24660 8020 {lab=RES}
N -24660 8020 -24660 8120 {lab=RES}
N -24780 8150 -24700 8150 {lab=CON}
N -24660 8150 -24580 8150 {lab=GND}
N -24780 8250 -24660 8250 {lab=GND}
N -24660 8180 -24660 8250 {lab=GND}
N -24780 8250 -24780 8290 {lab=GND}
N -24800 8250 -24780 8250 {lab=GND}
N -25290 7920 -25140 7920 {lab=DD}
N -24890 8020 -24890 8040 {lab=GND}
C {devices/launcher.sym} -24970 7860 0 0 {name=h3
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} -26150 7690 0 0 {name=NGSPICE
only_toplevel=true 
value="
* .include ../../../netlist/pex/inverter_magic_pex_3.spice
.param temp=27
.options savecurrents klu method=gear reltol=1e-3 abstol=1e-15 gmin=1e-15
.control
save all
set appendwrite

* DC Sweep
* dc vcon 0.001 2 1m
* remzerovec

* plot v(vres)/i(Vres)
*plot v(VStage1)
*plot v(VStage2)



let vcc = 0.1
repeat 5
  alter vres $&vcc

  * DC Sweep
  * dc VS -1.5 1.5 1m
  dc vcon 0.001 1.5 1m
  remzerovec
  let vcc = vcc + 0.2
end
set appendwrite

* Plotting
plot dc1.v(vres)/(dc1.i(Vres)) dc2.v(vres)/(dc2.i(Vres)) dc3.v(vres)/(dc3.i(Vres)) dc4.v(vres)/(dc4.i(Vres)) dc5.v(vres)/(dc5.i(Vres))
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
C {devices/vsource.sym} -25280 8090 0 0 {name=vress value=1.5}
C {devices/lab_pin.sym} -25280 8050 2 0 {name=l9 sig_type=std_logic lab=vres}
C {devices/vsource.sym} -25360 8090 0 0 {name=vcons value=1.2}
C {devices/vsource.sym} -25430 8090 0 0 {name=vdds value=3.3}
C {devices/gnd.sym} -25360 8150 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -25360 8050 2 0 {name=l3 sig_type=std_logic lab=vcon}
C {devices/gnd.sym} -25430 8150 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -25430 8050 2 0 {name=l6 sig_type=std_logic lab=vdd}
C {ammeter.sym} -25270 7990 3 0 {name=Vcon savecurrent=true spice_ignore=0}
C {ammeter.sym} -25320 7920 3 0 {name=Vdd savecurrent=true spice_ignore=0}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -24780 8020 0 1 {name=M2
l=0.45u
w=10u
 ng=1
 m=1
  mm_ok=1
 model=sg13_lv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_lv_nmos.sym} -24680 8150 0 0 {name=M4
l=0.45u
w=10u
 ng=1
 m=1
  mm_ok=1
 model=sg13_lv_nmos
spiceprefix=X
}
C {bindkeys_cheatsheet.sym} -25270 7340 0 0 {}
C {devices/lab_pin.sym} -25140 7920 2 0 {name=l8 sig_type=std_logic lab=DD}
C {devices/lab_pin.sym} -25140 7990 2 0 {name=l11 sig_type=std_logic lab=CON}
C {devices/lab_pin.sym} -25140 8030 2 0 {name=l12 sig_type=std_logic lab=RES}
C {devices/lab_pin.sym} -24800 7910 2 0 {name=l13 sig_type=std_logic lab=RES}
C {devices/lab_pin.sym} -24750 8150 3 1 {name=l14 sig_type=std_logic lab=CON}
C {devices/gnd.sym} -24780 8290 0 0 {name=l15 lab=GND}
C {devices/gnd.sym} -24890 8040 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} -24580 8150 0 0 {name=l18 lab=GND}
