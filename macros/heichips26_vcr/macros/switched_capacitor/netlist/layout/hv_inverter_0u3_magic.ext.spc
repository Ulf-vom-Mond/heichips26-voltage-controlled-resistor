* NGSPICE file created from hv_inverter_0u3.ext - technology: ihp-sg13cmos5l

.subckt hv_inverter_0u3 in out VSS VDD
X0 out in VSS VSS sg13_hv_nmos ad=0.102p pd=1.28u as=0.102p ps=1.28u w=0.3u l=0.45u
X1 out in VDD VDD sg13_hv_pmos ad=0.102p pd=1.28u as=0.102p ps=1.28u w=0.3u l=0.4u
.ends

