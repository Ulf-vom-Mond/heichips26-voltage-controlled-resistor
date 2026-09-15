* NGSPICE file created from comp_nmos.ext - technology: ihp-sg13cmos5l

.subckt comp_nmos Ibias + - out VDD VSS
X0 VDD a_n406_62# a_n406_62# VDD sg13_hv_pmos ad=0.38p pd=2.38u as=0.68p ps=4.68u w=2u l=0.4u
X1 a_118_854# a_n406_62# VDD VDD sg13_hv_pmos ad=0.68p pd=4.68u as=0.38p ps=2.38u w=2u l=0.4u
X2 out Ibias VSS VSS sg13_hv_nmos ad=0.816p pd=5.48u as=0.456p ps=2.78u w=2.4u l=1.5u
X3 a_n38_62# - a_n406_62# VSS sg13_hv_nmos ad=0.228p pd=1.58u as=0.408p ps=3.08u w=1.2u l=1.5u
X4 VSS Ibias a_n38_62# VSS sg13_hv_nmos ad=0.456p pd=2.78u as=0.816p ps=5.48u w=2.4u l=1.5u
X5 VSS Ibias Ibias VSS sg13_hv_nmos ad=0.408p pd=3.08u as=0.408p ps=3.08u w=1.2u l=1.5u
X6 VDD a_118_854# out VDD sg13_hv_pmos ad=0.68p pd=4.68u as=0.68p ps=4.68u w=2u l=0.4u
X7 a_118_854# + a_n38_62# VSS sg13_hv_nmos ad=0.408p pd=3.08u as=0.228p ps=1.58u w=1.2u l=1.5u
.ends

