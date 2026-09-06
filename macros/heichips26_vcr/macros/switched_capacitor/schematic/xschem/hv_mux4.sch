v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 240 -80 240 -60 {lab=VDD}
N 240 60 240 80 {lab=VSS}
N 0 -360 0 -340 {lab=VSS}
N -260 -440 -80 -440 {lab=in1}
N 0 -500 0 -480 {lab=VDD}
N 0 -80 0 -60 {lab=VSS}
N -260 -160 -80 -160 {lab=in2}
N 0 -220 0 -200 {lab=VDD}
N 320 0 340 0 {lab=out}
N 80 -140 100 -140 {lab=#net1}
N 80 -420 120 -420 {lab=#net2}
N -460 -1460 -460 -1440 {lab=VSS}
N -460 -1560 -460 -1540 {lab=VDD}
N 0 200 0 220 {lab=VSS}
N -260 120 -80 120 {lab=in3}
N 0 60 0 80 {lab=VDD}
N 0 480 0 500 {lab=VSS}
N -260 400 -80 400 {lab=in4}
N 0 340 0 360 {lab=VDD}
N 100 -140 100 -10 {lab=#net1}
N 100 -10 160 -10 {lab=#net1}
N 120 -420 120 -30 {lab=#net2}
N 120 -30 160 -30 {lab=#net2}
N 80 140 100 140 {lab=#net3}
N 80 420 120 420 {lab=#net4}
N 100 10 100 140 {lab=#net3}
N 100 10 160 10 {lab=#net3}
N 120 30 120 420 {lab=#net4}
N 120 30 160 30 {lab=#net4}
N -260 -540 -260 -520 {lab=VSS}
N -260 -680 -260 -660 {lab=VDD}
N -180 -600 -160 -600 {lab=#net5}
N -160 -600 -160 440 {lab=#net5}
N -160 440 -80 440 {lab=#net5}
N -260 -1320 -260 -1300 {lab=VSS}
N -260 -1460 -260 -1440 {lab=VDD}
N -180 -1380 -100 -1380 {lab=#net6}
N -100 -1380 -100 -400 {lab=#net6}
N -100 -400 -80 -400 {lab=#net6}
N -260 -1060 -260 -1040 {lab=VSS}
N -260 -1200 -260 -1180 {lab=VDD}
N -180 -1120 -120 -1120 {lab=#net7}
N -460 -1220 -460 -1200 {lab=VSS}
N -460 -1320 -460 -1300 {lab=VDD}
N -260 -800 -260 -780 {lab=VSS}
N -260 -940 -260 -920 {lab=VDD}
N -180 -860 -140 -860 {lab=#net8}
N -400 -1500 -360 -1500 {lab=#net9}
N -360 -1500 -360 -1400 {lab=#net9}
N -360 -1400 -340 -1400 {lab=#net9}
N -520 -1500 -500 -1500 {lab=selA}
N -520 -1500 -520 -880 {lab=selA}
N -540 -1260 -540 -1100 {lab=selB}
N -540 -1100 -340 -1100 {lab=selB}
N -400 -1260 -380 -1260 {lab=#net10}
N -380 -1360 -380 -1260 {lab=#net10}
N -380 -1360 -340 -1360 {lab=#net10}
N -520 -880 -340 -880 {lab=selA}
N -540 -1260 -500 -1260 {lab=selB}
N -540 -1100 -540 -580 {lab=selB}
N -540 -580 -340 -580 {lab=selB}
N -520 -880 -520 -620 {lab=selA}
N -520 -620 -340 -620 {lab=selA}
N -560 -1500 -520 -1500 {lab=selA}
N -560 -1460 -540 -1460 {lab=selB}
N -120 -1120 -120 -120 {lab=#net7}
N -120 -120 -80 -120 {lab=#net7}
N -140 160 -80 160 {lab=#net8}
N -140 -860 -140 160 {lab=#net8}
N -540 -1460 -540 -1260 {lab=selB}
N -360 -1400 -360 -1140 {lab=#net9}
N -360 -1140 -340 -1140 {lab=#net9}
N -380 -1260 -380 -840 {lab=#net10}
N -380 -840 -340 -840 {lab=#net10}
C {devices/ipin.sym} -260 -440 0 0 {name=p10 lab=in1}
C {devices/iopin.sym} -540 -60 3 0 {name=p11 lab=VDD}
C {devices/iopin.sym} -540 60 1 0 {name=p1 lab=VSS}
C {devices/opin.sym} 340 0 0 0 {name=p6 lab=out}
C {lab_pin.sym} 0 -340 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 240 80 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 -500 1 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 240 -80 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} -260 -160 0 0 {name=p9 lab=in2}
C {lab_pin.sym} 0 -60 3 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 -220 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {hv_inverter_40u.sym} -460 -1500 0 0 {name=x3}
C {lab_pin.sym} -460 -1440 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -460 -1560 1 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} -560 -1500 0 0 {name=p14 lab=selA}
C {hv_nor4.sym} 240 0 0 0 {name=x1}
C {hv_nor.sym} 0 -420 0 0 {name=x2}
C {hv_nor.sym} 0 -140 0 0 {name=x4}
C {devices/ipin.sym} -260 120 0 0 {name=p15 lab=in3}
C {lab_pin.sym} 0 220 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 60 1 0 {name=p17 sig_type=std_logic lab=VDD}
C {hv_nor.sym} 0 140 0 0 {name=x5}
C {devices/ipin.sym} -260 400 0 0 {name=p18 lab=in4}
C {lab_pin.sym} 0 500 3 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 340 1 0 {name=p20 sig_type=std_logic lab=VDD}
C {hv_nor.sym} 0 420 0 0 {name=x6}
C {devices/ipin.sym} -560 -1460 0 0 {name=p21 lab=selB}
C {hv_nand.sym} -260 -600 0 0 {name=x7}
C {lab_pin.sym} -260 -520 3 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -260 -680 1 0 {name=p23 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -260 -1300 3 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -260 -1460 1 0 {name=p25 sig_type=std_logic lab=VDD}
C {hv_nand.sym} -260 -1120 0 0 {name=x9}
C {lab_pin.sym} -260 -1040 3 0 {name=p26 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -260 -1200 1 0 {name=p27 sig_type=std_logic lab=VDD}
C {hv_inverter_40u.sym} -460 -1260 0 0 {name=x10}
C {lab_pin.sym} -460 -1200 3 0 {name=p28 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -460 -1320 1 0 {name=p29 sig_type=std_logic lab=VDD}
C {hv_nand.sym} -260 -860 0 0 {name=x11}
C {lab_pin.sym} -260 -780 3 0 {name=p30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -260 -940 1 0 {name=p31 sig_type=std_logic lab=VDD}
C {hv_nand.sym} -260 -1380 0 0 {name=x8}
