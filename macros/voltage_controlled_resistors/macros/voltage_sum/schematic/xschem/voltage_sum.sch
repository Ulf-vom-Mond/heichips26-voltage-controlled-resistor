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
N 350 -440 380 -440 {lab=V1}
N 350 -400 380 -400 {lab=V2}
N 350 -360 380 -360 {lab=V3}
N 440 -440 480 -440 {lab=#net1}
N 480 -400 480 -360 {lab=#net1}
N 440 -360 480 -360 {lab=#net1}
N 440 -400 480 -400 {lab=#net1}
N 480 -440 480 -400 {lab=#net1}
N 560 -400 580 -400 {lab=#net2}
N 560 -620 610 -620 {lab=#net2}
N 770 -620 770 -380 {lab=VOUT}
N 750 -380 770 -380 {lab=VOUT}
N 670 -620 770 -620 {lab=VOUT}
N 480 -360 580 -360 {lab=#net1}
N 660 -330 660 -240 {lab=POAVSS}
N 560 -620 560 -400 {lab=#net2}
N 540 -620 560 -620 {lab=#net2}
N 440 -620 480 -620 {lab=POAVSS}
C {title.sym} 160 0 0 0 {name=l1 author="VCR authors"}
C {iopin.sym} 660 -240 0 0 {name=p1 lab=POAVSS}
C {iopin.sym} 660 -520 0 0 {name=p2 lab=POAVDD}
C {iopin.sym} 620 -240 2 0 {name=p5 lab=IOAIREF}
C {iopin.sym} 350 -440 2 0 {name=p6 lab=V1
}
C {iopin.sym} 800 -380 0 0 {name=p7 lab=VOUT}
C {/home/claforge/Documents/heichips26-voltage-controlled-resistor/macros/heichips26_analog_project/macros/opamp/schematic/xschem/op_amp_ver_2.sym} 650 -380 0 0 {name=x1}
C {iopin.sym} 350 -400 2 0 {name=p8 lab=V2
}
C {iopin.sym} 350 -360 2 0 {name=p9 lab=V3}
C {sg13cmos5l_pr/rppd.sym} 510 -620 1 0 {name=R5
w=0.5e-6
l=10e-6
model=rppd
body=POAVSS
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 70.0e-6 / @w + 260.0 * ( (@b + 1)* @l + ( 1.081*( @w + 6.0e-9 ) + 0.18e-6 )*@b ) / ( @w + 6.0e-9 ) ) / @m  )"
}
C {iopin.sym} 620 -480 3 0 {name=p3 lab=IOADISABLE}
C {sg13cmos5l_pr/rppd.sym} 640 -620 3 0 {name=R1
w=0.5e-6
l=20e-6
model=rppd
body=POAVSS
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 70.0e-6 / @w + 260.0 * ( (@b + 1)* @l + ( 1.081*( @w + 6.0e-9 ) + 0.18e-6 )*@b ) / ( @w + 6.0e-9 ) ) / @m  )"
}
C {sg13cmos5l_pr/rppd.sym} 410 -440 1 0 {name=R2
w=0.5e-6
l=10e-6
model=rppd
body=POAVSS
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 70.0e-6 / @w + 260.0 * ( (@b + 1)* @l + ( 1.081*( @w + 6.0e-9 ) + 0.18e-6 )*@b ) / ( @w + 6.0e-9 ) ) / @m  )"
}
C {sg13cmos5l_pr/rppd.sym} 410 -400 1 0 {name=R3
w=0.5e-6
l=10e-6
model=rppd
body=POAVSS
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 70.0e-6 / @w + 260.0 * ( (@b + 1)* @l + ( 1.081*( @w + 6.0e-9 ) + 0.18e-6 )*@b ) / ( @w + 6.0e-9 ) ) / @m  )"
}
C {sg13cmos5l_pr/rppd.sym} 410 -360 1 0 {name=R4
w=0.5e-6
l=10e-6
model=rppd
body=POAVSS
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 70.0e-6 / @w + 260.0 * ( (@b + 1)* @l + ( 1.081*( @w + 6.0e-9 ) + 0.18e-6 )*@b ) / ( @w + 6.0e-9 ) ) / @m  )"
}
C {lab_pin.sym} 440 -620 0 0 {name=p4 sig_type=std_logic lab=POAVSS}
