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
N 1680 -1160 1680 -1140 {lab=VDD
}
N 1680 -1060 1680 -1040 {lab=GND
}
N 1420 -800 1420 -720 {lab=GND}
N 1420 -900 1420 -880 {lab=VDD}
N 1500 -840 1620 -840 {lab=vout}
N 1620 -900 1640 -900 {lab=vout}
N 1620 -780 1640 -780 {lab=vout}
N 1680 -840 1680 -810 {lab=vs}
N 1620 -840 1620 -780 {lab=vout}
N 1680 -960 1680 -900 {lab=VDD}
N 1680 -780 1680 -720 {lab=GND}
N 1620 -900 1620 -840 {lab=vout}
N 1760 -840 1860 -840 {lab=vs}
N 1680 -870 1680 -840 {lab=vs}
N 1940 -900 1940 -880 {lab=VDD
}
N 1940 -760 1940 -740 {lab=GND
}
N 2020 -820 2060 -820 {lab=vq}
N 1820 -900 1820 -800 {lab=VDD
}
N 1820 -800 1860 -800 {lab=VDD}
N 1620 -1100 1620 -900 {lab=vout}
N 1620 -1100 1640 -1100 {lab=vout}
N 1740 -1100 1760 -1100 {lab=vs}
N 1760 -1100 1760 -840 {lab=vs}
N 1680 -840 1760 -840 {lab=vs}
N 1340 -740 1340 -720 {lab=GND}
N 1340 -820 1340 -800 {lab=vin}
N 1340 -820 1360 -820 {lab=vin}
C {devices/code_shown.sym} 90 -1340 0 0 {name=NGSPICE
only_toplevel=true 
value="
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
plot vin+4 vout vs vq+4
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
C {devices/lab_pin.sym} 1340 -820 1 0 {name=l22 sig_type=std_logic lab=vin}
C {devices/code_shown.sym} 1960 -1410 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {hv_inverter_40u.sym} 1680 -1100 0 0 {name=x3
spice_ignore=true}
C {devices/gnd.sym} 1680 -1040 0 0 {name=l17 lab=GND
}
C {vdd.sym} 1680 -1160 0 0 {name=l18 lab=VDD
}
C {devices/lab_pin.sym} 1580 -840 3 1 {name=l12 sig_type=std_logic lab=vout}
C {vdd.sym} 1420 -900 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 1420 -720 0 0 {name=l9 lab=GND}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1660 -780 0 0 {name=M9
l=inv_n_l
w=inv_n_w
 ng=inv_ng
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 1660 -900 0 0 {name=M10
l=inv_p_l
w=inv_p_w
ng=inv_ng
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {devices/gnd.sym} 1680 -720 0 1 {name=l31 lab=GND}
C {vdd.sym} 1680 -960 0 0 {name=l32 lab=VDD}
C {devices/lab_pin.sym} 1780 -840 3 1 {name=l10 sig_type=std_logic lab=vs
}
C {code_shown.sym} 900 -1170 0 0 {value="
.param inv_ng = 1
.param inv_n_w = 2u
.param inv_n_l = 0.45u
.param inv_p_w = 6.5u
.param inv_p_l = 0.4u
"}
C {vdd.sym} 1940 -900 0 0 {name=l11 lab=VDD
}
C {devices/gnd.sym} 1940 -740 0 1 {name=l23 lab=GND
}
C {devices/lab_pin.sym} 2060 -820 3 1 {name=l13 sig_type=std_logic lab=vq}
C {vdd.sym} 1820 -900 0 0 {name=l14 lab=VDD
}
C {hv_nand.sym} 1940 -820 0 0 {name=x2}
C {devices/vsource.sym} 1340 -770 0 1 {name=vin value="PULSE(\{VDD\} 0 \{period/8\} \{period/1000\} \{period/1000\} \{period/2\} \{period\})"
}
C {devices/gnd.sym} 1340 -720 0 0 {name=l15 lab=GND}
C {low_th_inverter.sym} 1420 -840 0 0 {name=x1}
