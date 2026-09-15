* NGSPICE file created from hv_rs-ff.ext - technology: ihp-sg13cmos5l

.subckt hv_rs-ff nQ Q VDD nR VSS nS
X0 VDD nR nQ VDD sg13_hv_pmos ad=3.4p pd=20.68u as=1.9p ps=10.38u w=10u l=0.4u
X1 a_n362_n876# nQ VSS VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X2 VDD nQ Q VDD sg13_hv_pmos ad=3.4p pd=20.68u as=1.9p ps=10.38u w=10u l=0.4u
X3 nQ Q VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X4 a_n362_n876# nS Q VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X5 nQ Q VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=3.4p ps=20.68u w=10u l=0.4u
X6 VSS nQ a_n362_n876# VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X7 Q nS VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X8 a_1838_n876# Q nQ VSS sg13_hv_nmos ad=1.02p pd=6.68u as=0.57p ps=3.38u w=3u l=0.45u
X9 VDD nS Q VDD sg13_hv_pmos ad=3.4p pd=20.68u as=1.9p ps=10.38u w=10u l=0.4u
X10 a_n362_n876# nS Q VSS sg13_hv_nmos ad=1.02p pd=6.68u as=0.57p ps=3.38u w=3u l=0.45u
X11 Q nQ VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=3.4p ps=20.68u w=10u l=0.4u
X12 VDD Q nQ VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X13 nQ nR VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=3.4p ps=20.68u w=10u l=0.4u
X14 VSS nQ a_n362_n876# VSS sg13_hv_nmos ad=0.57p pd=3.38u as=1.02p ps=6.68u w=3u l=0.45u
X15 a_1838_n876# nR VSS VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X16 Q nS VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=3.4p ps=20.68u w=10u l=0.4u
X17 VSS nR a_1838_n876# VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X18 Q nS a_n362_n876# VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X19 VDD Q nQ VDD sg13_hv_pmos ad=3.4p pd=20.68u as=1.9p ps=10.38u w=10u l=0.4u
X20 nQ nR VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X21 a_n362_n876# nQ VSS VSS sg13_hv_nmos ad=1.02p pd=6.68u as=0.57p ps=3.38u w=3u l=0.45u
X22 Q nQ VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X23 nQ Q a_1838_n876# VSS sg13_hv_nmos ad=0.57p pd=3.38u as=1.02p ps=6.68u w=3u l=0.45u
X24 a_1838_n876# Q nQ VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X25 VSS nR a_1838_n876# VSS sg13_hv_nmos ad=0.57p pd=3.38u as=1.02p ps=6.68u w=3u l=0.45u
X26 Q nS a_n362_n876# VSS sg13_hv_nmos ad=0.57p pd=3.38u as=1.02p ps=6.68u w=3u l=0.45u
X27 VDD nQ Q VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X28 VDD nR nQ VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X29 nQ Q a_1838_n876# VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X30 VDD nS Q VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X31 a_1838_n876# nR VSS VSS sg13_hv_nmos ad=1.02p pd=6.68u as=0.57p ps=3.38u w=3u l=0.45u
.ends

