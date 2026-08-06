v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 660 -330 660 -240 {lab=POAVSS}
N 660 -520 660 -430 {lab=VDD}
N 620 -480 620 -450 {lab=VSS}
N 620 -310 620 -240 {lab=IOAIREF}
N 490 -360 580 -360 {lab=VIN}
N 580 -540 580 -400 {lab=VOUT}
N 580 -540 750 -540 {lab=VOUT}
N 750 -540 750 -380 {lab=VOUT}
N 750 -380 800 -380 {lab=VOUT}
C {title.sym} 160 0 0 0 {name=l1 author="VCR authors"}
C {iopin.sym} 660 -240 0 0 {name=p1 lab=POAVSS}
C {iopin.sym} 660 -520 0 0 {name=p2 lab=POAVDD}
C {lab_pin.sym} 660 -270 2 0 {name=p3 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 620 -480 1 0 {name=p4 sig_type=std_logic lab=VSS
}
C {iopin.sym} 620 -240 2 0 {name=p5 lab=IOAIREF}
C {iopin.sym} 490 -360 2 0 {name=p6 lab=VIN}
C {iopin.sym} 800 -380 0 0 {name=p7 lab=VOUT}
C {/home/claforge/Documents/heichips26-voltage-controlled-resistor/macros/heichips26_analog_project/macros/opamp/schematic/xschem/op_amp_ver_2.sym} 650 -380 0 0 {name=x1}
