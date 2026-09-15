* NGSPICE file created from hv_inverter_40u.ext - technology: ihp-sg13cmos5l

.subckt hv_inverter_40u in out VSS VDD
X0 VSS in out VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X1 out in VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X2 VDD in out VDD sg13_hv_pmos ad=3.4p pd=20.68u as=1.9p ps=10.38u w=10u l=0.4u
X3 VSS in out VSS sg13_hv_nmos ad=1.02p pd=6.68u as=0.57p ps=3.38u w=3u l=0.45u
X4 out in VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=3.4p ps=20.68u w=10u l=0.4u
X5 out in VSS VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X6 out in VSS VSS sg13_hv_nmos ad=0.57p pd=3.38u as=1.02p ps=6.68u w=3u l=0.45u
X7 VDD in out VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
.ends

