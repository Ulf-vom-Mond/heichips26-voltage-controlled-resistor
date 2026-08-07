v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Inverter with Dummies and with LV Transistors} 610 -1700 0 0 1 1 {}
N 1460 -600 1490 -600 {lab=vin}
N 1460 -800 1460 -700 {lab=vin}
N 1460 -800 1490 -800 {lab=vin}
N 1580 -800 1580 -700 {lab=vout}
N 1440 -700 1460 -700 {lab=vin}
N 1460 -700 1460 -600 {lab=vin}
N 1580 -700 1600 -700 {lab=vout}
N 1580 -700 1580 -600 {lab=vout}
N 1520 -800 1520 -760 {lab=VDD}
N 1520 -640 1520 -600 {lab=VSS}
N 1520 -860 1520 -840 {lab=nvctrl}
N 1440 -860 1520 -860 {lab=nvctrl}
N 1440 -540 1520 -540 {lab=vctrl}
N 1520 -560 1520 -540 {lab=vctrl}
N 1550 -600 1580 -600 {lab=vout}
N 1550 -800 1580 -800 {lab=vout}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1440 -700 2 0 {name=p10 lab=vin}
C {devices/iopin.sym} 1600 -700 2 1 {name=p6 lab=vout}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 1520 -580 1 1 {name=M3
l=\{tg_ch_len\}
w=\{tg_ngate_w*tg_ng\}
 ng=\{tg_ng\}
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {sg13cmos5l_pr/sg13_hv_pmos.sym} 1520 -820 3 1 {name=M4
l=\{tg_ch_len\}
w=\{tg_pgate_w*tg_ng\}
 ng=\{tg_ng\}
 m=1
  mm_ok=1
 model=sg13_hv_pmos
spiceprefix=X
}
C {devices/ipin.sym} 1440 -540 0 0 {name=p2 lab=vctrl}
C {devices/ipin.sym} 1440 -860 2 1 {name=p8 lab=nvctrl}
C {code_shown.sym} 1760 -850 0 0 {name=s1 only_toplevel=false value="
.param tg_ch_len=1u
.param tg_ngate_w=1u
.param tg_pgate_w=5u
.param tg_ng=40
"}
C {devices/iopin.sym} 1520 -760 1 0 {name=p11 lab=VDD}
C {devices/iopin.sym} 1520 -640 3 0 {name=p1 lab=VSS}
