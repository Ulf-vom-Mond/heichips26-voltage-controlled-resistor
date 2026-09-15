* NGSPICE file created from hv_inverter_6u5.ext - technology: ihp-sg13cmos5l

.subckt hv_inverter_6u5 in out VSS VDD
X0 out in VDD VDD sg13_hv_pmos ad=2.21p pd=13.68u as=2.21p ps=13.68u w=6.5u l=0.4u
X1 out in VSS VSS sg13_hv_nmos ad=0.68p pd=4.68u as=0.68p ps=4.68u w=2u l=0.45u
.ends

