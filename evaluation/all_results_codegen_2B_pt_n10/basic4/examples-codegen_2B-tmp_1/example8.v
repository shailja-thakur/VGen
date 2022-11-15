// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

wire dev[3:0] d;

// Design 3 modulators.
// mod is the input ld bit of the input net, mod[ld_bits-1]=1, and
// mod2 = mod|mod is the 2nd most significant bit of rs[ld_bits-1].
module mux2_mod(
input [3:0] mod2,
input [3:0] mod,
output b,
input rs[15:0],
output d
);
void main() {
  mux2_mod module1(in0, in1, out1, in4, out4 );
  mux2_mod module2(in2, in3, out3, in5, out5 );
  mux2_mod module3(in0, in0, in1, in5, in5 );

  sel1 < posedge clendmodule
