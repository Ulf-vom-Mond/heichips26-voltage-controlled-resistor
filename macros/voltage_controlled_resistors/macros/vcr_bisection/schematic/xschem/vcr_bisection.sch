v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 40 -350 60 -350 {lab=Vdd}
N 160 -350 180 -350 {lab=Vss}
N 130 -300 130 -280 {lab=#net1}
N 130 -280 230 -280 {lab=#net1}
N 230 -440 230 -280 {lab=#net1}
N 110 -440 230 -440 {lab=#net1}
N 110 -440 110 -420 {lab=#net1}
N 1060 -350 1080 -350 {lab=Vdd}
N 1180 -350 1200 -350 {lab=Vss}
N 1150 -300 1150 -280 {lab=#net2}
N 1130 -440 1250 -440 {lab=#net2}
N 1130 -440 1130 -420 {lab=#net2}
N 1150 -280 1250 -280 {lab=#net2}
N 1110 -440 1130 -440 {lab=#net2}
N 90 -300 90 0 {lab=T1}
N 0 0 90 0 {lab=T1}
N 460 -70 460 -40 {lab=vgate}
N 530 -220 550 -220 {lab=Vdd}
N 370 -200 390 -200 {lab=Vss}
N 480 -300 500 -300 {lab=Vctrl}
N 500 -300 500 -280 {lab=Vctrl}
N 330 -280 460 -280 {lab=Vcm}
N 90 0 430 0 {lab=T1}
N 1250 -440 1250 -280 {lab=#net2}
N 1110 -300 1110 0 {lab=T2}
N 330 -440 1050 -440 {lab=Vcm}
N 330 -440 330 -280 {lab=Vcm}
N 310 -440 330 -440 {lab=Vcm}
N 460 0 460 40 {lab=Vss}
N 1110 0 1310 0 {lab=T2}
N 490 0 1110 0 {lab=T2}
N 290 -780 290 -760 {lab=Vdd}
N 290 -620 290 -600 {lab=Vss}
N 350 -780 350 -760 {lab=Vdd}
N 390 -780 410 -780 {lab=Vdd}
N 410 -780 410 -760 {lab=Vdd}
N 390 -780 390 -760 {lab=Vdd}
N 370 -780 390 -780 {lab=Vdd}
N 370 -780 370 -760 {lab=Vdd}
N 350 -780 370 -780 {lab=Vdd}
N 370 -800 370 -780 {lab=Vdd}
N 330 -800 330 -760 {lab=Vss}
N 350 -620 350 -600 {lab=ib1}
N 480 -780 480 -760 {lab=Vdd}
N 480 -620 480 -600 {lab=Vss}
N 540 -780 540 -760 {lab=Vdd}
N 580 -780 600 -780 {lab=Vdd}
N 600 -780 600 -760 {lab=Vdd}
N 580 -780 580 -760 {lab=Vdd}
N 560 -780 580 -780 {lab=Vdd}
N 560 -780 560 -760 {lab=Vdd}
N 540 -780 560 -780 {lab=Vdd}
N 560 -800 560 -780 {lab=Vdd}
N 520 -800 520 -760 {lab=Vss}
N 540 -620 540 -600 {lab=ib2}
N 670 -780 670 -760 {lab=Vdd}
N 670 -620 670 -600 {lab=Vss}
N 730 -780 730 -760 {lab=Vdd}
N 770 -780 790 -780 {lab=Vdd}
N 790 -780 790 -760 {lab=Vdd}
N 770 -780 770 -760 {lab=Vdd}
N 750 -780 770 -780 {lab=Vdd}
N 750 -780 750 -760 {lab=Vdd}
N 730 -780 750 -780 {lab=Vdd}
N 750 -800 750 -780 {lab=Vdd}
N 710 -800 710 -760 {lab=Vss}
N 730 -620 730 -600 {lab=ib3}
N 40 -370 60 -370 {lab=ib1}
N 1060 -370 1080 -370 {lab=ib3}
N 530 -150 550 -150 {lab=ib2}
N 230 -440 250 -440 {lab=#net1}
C {res.sym} 280 -440 3 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {ipin.sym} 0 0 0 0 {name=p1 lab=T1}
C {ipin.sym} 1310 0 2 0 {name=p2 lab=T2}
C {lab_pin.sym} 40 -350 0 0 {name=p7 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 180 -350 2 0 {name=p9 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 1060 -350 0 0 {name=p19 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 1200 -350 2 0 {name=p20 sig_type=std_logic lab=Vss}
C {res.sym} 1080 -440 3 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 550 -220 2 0 {name=p22 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 370 -200 0 0 {name=p23 sig_type=std_logic lab=Vss}
C {ipin.sym} 480 -300 0 0 {name=p25 lab=Vctrl
}
C {ipin.sym} 10 -210 0 0 {name=p3 lab=Vdd}
C {ipin.sym} 10 -180 0 0 {name=p4 lab=Vss}
C {lab_pin.sym} 480 -440 0 0 {name=p5 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} 460 -50 2 0 {name=p8 sig_type=std_logic lab=vgate}
C {voltage_sum.sym} 460 -170 1 0 {name=x4}
C {sg13cmos5l_pr/sg13_hv_nmos.sym} 460 -20 1 0 {name=M1
l=10u
w=15u
 ng=2
 m=1
  mm_ok=1
 model=sg13_hv_nmos
spiceprefix=X
}
C {lab_pin.sym} 460 40 0 0 {name=p6 sig_type=std_logic lab=Vss}
C {/home/santi/heichips26-voltage-controlled-resistor/macros/voltage_controlled_resistors/macros/vcr_bisection/macros/opamp_rtr/schematic/xschem/opamp_rtr.sym} 150 -320 3 0 {name=x1}
C {/home/santi/heichips26-voltage-controlled-resistor/macros/voltage_controlled_resistors/macros/vcr_bisection/macros/opamp_rtr/schematic/xschem/opamp_rtr.sym} 1170 -320 3 0 {name=x2}
C {/home/santi/heichips26-voltage-controlled-resistor/macros/voltage_controlled_resistors/macros/vcr_bisection/macros/isource_beta/schematic/xschem/isource_beta.sym} 290 -690 0 0 {name=x3}
C {lab_pin.sym} 290 -780 1 0 {name=p10 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 290 -600 3 0 {name=p11 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 330 -800 1 0 {name=p12 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 370 -800 1 0 {name=p13 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 350 -600 3 0 {name=p14 sig_type=std_logic lab=ib1}
C {/home/santi/heichips26-voltage-controlled-resistor/macros/voltage_controlled_resistors/macros/vcr_bisection/macros/isource_beta/schematic/xschem/isource_beta.sym} 480 -690 0 0 {name=x5}
C {lab_pin.sym} 480 -780 1 0 {name=p15 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 480 -600 3 0 {name=p16 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 520 -800 1 0 {name=p17 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 560 -800 1 0 {name=p26 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 540 -600 3 0 {name=p27 sig_type=std_logic lab=ib2}
C {/home/santi/heichips26-voltage-controlled-resistor/macros/voltage_controlled_resistors/macros/vcr_bisection/macros/isource_beta/schematic/xschem/isource_beta.sym} 670 -690 0 0 {name=x6}
C {lab_pin.sym} 670 -780 1 0 {name=p28 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 670 -600 3 0 {name=p29 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 710 -800 1 0 {name=p30 sig_type=std_logic lab=Vss}
C {lab_pin.sym} 750 -800 1 0 {name=p31 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 730 -600 3 0 {name=p32 sig_type=std_logic lab=ib3}
C {lab_pin.sym} 40 -370 0 0 {name=p18 sig_type=std_logic lab=ib1}
C {lab_pin.sym} 1060 -370 0 0 {name=p33 sig_type=std_logic lab=ib3}
C {lab_pin.sym} 550 -150 2 0 {name=p21 sig_type=std_logic lab=ib2}
