v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {/home/noah/Documents/freizeit/heichips/heichips26-voltage-controlled-resistor/macros/voltage_controlled_resistors/macros/opamp/schematic/xschem/op_amp_ver_2.sym} -10 0 0 0 {name=x1}
C {sg13cmos5l_pr/rhigh.sym} 60 120 1 0 {name=R1
w=0.5e-6
l=0.96e-6
model=rhigh
body=sub!
spiceprefix=X
b=0
 m=1
  mm_ok=1
value="expr_eng(  ( 1.6e-4 / @w + 1360.0 * ( (@b + 1)* @l + ( 1.081*( @w - 0.04e-6 ) + 0.18e-6 )*@b ) / ( @w - 0.04e-6 ) ) / @m  )"
}
