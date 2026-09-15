* NGSPICE file created from transmission_gate.ext - technology: ihp-sg13cmos5l

.subckt transmission_gate vin vctrl nvctrl vout VDD VSS
X0 vin nvctrl vout VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=1u
X1 vin vctrl vout VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=1u
X2 vin vctrl vout VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=1u
X3 vin nvctrl vout VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=1u
X4 vout vctrl vin VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=1u
X5 vin nvctrl vout VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=1u
X6 vin nvctrl vout VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=1u
X7 vout nvctrl vin VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=1u
X8 vout vctrl vin VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=1u
X9 vin vctrl vout VSS sg13_hv_nmos ad=0.68p pd=4.68u as=0.38p ps=2.38u w=2u l=1u
X10 vin nvctrl vout VDD sg13_hv_pmos ad=1.7p pd=10.68u as=0.95p ps=5.38u w=5u l=1u
X11 vout vctrl vin VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=1u
X12 vin vctrl vout VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=1u
X13 vin nvctrl vout VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=1u
X14 vout nvctrl vin VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=1u
X15 vout nvctrl vin VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=1u
X16 vin vctrl vout VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=1u
X17 vout vctrl vin VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=1u
X18 vin vctrl vout VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=1u
X19 vout nvctrl vin VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=1u
X20 vout nvctrl vin VDD sg13_hv_pmos ad=0.95p pd=5.38u as=1.7p ps=10.68u w=5u l=1u
X21 vout vctrl vin VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.68p ps=4.68u w=2u l=1u
X22 vin vctrl vout VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=1u
X23 vout vctrl vin VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=1u
X24 vout nvctrl vin VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=1u
X25 vin vctrl vout VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=1u
X26 vout vctrl vin VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=1u
X27 vin nvctrl vout VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=1u
X28 vout nvctrl vin VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=1u
X29 vin vctrl vout VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=1u
X30 vin nvctrl vout VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=1u
X31 vout vctrl vin VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=1u
X32 vout nvctrl vin VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=1u
X33 vin nvctrl vout VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=1u
X34 vin vctrl vout VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=1u
X35 vout nvctrl vin VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=1u
X36 vout vctrl vin VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=1u
X37 vin nvctrl vout VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=1u
X38 vout vctrl vin VSS sg13_hv_nmos ad=0.38p pd=2.38u as=0.38p ps=2.38u w=2u l=1u
X39 vout nvctrl vin VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=1u
.ends

