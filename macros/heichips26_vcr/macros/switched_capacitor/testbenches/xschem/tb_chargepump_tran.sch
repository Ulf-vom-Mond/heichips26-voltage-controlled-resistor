v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for transient analysis - VCR} 740 -1730 0 0 1 1 {}
N 440 -780 440 -640 {lab=VDD}
N 700 -620 700 -560 {lab=GND}
N 700 -780 700 -740 {lab=VDD}
N 440 -560 440 -540 {lab=GND}
N 520 -700 520 -640 {lab=#net1}
N 520 -700 600 -700 {lab=#net1}
N 520 -580 520 -560 {lab=GND}
N 440 -580 440 -560 {lab=GND}
N 520 -560 700 -560 {lab=GND}
N 440 -560 520 -560 {lab=GND}
N 1100 -620 1100 -560 {lab=#net2}
N 1100 -780 1100 -720 {lab=#net3}
N 1100 -670 1100 -650 {lab=vsw}
N 1100 -670 1220 -670 {lab=vsw}
N 1100 -690 1100 -670 {lab=vsw}
N 1220 -690 1220 -670 {lab=vsw
}
N 1100 -860 1100 -840 {lab=VDD}
N 1220 -760 1220 -750 {lab=vboost
}
N 1220 -940 1220 -920 {lab=VDD
}
N 1080 -560 1100 -560 {lab=#net2}
N 800 -700 860 -700 {lab=out1}
N 920 -620 920 -560 {lab=GND}
N 920 -780 920 -720 {lab=#net4}
N 920 -860 920 -840 {lab=VDD}
N 700 -560 920 -560 {lab=GND}
N 860 -720 880 -720 {lab=out1}
N 860 -700 860 -620 {lab=out1}
N 860 -720 860 -700 {lab=out1}
N 860 -620 880 -620 {lab=out1}
N 920 -670 920 -650 {lab=nout1}
N 920 -560 1020 -560 {lab=GND}
N 920 -670 1040 -670 {lab=nout1}
N 920 -690 920 -670 {lab=nout1}
N 1040 -720 1040 -670 {lab=nout1}
N 1040 -720 1060 -720 {lab=nout1}
N 1040 -670 1040 -620 {lab=nout1}
N 1040 -620 1060 -620 {lab=nout1}
N 1220 -860 1220 -830 {lab=#net5
}
N 1220 -760 1350 -760 {lab=vboost
}
N 1220 -800 1220 -760 {lab=vboost}
N 1160 -800 1180 -800 {lab=vboost}
N 1160 -800 1160 -760 {lab=vboost}
N 1160 -760 1220 -760 {lab=vboost}
N 1380 -760 1440 -760 {lab=VHDD}
N 1440 -720 1440 -640 {lab=VHDD}
N 1440 -580 1440 -560 {lab=GND}
N 1380 -720 1440 -720 {lab=VHDD}
N 1440 -760 1440 -720 {lab=VHDD}
C {devices/launcher.sym} 610 -970 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="VCR authors" rev=1.0 lock=true}
C {devices/code_shown.sym} 1580 -1610 0 0 {name=MODEL1 only_toplevel=true
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
.param temp=27
.options savecurrents klu method=gear reltol=1e-3 abstol=1e-15 gmin=1e-15
.probe alli
.control

save all
set appendwrite

tran 1n 0.5u
remzerovec

save all
set appendwrite

write @schname\\\\.raw
set appendwrite

* Plotting
plot vsw vboost VHDD
plot i(vout2)

*quit
.endc
"}
C {devices/vsource.sym} 440 -610 0 0 {name=VDD value=3.3}
C {lab_pin.sym} 440 -780 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {isource.sym} 520 -610 0 0 {name=I1 value=50u
}
C {lab_pin.sym} 700 -780 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {osc.sym} 700 -680 0 0 {name=x1}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1080 -620 0 0 {name=M8
l=0.45u
w=5u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 1080 -720 0 0 {name=M6
l=0.4u
w=5u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 1100 -860 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {sg13cmos5l_pr/cap_cmomi.sym} 1220 -720 0 0 {name=C2
model=cap_cmomi
w=10e-6
l=10e-6
mmin=1
mmax=4
feed=double
subblock=0
m=1
mm_ok=1
spiceprefix=X
}
C {ammeter.sym} 1100 -810 0 0 {name=vout1 savecurrent=true spice_ignore=0}
C {lab_pin.sym} 1220 -940 1 0 {name=p5 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 1320 -760 3 1 {name=p6 sig_type=std_logic lab=vboost
}
C {ammeter.sym} 1220 -890 0 0 {name=vout2 savecurrent=true }
C {lab_pin.sym} 820 -700 3 1 {name=p7 sig_type=std_logic lab=out1}
C {ammeter.sym} 1050 -560 1 0 {name=vout3 savecurrent=true spice_ignore=0}
C {lab_pin.sym} 1220 -670 0 1 {name=p11 sig_type=std_logic lab=vsw
}
C {devices/gnd.sym} 440 -540 0 1 {name=l4 lab=GND}
C {lab_pin.sym} 920 -670 0 1 {name=p13 sig_type=std_logic lab=nout1}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 900 -620 0 0 {name=M2
l=0.45u
w=0.3u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 900 -720 0 0 {name=M3
l=0.4u
w=0.3u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 920 -860 1 0 {name=p12 sig_type=std_logic lab=VDD}
C {ammeter.sym} 920 -810 0 0 {name=vout4 savecurrent=true spice_ignore=0}
C {sg13_lv_pmos.sym} 1200 -800 0 0 {name=M1
l=0.4u
w=5u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/cap_cmomi.sym} 1440 -610 0 0 {name=C1
model=cap_cmomi
w=10e-6
l=10e-6
mmin=1
mmax=4
feed=double
subblock=0
m=1
mm_ok=1
spiceprefix=X
}
C {devices/gnd.sym} 1440 -560 0 1 {name=l1 lab=GND}
C {sg13_lv_pmos.sym} 1380 -740 3 0 {name=M4
l=0.4u
w=5u
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 1440 -760 0 1 {name=p4 sig_type=std_logic lab=VHDD
}
