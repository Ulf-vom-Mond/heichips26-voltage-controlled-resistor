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
N 1380 -680 1380 -660 {lab=GND}
N 1380 -880 1380 -860 {lab=GND}
N 1380 -960 1420 -960 {lab=#net1}
N 1380 -760 1380 -740 {lab=#net2}
N 1380 -760 1420 -760 {lab=#net2}
N 1380 -960 1380 -940 {lab=#net1}
N 1520 -760 1660 -760 {lab=vin2}
N 1460 -920 1460 -900 {lab=GND}
N 1460 -1020 1460 -1000 {lab=VDD}
N 1460 -820 1460 -800 {lab=VDD}
N 1460 -720 1460 -700 {lab=GND}
N 1940 -1020 1940 -1000 {lab=VDD}
N 1940 -920 1940 -900 {lab=GND}
N 1520 -960 1660 -960 {lab=vin1}
N 1820 -960 1900 -960 {lab=vout1}
N 1940 -820 1940 -800 {lab=VDD}
N 1940 -720 1940 -700 {lab=GND}
N 1820 -760 1900 -760 {lab=vout2}
N 1800 -880 1820 -880 {lab=vout1}
N 1820 -960 1820 -880 {lab=vout1}
N 1800 -840 1820 -840 {lab=vout2}
N 1820 -840 1820 -760 {lab=vout2}
N 1660 -960 1660 -880 {lab=vin1}
N 1660 -880 1680 -880 {lab=vin1}
N 1660 -840 1660 -760 {lab=vin2}
N 1660 -840 1680 -840 {lab=vin2}
N 1740 -800 1740 -780 {lab=GND}
N 1740 -940 1740 -920 {lab=VDD}
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
.csparam tstop  = \{5*period\}
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
plot vin1+12 vin2+8 vout1+4 vout2

* Write Data
unset appendwrite
set wr_vecnames
set wr_singlescale
wrdata ../plot_simulations/data/@schname\\\\.txt v(vin1) v(vin2) v(vout)

*quit
.endc
"}
C {devices/launcher.sym} 1560 -1120 0 0 {name=h2
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
C {devices/lab_pin.sym} 1860 -960 3 1 {name=l12 sig_type=std_logic lab=vout1}
C {devices/vsource.sym} 1380 -710 0 1 {name=vp2 value="PULSE(0 VDD \{tdel\} \{tr\} \{tf\} \{period\} \{period*4\})"
}
C {devices/lab_pin.sym} 1620 -760 1 0 {name=l22 sig_type=std_logic lab=vin2}
C {devices/gnd.sym} 1380 -660 0 0 {name=l26 lab=GND}
C {devices/code_shown.sym} 1960 -1410 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {devices/vsource.sym} 1380 -910 0 1 {name=vp1 value="PULSE(0 VDD \{tdel+period*2\} \{tr\} \{tf\} \{period\} \{period*4\})"
}
C {devices/lab_pin.sym} 1620 -960 1 0 {name=l1 sig_type=std_logic lab=vin1}
C {devices/gnd.sym} 1380 -860 0 0 {name=l4 lab=GND}
C {hv_inverter_40u.sym} 1460 -960 0 0 {name=x1
}
C {hv_inverter_40u.sym} 1460 -760 0 0 {name=x2
}
C {devices/gnd.sym} 1460 -700 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 1460 -900 0 0 {name=l14 lab=GND}
C {vdd.sym} 1460 -1020 0 0 {name=l15 lab=VDD}
C {vdd.sym} 1460 -820 0 0 {name=l16 lab=VDD}
C {hv_inverter_40u.sym} 1940 -960 0 0 {name=x3
}
C {devices/gnd.sym} 1940 -900 0 0 {name=l17 lab=GND}
C {vdd.sym} 1940 -1020 0 0 {name=l18 lab=VDD}
C {devices/lab_pin.sym} 1860 -760 3 1 {name=l5 sig_type=std_logic lab=vout2}
C {hv_inverter_40u.sym} 1940 -760 0 0 {name=x6
}
C {devices/gnd.sym} 1940 -700 0 0 {name=l6 lab=GND}
C {vdd.sym} 1940 -820 0 0 {name=l19 lab=VDD}
C {hv_rs-ff.sym} 1740 -860 0 0 {name=x4}
C {devices/gnd.sym} 1740 -780 0 0 {name=l8 lab=GND}
C {vdd.sym} 1740 -940 0 0 {name=l9 lab=VDD}
