v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 660 -520 660 -430 {lab=POAVDD}
N 620 -480 620 -450 {lab=IOADISABLE}
N 620 -310 620 -240 {lab=IOAIREF}
N 770 -380 800 -380 {lab=VOUT}
N 350 -360 380 -360 {lab=V2}
N 440 -360 540 -360 {lab=#net1}
N 560 -400 580 -400 {lab=#net2}
N 560 -620 610 -620 {lab=#net2}
N 770 -620 770 -380 {lab=VOUT}
N 750 -380 770 -380 {lab=VOUT}
N 670 -620 770 -620 {lab=VOUT}
N 540 -360 580 -360 {lab=#net1}
N 660 -330 660 -240 {lab=POAVSS}
N 560 -620 560 -400 {lab=#net2}
N 540 -620 560 -620 {lab=#net2}
N 440 -620 480 -620 {lab=V1}
N 540 -360 540 -330 {lab=#net1}
N 540 -270 540 -240 {lab=POAVSS}
C {title.sym} 160 0 0 0 {name=l1 author="VCR authors"}
C {iopin.sym} 660 -240 1 0 {name=p1 lab=POAVSS}
C {iopin.sym} 660 -520 0 0 {name=p2 lab=POAVDD}
C {iopin.sym} 620 -240 1 0 {name=p5 lab=IOAIREF}
C {iopin.sym} 440 -620 2 0 {name=p6 lab=V1
}
C {iopin.sym} 800 -380 0 0 {name=p7 lab=VOUT}
C {iopin.sym} 350 -360 2 0 {name=p8 lab=V2
}
C {iopin.sym} 620 -480 3 0 {name=p3 lab=IOADISABLE}
C {lab_pin.sym} 540 -240 3 0 {name=p4 sig_type=std_logic lab=POAVSS}
C {macros/voltage_controlled_resistors/macros/opamp/schematic/xschem/op_amp_ver_2.sym} 650 -380 0 0 {name=x1}
C {sg13cmos5l_pr/rppd.sym} 880 -660 1 0 {name=R1
w=0.5e-6
l=30e-6
model=rppd
body=POAVSS
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 70.0e-6 / @w + 260.0 * ( (@b + 1)* @l + ( 1.081*( @w + 6.0e-9 ) + 0.18e-6 )*@b ) / ( @w + 6.0e-9 ) ) / @m  )"
spice_ignore=true}
C {sg13cmos5l_pr/rhigh.sym} 510 -620 1 0 {name=R5
w=2e-6
l=20e-6
model=rhigh
body=POAVSS
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13cmos5l_pr/rhigh.sym} 640 -620 1 0 {name=R2
w=2e-6
l=20e-6
model=rhigh
body=POAVSS
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13cmos5l_pr/rhigh.sym} 410 -360 1 0 {name=R3
w=2e-6
l=20e-6
model=rhigh
body=POAVSS
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13cmos5l_pr/rhigh.sym} 540 -300 2 0 {name=R4
w=2e-6
l=20e-6
model=rhigh
body=POAVSS
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
