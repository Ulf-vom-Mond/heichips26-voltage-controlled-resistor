v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for transient analysis - Inverter} 740 -1730 0 0 1 1 {}
N 1300 -740 1300 -700 {lab=VDD}
N 1300 -640 1300 -600 {lab=GND}
N 1640 -620 1640 -600 {lab=GND}
N 1640 -700 1640 -680 {lab=vin2}
N 1640 -700 1720 -700 {lab=vin2}
N 1880 -720 1900 -720 {lab=nout1
}
N 1880 -740 1900 -740 {lab=out1
}
N 1880 -660 1900 -660 {lab=out2
}
N 1880 -680 1900 -680 {lab=nout2
}
N 1800 -800 1800 -780 {lab=VDD
}
N 1800 -620 1800 -600 {lab=GND
}
C {devices/code_shown.sym} 80 -1370 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param VDD=3.3
.csparam VDD=VDD
.param Vcm=VDD/2
.param temp=27
.param Cload=10p
.param Rload=1k

.param period = 4n
.param tdel   = \{period/2\}
.param ton    = \{period*2\}
.csparam tstop  = \{2.5*period\}
.csparam tstep  = \{period/100\}
.param tr     = \{period/100\}
.param tf     = \{period/100\}

.options savecurrents klu method=gear reltol=1e-4 abstol=1e-15 gmin=1e-15
.control

save all

* Transient Analysis
tran \{$&tstep\} \{$&tstop\}
write @schname\\\\.raw

* Plotting
plot vin2
plot out1+4 out2+4 nout1 nout2


*quit
.endc
"}
C {devices/launcher.sym} 1700 -1160 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1700 -1350 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/vsource.sym} 1300 -670 0 0 {name=VDD value=\{VDD\}}
C {devices/gnd.sym} 1300 -600 0 0 {name=l3 lab=GND}
C {vdd.sym} 1300 -740 0 0 {name=l7 lab=VDD}
C {devices/vsource.sym} 1640 -650 0 1 {name=vp2 value="PULSE(0 VDD \{tdel\} \{tr\} \{tf\} \{period\} \{period*2\})"
}
C {devices/lab_pin.sym} 1680 -700 1 0 {name=l22 sig_type=std_logic lab=vin2}
C {devices/gnd.sym} 1640 -600 0 0 {name=l26 lab=GND}
C {devices/code_shown.sym} 1960 -1410 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {devices/lab_pin.sym} 1900 -740 0 1 {name=l15 sig_type=std_logic lab=out1
}
C {devices/lab_pin.sym} 1900 -720 0 1 {name=l1 sig_type=std_logic lab=nout1
}
C {devices/lab_pin.sym} 1900 -680 0 1 {name=l17 sig_type=std_logic lab=nout2
}
C {devices/lab_pin.sym} 1900 -660 0 1 {name=l18 sig_type=std_logic lab=out2
}
C {pulse_shaper.sym} 1800 -700 0 0 {name=x1
}
C {vdd.sym} 1800 -800 0 0 {name=l5 lab=VDD
}
C {devices/gnd.sym} 1800 -600 0 0 {name=l6 lab=GND
w=n_w
}
