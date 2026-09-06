v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for transient analysis - Inverter} 740 -1730 0 0 1 1 {}
N 1260 -840 1260 -800 {lab=VDD}
N 1260 -740 1260 -700 {lab=GND}
N 1640 -720 1640 -700 {lab=GND}
N 1640 -920 1640 -900 {lab=GND}
N 1640 -1000 1720 -1000 {lab=vin1}
N 1640 -800 1640 -780 {lab=vin2}
N 1700 -800 1740 -800 {lab=vin2}
N 1640 -1000 1640 -980 {lab=vin1}
N 1720 -840 1740 -840 {lab=vin1}
N 1720 -1000 1720 -840 {lab=vin1}
N 1780 -780 1780 -700 {lab=GND}
N 1780 -880 1780 -860 {lab=VDD}
N 1860 -820 1980 -820 {lab=vout}
N 1840 -680 1840 -660 {lab=VDD}
N 1800 -560 1800 -540 {lab=GND}
N 1800 -780 1800 -660 {lab=#net1}
N 1700 -600 1700 -580 {lab=GND}
N 1700 -800 1700 -660 {lab=vin2}
N 1640 -800 1700 -800 {lab=vin2}
N 2040 -1140 2040 -1120 {lab=VDD
}
N 2040 -1040 2040 -1020 {lab=GND
}
N 1980 -880 2000 -880 {lab=vout}
N 1980 -760 2000 -760 {lab=vout}
N 2040 -820 2040 -790 {lab=vs}
N 2040 -940 2040 -880 {lab=VDD}
N 2040 -760 2040 -700 {lab=GND}
N 2120 -820 2220 -820 {lab=vs}
N 2040 -850 2040 -820 {lab=vs}
N 2300 -880 2300 -860 {lab=VDD
}
N 2300 -740 2300 -720 {lab=GND
}
N 2380 -800 2420 -800 {lab=vq}
N 2180 -880 2180 -780 {lab=VDD
}
N 2180 -780 2220 -780 {lab=VDD}
N 1980 -1080 1980 -880 {lab=vout}
N 1980 -1080 2000 -1080 {lab=vout}
N 2100 -1080 2120 -1080 {lab=vs}
N 2120 -1080 2120 -820 {lab=vs}
N 2040 -820 2120 -820 {lab=vs}
N 1980 -820 1980 -760 {lab=vout}
N 1980 -880 1980 -820 {lab=vout}
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
.param ton    = \{period*2\}
.csparam tstop  = \{1*period\}
.csparam tstep  = \{period/100\}

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

* Write Data
unset appendwrite
set wr_vecnames
set wr_singlescale
*wrdata ../plot_simulations/data/@schname\\\\.txt v(vin1) v(vin2) v(vout)

*quit
.endc
"}
C {devices/launcher.sym} 1420 -860 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1700 -1350 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/vsource.sym} 1260 -770 0 0 {name=VDD value=\{VDD\}}
C {devices/gnd.sym} 1260 -700 0 0 {name=l3 lab=GND}
C {vdd.sym} 1260 -840 0 0 {name=l7 lab=VDD}
C {devices/vsource.sym} 1640 -750 0 1 {name=vin2 value="PULSE(0 VDD 0 \{period/2\} \{period/2\} 0 \{period\})"
spice_ignore=true}
C {devices/lab_pin.sym} 1680 -800 1 0 {name=l22 sig_type=std_logic lab=vin2}
C {devices/gnd.sym} 1640 -700 0 0 {name=l26 lab=GND}
C {devices/code_shown.sym} 1960 -1410 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {devices/vsource.sym} 1640 -950 0 1 {name=vin1 value=0.5
}
C {devices/lab_pin.sym} 1680 -1000 1 0 {name=l1 sig_type=std_logic lab=vin1}
C {devices/gnd.sym} 1640 -900 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 1940 -820 3 1 {name=l12 sig_type=std_logic lab=vout}
C {vdd.sym} 1780 -880 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 1780 -700 0 1 {name=l9 lab=GND}
C {comp_pmos.sym} 1800 -820 0 0 {name=x2}
C {devices/gnd.sym} 1800 -540 0 1 {name=l15 lab=GND}
C {vdd.sym} 1840 -680 0 0 {name=l16 lab=VDD}
C {current_reference_40uA.sym} 1820 -620 0 1 {name=x1}
C {devices/vsource.sym} 1700 -630 0 1 {name=vin3 value="PULSE(0 \{VDD\} \{period/8\} \{period/1000\} \{period/1000\} \{period/2\} \{period\})"
}
C {devices/gnd.sym} 1700 -580 0 0 {name=l6 lab=GND}
C {hv_inverter_40u.sym} 2040 -1080 0 0 {name=x3
spice_ignore=true}
C {devices/gnd.sym} 2040 -1020 0 0 {name=l17 lab=GND
}
C {vdd.sym} 2040 -1140 0 0 {name=l18 lab=VDD
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 2020 -760 0 0 {name=M9
l=inv_n_l
w=inv_n_w
 ng=inv_ng
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 2020 -880 0 0 {name=M10
l=inv_p_l
w=inv_p_w
ng=inv_ng
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/gnd.sym} 2040 -700 0 1 {name=l31 lab=GND}
C {vdd.sym} 2040 -940 0 0 {name=l32 lab=VDD}
C {devices/lab_pin.sym} 2140 -820 3 1 {name=l10 sig_type=std_logic lab=vs
}
C {code_shown.sym} 1120 -1150 0 0 {value="
.param inv_ng = 1
.param inv_n_w = 2u
.param inv_n_l = 0.45u
.param inv_p_w = 6.5u
.param inv_p_l = 0.4u
"}
C {vdd.sym} 2300 -880 0 0 {name=l11 lab=VDD
}
C {devices/gnd.sym} 2300 -720 0 1 {name=l23 lab=GND
}
C {devices/lab_pin.sym} 2420 -800 3 1 {name=l13 sig_type=std_logic lab=vq}
C {vdd.sym} 2180 -880 0 0 {name=l14 lab=VDD
}
C {hv_nand.sym} 2300 -800 0 0 {name=x4}
