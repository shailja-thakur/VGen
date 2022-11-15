// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a and b to out. 

wire [4:0] a_out, b_out, c_out;

mux mux_inst(
a_out, b_out, c_out,
sel,
a, b, c );

always @( posedge clk )
  if (sel == 0)
    a_out = a;
  else if (sel == 1)
    b_out = b;
  else
    c_out = a_out + b_out;

endmodule
