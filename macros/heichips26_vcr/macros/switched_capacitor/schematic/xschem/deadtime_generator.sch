v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -130 -20 130 20 {lab=out2}
N -130 -60 -110 -60 {lab=out2}
N -130 20 130 -20 {lab=out1}
N -130 20 -130 60 {lab=out1}
N -130 60 -110 60 {lab=out1}
N -130 -60 -130 -20 {lab=out2}
N -190 40 -190 100 {lab=#net1}
N -190 100 -110 100 {lab=#net1}
N -190 -100 -190 -40 {lab=in}
N -190 -100 -110 -100 {lab=in}
N 130 -80 130 -20 {lab=out1}
N 130 20 130 80 {lab=out2}
N -230 -100 -190 -100 {lab=in}
N 10 80 30 80 {lab=#net2}
N 130 80 150 80 {lab=out2}
N 110 80 130 80 {lab=out2}
N 10 -80 30 -80 {lab=#net3}
N 130 -80 150 -80 {lab=out1}
N 110 -80 130 -80 {lab=out1}
C {sg13cmos5l_stdcells/sg13cmos5l_nor2_1.sym} -50 80 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_inv_1.sym} -190 0 1 0 {name=x7 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_nor2_1.sym} -50 -80 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {ipin.sym} -230 -100 0 0 {name=p4 lab=in}
C {opin.sym} 150 -80 0 0 {name=p1 lab=out1}
C {opin.sym} 150 80 0 0 {name=p2 lab=out2}
C {sg13cmos5l_stdcells/sg13cmos5l_dlygate4sd3_1.sym} 70 -80 0 0 {name=x42 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
C {sg13cmos5l_stdcells/sg13cmos5l_dlygate4sd3_1.sym} 70 80 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13cmos5l_ }
