// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
assign p {
  sel := mux.b;
  a := mux.out(1);
  b = mux.out(0);
};
// n can be 0 or 1.
reg x;
always_ff;
// Reads and writes magic for both output lines.
assign mux_out [2:1] outs {
  reg [4:0] v1;
  reg [4, 2:0] v2;
  assign mux_magic_0 x;
  always_write_*_0_x[2, 4, 2, cid_mux_out0];
  always_write_*_1_x[0, 1, 2, cid_mux_out1];
  assign outs.v1{
     x_out0: mux_magic;
  }
  assignendmodule
