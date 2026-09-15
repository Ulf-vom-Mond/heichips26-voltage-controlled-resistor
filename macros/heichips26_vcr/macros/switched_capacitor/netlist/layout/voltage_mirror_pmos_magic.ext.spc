* NGSPICE file created from voltage_mirror_pmos.ext - technology: ihp-sg13cmos5l

.subckt voltage_mirror_pmos VSS VDD in Ibias nout out
X0 nout Ibias VDD VDD sg13_hv_pmos ad=3.4p pd=20.68u as=1.9p ps=10.38u w=10u l=2u
X1 Ibias Ibias VDD VDD sg13_hv_pmos ad=1.805p pd=9.88u as=3.23p ps=19.68u w=9.5u l=2u
X2 a_2284_4092# a_2148_1746# VSS rhigh l=11.3u w=0.5u
X3 out a_174_224# VSS VSS sg13_hv_nmos ad=2.04p pd=12.68u as=1.14p ps=6.38u w=6u l=5u
X4 a_1876_4092# out VSS rhigh l=11.3u w=0.5u
X5 VDD a_1740_1746# VSS rhigh l=11.3u w=0.5u
X6 a_n474_1610# a_n610_168# VSS rhigh l=6.78u w=0.5u
X7 VDD Ibias a_174_224# VDD sg13_hv_pmos ad=1.9p pd=10.38u as=3.4p ps=20.68u w=10u l=2u
X8 a_n474_1610# a_n338_168# VSS rhigh l=6.78u w=0.5u
X9 Ibias a_n338_168# VSS rhigh l=6.78u w=0.5u
X10 a_2284_4092# VSS VSS rhigh l=11.3u w=0.5u
X11 a_1876_4092# a_1740_1746# VSS rhigh l=11.3u w=0.5u
X12 nout a_2148_1746# VSS rhigh l=11.3u w=0.5u
X13 VSS a_174_224# a_174_224# VSS sg13_hv_nmos ad=1.14p pd=6.38u as=2.04p ps=12.68u w=6u l=5u
X14 a_n746_1610# in VSS rhigh l=6.78u w=0.5u
X15 a_n746_1610# a_n610_168# VSS rhigh l=6.78u w=0.5u
X16 VDD Ibias Ibias VDD sg13_hv_pmos ad=3.23p pd=19.68u as=1.805p ps=9.88u w=9.5u l=2u
.ends

