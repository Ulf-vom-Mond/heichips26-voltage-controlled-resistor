v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for transient analysis - Inverter} 740 -1730 0 0 1 1 {}
N 900 -860 900 -820 {lab=VDD}
N 900 -760 900 -720 {lab=GND}
N 1280 -740 1280 -720 {lab=GND}
N 1280 -940 1280 -920 {lab=GND}
N 1280 -1020 1360 -1020 {lab=vin1}
N 1280 -820 1280 -800 {lab=vin2}
N 1340 -820 1380 -820 {lab=vin2}
N 1280 -1020 1280 -1000 {lab=vin1}
N 1820 -1160 1820 -1140 {lab=VDD
}
N 1820 -1060 1820 -1040 {lab=GND
}
N 1360 -860 1380 -860 {lab=vin1}
N 1360 -1020 1360 -860 {lab=vin1}
N 1420 -800 1420 -720 {lab=GND}
N 1560 -1040 1560 -1020 {lab=VDD
}
N 1600 -920 1600 -900 {lab=GND
}
N 1420 -900 1420 -880 {lab=VDD}
N 1500 -840 1760 -840 {lab=vout}
N 1440 -900 1440 -880 {lab=#net1}
N 1440 -900 1560 -900 {lab=#net1}
N 1560 -920 1560 -900 {lab=#net1}
N 1760 -900 1780 -900 {lab=vout}
N 1760 -780 1780 -780 {lab=vout}
N 1820 -840 1820 -810 {lab=vs}
N 1760 -840 1760 -780 {lab=vout}
N 1820 -960 1820 -900 {lab=VDD}
N 1820 -780 1820 -720 {lab=GND}
N 1760 -900 1760 -840 {lab=vout}
N 1900 -840 2000 -840 {lab=vs}
N 1820 -870 1820 -840 {lab=vs}
N 2080 -900 2080 -880 {lab=VDD
}
N 2080 -760 2080 -740 {lab=GND
}
N 2160 -820 2200 -820 {lab=vq}
N 1960 -900 1960 -800 {lab=VDD
}
N 1960 -800 2000 -800 {lab=VDD}
N 1760 -1100 1760 -900 {lab=vout}
N 1760 -1100 1780 -1100 {lab=vout}
N 1880 -1100 1900 -1100 {lab=vs}
N 1900 -1100 1900 -840 {lab=vs}
N 1820 -840 1900 -840 {lab=vs}
N 1340 -620 1340 -600 {lab=GND}
N 1340 -820 1340 -680 {lab=vin2}
N 1280 -820 1340 -820 {lab=vin2}
C {devices/code_shown.sym} 90 -1340 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param VDD=3.3
.csparam VDD=VDD
.param Vcm=VDD/2
.param temp=27
.param Cload=10p
.param Rload=1k

.param period = 5n
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
plot vin1+4 vin2+4 vout vs vq+4
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
C {devices/vsource.sym} 900 -790 0 0 {name=VDD value=\{VDD\}}
C {devices/gnd.sym} 900 -720 0 0 {name=l3 lab=GND}
C {vdd.sym} 900 -860 0 0 {name=l7 lab=VDD}
C {devices/vsource.sym} 1280 -770 0 1 {name=vin2 value="PULSE(\{vmin\} \{vmax\} 0 \{period/2\} \{period/2\} 0 \{period\})"
spice_ignore=true}
C {devices/lab_pin.sym} 1320 -820 1 0 {name=l22 sig_type=std_logic lab=vin2}
C {devices/gnd.sym} 1280 -720 0 0 {name=l26 lab=GND}
C {devices/code_shown.sym} 1960 -1410 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {devices/vsource.sym} 1280 -970 0 1 {name=vin1 value=\{vth\}
}
C {devices/lab_pin.sym} 1320 -1020 1 0 {name=l1 sig_type=std_logic lab=vin1}
C {devices/gnd.sym} 1280 -920 0 0 {name=l4 lab=GND}
C {hv_inverter_40u.sym} 1820 -1100 0 0 {name=x3
spice_ignore=true}
C {devices/gnd.sym} 1820 -1040 0 0 {name=l17 lab=GND
}
C {vdd.sym} 1820 -1160 0 0 {name=l18 lab=VDD
}
C {devices/lab_pin.sym} 1660 -840 3 1 {name=l12 sig_type=std_logic lab=vout}
C {vdd.sym} 1420 -900 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 1420 -720 0 1 {name=l9 lab=GND}
C {current_reference_pmos_40uA.sym} 1580 -980 0 1 {name=x4
}
C {devices/gnd.sym} 1600 -900 0 1 {name=l6 lab=GND
}
C {vdd.sym} 1560 -1040 0 0 {name=l8 lab=VDD
}
C {comp_nmos.sym} 1440 -840 0 0 {name=x5}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1800 -780 0 0 {name=M9
l=inv_n_l
w=inv_n_w
 ng=inv_ng
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 1800 -900 0 0 {name=M10
l=inv_p_l
w=inv_p_w
ng=inv_ng
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/gnd.sym} 1820 -720 0 1 {name=l31 lab=GND}
C {vdd.sym} 1820 -960 0 0 {name=l32 lab=VDD}
C {devices/lab_pin.sym} 1920 -840 3 1 {name=l10 sig_type=std_logic lab=vs
}
C {code_shown.sym} 900 -1170 0 0 {value="
.param inv_ng = 1
.param inv_n_w = 2u
.param inv_n_l = 0.45u
.param inv_p_w = 6.5u
.param inv_p_l = 0.4u
"}
C {vdd.sym} 2080 -900 0 0 {name=l11 lab=VDD
}
C {devices/gnd.sym} 2080 -740 0 1 {name=l23 lab=GND
}
C {devices/lab_pin.sym} 2200 -820 3 1 {name=l13 sig_type=std_logic lab=vq}
C {vdd.sym} 1960 -900 0 0 {name=l14 lab=VDD
}
C {hv_nand.sym} 2080 -820 0 0 {name=x2}
C {devices/vsource.sym} 1340 -650 0 1 {name=vin3 value="PULSE(0 \{VDD\} \{period/8\} \{period/1000\} \{period/1000\} \{period/2\} \{period\})"
}
C {devices/gnd.sym} 1340 -600 0 0 {name=l15 lab=GND}
