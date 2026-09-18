* NGSPICE file created from comp_pmos.ext - technology: ihp-sg13cmos5l

.subckt comp_pmos VDD VSS + - Ibias out
X0 a_n38_854# - a_n292_316# VDD sg13_hv_pmos ad=0.38p pd=2.38u as=0.68p ps=4.68u w=2u l=0.4u
X1 VSS a_118_854# out VSS sg13_hv_nmos ad=0.408p pd=3.08u as=0.408p ps=3.08u w=1.2u l=1.5u
X2 a_118_854# + a_n38_854# VDD sg13_hv_pmos ad=0.68p pd=4.68u as=0.38p ps=2.38u w=2u l=0.4u
X3 VDD Ibias Ibias VDD sg13_hv_pmos ad=0.68p pd=4.68u as=0.68p ps=4.68u w=2u l=0.4u
X4 a_118_854# a_n292_316# VSS VSS sg13_hv_nmos ad=0.408p pd=3.08u as=0.228p ps=1.58u w=1.2u l=1.5u
X5 out Ibias VDD VDD sg13_hv_pmos ad=0.68p pd=4.68u as=0.38p ps=2.38u w=2u l=0.4u
X6 VDD Ibias a_n38_854# VDD sg13_hv_pmos ad=0.38p pd=2.38u as=0.68p ps=4.68u w=2u l=0.4u
X7 VSS a_n292_316# a_n292_316# VSS sg13_hv_nmos ad=0.228p pd=1.58u as=0.408p ps=3.08u w=1.2u l=1.5u
.ends

