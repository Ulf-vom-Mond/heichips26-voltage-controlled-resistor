v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for transient analysis - Inverter} 740 -1730 0 0 1 1 {}
N 880 -780 880 -740 {lab=VDD}
N 880 -680 880 -640 {lab=GND}
N 2060 -820 2140 -820 {lab=vout}
N 1420 -900 1420 -880 {lab=GND}
N 1940 -820 1940 -800 {lab=vout}
N 2060 -820 2060 -800 {lab=vout}
N 1940 -820 2060 -820 {lab=vout}
N 1940 -740 1940 -720 {lab=GND}
N 2060 -740 2060 -720 {lab=GND}
N 1420 -1100 1420 -1080 {lab=GND}
N 1420 -1180 1460 -1180 {lab=#net1}
N 1420 -980 1420 -960 {lab=#net2}
N 1420 -980 1460 -980 {lab=#net2}
N 1420 -1180 1420 -1160 {lab=#net1}
N 1560 -980 1700 -980 {lab=vin2}
N 1500 -1140 1500 -1120 {lab=GND}
N 1500 -1240 1500 -1220 {lab=VDD}
N 1500 -1040 1500 -1020 {lab=VDD}
N 1500 -940 1500 -920 {lab=GND}
N 2180 -880 2180 -860 {lab=VDD}
N 2180 -780 2180 -760 {lab=GND}
N 1560 -1180 1720 -1180 {lab=vin1}
N 1720 -850 1740 -850 {lab=vin1}
N 1700 -830 1740 -830 {lab=vin2}
N 1700 -980 1700 -830 {lab=vin2}
N 1720 -1180 1720 -850 {lab=vin1}
N 1820 -760 1820 -740 {lab=GND}
N 1820 -900 1820 -880 {lab=VDD}
N 1900 -820 1940 -820 {lab=vout}
N 1560 -660 1700 -660 {lab=vin3}
N 1560 -460 1720 -460 {lab=vin4}
N 1720 -790 1740 -790 {lab=vin4}
N 1700 -810 1740 -810 {lab=vin3}
N 1700 -810 1700 -660 {lab=vin3}
N 1720 -790 1720 -460 {lab=vin4}
N 1420 -580 1420 -560 {lab=GND}
N 1420 -660 1420 -640 {lab=#net3}
N 1420 -660 1460 -660 {lab=#net3}
N 1500 -720 1500 -700 {lab=VDD}
N 1500 -620 1500 -600 {lab=GND}
N 1420 -380 1420 -360 {lab=GND}
N 1420 -460 1420 -440 {lab=#net4}
N 1420 -460 1460 -460 {lab=#net4}
N 1500 -520 1500 -500 {lab=VDD}
N 1500 -420 1500 -400 {lab=GND}
C {devices/code_shown.sym} 80 -1370 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param VDD=3.3
.csparam VDD=VDD
.param Vcm=VDD/2
.param temp=27
.param Cload=10p
.param Rload=1k

.param period = 1n
.param tdel   = \{period/2\}
.param ton    = \{period*2\}
.csparam tstop  = \{17*period\}
.csparam tstep  = \{period/100\}
.param tr     = \{period/100\}
.param tf     = \{period/100\}

.options savecurrents klu method=gear reltol=1e-4 abstol=1e-15 gmin=1e-15
.control

save all

* Operating Point Analysis
op
remzerovec
write @schname\\\\.raw
set appendwrite

* Transient Analysis
tran \{$&tstep\} \{$&tstop\}
write @schname\\\\.raw

* Plotting
plot vin1+16 vin2+12 vin3+8 vin4+4 vout

* Write Data
unset appendwrite
set wr_vecnames
set wr_singlescale
wrdata ../plot_simulations/data/@schname\\\\.txt v(vin1) v(vin2) v(vout)

*quit
.endc
"}
C {devices/launcher.sym} 1980 -920 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1700 -1350 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/vsource.sym} 880 -710 0 0 {name=VDD value=\{VDD\}}
C {devices/gnd.sym} 880 -640 0 0 {name=l3 lab=GND}
C {vdd.sym} 880 -780 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 1940 -820 3 1 {name=l12 sig_type=std_logic lab=vout}
C {devices/vsource.sym} 1420 -930 0 1 {name=vp2 value="PULSE(0 VDD \{tdel\} \{tr\} \{tf\} \{period*4\} \{period*8\})"
}
C {devices/lab_pin.sym} 1680 -980 1 0 {name=l22 sig_type=std_logic lab=vin2}
C {devices/gnd.sym} 1420 -880 0 0 {name=l26 lab=GND}
C {devices/code_shown.sym} 1960 -1410 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {capa.sym} 1940 -770 0 0 {name=C1
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"
spice_ignore=true}
C {res.sym} 2060 -770 0 0 {name=R1
value=\{Rload\}
footprint=1206
device=resistor
m=1
spice_ignore=true}
C {devices/gnd.sym} 1940 -720 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 2060 -720 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 1420 -1130 0 1 {name=vp1 value="PULSE(0 VDD \{tdel\} \{tr\} \{tf\} \{period*8\} \{period*16\})"
}
C {devices/lab_pin.sym} 1680 -1180 1 0 {name=l1 sig_type=std_logic lab=vin1}
C {devices/gnd.sym} 1420 -1080 0 0 {name=l4 lab=GND}
C {hv_inverter_40u.sym} 1500 -1180 0 0 {name=x1
}
C {hv_inverter_40u.sym} 1500 -980 0 0 {name=x2
}
C {devices/gnd.sym} 1500 -920 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 1500 -1120 0 0 {name=l14 lab=GND}
C {vdd.sym} 1500 -1240 0 0 {name=l15 lab=VDD}
C {vdd.sym} 1500 -1040 0 0 {name=l16 lab=VDD}
C {hv_inverter_40u.sym} 2180 -820 0 0 {name=x3
}
C {devices/gnd.sym} 2180 -760 0 0 {name=l17 lab=GND}
C {vdd.sym} 2180 -880 0 0 {name=l18 lab=VDD}
C {devices/gnd.sym} 1820 -740 0 0 {name=l8 lab=GND}
C {vdd.sym} 1820 -900 0 0 {name=l9 lab=VDD}
C {hv_nor4.sym} 1820 -820 0 0 {name=x5}
C {devices/vsource.sym} 1420 -610 0 1 {name=vp3 value="PULSE(0 VDD \{tdel\} \{tr\} \{tf\} \{period*2\} \{period*4\})"
}
C {devices/lab_pin.sym} 1680 -660 1 0 {name=l10 sig_type=std_logic lab=vin3}
C {devices/gnd.sym} 1420 -560 0 0 {name=l11 lab=GND}
C {hv_inverter_40u.sym} 1500 -660 0 0 {name=x4
}
C {devices/gnd.sym} 1500 -600 0 0 {name=l19 lab=GND}
C {vdd.sym} 1500 -720 0 0 {name=l20 lab=VDD}
C {devices/vsource.sym} 1420 -410 0 1 {name=vp4 value="PULSE(0 VDD \{tdel\} \{tr\} \{tf\} \{period\} \{period*2\})"
}
C {devices/lab_pin.sym} 1680 -460 1 0 {name=l21 sig_type=std_logic lab=vin4}
C {devices/gnd.sym} 1420 -360 0 0 {name=l23 lab=GND}
C {hv_inverter_40u.sym} 1500 -460 0 0 {name=x6
}
C {devices/gnd.sym} 1500 -400 0 0 {name=l24 lab=GND}
C {vdd.sym} 1500 -520 0 0 {name=l25 lab=VDD}
