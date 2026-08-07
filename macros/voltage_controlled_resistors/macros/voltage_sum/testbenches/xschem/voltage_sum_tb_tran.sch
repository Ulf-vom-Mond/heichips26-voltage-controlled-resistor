v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 140 -420 140 -320 {lab=VDD}
N 140 -260 140 -170 {lab=GND}
N 500 -160 500 -140 {lab=GND}
N 630 -330 680 -330 {lab=oa_output}
N 680 -220 680 -160 {lab=GND}
N 280 -200 280 -170 {lab=GND}
N 680 -330 680 -280 {lab=oa_output}
N 500 -260 500 -220 {lab=#net1}
N 560 -260 560 -140 {lab=GND}
N 340 -290 420 -290 {lab=GND}
N 140 -420 550 -420 {lab=VDD}
N 550 -420 550 -400 {lab=VDD}
N 350 -400 480 -400 {lab=GND}
N 210 -200 210 -170 {lab=GND}
N 210 -370 210 -260 {lab=v1}
N 210 -370 420 -370 {lab=v1}
N 280 -330 280 -260 {lab=v2}
N 280 -330 420 -330 {lab=v2}
N 340 -290 340 -170 {lab=GND}
C {title.sym} 160 0 0 0 {name=l1 author="Pascal Gesell"}
C {vsource.sym} 140 -290 0 0 {name=VVPSU value=3.3 savecurrent=false}
C {isource.sym} 500 -190 2 0 {name=I0 value=25e-9}
C {code_shown.sym} 0 -120 0 0 {name=MODEL only_toplevel=true
value=".lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
"}
C {code_shown.sym} 5 -955 0 0 {name=NGSPICE only_toplevel=false
value=".temp 27
.options savecurrents
.control
  save all
  tran 1u 1m
  plot v(v1) v(v2) v(oa_output) v(v1)+v(v2)
.endc
"
}
C {gnd.sym} 140 -170 0 0 {name=l2 lab=GND}
C {launcher.sym} 100 -550 0 0 {name=h4
descr=SimulateNGSPICE
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
set_sim_defaults
puts $sim(spice,1,cmd) 

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 3 is the Xyce batch
# you can get the number by querying $sim(spice,n)
set sim(spice,1,cmd) \{ngspice  \\"$N\\" -a\}

# change the simulator to be used (Xyce)
set sim(spice,default) 0

# Create FET and BIP .save file
mkdir -p $netlist_dir
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# run netlist and simulation
xschem netlist
simulate
"}
C {devices/launcher.sym} 100 -512.5 0 0 {name=h2
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {gnd.sym} 500 -140 0 0 {name=l3 lab=GND}
C {gnd.sym} 560 -140 0 0 {name=l4 lab=GND}
C {gnd.sym} 680 -160 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 680 -330 0 1 {name=p2 sig_type=std_logic lab=oa_output}
C {vsource.sym} 280 -230 0 0 {name=VPLUS value="sin(1.5 0.3 1k)" savecurrent=false}
C {launcher.sym} 100 -470 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/op_amp_tb_ac.raw"
}
C {lab_wire.sym} 140 -420 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} 280 -170 0 0 {name=l7 lab=GND
value="1.65 pulse 1.6 1.7 10n 1n 1n 0.999u ac 1 0"}
C {capa.sym} 680 -250 0 0 {name=C1
m=1
value=0.1p
footprint=1206
device="ceramic capacitor"}
C {voltage_sum.sym} 530 -330 0 0 {name=x1}
C {gnd.sym} 340 -170 0 0 {name=l6 lab=GND
value="1.65 pulse 1.6 1.7 10n 1n 1n 0.999u ac 1 0"}
C {gnd.sym} 350 -400 0 0 {name=l8 lab=GND
value="1.65 pulse 1.6 1.7 10n 1n 1n 0.999u ac 1 0"}
C {vsource.sym} 210 -230 0 0 {name=VVPSU1 value=0.5 savecurrent=false}
C {gnd.sym} 210 -170 0 0 {name=l9 lab=GND
value="1.65 pulse 1.6 1.7 10n 1n 1n 0.999u ac 1 0"}
C {lab_wire.sym} 220 -370 0 1 {name=p3 sig_type=std_logic lab=v1}
C {lab_wire.sym} 300 -330 0 1 {name=p4 sig_type=std_logic lab=v2}
