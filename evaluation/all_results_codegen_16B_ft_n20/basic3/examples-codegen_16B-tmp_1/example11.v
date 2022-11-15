// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
 
always @ (in)
 casex (in)
 
0 : pos=2'b00;
// concatenate 00 (zero) on the output if none of the input were high
 
1 : pos=2'b10;
// same with 01 (one) 
 
2 : pos=2'b01;
 
default : pos=2'b00;
 
endcase
 
endmodule
