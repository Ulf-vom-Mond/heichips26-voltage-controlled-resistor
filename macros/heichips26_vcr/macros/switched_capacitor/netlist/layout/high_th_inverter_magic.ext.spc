* NGSPICE file created from high_th_inverter.ext - technology: ihp-sg13cmos5l

.subckt high_th_inverter VSS VDD vin vout
X0 VSS vin vout VSS sg13_hv_nmos ad=0.34p pd=2.68u as=0.19p ps=1.38u w=1u l=0.45u
X1 vout vin VSS VSS sg13_hv_nmos ad=0.19p pd=1.38u as=0.34p ps=2.68u w=1u l=0.45u
X2 vout vin VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=3.4p ps=20.68u w=10u l=0.4u
X3 VDD vin vout VDD sg13_hv_pmos ad=3.4p pd=20.68u as=1.9p ps=10.38u w=10u l=0.4u
.ends

