v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1660 -720 2460 -320 {flags=graph
y1=-0.3
y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin
vout"
color="4 21"
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
autoload=0}
B 2 1660 -1160 2460 -760 {flags=graph
y1=0.00047999882
y2=0.001279998
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
color=4
node=i(VDD)}
T {Testbench for Output Voltage Swing analysis - Inverter} 520 -1730 0 0 1 1 {}
N 840 -640 840 -620 {lab=GND}
N 980 -860 1040 -860 {lab=#net1}
N 1040 -900 1040 -860 {lab=#net1}
N 1020 -900 1040 -900 {lab=#net1}
N 1040 -900 1060 -900 {lab=#net1}
N 1040 -760 1060 -760 {lab=#net2}
N 1040 -800 1040 -760 {lab=#net2}
N 1020 -760 1040 -760 {lab=#net2}
N 1040 -800 1100 -800 {lab=#net2}
N 1100 -800 1100 -790 {lab=#net2}
N 980 -870 980 -860 {lab=#net1}
N 1200 -760 1220 -760 {lab=out}
N 1200 -800 1200 -760 {lab=out}
N 1200 -800 1260 -800 {lab=out}
N 1260 -800 1260 -790 {lab=out}
N 1040 -860 1200 -860 {lab=#net1}
N 1200 -900 1200 -860 {lab=#net1}
N 1200 -900 1220 -900 {lab=#net1}
N 1100 -870 1100 -800 {lab=#net2}
N 980 -860 980 -790 {lab=#net1}
N 1260 -840 1260 -800 {lab=out}
N 980 -960 980 -900 {lab=#net3}
N 980 -960 1100 -960 {lab=#net3}
N 1100 -960 1100 -900 {lab=#net3}
N 1100 -960 1260 -960 {lab=#net3}
N 1260 -960 1260 -900 {lab=#net3}
N 980 -640 980 -620 {lab=GND}
N 1260 -640 1260 -620 {lab=GND}
N 840 -960 840 -700 {lab=#net3}
N 840 -960 980 -960 {lab=#net3}
N 980 -730 980 -700 {lab=#net4}
N 1260 -730 1260 -700 {lab=#net5}
N 1100 -760 1100 -620 {lab=GND}
N 940 -760 980 -760 {lab=GND}
N 940 -760 940 -620 {lab=GND}
N 1260 -760 1300 -760 {lab=GND}
N 1300 -760 1300 -620 {lab=GND}
N 1260 -840 1320 -840 {lab=out}
N 1260 -870 1260 -840 {lab=out}
C {devices/code_shown.sym} 40 -1630 0 0 {name=NGSPICE
only_toplevel=true 
value="
.include ../../../netlist/pex/inverter_magic_pex_3.spice
.param temp=27
.options savecurrents klu method=gear reltol=1e-3 abstol=1e-15 gmin=1e-15
.control

save all

* Operating Point Analysis
op
remzerovec
write @schname\\\\.raw
set appendwrite

* DC Sweep
dc VDD 2.5 4 0.01
remzerovec
write @schname\\\\.raw
set appendwrite

* Plotting
plot out 0

* Measurement
*meas dc Vgsp_at_Vcm when vout=Vcm
*print Vgsp_at_Vcm

* Write Data
*unset appendwrite
*set wr_vecnames
*set wr_singlescale
*wrdata ../plot_simulations/data/@schname\\\\.txt v(vin) v(vout)

*quit
.endc
"}
C {devices/launcher.sym} 1720 -1340 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1720 -1220 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw dc"
}
C {devices/launcher.sym} 1720 -1280 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 1960 -1330 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {devices/vsource.sym} 840 -670 0 0 {name=VDD value=3.3}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1080 -760 0 0 {name=M8
l=n_l
w=n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 840 -620 0 1 {name=l4 lab=GND}
C {sg13_lv_pmos.sym} 1080 -900 0 0 {name=M6
l=p_l
w=p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {code_shown.sym} 520 -930 0 0 {value="
.param n_w = 3u
.param n_l = 2.5u
.param p_w = 10u
.param p_l = 2u
.param r_w = 2e-6
.param r_l = 10e-6
"}
C {sg13_lv_pmos.sym} 1000 -900 0 1 {name=M1
l=p_l
w=p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13_lv_pmos.sym} 1240 -900 0 0 {name=M2
l=p_l
w=p_w
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1000 -760 0 1 {name=M3
l=n_l
w=5u
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1240 -760 0 0 {name=M4
l=n_l
w=n_w
 ng=1
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/rppd.sym} 1260 -670 0 0 {name=R1
w=2e-6
l=50e-6
model=rppd
body=sub!
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 70.0e-6 / @w + 260.0 * ( (@b + 1)* @l + ( 1.081*( @w + 6.0e-9 ) + 0.18e-6 )*@b ) / ( @w + 6.0e-9 ) ) / @m  )"
}
C {sg13cmos5l_pr/rppd.sym} 980 -670 0 0 {name=R2
w=2e-6
l=50e-6
model=rppd
body=sub!
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 70.0e-6 / @w + 260.0 * ( (@b + 1)* @l + ( 1.081*( @w + 6.0e-9 ) + 0.18e-6 )*@b ) / ( @w + 6.0e-9 ) ) / @m  )"
}
C {devices/gnd.sym} 980 -620 0 1 {name=l1 lab=GND}
C {devices/gnd.sym} 1260 -620 0 1 {name=l3 lab=GND}
C {devices/gnd.sym} 1100 -620 0 1 {name=l5 lab=GND}
C {devices/gnd.sym} 1300 -620 0 1 {name=l6 lab=GND}
C {devices/gnd.sym} 940 -620 0 1 {name=l7 lab=GND}
C {lab_pin.sym} 1320 -840 0 1 {name=p1 sig_type=std_logic lab=out}
