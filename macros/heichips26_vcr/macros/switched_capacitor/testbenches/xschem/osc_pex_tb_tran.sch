v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for transient analysis - VCR} 740 -1730 0 0 1 1 {}
N 400 -740 400 -720 {lab=0}
N 660 -660 660 -640 {lab=0
}
N 1340 -780 1340 -760 {lab=0}
N 1340 -920 1340 -900 {lab=#net1}
N 1160 -820 1160 -800 {lab=c2}
N 1160 -820 1240 -820 {lab=c2}
N 1060 -840 1060 -800 {lab=c1}
N 1060 -840 1240 -840 {lab=c1}
N 1460 -840 1540 -840 {lab=out2}
N 1040 -840 1060 -840 {lab=c1}
N 1140 -820 1160 -820 {lab=c2}
N 1160 -740 1160 -720 {lab=out2}
N 1160 -720 1460 -720 {lab=out2}
N 1460 -840 1460 -720 {lab=out2}
N 1440 -840 1460 -840 {lab=out2}
N 1060 -740 1060 -700 {lab=out1}
N 1060 -700 1480 -700 {lab=out1}
N 1480 -860 1480 -700 {lab=out1}
N 1440 -860 1480 -860 {lab=out1}
N 2000 -740 2000 -720 {lab=0}
N 2000 -820 2000 -800 {lab=#net2}
N 2000 -820 2040 -820 {lab=#net2}
N 2120 -760 2120 -720 {lab=0}
N 1860 -920 2120 -920 {lab=#net1}
N 2200 -880 2300 -880 {lab=ps_out1}
N 2200 -860 2300 -860 {lab=ps_nout1}
N 2200 -800 2300 -800 {lab=ps_nout2}
N 2200 -820 2300 -820 {lab=ps_out2}
N 640 -740 660 -740 {lab=0
}
N 660 -740 680 -740 {lab=0}
N 940 -860 1240 -860 {lab=ictrl}
N 400 -920 400 -800 {lab=#net1}
N 660 -820 680 -820 {lab=0}
N 500 -860 500 -780 {lab=#net3}
N 500 -860 520 -860 {lab=#net3}
N 640 -840 640 -780 {lab=#net3}
N 500 -780 640 -780 {lab=#net3}
N 640 -840 680 -840 {lab=#net3}
N 620 -860 680 -860 {lab=#net4}
N 560 -820 560 -720 {lab=0}
N 560 -920 560 -900 {lab=#net1}
N 400 -920 560 -920 {lab=#net1}
N 760 -780 760 -720 {lab=0}
N 840 -820 860 -820 {lab=#net5}
N 860 -860 860 -820 {lab=#net5}
N 860 -860 880 -860 {lab=#net5}
N 660 -740 660 -720 {lab=0}
N 660 -820 660 -740 {lab=0}
N 500 -780 500 -540 {lab=#net3}
N 560 -920 1340 -920 {lab=#net1}
N 1700 -700 1780 -700 {lab=#net6}
N 1700 -680 1780 -680 {lab=#net7}
N 1700 -640 1780 -640 {lab=#net8}
N 1740 -660 1780 -660 {lab=#net3}
N 1860 -920 1860 -900 {lab=#net1}
N 1620 -920 1860 -920 {lab=#net1}
N 1900 -800 1920 -800 {lab=clk}
N 1920 -860 1920 -800 {lab=clk}
N 1920 -860 2040 -860 {lab=clk}
N 1480 -860 1700 -860 {lab=out1}
N 1700 -860 1700 -780 {lab=out1}
N 1700 -780 1780 -780 {lab=out1}
N 500 -540 1740 -540 {lab=#net3}
N 1740 -660 1740 -540 {lab=#net3}
N 1700 -660 1740 -660 {lab=#net3}
N 1620 -600 1620 -580 {lab=0}
N 1620 -920 1620 -740 {lab=#net1}
N 1520 -920 1620 -920 {lab=#net1}
N 1860 -700 1860 -680 {lab=0}
N 1500 -700 1500 -580 {lab=0}
N 1500 -700 1540 -700 {lab=0}
N 1520 -680 1540 -680 {lab=#net1}
N 1520 -920 1520 -680 {lab=#net1}
N 1340 -920 1520 -920 {lab=#net1}
C {devices/launcher.sym} 1020 -960 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="VCR authors" rev=1.0 lock=true}
C {devices/code_shown.sym} 1590 -1250 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
.lib cornerCAP.lib cap_typ

.include $::PDK_ROOT/$::PDK/libs.ref/sg13cmos5l_stdcell/spice/sg13cmos5l_stdcell.spice
"}
C {devices/code_shown.sym} 20 -1650 0 0 {name=NGSPICE1
only_toplevel=true 
value="
.include ../../../netlist/pex/osc_magic_pex_3.spice

.param VDD=3.3
.csparam VDD=VDD
.param Vcm=VDD/2
.csparam Vcm=Vcm
.param period=60n
.csparam period=period
.param temp=27
.options savecurrents klu method=gear reltol=1e-3 abstol=1e-15 gmin=1e-15
.probe alli
.control

save all
set appendwrite

tran 0.1n 40n
remzerovec

save all
set appendwrite

write @schname\\\\.raw
set appendwrite

* Plotting
plot out1 out2
plot clk
plot ps_out1+4 ps_out2 ps_nout1 ps_nout2+4
plot -i(VDD) mean(-i(VDD))
plot ictrl
plot i(victrl)

*quit
.endc
"}
C {devices/vsource.sym} 400 -770 0 0 {name=VDD value=3.3}
C {isource.sym} 660 -690 0 0 {name=I1 value=1u
spice_ignore=true}
C {gnd.sym} 400 -720 0 0 {name=l1 lab=0}
C {code_shown.sym} 40 -1030 0 0 {value="
.ic v(c1)=0
"
}
C {lab_pin.sym} 1540 -840 0 1 {name=p1 sig_type=std_logic lab=out2}
C {lab_pin.sym} 1700 -860 0 1 {name=p2 sig_type=std_logic lab=out1}
C {gnd.sym} 1340 -760 0 0 {name=l3 lab=0}
C {gnd.sym} 660 -640 0 0 {name=l4 lab=0
}
C {sg13cmos5l_pr/cap_cmomi.sym} 1060 -770 0 0 {name=C1
model=cap_cmomi
w=10e-6
l=5e-6
mmin=1
mmax=4
feed=double
subblock=0
m=1
mm_ok=1
spiceprefix=X
IC=0
}
C {sg13cmos5l_pr/cap_cmomi.sym} 1160 -770 0 0 {name=C2
model=cap_cmomi
w=10e-6
l=5e-6
mmin=1
mmax=4
feed=double
subblock=0
m=1
mm_ok=1
spiceprefix=X
IC=0
}
C {lab_pin.sym} 1140 -820 0 0 {name=p3 sig_type=std_logic lab=c2}
C {lab_pin.sym} 1040 -840 0 0 {name=p4 sig_type=std_logic lab=c1}
C {osc_pex.sym} 1340 -840 0 0 {name=x1}
C {pulse_shaper_en.sym} 2120 -840 0 0 {name=x2}
C {devices/vsource.sym} 2000 -770 0 0 {name=ven value=3.3}
C {gnd.sym} 2000 -720 0 0 {name=l5 lab=0}
C {gnd.sym} 2120 -720 0 0 {name=l6 lab=0}
C {devices/lab_pin.sym} 2300 -880 0 1 {name=l15 sig_type=std_logic lab=ps_out1
}
C {devices/lab_pin.sym} 2300 -860 0 1 {name=l7 sig_type=std_logic lab=ps_nout1
}
C {devices/lab_pin.sym} 2300 -800 0 1 {name=l17 sig_type=std_logic lab=ps_nout2
}
C {devices/lab_pin.sym} 2300 -820 0 1 {name=l18 sig_type=std_logic lab=ps_out2
}
C {lab_pin.sym} 960 -860 1 0 {name=p5 sig_type=std_logic lab=ictrl
}
C {lab_pin.sym} 640 -740 0 0 {name=p6 sig_type=std_logic lab=vin
spice_ignore=true}
C {gnd.sym} 680 -740 0 0 {name=l9 lab=0
}
C {noconn.sym} 2220 -880 3 1 {name=l10}
C {noconn.sym} 2220 -860 3 1 {name=l11}
C {noconn.sym} 2220 -820 3 1 {name=l12}
C {noconn.sym} 2220 -800 3 1 {name=l13}
C {ammeter.sym} 910 -860 1 0 {name=victrl savecurrent=true spice_ignore=0}
C {transmission_gate.sym} 760 -840 0 0 {name=x8
}
C {hv_inverter_40u.sym} 560 -860 0 0 {name=x9}
C {gnd.sym} 560 -720 0 0 {name=l8 lab=0}
C {gnd.sym} 760 -720 0 0 {name=l14 lab=0}
C {hv_mux4.sym} 1840 -800 0 0 {name=x4
}
C {hv_binary_decoder4.sym} 1620 -660 0 0 {name=x7}
C {gnd.sym} 1620 -580 0 0 {name=l16 lab=0}
C {gnd.sym} 1860 -680 0 0 {name=l22 lab=0}
C {lab_pin.sym} 1920 -860 3 1 {name=p7 sig_type=std_logic lab=clk}
C {gnd.sym} 1500 -580 0 0 {name=l23 lab=0}
C {gnd.sym} 1780 -860 1 0 {name=l19 lab=0}
C {gnd.sym} 1780 -820 1 0 {name=l20 lab=0}
C {gnd.sym} 1780 -740 1 0 {name=l21 lab=0}
