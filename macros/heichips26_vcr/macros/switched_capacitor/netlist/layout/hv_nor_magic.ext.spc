* NGSPICE file created from hv_nor.ext - technology: ihp-sg13cmos5l

.subckt hv_nor VSS out VDD in2 in1
X0 VSS in2 out VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X1 a_n342_276# in2 VDD VDD sg13_hv_pmos ad=3.4p pd=20.68u as=1.9p ps=10.38u w=10u l=0.4u
X2 VSS in1 out VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X3 out in2 VSS VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X4 out in1 a_n342_276# VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X5 a_n342_276# in1 out VDD sg13_hv_pmos ad=3.4p pd=20.68u as=1.9p ps=10.38u w=10u l=0.4u
X6 VSS in1 out VSS sg13_hv_nmos ad=1.02p pd=6.68u as=0.57p ps=3.38u w=3u l=0.45u
X7 VDD in2 a_n342_276# VDD sg13_hv_pmos ad=1.9p pd=10.38u as=3.4p ps=20.68u w=10u l=0.4u
X8 out in2 VSS VSS sg13_hv_nmos ad=0.57p pd=3.38u as=1.02p ps=6.68u w=3u l=0.45u
X9 out in1 a_n342_276# VDD sg13_hv_pmos ad=1.9p pd=10.38u as=3.4p ps=20.68u w=10u l=0.4u
X10 out in1 VSS VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X11 VSS in2 out VSS sg13_hv_nmos ad=1.02p pd=6.68u as=0.57p ps=3.38u w=3u l=0.45u
X12 VDD in2 a_n342_276# VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X13 out in1 VSS VSS sg13_hv_nmos ad=0.57p pd=3.38u as=1.02p ps=6.68u w=3u l=0.45u
X14 a_n342_276# in2 VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X15 a_n342_276# in1 out VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
.ends

