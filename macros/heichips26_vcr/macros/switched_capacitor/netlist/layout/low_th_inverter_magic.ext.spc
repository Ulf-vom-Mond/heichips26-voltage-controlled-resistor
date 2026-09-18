* NGSPICE file created from low_th_inverter.ext - technology: ihp-sg13cmos5l

.subckt low_th_inverter VDD VSS vin vout
X0 VSS vin vout VSS sg13_hv_nmos ad=0.34p pd=2.68u as=0.19p ps=1.38u w=1u l=0.45u
X1 vout vin VSS VSS sg13_hv_nmos ad=0.19p pd=1.38u as=0.34p ps=2.68u w=1u l=0.45u
X2 vout vin VDD VDD sg13_hv_pmos ad=0.19p pd=1.38u as=0.34p ps=2.68u w=1u l=0.4u
X3 VDD vin vout VDD sg13_hv_pmos ad=0.34p pd=2.68u as=0.19p ps=1.38u w=1u l=0.4u
.ends

