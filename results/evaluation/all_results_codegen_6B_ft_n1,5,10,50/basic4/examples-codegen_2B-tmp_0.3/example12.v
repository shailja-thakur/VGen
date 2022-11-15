// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a and b to out. 

wire [4:0] a_out, b_out, c_out, d_out;

initial begin
  a_out = a;
  b_out = b;
  c_out = a;
  d_out = b;
end

assign out = a_out;

assign out = b_out;

assign out = a_out + b_out;

assign out = a_out - b_out;

assign out = a_out * b_out;

assign out = a_out / b_out;

assign out = a_out % b_out;

assign out = a_out & b_out;

assign out = a_out | b_out;

assendmodule
