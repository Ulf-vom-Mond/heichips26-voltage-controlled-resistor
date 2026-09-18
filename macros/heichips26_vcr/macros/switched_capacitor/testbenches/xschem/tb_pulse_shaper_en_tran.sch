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
N 1600 -620 1600 -600 {lab=GND}
N 1600 -720 1600 -680 {lab=vin2}
N 1600 -720 1720 -720 {lab=vin2}
N 1800 -800 1800 -780 {lab=VDD
}
N 1800 -620 1800 -600 {lab=GND
}
N 1680 -620 1680 -600 {lab=GND}
N 1680 -680 1720 -680 {lab=#net1}
N 1960 -720 1980 -720 {lab=nout1
}
N 1960 -680 1980 -680 {lab=out2
}
N 1940 -820 2080 -820 {lab=out1}
N 1880 -740 1940 -740 {lab=out1}
N 1940 -820 1940 -740 {lab=out1}
N 1880 -720 1960 -720 {lab=nout1}
N 1960 -800 1960 -720 {lab=nout1}
N 1960 -800 2080 -800 {lab=nout1}
N 1880 -660 1940 -660 {lab=nout2}
N 1940 -660 1940 -580 {lab=nout2}
N 1940 -580 2080 -580 {lab=nout2}
N 1880 -680 1960 -680 {lab=out2}
N 1960 -680 1960 -600 {lab=out2}
N 1960 -600 2080 -600 {lab=out2}
N 1940 -740 1980 -740 {lab=out1}
N 1940 -660 1980 -660 {lab=nout2}
N 2160 -880 2160 -860 {lab=VDD
}
N 2160 -740 2160 -720 {lab=GND
}
N 2160 -660 2160 -640 {lab=VDD
}
N 2060 -560 2060 -500 {lab=GND}
N 2060 -560 2080 -560 {lab=GND}
N 2060 -780 2060 -720 {lab=GND}
N 2060 -780 2080 -780 {lab=GND}
N 2260 -780 2260 -720 {lab=GND}
N 2240 -780 2260 -780 {lab=GND}
N 2260 -560 2260 -500 {lab=GND}
N 2240 -560 2260 -560 {lab=GND}
N 2160 -520 2160 -500 {lab=GND
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
plot out1+4 out2 nout1 nout2+4


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
C {devices/vsource.sym} 1600 -650 0 1 {name=vp2 value="PULSE(0 VDD \{tdel\} \{tr\} \{tf\} \{period\} \{period*2\})"
}
C {devices/lab_pin.sym} 1680 -720 1 0 {name=l22 sig_type=std_logic lab=vin2}
C {devices/gnd.sym} 1600 -600 0 0 {name=l26 lab=GND}
C {devices/code_shown.sym} 1960 -1410 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {vdd.sym} 1800 -800 0 0 {name=l5 lab=VDD
}
C {devices/gnd.sym} 1800 -600 0 0 {name=l6 lab=GND
w=n_w
}
C {pulse_shaper_en.sym} 1800 -700 0 0 {name=x1}
C {devices/vsource.sym} 1680 -650 0 1 {name=vdis value=3.3
}
C {devices/gnd.sym} 1680 -600 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 1980 -740 0 1 {name=l15 sig_type=std_logic lab=out1
}
C {devices/lab_pin.sym} 1980 -720 0 1 {name=l1 sig_type=std_logic lab=nout1
}
C {devices/lab_pin.sym} 1980 -660 0 1 {name=l17 sig_type=std_logic lab=nout2
}
C {devices/lab_pin.sym} 1980 -680 0 1 {name=l18 sig_type=std_logic lab=out2
}
C {transmission_gate.sym} 2160 -800 0 0 {name=x2
}
C {transmission_gate.sym} 2160 -580 0 0 {name=x6
}
C {vdd.sym} 2160 -880 0 0 {name=l8 lab=VDD
}
C {devices/gnd.sym} 2160 -720 0 0 {name=l9 lab=GND
w=n_w
}
C {vdd.sym} 2160 -660 0 0 {name=l10 lab=VDD
}
C {devices/gnd.sym} 2060 -500 0 0 {name=l11 lab=GND
w=n_w
}
C {devices/gnd.sym} 2060 -720 0 0 {name=l12 lab=GND
w=n_w
}
C {devices/gnd.sym} 2260 -720 0 0 {name=l13 lab=GND
w=n_w
}
C {devices/gnd.sym} 2260 -500 0 0 {name=l14 lab=GND
w=n_w
}
C {devices/gnd.sym} 2160 -500 0 0 {name=l16 lab=GND
w=n_w
}
