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
N 1320 -1120 1320 -1100 {lab=GND}
N 1320 -1320 1320 -1300 {lab=GND}
N 1320 -1400 1360 -1400 {lab=#net1}
N 1320 -1200 1320 -1180 {lab=#net2}
N 1320 -1200 1360 -1200 {lab=#net2}
N 1320 -1400 1320 -1380 {lab=#net1}
N 1460 -1200 1640 -1200 {lab=vin2}
N 1400 -1360 1400 -1340 {lab=GND}
N 1400 -1460 1400 -1440 {lab=VDD}
N 1400 -1260 1400 -1240 {lab=VDD}
N 1400 -1160 1400 -1140 {lab=GND}
N 1900 -920 1900 -900 {lab=VDD}
N 1900 -820 1900 -800 {lab=GND}
N 1460 -1400 1660 -1400 {lab=vin1}
N 1640 -1200 1640 -880 {lab=vin2}
N 1740 -760 1740 -740 {lab=GND}
N 1740 -980 1740 -960 {lab=VDD}
N 1320 -520 1320 -500 {lab=GND}
N 1540 -760 1540 -600 {lab=vselA}
N 1320 -600 1320 -580 {lab=#net3}
N 1320 -600 1360 -600 {lab=#net3}
N 1460 -600 1540 -600 {lab=vselA}
N 1400 -660 1400 -640 {lab=VDD}
N 1400 -560 1400 -540 {lab=GND}
N 1780 -860 1860 -860 {lab=vout}
N 1660 -1400 1660 -920 {lab=vin1}
N 1320 -920 1320 -900 {lab=GND}
N 1320 -1000 1320 -980 {lab=#net4}
N 1320 -1000 1360 -1000 {lab=#net4}
N 1460 -1000 1620 -1000 {lab=vin3}
N 1400 -1060 1400 -1040 {lab=VDD}
N 1400 -960 1400 -940 {lab=GND}
N 1320 -720 1320 -700 {lab=GND}
N 1320 -800 1320 -780 {lab=#net5}
N 1320 -800 1360 -800 {lab=#net5}
N 1460 -800 1680 -800 {lab=vin4}
N 1400 -860 1400 -840 {lab=VDD}
N 1400 -760 1400 -740 {lab=GND}
N 1660 -920 1680 -920 {lab=vin1}
N 1640 -880 1680 -880 {lab=vin2}
N 1620 -1000 1620 -840 {lab=vin3}
N 1620 -840 1680 -840 {lab=vin3}
N 1320 -320 1320 -300 {lab=GND}
N 1320 -400 1320 -380 {lab=#net6}
N 1320 -400 1360 -400 {lab=#net6}
N 1460 -400 1660 -400 {lab=vselB}
N 1400 -460 1400 -440 {lab=VDD}
N 1400 -360 1400 -340 {lab=GND}
N 1540 -760 1680 -760 {lab=vselA}
N 1660 -740 1660 -400 {lab=vselB}
N 1660 -740 1680 -740 {lab=vselB}
C {devices/code_shown.sym} 80 -1370 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param VDD=3.3
.csparam VDD=VDD
.param Vcm=VDD/2
.param temp=27
.param Cload=10p
.param Rload=1k

.param period = 10n
.param tdel   = \{period/4\}
.param ton    = \{period*2\}
.csparam tstop  = \{13*period\}
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
plot vselA+24 vselB+20 vin1+16 vin2+12 vin3+8 vin4+4 vout

* Write Data
unset appendwrite
set wr_vecnames
set wr_singlescale
wrdata ../plot_simulations/data/@schname\\\\.txt v(vin1) v(vin2) v(vout)

*quit
.endc
"}
C {devices/launcher.sym} 1860 -1020 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 2020 -1480 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/vsource.sym} 880 -710 0 0 {name=VDD value=\{VDD\}}
C {devices/gnd.sym} 880 -640 0 0 {name=l3 lab=GND}
C {vdd.sym} 880 -780 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 1820 -860 3 1 {name=l12 sig_type=std_logic lab=vout}
C {devices/vsource.sym} 1320 -1150 0 1 {name=vp2 value="PULSE(0 VDD \{tdel*1.5\} \{tr\} \{tf\} \{period\} \{period*2\})"
}
C {devices/lab_pin.sym} 1580 -1200 1 0 {name=l22 sig_type=std_logic lab=vin2}
C {devices/gnd.sym} 1320 -1100 0 0 {name=l26 lab=GND}
C {devices/code_shown.sym} 1960 -1410 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {devices/vsource.sym} 1320 -550 0 1 {name=vp1 value="PULSE(0 VDD \{2*tdel\} \{tr\} \{tf\} \{period*6\} \{period*12\})"
}
C {devices/lab_pin.sym} 1580 -1400 1 0 {name=l1 sig_type=std_logic lab=vin1}
C {devices/gnd.sym} 1320 -1300 0 0 {name=l4 lab=GND}
C {hv_inverter_40u.sym} 1400 -1400 0 0 {name=x1
}
C {hv_inverter_40u.sym} 1400 -1200 0 0 {name=x2
}
C {devices/gnd.sym} 1400 -1140 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 1400 -1340 0 0 {name=l14 lab=GND}
C {vdd.sym} 1400 -1460 0 0 {name=l15 lab=VDD}
C {vdd.sym} 1400 -1260 0 0 {name=l16 lab=VDD}
C {hv_inverter_40u.sym} 1900 -860 0 0 {name=x3
}
C {devices/gnd.sym} 1900 -800 0 0 {name=l17 lab=GND}
C {vdd.sym} 1900 -920 0 0 {name=l18 lab=VDD}
C {devices/gnd.sym} 1740 -740 0 0 {name=l8 lab=GND}
C {vdd.sym} 1740 -980 0 0 {name=l9 lab=VDD}
C {devices/vsource.sym} 1320 -1350 0 1 {name=vp3 value="PULSE(0 VDD \{tdel*0.5\} \{tr\} \{tf\} \{period\} \{period*2\})"
}
C {devices/gnd.sym} 1320 -500 0 0 {name=l10 lab=GND}
C {hv_inverter_40u.sym} 1400 -600 0 0 {name=x5
}
C {devices/gnd.sym} 1400 -540 0 0 {name=l19 lab=GND}
C {vdd.sym} 1400 -660 0 0 {name=l20 lab=VDD}
C {devices/vsource.sym} 1320 -950 0 1 {name=vp4 value="PULSE(0 VDD \{tdel*2.5\} \{tr\} \{tf\} \{period\} \{period*2\})"
}
C {devices/lab_pin.sym} 1580 -1000 1 0 {name=l5 sig_type=std_logic lab=vin3}
C {devices/gnd.sym} 1320 -900 0 0 {name=l6 lab=GND}
C {hv_inverter_40u.sym} 1400 -1000 0 0 {name=x6
}
C {devices/gnd.sym} 1400 -940 0 0 {name=l21 lab=GND}
C {vdd.sym} 1400 -1060 0 0 {name=l23 lab=VDD}
C {devices/vsource.sym} 1320 -750 0 1 {name=vp5 value="PULSE(0 VDD \{tdel*3.5\} \{tr\} \{tf\} \{period\} \{period*2\})"
}
C {devices/lab_pin.sym} 1580 -800 1 0 {name=l24 sig_type=std_logic lab=vin4}
C {devices/gnd.sym} 1320 -700 0 0 {name=l25 lab=GND}
C {hv_inverter_40u.sym} 1400 -800 0 0 {name=x7
}
C {devices/gnd.sym} 1400 -740 0 0 {name=l27 lab=GND}
C {vdd.sym} 1400 -860 0 0 {name=l28 lab=VDD}
C {devices/vsource.sym} 1320 -350 0 1 {name=vp6 value="PULSE(0 VDD \{2*tdel\} \{tr\} \{tf\} \{period*3\} \{period*6\})"
}
C {devices/gnd.sym} 1320 -300 0 0 {name=l29 lab=GND}
C {hv_inverter_40u.sym} 1400 -400 0 0 {name=x8
}
C {devices/gnd.sym} 1400 -340 0 0 {name=l30 lab=GND}
C {vdd.sym} 1400 -460 0 0 {name=l31 lab=VDD}
C {hv_mux4.sym} 1740 -860 0 0 {name=x4}
C {devices/lab_pin.sym} 1540 -680 2 0 {name=l11 sig_type=std_logic lab=vselA}
C {devices/lab_pin.sym} 1660 -680 2 0 {name=l32 sig_type=std_logic lab=vselB}
