* NGSPICE file created from pulse_shaper.ext - technology: ihp-sg13cmos5l

.subckt pulse_shaper VDD VSS in out1 nout1 nout2 out2
X0 VDD nout2 out2 VDD sg13_hv_pmos ad=3.4p pd=20.68u as=1.9p ps=10.38u w=10u l=0.4u
X1 low_th_inverter_0.vout high_th_inverter_0.vin VSS VSS sg13_hv_nmos ad=0.19p pd=1.38u as=0.34p ps=2.68u w=1u l=0.45u
X2 VSS out1 nout1 VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X3 VDD out1 nout1 VDD sg13_hv_pmos ad=3.4p pd=20.68u as=1.9p ps=10.38u w=10u l=0.4u
X4 nout2 low_th_inverter_0.vout VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X5 VSS high_th_inverter_0.vout out1 VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X6 nout2 low_th_inverter_0.vout VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=3.4p ps=20.68u w=10u l=0.4u
X7 nout1 out1 VSS VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X8 out1 high_th_inverter_0.vout VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X9 high_th_inverter_0.vout high_th_inverter_0.vin VSS VSS sg13_hv_nmos ad=0.19p pd=1.38u as=0.34p ps=2.68u w=1u l=0.45u
X10 VSS low_th_inverter_0.vout nout2 VSS sg13_hv_nmos ad=1.02p pd=6.68u as=0.57p ps=3.38u w=3u l=0.45u
X11 VDD high_th_inverter_0.vout out1 VDD sg13_hv_pmos ad=3.4p pd=20.68u as=1.9p ps=10.38u w=10u l=0.4u
X12 VSS high_th_inverter_0.vout out1 VSS sg13_hv_nmos ad=1.02p pd=6.68u as=0.57p ps=3.38u w=3u l=0.45u
X13 nout1 out1 VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=3.4p ps=20.68u w=10u l=0.4u
X14 VDD low_th_inverter_0.vout nout2 VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X15 out2 nout2 VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=3.4p ps=20.68u w=10u l=0.4u
X16 nout1 out1 VSS VSS sg13_hv_nmos ad=0.57p pd=3.38u as=1.02p ps=6.68u w=3u l=0.45u
X17 VSS nout2 out2 VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X18 out1 high_th_inverter_0.vout VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=3.4p ps=20.68u w=10u l=0.4u
X19 VDD high_th_inverter_0.vin high_th_inverter_0.vout VDD sg13_hv_pmos ad=3.4p pd=20.68u as=1.9p ps=10.38u w=10u l=0.4u
X20 low_th_inverter_0.vout high_th_inverter_0.vin VDD VDD sg13_hv_pmos ad=0.19p pd=1.38u as=0.34p ps=2.68u w=1u l=0.4u
X21 VSS high_th_inverter_0.vin high_th_inverter_0.vout VSS sg13_hv_nmos ad=0.34p pd=2.68u as=0.19p ps=1.38u w=1u l=0.45u
X22 out2 nout2 VSS VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X23 out1 high_th_inverter_0.vout VSS VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X24 VDD low_th_inverter_0.vout nout2 VDD sg13_hv_pmos ad=3.4p pd=20.68u as=1.9p ps=10.38u w=10u l=0.4u
X25 out2 nout2 VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X26 VSS out1 nout1 VSS sg13_hv_nmos ad=1.02p pd=6.68u as=0.57p ps=3.38u w=3u l=0.45u
X27 nout1 out1 VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X28 nout2 low_th_inverter_0.vout VSS VSS sg13_hv_nmos ad=0.57p pd=3.38u as=1.02p ps=6.68u w=3u l=0.45u
X29 VSS low_th_inverter_0.vout nout2 VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X30 out2 nout2 VSS VSS sg13_hv_nmos ad=0.57p pd=3.38u as=1.02p ps=6.68u w=3u l=0.45u
X31 high_th_inverter_0.vin in VDD VDD sg13_hv_pmos ad=0.102p pd=1.28u as=0.102p ps=1.28u w=0.3u l=0.4u
X32 VDD high_th_inverter_0.vin low_th_inverter_0.vout VDD sg13_hv_pmos ad=0.34p pd=2.68u as=0.19p ps=1.38u w=1u l=0.4u
X33 out1 high_th_inverter_0.vout VSS VSS sg13_hv_nmos ad=0.57p pd=3.38u as=1.02p ps=6.68u w=3u l=0.45u
X34 VDD out1 nout1 VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X35 VDD nout2 out2 VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X36 high_th_inverter_0.vout high_th_inverter_0.vin VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=3.4p ps=20.68u w=10u l=0.4u
X37 VSS high_th_inverter_0.vin low_th_inverter_0.vout VSS sg13_hv_nmos ad=0.34p pd=2.68u as=0.19p ps=1.38u w=1u l=0.45u
X38 nout2 low_th_inverter_0.vout VSS VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X39 VDD high_th_inverter_0.vout out1 VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X40 VSS nout2 out2 VSS sg13_hv_nmos ad=1.02p pd=6.68u as=0.57p ps=3.38u w=3u l=0.45u
X41 high_th_inverter_0.vin in VSS VSS sg13_hv_nmos ad=0.102p pd=1.28u as=0.102p ps=1.28u w=0.3u l=0.45u
.ends

