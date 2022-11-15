// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

always sel<<=1;
always t=sel==0;

output[4:0] b_io;

void main    
( 
  /* In a multiplexer without Flipflip Diagram Esibit relict... */
  input [5:0] mux_in, 
  /* Out must be read right after each input control. */
  output [5:0] out
);

assert out[0:0]=>t; ;
assert out[1:0]=>0;


endmodule
