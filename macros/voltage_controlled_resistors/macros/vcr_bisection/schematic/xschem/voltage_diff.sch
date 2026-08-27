v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 650 -240 680 -240 {lab=vout}
N 440 -480 490 -480 {lab=#net1}
N 650 -480 650 -240 {lab=vout}
N 550 -480 650 -480 {lab=vout}
N 440 -480 440 -220 {lab=#net1}
N 420 -480 440 -480 {lab=#net1}
N 320 -480 360 -480 {lab=vin1}
N 410 -260 410 -230 {lab=#net2}
N 410 -170 410 -140 {lab=vss}
N 220 -260 250 -260 {lab=vin2}
N 310 -260 410 -260 {lab=#net2}
N 590 -240 650 -240 {lab=vout}
N 540 -310 540 -290 {lab=ibias}
N 520 -310 520 -290 {lab=vdd}
N 520 -190 520 -170 {lab=vss}
N 440 -220 470 -220 {lab=#net1}
N 410 -260 470 -260 {lab=#net2}
C {title.sym} 160 0 0 0 {name=l1 author="VCR authors"}
C {iopin.sym} 320 -480 2 0 {name=p6 lab=vin1
}
C {iopin.sym} 680 -240 0 0 {name=p7 lab=vout}
C {iopin.sym} 220 -260 2 0 {name=p8 lab=vin2
}
C {lab_pin.sym} 410 -140 3 0 {name=p4 sig_type=std_logic lab=vss}
C {sg13cmos5l_pr/rhigh.sym} 390 -480 1 0 {name=R5
w=2e-6
l=100e-6
model=rhigh
body=vss
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13cmos5l_pr/rhigh.sym} 520 -480 1 0 {name=R2
w=2e-6
l=100e-6
model=rhigh
body=vss
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13cmos5l_pr/rhigh.sym} 280 -260 1 0 {name=R3
w=2e-6
l=100e-6
model=rhigh
body=vss
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {sg13cmos5l_pr/rhigh.sym} 410 -200 2 0 {name=R4
w=2e-6
l=100e-6
model=rhigh
body=vss
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
C {opamp_rtr.sym} 490 -200 0 0 {name=x1}
C {iopin.sym} 520 -170 1 0 {name=p1 lab=vss
}
C {iopin.sym} 520 -310 3 0 {name=p2 lab=vdd
}
C {iopin.sym} 540 -310 3 0 {name=p3 lab=ibias
}
