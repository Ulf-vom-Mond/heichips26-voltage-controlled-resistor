* NGSPICE file created from transmission_gate.ext - technology: ihp-sg13cmos5l

.subckt transmission_gate vctrl nvctrl vin vout VDD VSS
X0 vin vctrl vout VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=0.45u
X1 vin nvctrl vout VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=0.45u
X2 vout vctrl vin VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=0.45u
X3 vout nvctrl vin VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=0.45u
X4 vout vctrl vin VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=0.45u
X5 vin nvctrl vout VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=0.45u
X6 vout nvctrl vin VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=0.45u
X7 vin vctrl vout VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=0.45u
X8 vin vctrl vout VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=0.45u
X9 vout nvctrl vin VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=0.45u
X10 vin nvctrl vout VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=0.45u
X11 vout vctrl vin VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=0.45u
X12 vout nvctrl vin VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=0.45u
X13 vout vctrl vin VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=0.45u
X14 vin nvctrl vout VDD sg13_hv_pmos ad=1.7p pd=10.68u as=0.95p ps=5.38u w=5u l=0.45u
X15 vout vctrl vin VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=0.45u
X16 vout nvctrl vin VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=0.45u
X17 vout nvctrl vin VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=0.45u
X18 vout vctrl vin VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=0.45u
X19 vin nvctrl vout VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=0.45u
X20 vout nvctrl vin VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=0.45u
X21 vin vctrl vout VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=0.45u
X22 vin vctrl vout VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=0.45u
X23 vin vctrl vout VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=0.45u
X24 vin nvctrl vout VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=0.45u
X25 vout nvctrl vin VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=0.45u
X26 vin vctrl vout VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=0.45u
X27 vin nvctrl vout VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=0.45u
X28 vout vctrl vin VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.68p ps=4.68u w=2u l=0.45u
X29 vin vctrl vout VSS sg13_hv_nmos ad=0.68p pd=4.68u as=0.38p ps=2.38u w=2u l=0.45u
X30 vin vctrl vout VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=0.45u
X31 vin nvctrl vout VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=0.45u
X32 vout vctrl vin VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=0.45u
X33 vin nvctrl vout VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=0.45u
X34 vin nvctrl vout VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=0.45u
X35 vin vctrl vout VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=0.45u
X36 vout vctrl vin VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=0.45u
X37 vout nvctrl vin VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=0.45u
X38 vout vctrl vin VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=0.45u
X39 vout nvctrl vin VDD sg13_hv_pmos ad=0.95p pd=5.38u as=1.7p ps=10.68u w=5u l=0.45u
.ends

