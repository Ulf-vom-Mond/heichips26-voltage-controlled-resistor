* NGSPICE file created from vco.ext - technology: ihp-sg13cmos5l

.subckt vco vctrl out nout VSS vc VDD
X0 a_36_1840# a_242_282# a_1242_318# VSS sg13_hv_nmos ad=2.04p pd=12.68u as=1.14p ps=6.38u w=6u l=5u
X1 VDD a_10394_5544# VSS rhigh l=11.3u w=0.5u
X2 VDD nout out VDD sg13_hv_pmos ad=3.4p pd=20.68u as=1.9p ps=10.38u w=10u l=0.4u
X3 a_4364_4622# nout VSS VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X4 a_9928_282# a_9928_282# VSS VSS sg13_hv_nmos ad=1.14p pd=6.38u as=1.14p ps=6.38u w=6u l=5u
X5 VDD hv_rs-ff_0.nS out VDD sg13_hv_pmos ad=3.4p pd=20.68u as=1.9p ps=10.38u w=10u l=0.4u
X6 a_8648_7374# comp_pmos_0.+ a_8118_6546# VDD sg13_hv_pmos ad=0.38p pd=2.38u as=0.68p ps=4.68u w=2u l=0.4u
X7 a_7372_318# bias_current_generator_0.current_reference_40uA_0.iout VDD VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X8 a_1124_3910# a_988_1840# VSS rsil l=10u w=0.5u
X9 a_14530_2070# a_14530_2070# VSS VSS sg13_hv_nmos ad=2.04p pd=12.68u as=2.04p ps=12.68u w=6u l=5u
X10 a_3028_3910# a_2892_1840# VSS rsil l=10u w=0.5u
X11 a_2756_3910# a_2620_1840# VSS rsil l=10u w=0.5u
X12 comp_pmos_0.Ibias a_7372_318# VSS VSS sg13_hv_nmos ad=2.04p pd=12.68u as=1.14p ps=6.38u w=6u l=5u
X13 VSS a_10052_3986# comp_nmos_0.- VSS sg13_hv_nmos ad=1.14p pd=6.38u as=2.04p ps=12.68u w=6u l=5u
X14 a_10258_7890# comp_nmos_0.- VSS rhigh l=11.3u w=0.5u
X15 comp_nmos_0.out a_8484_3986# VDD VDD sg13_hv_pmos ad=0.68p pd=4.68u as=0.68p ps=4.68u w=2u l=0.4u
X16 a_1242_318# a_242_282# a_36_1840# VSS sg13_hv_nmos ad=1.14p pd=6.38u as=2.04p ps=12.68u w=6u l=5u
X17 a_10052_3986# a_10052_3986# VSS VSS sg13_hv_nmos ad=2.04p pd=12.68u as=1.14p ps=6.38u w=6u l=5u
X18 VSS hv_rs-ff_0.nR a_2164_4622# VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X19 a_4116_3910# a_4252_1840# VSS rsil l=10u w=0.5u
X20 out hv_rs-ff_0.nS a_4364_4622# VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X21 a_3844_3910# a_3980_1840# VSS rsil l=10u w=0.5u
X22 a_9928_282# bias_current_generator_0.current_reference_40uA_0.iout VDD VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X23 bias_current_generator_0.current_reference_40uA_0.iout bias_current_generator_0.current_reference_40uA_0.iout VDD VDD sg13_hv_pmos ad=0.95p pd=5.38u as=1.7p ps=10.68u w=5u l=2u
X24 VDD voltage_mirror_pmos_0.Ibias comp_pmos_0.+ VDD sg13_hv_pmos ad=1.9p pd=10.38u as=3.4p ps=20.68u w=10u l=2u
X25 nout out VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=3.4p ps=20.68u w=10u l=0.4u
X26 a_308_3910# a_444_1840# VSS rsil l=10u w=0.5u
X27 VSS a_8830_6546# a_8118_6546# VSS sg13_hv_nmos ad=0.228p pd=1.58u as=0.408p ps=3.08u w=1.2u l=1.5u
X28 comp_nmos_0.Ibias comp_nmos_0.Ibias VSS VSS sg13_hv_nmos ad=0.408p pd=3.08u as=0.408p ps=3.08u w=1.2u l=1.5u
X29 a_1940_3910# a_2076_1840# VSS rsil l=10u w=0.5u
X30 VSS comp_nmos_0.out hv_rs-ff_0.nS VSS sg13_hv_nmos ad=0.68p pd=4.68u as=0.68p ps=4.68u w=2u l=0.45u
X31 a_11274_1983# a_11274_1983# VDD VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X32 bias_current_generator_0.5uA- a_14530_2070# VSS VSS sg13_hv_nmos ad=2.04p pd=12.68u as=2.04p ps=12.68u w=6u l=5u
X33 a_2164_4622# out nout VSS sg13_hv_nmos ad=1.02p pd=6.68u as=0.57p ps=3.38u w=3u l=0.45u
X34 VSS hv_rs-ff_0.nR a_2164_4622# VSS sg13_hv_nmos ad=0.57p pd=3.38u as=1.02p ps=6.68u w=3u l=0.45u
X35 out hv_rs-ff_0.nS a_4364_4622# VSS sg13_hv_nmos ad=0.57p pd=3.38u as=1.02p ps=6.68u w=3u l=0.45u
X36 VDD voltage_mirror_pmos_0.Ibias voltage_mirror_pmos_0.Ibias VDD sg13_hv_pmos ad=3.23p pd=19.68u as=1.805p ps=9.88u w=9.5u l=2u
X37 a_9850_7890# a_9986_5544# VSS rhigh l=11.3u w=0.5u
X38 VSS a_9928_282# a_9928_282# VSS sg13_hv_nmos ad=1.14p pd=6.38u as=1.14p ps=6.38u w=6u l=5u
X39 a_1396_3910# a_1532_1840# VSS rsil l=10u w=0.5u
X40 VDD comp_nmos_0.out hv_rs-ff_0.nS VDD sg13_hv_pmos ad=2.21p pd=13.68u as=2.21p ps=13.68u w=6.5u l=0.4u
X41 out nout VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X42 a_11274_1983# a_11274_1983# VDD VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X43 VDD nout out VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X44 voltage_mirror_pmos_0.Ibias a_12472_3966# VSS rhigh l=6.78u w=0.5u
X45 a_9116_3986# a_9116_3986# VDD VDD sg13_hv_pmos ad=0.68p pd=4.68u as=0.38p ps=2.38u w=2u l=0.4u
X46 a_3300_3910# a_3436_1840# VSS rsil l=10u w=0.5u
X47 a_4588_4120# VSS VSS rppd l=10.95u w=2u
X48 bias_current_generator_0.5uA+ a_11274_1983# VDD VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X49 VDD a_9116_3986# a_8484_3986# VDD sg13_hv_pmos ad=0.38p pd=2.38u as=0.68p ps=4.68u w=2u l=0.4u
X50 VDD a_1242_318# a_1242_318# VDD sg13_hv_pmos ad=1.9p pd=10.38u as=3.4p ps=20.68u w=10u l=2u
X51 VDD out nout VDD sg13_hv_pmos ad=3.4p pd=20.68u as=1.9p ps=10.38u w=10u l=0.4u
X52 a_2164_4622# out nout VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X53 a_12608_5408# a_12472_3966# VSS rhigh l=6.78u w=0.5u
X54 vc out bias_current_generator_0.5uA+ VDD sg13_hv_pmos ad=0.102p pd=1.28u as=0.102p ps=1.28u w=0.3u l=0.4u
X55 a_4588_4120# a_4252_1840# VSS rppd l=10.95u w=2u
X56 a_852_3910# a_716_1840# VSS rsil l=10u w=0.5u
X57 a_2484_3910# a_2348_1840# VSS rsil l=10u w=0.5u
X58 hv_inverter_6u5_0.in a_8118_6546# VSS VSS sg13_hv_nmos ad=0.408p pd=3.08u as=0.408p ps=3.08u w=1.2u l=1.5u
X59 VSS hv_inverter_6u5_0.in hv_rs-ff_0.nR VSS sg13_hv_nmos ad=0.68p pd=4.68u as=0.68p ps=4.68u w=2u l=0.45u
X60 comp_nmos_0.Ibias bias_current_generator_0.current_reference_40uA_0.iout VDD VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X61 VSS nout a_4364_4622# VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X62 a_14530_2070# a_11274_1983# VDD VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X63 out hv_rs-ff_0.nS VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=3.4p ps=20.68u w=10u l=0.4u
X64 nout hv_rs-ff_0.nR VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=3.4p ps=20.68u w=10u l=0.4u
X65 a_36_3910# a_172_1840# VSS rsil l=10u w=0.5u
X66 a_2212_3910# a_2076_1840# VSS rsil l=10u w=0.5u
X67 a_1940_3910# a_1804_1840# VSS rsil l=10u w=0.5u
X68 a_9196_4974# comp_nmos_0.Ibias VSS VSS sg13_hv_nmos ad=0.816p pd=5.48u as=0.456p ps=2.78u w=2.4u l=1.5u
X69 VDD bias_current_generator_0.current_reference_40uA_0.iout a_9928_282# VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X70 a_8648_7374# comp_pmos_0.Ibias VDD VDD sg13_hv_pmos ad=0.68p pd=4.68u as=0.38p ps=2.38u w=2u l=0.4u
X71 VDD bias_current_generator_0.current_reference_40uA_0.iout bias_current_generator_0.current_reference_40uA_0.iout VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X72 a_12880_5408# a_12744_3966# VSS rhigh l=6.78u w=0.5u
X73 a_4116_3910# a_3980_1840# VSS rsil l=10u w=0.5u
X74 a_3844_3910# a_3708_1840# VSS rsil l=10u w=0.5u
X75 a_2164_4622# hv_rs-ff_0.nR VSS VSS sg13_hv_nmos ad=1.02p pd=6.68u as=0.57p ps=3.38u w=3u l=0.45u
X76 a_11274_1983# a_9928_282# VSS VSS sg13_hv_nmos ad=2.04p pd=12.68u as=1.14p ps=6.38u w=6u l=5u
X77 a_308_3910# a_172_1840# VSS rsil l=10u w=0.5u
X78 VDD a_11274_1983# a_11274_1983# VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X79 VDD bias_current_generator_0.current_reference_40uA_0.iout comp_nmos_0.Ibias VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X80 a_36_3910# a_36_1840# VSS rsil l=10u w=0.5u
X81 a_1668_3910# a_1532_1840# VSS rsil l=10u w=0.5u
X82 comp_pmos_0.Ibias comp_pmos_0.Ibias VDD VDD sg13_hv_pmos ad=0.68p pd=4.68u as=0.68p ps=4.68u w=2u l=0.4u
X83 VSS nout a_4364_4622# VSS sg13_hv_nmos ad=0.57p pd=3.38u as=1.02p ps=6.68u w=3u l=0.45u
X84 a_1124_3910# a_1260_1840# VSS rsil l=10u w=0.5u
X85 nout out VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X86 VDD a_11274_1983# a_14530_2070# VDD sg13_hv_pmos ad=1.7p pd=10.68u as=0.95p ps=5.38u w=5u l=2u
X87 VDD out nout VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X88 a_9116_3986# comp_nmos_0.- a_9196_4974# VSS sg13_hv_nmos ad=0.408p pd=3.08u as=0.228p ps=1.58u w=1.2u l=1.5u
X89 a_3028_3910# a_3164_1840# VSS rsil l=10u w=0.5u
X90 VSS a_242_282# a_242_282# VSS sg13_hv_nmos ad=1.14p pd=6.38u as=2.04p ps=12.68u w=6u l=5u
X91 a_2756_3910# a_2892_1840# VSS rsil l=10u w=0.5u
X92 a_9196_4974# vc a_8484_3986# VSS sg13_hv_nmos ad=0.228p pd=1.58u as=0.408p ps=3.08u w=1.2u l=1.5u
X93 a_10258_7890# a_10394_5544# VSS rhigh l=11.3u w=0.5u
X94 VDD hv_rs-ff_0.nR nout VDD sg13_hv_pmos ad=3.4p pd=20.68u as=1.9p ps=10.38u w=10u l=0.4u
X95 a_4364_4622# hv_rs-ff_0.nS out VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X96 a_2164_4622# hv_rs-ff_0.nR VSS VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X97 VDD a_11274_1983# a_11274_1983# VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X98 VDD bias_current_generator_0.current_reference_40uA_0.iout a_7372_318# VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X99 VSS a_9928_282# a_9928_282# VSS sg13_hv_nmos ad=1.14p pd=6.38u as=1.14p ps=6.38u w=6u l=5u
X100 a_9928_282# a_9928_282# VSS VSS sg13_hv_nmos ad=1.14p pd=6.38u as=1.14p ps=6.38u w=6u l=5u
X101 a_852_3910# a_988_1840# VSS rsil l=10u w=0.5u
X102 VDD a_11274_1983# bias_current_generator_0.5uA+ VDD sg13_hv_pmos ad=0.95p pd=5.38u as=0.95p ps=5.38u w=5u l=2u
X103 a_1242_318# a_242_282# a_36_1840# VSS sg13_hv_nmos ad=1.14p pd=6.38u as=1.14p ps=6.38u w=6u l=5u
X104 a_36_1840# a_242_282# a_1242_318# VSS sg13_hv_nmos ad=1.14p pd=6.38u as=1.14p ps=6.38u w=6u l=5u
X105 a_580_3910# a_444_1840# VSS rsil l=10u w=0.5u
X106 VSS a_9928_282# voltage_mirror_pmos_0.Ibias VSS sg13_hv_nmos ad=1.14p pd=6.38u as=2.04p ps=12.68u w=6u l=5u
X107 a_2484_3910# a_2620_1840# VSS rsil l=10u w=0.5u
X108 a_8830_6546# vc a_8648_7374# VDD sg13_hv_pmos ad=0.68p pd=4.68u as=0.38p ps=2.38u w=2u l=0.4u
X109 comp_pmos_0.+ a_9986_5544# VSS rhigh l=11.3u w=0.5u
X110 nout out a_2164_4622# VSS sg13_hv_nmos ad=0.57p pd=3.38u as=0.57p ps=3.38u w=3u l=0.45u
X111 VSS a_7372_318# a_7372_318# VSS sg13_hv_nmos ad=1.14p pd=6.38u as=2.04p ps=12.68u w=6u l=5u
X112 a_10052_3986# voltage_mirror_pmos_0.Ibias VDD VDD sg13_hv_pmos ad=3.4p pd=20.68u as=1.9p ps=10.38u w=10u l=2u
X113 a_580_3910# a_716_1840# VSS rsil l=10u w=0.5u
X114 out nout VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=3.4p ps=20.68u w=10u l=0.4u
X115 VDD comp_pmos_0.Ibias hv_inverter_6u5_0.in VDD sg13_hv_pmos ad=0.38p pd=2.38u as=0.68p ps=4.68u w=2u l=0.4u
X116 a_242_282# a_1242_318# VDD VDD sg13_hv_pmos ad=3.4p pd=20.68u as=1.9p ps=10.38u w=10u l=2u
X117 a_2212_3910# a_2348_1840# VSS rsil l=10u w=0.5u
X118 VDD hv_inverter_6u5_0.in hv_rs-ff_0.nR VDD sg13_hv_pmos ad=2.21p pd=13.68u as=2.21p ps=13.68u w=6.5u l=0.4u
X119 voltage_mirror_pmos_0.Ibias voltage_mirror_pmos_0.Ibias VDD VDD sg13_hv_pmos ad=1.805p pd=9.88u as=3.23p ps=19.68u w=9.5u l=2u
X120 VSS comp_nmos_0.Ibias comp_nmos_0.out VSS sg13_hv_nmos ad=0.456p pd=2.78u as=0.816p ps=5.48u w=2.4u l=1.5u
X121 a_3572_3910# a_3436_1840# VSS rsil l=10u w=0.5u
X122 a_8830_6546# a_8830_6546# VSS VSS sg13_hv_nmos ad=0.408p pd=3.08u as=0.228p ps=1.58u w=1.2u l=1.5u
X123 a_4364_4622# nout VSS VSS sg13_hv_nmos ad=1.02p pd=6.68u as=0.57p ps=3.38u w=3u l=0.45u
X124 a_4364_4622# hv_rs-ff_0.nS out VSS sg13_hv_nmos ad=1.02p pd=6.68u as=0.57p ps=3.38u w=3u l=0.45u
X125 nout out a_2164_4622# VSS sg13_hv_nmos ad=0.57p pd=3.38u as=1.02p ps=6.68u w=3u l=0.45u
X126 a_1668_3910# a_1804_1840# VSS rsil l=10u w=0.5u
X127 vc out bias_current_generator_0.5uA- VSS sg13_hv_nmos ad=0.102p pd=1.28u as=0.102p ps=1.28u w=0.3u l=0.45u
X128 a_1396_3910# a_1260_1840# VSS rsil l=10u w=0.5u
X129 nout hv_rs-ff_0.nR VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X130 out hv_rs-ff_0.nS VDD VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X131 a_9850_7890# VSS VSS rhigh l=11.3u w=0.5u
X132 bias_current_generator_0.current_reference_40uA_0.iout a_242_282# VSS VSS sg13_hv_nmos ad=2.04p pd=12.68u as=1.14p ps=6.38u w=6u l=5u
X133 a_12880_5408# vctrl VSS rhigh l=6.78u w=0.5u
X134 a_12608_5408# a_12744_3966# VSS rhigh l=6.78u w=0.5u
X135 VDD hv_rs-ff_0.nR nout VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X136 VDD hv_rs-ff_0.nS out VDD sg13_hv_pmos ad=1.9p pd=10.38u as=1.9p ps=10.38u w=10u l=0.4u
X137 a_3572_3910# a_3708_1840# VSS rsil l=10u w=0.5u
X138 a_3300_3910# a_3164_1840# VSS rsil l=10u w=0.5u
.ends

