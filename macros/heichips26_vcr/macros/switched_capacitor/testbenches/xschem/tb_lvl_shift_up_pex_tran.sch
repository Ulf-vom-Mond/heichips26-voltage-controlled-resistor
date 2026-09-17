v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for transient analysis - Inverter} 740 -1730 0 0 1 1 {}
N 800 -860 800 -820 {lab=VDD}
N 800 -760 800 -720 {lab=GND}
N 1720 -1100 1720 -1080 {lab=VDD
}
N 1720 -1000 1720 -980 {lab=GND
}
N 1440 -800 1440 -720 {lab=GND}
N 1440 -900 1440 -880 {lab=VDD}
N 1720 -900 1720 -880 {lab=VDD
}
N 1720 -760 1720 -740 {lab=GND
}
N 1620 -800 1640 -800 {lab=VDD}
N 1620 -1040 1620 -840 {lab=vout}
N 1620 -1040 1680 -1040 {lab=vout}
N 1780 -1040 1820 -1040 {lab=#net1}
N 1240 -740 1240 -720 {lab=GND}
N 1240 -840 1240 -800 {lab=#net2}
N 1500 -840 1620 -840 {lab=vout}
N 1620 -840 1640 -840 {lab=vout}
N 1800 -820 1840 -820 {lab=vq}
N 1240 -840 1260 -840 {lab=#net2}
N 1320 -840 1380 -840 {lab=vin}
C {devices/code_shown.sym} 90 -1340 0 0 {name=NGSPICE
only_toplevel=true 
value="
.include ../../../netlist/pex/lvl_shift_up_magic_pex_3.spice

.param VDD=3.3
.csparam VDD=VDD
.param Vcm=VDD/2
.param temp=27
.param Cload=10p
.param Rload=1k

.param period = 2n
.csparam tstop  = \{1*period\}
.csparam tstep  = \{period/100\}

.param vth = 1.65
.param vpp = \{period*2.65e+6\}
.param vmax = \{vth+vpp/2\}
.param vmin = \{vth-vpp/2\}

.ic v(vq) = 0

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
plot vin+4 vout vq+4
*plot vin1+4 50*(vin2-vin1)+4+vin1 vout vq+4
*plot vin1+4 vin2+4 vq+4 vout

* Write Data
unset appendwrite
set wr_vecnames
set wr_singlescale
*wrdata ../plot_simulations/data/@schname\\\\.txt v(vin1) v(vin2) v(vout)

*quit
.endc
"}
C {devices/launcher.sym} 1060 -880 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1700 -1350 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/vsource.sym} 800 -790 0 0 {name=VDD value=\{VDD\}}
C {devices/gnd.sym} 800 -720 0 0 {name=l3 lab=GND}
C {vdd.sym} 800 -860 0 0 {name=l7 lab=VDD}
C {devices/lab_pin.sym} 1360 -840 1 0 {name=l22 sig_type=std_logic lab=vin}
C {devices/code_shown.sym} 1960 -1410 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {hv_inverter_40u.sym} 1720 -1040 0 0 {name=x3
spice_ignore=true}
C {devices/gnd.sym} 1720 -980 0 0 {name=l17 lab=GND
}
C {vdd.sym} 1720 -1100 0 0 {name=l18 lab=VDD
}
C {devices/lab_pin.sym} 1560 -840 3 1 {name=l12 sig_type=std_logic lab=vout}
C {vdd.sym} 1440 -900 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 1440 -720 0 0 {name=l9 lab=GND}
C {code_shown.sym} 900 -1170 0 0 {value="
.param inv_ng = 1
.param inv_n_w = 2u
.param inv_n_l = 0.45u
.param inv_p_w = 6.5u
.param inv_p_l = 0.4u
"}
C {vdd.sym} 1720 -900 0 0 {name=l11 lab=VDD
}
C {devices/gnd.sym} 1720 -740 0 1 {name=l23 lab=GND
}
C {devices/lab_pin.sym} 1840 -820 3 1 {name=l13 sig_type=std_logic lab=vq}
C {vdd.sym} 1620 -800 3 0 {name=l14 lab=VDD
}
C {hv_nand.sym} 1720 -820 0 0 {name=x2}
C {devices/vsource.sym} 1240 -770 0 1 {name=vin value="PULSE(1.2 0 \{period/8\} \{period/1000\} \{period/1000\} \{period/2\} \{period\})"
}
C {devices/gnd.sym} 1240 -720 0 0 {name=l15 lab=GND}
C {res.sym} 1290 -840 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1
}
C {lvl_shift_up_pex.sym} 1440 -840 0 0 {name=x1}
