v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench for transient analysis - VCR} 740 -1730 0 0 1 1 {}
N 220 -780 220 -640 {lab=VDD}
N 960 -600 960 -540 {lab=VSS
spice_ignore=short}
N 960 -780 960 -720 {lab=VDD
spice_ignore=short}
N 900 -720 920 -720 {lab=v1
spice_ignore=short}
N 900 -600 920 -600 {lab=v1
spice_ignore=short}
N 900 -660 900 -600 {lab=v1
spice_ignore=short}
N 960 -660 960 -630 {lab=nv1
spice_ignore=short}
N 60 -240 60 -200 {lab=VSS
spice_ignore=true}
N 60 -320 60 -300 {lab=v1
spice_ignore=true}
N 1640 -740 1660 -740 {lab=#net1
}
N 1820 -740 1840 -740 {lab=#net2
}
N 220 -560 220 -540 {lab=VSS}
N 180 -560 220 -560 {lab=VSS}
N 220 -580 220 -560 {lab=VSS}
N 80 -560 80 -540 {lab=GND}
N 80 -560 120 -560 {lab=GND}
N 1400 -700 1400 -680 {lab=VSS
}
N 960 -690 960 -660 {lab=nv1
spice_ignore=short}
N 900 -720 900 -660 {lab=v1
spice_ignore=short}
N 660 -580 660 -540 {lab=VSS}
N 500 -580 500 -540 {lab=VSS}
N 500 -660 500 -640 {lab=#net3}
N 500 -660 560 -660 {lab=#net3}
N 660 -780 660 -700 {lab=VDD}
N 760 -660 900 -660 {lab=v1}
N 660 -60 660 -40 {lab=VSS
spice_ignore=true}
N 500 -60 500 -40 {lab=VSS
spice_ignore=true}
N 500 -140 500 -120 {lab=#net2
spice_ignore=true}
N 500 -140 560 -140 {lab=#net2
spice_ignore=true}
N 660 -200 660 -180 {lab=VDD
spice_ignore=true}
N 960 -660 1120 -660 {lab=nv1}
N 1640 -520 1660 -520 {lab=#net1
}
N 1820 -520 1840 -520 {lab=VSS
}
N 1620 -560 1660 -560 {lab=nnnnv1l
}
N 1640 -740 1640 -520 {lab=#net1
}
N 1840 -520 1840 -480 {lab=VSS
}
N 1400 -800 1400 -780 {lab=VDD
}
N 1120 -760 1120 -660 {lab=nv1}
N 1120 -760 1160 -760 {lab=nv1}
N 1120 -660 1120 -560 {lab=nv1}
N 1120 -560 1160 -560 {lab=nv1}
N 1300 -740 1360 -740 {lab=nnv1h
}
N 1400 -540 1400 -520 {lab=VSS
}
N 1400 -640 1400 -620 {lab=VDD
}
N 1300 -580 1360 -580 {lab=nnv1l
}
N 1480 -740 1620 -740 {lab=nnnv1h}
N 1400 -360 1400 -340 {lab=VSS
}
N 1400 -460 1400 -440 {lab=VDD
}
N 1460 -400 1620 -400 {lab=nnnnv1l}
N 1400 -880 1400 -860 {lab=VSS
}
N 1400 -980 1400 -960 {lab=VDD
}
N 1460 -920 1600 -920 {lab=nnnnv1h}
N 1340 -480 1480 -480 {lab=nnnv1l}
N 1340 -480 1340 -400 {lab=nnnv1l}
N 1340 -400 1360 -400 {lab=nnnv1l}
N 1480 -580 1480 -480 {lab=nnnv1l}
N 1460 -580 1480 -580 {lab=nnnv1l}
N 1480 -820 1480 -740 {lab=nnnv1h}
N 1460 -740 1480 -740 {lab=nnnv1h}
N 1340 -820 1480 -820 {lab=nnnv1h}
N 1340 -920 1340 -820 {lab=nnnv1h}
N 1340 -920 1360 -920 {lab=nnnv1h}
N 1600 -920 1600 -760 {lab=nnnnv1h}
N 1620 -560 1620 -400 {lab=nnnnv1l}
N 1900 -740 1920 -740 {lab=VDD}
N 1120 -400 1120 -340 {lab=VSS}
N 1620 -780 1620 -740 {lab=nnnv1h}
N 1620 -780 1660 -780 {lab=nnnv1h}
N 1600 -580 1600 -540 {lab=nnnv1l}
N 1480 -580 1600 -580 {lab=nnnv1l}
N 1600 -540 1660 -540 {lab=nnnv1l}
N 1600 -760 1660 -760 {lab=nnnnv1h}
C {devices/launcher.sym} 560 -880 0 0 {name=h2
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
.param f = 1Meg

* Derived timing parameters
.param period = \{1/f\}
.param ton    = \{period/2\}
.csparam tstop  = \{1*period\}
.csparam tstep  = \{period/1000\}
.param tr     = \{period/1000\}
.param tf     = \{period/1000\}
.options savecurrents klu method=gear reltol=1e-3 abstol=1e-12 gmin=1e-15
.probe alli
.control

save all
set appendwrite

tran \{$&tstep\} \{$&tstop\}
remzerovec

save all
set appendwrite

write @schname\\\\.raw
set appendwrite

* Plotting
*plot v1+12 v2+8 v3+4 v4
*plot v0+12 v1+8 nv1+4 nnv1 nnv2
*plot i(vout2)
*plot v1+8 nv1+4 nnv1h nnv1l nnnv1h-4 nnnv1l-4
*plot v1+4 nv1
plot v1+16 nv1+12 nnv1h+8 nnv1l+8 nnnv1h+3.7 nnnnv1l+3.7 nnnnv1h nnnv1l
plot nnnv1h+3.7 nnnnv1l+3.7 nnnnv1h nnnv1l
plot i(R1) mean(i(R1))
plot mean(i(R1)) ylimit -20u 20u

*quit
.endc
"}
C {devices/vsource.sym} 220 -610 0 0 {name=VDD value=3.3}
C {lab_pin.sym} 220 -780 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 940 -600 0 0 {name=M2
l=\{n_l\}
w=\{n_w\}
 ng=\{ng\}
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 940 -720 0 0 {name=M3
l=\{p_l\}
w=\{p_w\}
ng=\{ng\}
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_pin.sym} 960 -780 2 0 {name=p12 sig_type=std_logic lab=VDD
}
C {devices/vsource.sym} 60 -270 0 0 {name=vin value="PULSE(0 3.3 \{period/4\} \{tr\} \{tf\} \{ton\} \{period\})"
spice_ignore=true}
C {lab_pin.sym} 780 -660 3 1 {name=p1 sig_type=std_logic lab=v1}
C {code_shown.sym} 720 -1050 0 0 {value="
.param w   = 0.3u
.param ng  = 1
.param n_ng = ng
.param n_w = \{w*n_ng\}
.param n_l = 0.45u
.param p_ng = ng
.param p_w = \{1*w*p_ng\}
.param p_l = 0.4u
"}
C {transmission_gate.sym} 1740 -760 0 0 {name=x1
}
C {lab_pin.sym} 1740 -820 2 0 {name=p4 sig_type=std_logic lab=VDD
}
C {devices/gnd.sym} 220 -540 0 1 {name=l11 lab=VSS}
C {devices/gnd.sym} 60 -200 0 1 {name=l1 lab=VSS
spice_ignore=true}
C {devices/gnd.sym} 960 -540 0 1 {name=l3 lab=VSS
}
C {devices/gnd.sym} 1740 -700 0 1 {name=l8 lab=VSS
}
C {gnd.sym} 80 -540 0 0 {name=l10 lab=GND}
C {res.sym} 150 -560 1 0 {name=R2
value=0
footprint=1206
device=resistor
m=1
}
C {devices/gnd.sym} 1400 -680 0 1 {name=l12 lab=VSS
}
C {lab_pin.sym} 1400 -800 2 0 {name=p7 sig_type=std_logic lab=VDD
}
C {hv_inverter_40u.sym} 1400 -740 0 0 {name=x2
}
C {lab_pin.sym} 1080 -660 3 1 {name=p9 sig_type=std_logic lab=nv1
}
C {osc.sym} 660 -640 0 0 {name=x3}
C {isource.sym} 500 -610 0 0 {name=I0 value=3.3u}
C {devices/gnd.sym} 500 -540 0 1 {name=l13 lab=VSS}
C {devices/gnd.sym} 660 -540 0 1 {name=l14 lab=VSS}
C {lab_pin.sym} 660 -780 2 0 {name=p10 sig_type=std_logic lab=VDD}
C {osc.sym} 660 -120 0 0 {name=x4
spice_ignore=true}
C {isource.sym} 500 -90 0 0 {name=I1 value=33u
spice_ignore=true}
C {devices/gnd.sym} 500 -40 0 1 {name=l15 lab=VSS
spice_ignore=true}
C {devices/gnd.sym} 660 -40 0 1 {name=l16 lab=VSS
spice_ignore=true}
C {lab_pin.sym} 660 -200 2 0 {name=p11 sig_type=std_logic lab=VDD
spice_ignore=true}
C {lab_pin.sym} 760 -140 0 1 {name=p14 sig_type=std_logic lab=v0
spice_ignore=true}
C {transmission_gate.sym} 1740 -540 0 0 {name=x6
}
C {lab_pin.sym} 1740 -600 2 0 {name=p3 sig_type=std_logic lab=VDD
}
C {devices/gnd.sym} 1740 -480 0 1 {name=l18 lab=VSS
}
C {devices/gnd.sym} 1840 -480 0 1 {name=l19 lab=VSS
}
C {low_th_inverter.sym} 1220 -580 0 0 {name=x7
}
C {high_th_inverter.sym} 1220 -740 0 0 {name=x8
}
C {devices/gnd.sym} 1220 -700 0 1 {name=l4 lab=VSS
}
C {lab_pin.sym} 1220 -620 2 0 {name=p5 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 1220 -780 2 0 {name=p8 sig_type=std_logic lab=VDD
}
C {devices/gnd.sym} 1220 -540 0 1 {name=l5 lab=VSS
}
C {lab_pin.sym} 1340 -740 3 1 {name=p13 sig_type=std_logic lab=nnv1h
}
C {lab_pin.sym} 1340 -580 3 1 {name=p17 sig_type=std_logic lab=nnv1l
}
C {devices/gnd.sym} 1400 -520 0 1 {name=l6 lab=VSS
}
C {lab_pin.sym} 1400 -640 2 0 {name=p18 sig_type=std_logic lab=VDD
}
C {hv_inverter_40u.sym} 1400 -580 0 0 {name=x9
}
C {lab_pin.sym} 1540 -740 3 1 {name=p19 sig_type=std_logic lab=nnnv1h
}
C {lab_pin.sym} 1540 -580 3 1 {name=p20 sig_type=std_logic lab=nnnv1l
}
C {devices/gnd.sym} 1400 -340 0 1 {name=l7 lab=VSS
}
C {lab_pin.sym} 1400 -460 2 0 {name=p21 sig_type=std_logic lab=VDD
}
C {hv_inverter_40u.sym} 1400 -400 0 0 {name=x10
}
C {lab_pin.sym} 1540 -400 3 1 {name=p22 sig_type=std_logic lab=nnnnv1l
}
C {devices/gnd.sym} 1400 -860 0 1 {name=l9 lab=VSS
}
C {lab_pin.sym} 1400 -980 2 0 {name=p23 sig_type=std_logic lab=VDD
}
C {hv_inverter_40u.sym} 1400 -920 0 0 {name=x11
}
C {lab_pin.sym} 1540 -920 3 1 {name=p24 sig_type=std_logic lab=nnnnv1h
}
C {lab_pin.sym} 1920 -740 2 0 {name=p6 sig_type=std_logic lab=VDD
}
C {res.sym} 1870 -740 1 0 {name=R1
value=0
footprint=1206
device=resistor
m=1
}
C {sg13cmos5l_pr/cap_cmomi.sym} 1120 -430 0 0 {name=C1
model=cap_cmomi
w=1e-6
l=1e-6
mmin=1
mmax=4
feed=double
subblock=0
m=1
mm_ok=1
spiceprefix=X
}
C {devices/gnd.sym} 1120 -340 0 1 {name=l17 lab=VSS
}
