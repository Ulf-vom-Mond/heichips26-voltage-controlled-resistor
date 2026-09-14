* NGSPICE file created from YadavVCR.ext - technology: ihp-sg13cmos5l

.subckt YadavVCR
X0 VSS VC a_310_n1840# VSS sg13_hv_nmos ad=0.2448p pd=2.12u as=0.2448p ps=2.12u w=0.72u l=4.14u
X1 RIN a_1840_250# VDD VDD sg13_hv_pmos ad=3.4p pd=20.68u as=3.4p ps=20.68u w=10u l=2.16u
X2 RIN RIN RIN VSS sg13_lv_nmos ad=25.6f pd=0.64u as=4.107p ps=40.16u w=0.48u l=0.18u
X3 a_1840_250# a_1840_250# VDD VDD sg13_hv_pmos ad=3.4p pd=20.68u as=3.4p ps=20.68u w=10u l=2.16u
X4 VSS VC a_4208_n1772# VSS sg13_hv_nmos ad=0.2448p pd=2.12u as=0.2448p ps=2.12u w=0.72u l=4.14u
X5 a_440_336# a_440_336# VDD VDD sg13_hv_pmos ad=3.4p pd=20.68u as=3.4p ps=20.68u w=10u l=2.16u
X6 a_440_336# a_310_n1840# VSS VSS sg13_hv_nmos ad=0.2448p pd=2.12u as=0.2448p ps=2.12u w=0.72u l=4.14u
X7 a_6472_372# a_1840_250# VDD VDD sg13_hv_pmos ad=3.4p pd=20.68u as=3.4p ps=20.68u w=10u l=2.16u
X8 a_1840_250# RIN VSS VSS sg13_hv_nmos ad=0.2448p pd=2.12u as=0.2448p ps=2.12u w=0.72u l=4.14u
X9 RIN a_3672_372# VSS VSS sg13_hv_nmos ad=0.2448p pd=2.12u as=0.2448p ps=2.12u w=0.72u l=2.16u
X10 a_3672_372# a_440_336# VDD VDD sg13_hv_pmos ad=3.4p pd=20.68u as=3.4p ps=20.68u w=10u l=2.16u
X11 a_3672_372# a_3672_372# VSS VSS sg13_hv_nmos ad=0.2448p pd=2.12u as=0.2448p ps=2.12u w=0.72u l=2.16u
X12 a_440_336# ROUT VSS VSS sg13_hv_nmos ad=0.2448p pd=2.12u as=0.2448p ps=2.12u w=0.72u l=4.14u
X13 ROUT a_6472_372# VSS VSS sg13_hv_nmos ad=0.2448p pd=2.12u as=0.2448p ps=2.12u w=0.72u l=2.16u
X14 a_6472_372# a_6472_372# VSS VSS sg13_hv_nmos ad=0.2448p pd=2.12u as=0.2448p ps=2.12u w=0.72u l=2.16u
X15 a_1840_250# a_4208_n1772# VSS VSS sg13_hv_nmos ad=0.2448p pd=2.12u as=0.2448p ps=2.12u w=0.72u l=4.14u
X16 RIN RIN RIN VSS sg13_lv_nmos ad=25.6f pd=0.64u as=0 ps=0 w=0.48u l=0.18u
X17 ROUT a_440_336# VDD VDD sg13_hv_pmos ad=3.4p pd=20.68u as=3.4p ps=20.68u w=10u l=2.16u
X18 VDD RIN a_310_n1840# VSS sg13_hv_nmos ad=0.2448p pd=2.12u as=0.2448p ps=2.12u w=0.72u l=4.14u
X19 VDD ROUT a_4208_n1772# VSS sg13_hv_nmos ad=0.2448p pd=2.12u as=0.2448p ps=2.12u w=0.72u l=4.14u
.ends

