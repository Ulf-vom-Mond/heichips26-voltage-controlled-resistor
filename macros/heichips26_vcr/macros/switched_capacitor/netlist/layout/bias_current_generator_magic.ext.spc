* NGSPICE file created from bias_current_generator.ext - technology: ihp-sg13cmos5l

.subckt bias_current_generator VSS VDD 40uA- 40uA+ 10uA- 5uA+ 5uA-
X0 a_n7130_n530# a_n6924_n2088# a_n5924_n2052# VSS sg13_hv_nmos ad=2.04p pd=12.68u as=1.14p ps=6.38u w=6u l=5u
X1 a_2762_n2088# a_2762_n2088# VSS VSS sg13_hv_nmos ad=1.14p pd=6.38u as=1.14p ps=6.38u w=6u l=5u
X2 a_n4682_1540# a_n4818_n530# VSS rsil l=10u w=0.5u
X3 VDD current_reference_40uA_0.iout 40uA+ VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X4 a_n6586_1540# a_n6722_n530# VSS rsil l=10u w=0.5u
X5 a_n3050_1540# a_n2914_n530# VSS rsil l=10u w=0.5u
X6 a_n6924_n2088# a_n5924_n2052# VDD VDD sg13_hv_pmos ad=3.4p pd=20.68u as=1.9p ps=10.38u w=10u l=2u
X7 5uA- a_7364_n300# VSS VSS sg13_hv_nmos ad=2.04p pd=12.68u as=2.04p ps=12.68u w=6u l=5u
X8 a_n4954_1540# a_n4818_n530# VSS rsil l=10u w=0.5u
X9 VDD a_4108_n387# a_4108_n387# VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X10 VDD current_reference_40uA_0.iout current_reference_40uA_0.iout VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X11 VDD a_4108_n387# 5uA+ VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X12 VSS a_206_n2052# a_206_n2052# VSS sg13_hv_nmos ad=1.14p pd=6.38u as=2.04p ps=12.68u w=6u l=5u
X13 a_n6314_1540# a_n6450_n530# VSS rsil l=10u w=0.5u
X14 a_n4138_1540# a_n4274_n530# VSS rsil l=10u w=0.5u
X15 a_n3866_1540# a_n4002_n530# VSS rsil l=10u w=0.5u
X16 a_n5770_1540# a_n5906_n530# VSS rsil l=10u w=0.5u
X17 VSS a_n6924_n2088# a_n6924_n2088# VSS sg13_hv_nmos ad=1.14p pd=6.38u as=2.04p ps=12.68u w=6u l=5u
X18 a_2762_n2088# a_2762_n2088# VSS VSS sg13_hv_nmos ad=1.14p pd=6.38u as=1.14p ps=6.38u w=6u l=5u
X19 a_n5498_1540# a_n5362_n530# VSS rsil l=10u w=0.5u
X20 a_n2578_1750# VSS VSS rppd l=10.95u w=2u
X21 a_n7130_1540# a_n6994_n530# VSS rsil l=10u w=0.5u
X22 VDD a_4108_n387# a_7364_n300# VDD sg13_hv_pmos ad=1.7p pd=10.68u as=0.95p ps=5.38u w=5u l=2u
X23 a_4108_n387# a_2762_n2088# VSS VSS sg13_hv_nmos ad=2.04p pd=12.68u as=1.14p ps=6.38u w=6u l=5u
X24 a_n3322_1540# a_n3186_n530# VSS rsil l=10u w=0.5u
X25 a_n5226_1540# a_n5090_n530# VSS rsil l=10u w=0.5u
X26 a_n6858_1540# a_n6722_n530# VSS rsil l=10u w=0.5u
X27 40uA+ current_reference_40uA_0.iout VDD VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X28 a_n7130_n530# a_n6924_n2088# a_n5924_n2052# VSS sg13_hv_nmos ad=1.14p pd=6.38u as=1.14p ps=6.38u w=6u l=5u
X29 VSS a_2762_n2088# 10uA- VSS sg13_hv_nmos ad=1.14p pd=6.38u as=2.04p ps=12.68u w=6u l=5u
X30 a_n4682_1540# a_n4546_n530# VSS rsil l=10u w=0.5u
X31 a_4108_n387# a_4108_n387# VDD VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X32 a_n6586_1540# a_n6450_n530# VSS rsil l=10u w=0.5u
X33 a_n6042_1540# a_n6178_n530# VSS rsil l=10u w=0.5u
X34 a_206_n2052# current_reference_40uA_0.iout VDD VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X35 a_n3594_1540# a_n3730_n530# VSS rsil l=10u w=0.5u
X36 a_2762_n2088# current_reference_40uA_0.iout VDD VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X37 a_7364_n300# a_4108_n387# VDD VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X38 a_n6042_1540# a_n5906_n530# VSS rsil l=10u w=0.5u
X39 a_n5498_1540# a_n5634_n530# VSS rsil l=10u w=0.5u
X40 a_n5924_n2052# a_n6924_n2088# a_n7130_n530# VSS sg13_hv_nmos ad=1.14p pd=6.38u as=1.14p ps=6.38u w=6u l=5u
X41 a_n3866_1540# a_n3730_n530# VSS rsil l=10u w=0.5u
X42 a_n3322_1540# a_n3458_n530# VSS rsil l=10u w=0.5u
X43 40uA- a_206_n2052# VSS VSS sg13_hv_nmos ad=2.04p pd=12.68u as=1.14p ps=6.38u w=6u l=5u
X44 a_n5226_1540# a_n5362_n530# VSS rsil l=10u w=0.5u
X45 VDD current_reference_40uA_0.iout a_206_n2052# VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X46 a_n4954_1540# a_n5090_n530# VSS rsil l=10u w=0.5u
X47 a_7364_n300# a_7364_n300# VSS VSS sg13_hv_nmos ad=2.04p pd=12.68u as=2.04p ps=12.68u w=6u l=5u
X48 a_n7130_1540# a_n7130_n530# VSS rsil l=10u w=0.5u
X49 a_n6858_1540# a_n6994_n530# VSS rsil l=10u w=0.5u
X50 a_n3050_1540# a_n3186_n530# VSS rsil l=10u w=0.5u
X51 current_reference_40uA_0.iout current_reference_40uA_0.iout VDD VDD sg13_hv_pmos ad=0.95p pd=5.38u as=1.7p ps=10.68u w=5u l=2u
X52 5uA+ a_4108_n387# VDD VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X53 VSS a_2762_n2088# a_2762_n2088# VSS sg13_hv_nmos ad=1.14p pd=6.38u as=1.14p ps=6.38u w=6u l=5u
X54 VDD a_n5924_n2052# a_n5924_n2052# VDD sg13_hv_pmos ad=1.9p pd=10.38u as=3.4p ps=20.68u w=10u l=2u
X55 a_n4410_1540# a_n4274_n530# VSS rsil l=10u w=0.5u
X56 VSS a_2762_n2088# a_2762_n2088# VSS sg13_hv_nmos ad=1.14p pd=6.38u as=1.14p ps=6.38u w=6u l=5u
X57 a_n6314_1540# a_n6178_n530# VSS rsil l=10u w=0.5u
X58 a_n4410_1540# a_n4546_n530# VSS rsil l=10u w=0.5u
X59 a_n2578_1750# a_n2914_n530# VSS rppd l=10.95u w=2u
X60 a_4108_n387# a_4108_n387# VDD VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X61 a_n4138_1540# a_n4002_n530# VSS rsil l=10u w=0.5u
X62 a_n5770_1540# a_n5634_n530# VSS rsil l=10u w=0.5u
X63 VDD current_reference_40uA_0.iout a_2762_n2088# VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X64 a_n5924_n2052# a_n6924_n2088# a_n7130_n530# VSS sg13_hv_nmos ad=1.14p pd=6.38u as=2.04p ps=12.68u w=6u l=5u
X65 a_n3594_1540# a_n3458_n530# VSS rsil l=10u w=0.5u
X66 VDD a_4108_n387# a_4108_n387# VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X67 current_reference_40uA_0.iout a_n6924_n2088# VSS VSS sg13_hv_nmos ad=2.04p pd=12.68u as=1.14p ps=6.38u w=6u l=5u
.ends

