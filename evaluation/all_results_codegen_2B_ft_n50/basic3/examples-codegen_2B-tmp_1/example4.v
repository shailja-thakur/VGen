// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always@(*)

casex(in)

3'bx0z : pos=2'bxx; 

3'b0xz : pos=2'bxx; 

3'bx1z : pos=2'b10;

3'b1xz: pos=2'b01;

3'bxz1 : pos=2'b00;

default : pos=2'b00; 

endcase

endmodule
