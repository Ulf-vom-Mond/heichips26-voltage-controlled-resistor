* NGSPICE file created from lvl_shift_up.ext - technology: ihp-sg13cmos5l

.subckt lvl_shift_up out in VSS VDD
X0 VDD in hv_inverter_6u5_0.in VDD sg13_hv_pmos ad=0.34p pd=2.68u as=0.19p ps=1.38u w=1u l=0.45u
X1 hv_inverter_6u5_0.in in VSS VSS sg13_hv_nmos ad=1.9p pd=10.38u as=3.4p ps=20.68u w=10u l=0.45u
X2 VSS in hv_inverter_6u5_0.in VSS sg13_hv_nmos ad=3.4p pd=20.68u as=1.9p ps=10.38u w=10u l=0.45u
X3 hv_inverter_6u5_0.in in VDD VDD sg13_hv_pmos ad=0.19p pd=1.38u as=0.34p ps=2.68u w=1u l=0.45u
X4 out hv_inverter_6u5_0.in VDD VDD sg13_hv_pmos ad=2.21p pd=13.68u as=2.21p ps=13.68u w=6.5u l=0.4u
X5 out hv_inverter_6u5_0.in VSS VSS sg13_hv_nmos ad=0.68p pd=4.68u as=0.68p ps=4.68u w=2u l=0.45u
.ends

