v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 180 240 180 260 {lab=VGND}
N 180 100 180 120 {lab=VAPWR}
N 0 -60 0 -40 {lab=VAPWR}
N 0 40 0 60 {lab=VGND}
N 80 180 100 180 {lab=#net1}
N 180 440 180 460 {lab=VGND}
N 180 300 180 320 {lab=VAPWR}
N -140 -60 -140 -40 {lab=VAPWR}
N -140 40 -140 60 {lab=VGND}
N -60 0 -40 0 {lab=#net2}
N -220 0 -200 0 {lab=ctrl}
N -60 160 -60 360 {lab=#net2}
N -60 160 100 160 {lab=#net2}
N -60 360 100 360 {lab=#net2}
N 80 180 80 380 {lab=#net1}
N 80 380 100 380 {lab=#net1}
N 260 400 280 400 {lab=sw2_p2}
N 260 200 280 200 {lab=sw1_p2}
N 180 640 180 660 {lab=VGND}
N 180 500 180 520 {lab=VAPWR}
N -60 560 100 560 {lab=#net2}
N 260 600 280 600 {lab=sw3_p2}
N -60 0 -60 160 {lab=#net2}
N -80 0 -60 0 {lab=#net2}
N 60 0 80 0 {lab=#net1}
N 80 0 80 180 {lab=#net1}
N -60 360 -60 560 {lab=#net2}
N 80 380 80 580 {lab=#net1}
N 80 580 100 580 {lab=#net1}
N 60 200 100 200 {lab=sw1_p1}
N 60 400 100 400 {lab=sw2_p1}
N 60 600 100 600 {lab=sw3_p1}
C {/home/noah/Documents/freizeit/heichips/heichips26-voltage-controlled-resistor/macros/heichips26_vcr/macros/switched_capacitor/schematic/xschem/transmission_gate.sym} 180 180 0 0 {name=x6}
C {/home/noah/Documents/freizeit/heichips/heichips26-voltage-controlled-resistor/macros/heichips26_vcr/macros/switched_capacitor/schematic/xschem/hv_inverter_40u.sym} 0 0 0 0 {name=x7}
C {lab_pin.sym} 180 260 0 1 {name=p1 sig_type=std_logic lab=VGND}
C {/home/noah/Documents/freizeit/heichips/heichips26-voltage-controlled-resistor/macros/heichips26_vcr/macros/switched_capacitor/schematic/xschem/transmission_gate.sym} 180 380 0 0 {name=x3}
C {/home/noah/Documents/freizeit/heichips/heichips26-voltage-controlled-resistor/macros/heichips26_vcr/macros/switched_capacitor/schematic/xschem/lvl_shift_up.sym} -140 0 0 0 {name=x8}
C {lab_pin.sym} -140 60 3 0 {name=p77 sig_type=std_logic lab=VGND}
C {lab_pin.sym} -140 -60 1 0 {name=p78 sig_type=std_logic lab=VAPWR}
C {devices/iopin.sym} 60 200 2 0 {name=p64 lab=sw1_p1}
C {devices/iopin.sym} -220 0 2 0 {name=p3 lab=ctrl}
C {devices/iopin.sym} 0 -60 3 0 {name=p4 lab=VAPWR}
C {devices/iopin.sym} 0 60 3 1 {name=p6 lab=VGND}
C {devices/iopin.sym} 60 400 2 0 {name=p5 lab=sw2_p1}
C {devices/iopin.sym} 280 200 0 0 {name=p7 lab=sw1_p2}
C {devices/iopin.sym} 280 400 0 0 {name=p8 lab=sw2_p2}
C {/home/noah/Documents/freizeit/heichips/heichips26-voltage-controlled-resistor/macros/heichips26_vcr/macros/switched_capacitor/schematic/xschem/transmission_gate.sym} 180 580 0 0 {name=x1}
C {devices/iopin.sym} 60 600 2 0 {name=p11 lab=sw3_p1}
C {devices/iopin.sym} 280 600 0 0 {name=p12 lab=sw3_p2}
C {lab_pin.sym} 180 100 0 1 {name=p2 sig_type=std_logic lab=VAPWR}
C {lab_pin.sym} 180 300 0 1 {name=p13 sig_type=std_logic lab=VAPWR}
C {lab_pin.sym} 180 660 0 1 {name=p9 sig_type=std_logic lab=VGND}
C {lab_pin.sym} 180 500 0 1 {name=p10 sig_type=std_logic lab=VAPWR}
C {lab_pin.sym} 180 460 0 1 {name=p14 sig_type=std_logic lab=VGND}
