// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
wire [4:0] sel_b;
assign sel_b = ( sel ) ? b : 4'b1111;
mux2to1 mux_inst0 (
// Output, input1
.out(out[0]),
.in0(a[0]), 
// Input, input2
.in1(sel_b[0]),
.sel(sel)); 
mux2to1 mux_inst1 (
// Output, input1
.out(out[1]),
.in0(a[1]), 
// Input, input2
.in1(sel_b[1]),
.sel(sel)); 
mux2to1 mux_inst2 (
// Output, input1
.out(out[2]),
.in0(a[2]), 
// Input, input2
.in1(selendmodule
