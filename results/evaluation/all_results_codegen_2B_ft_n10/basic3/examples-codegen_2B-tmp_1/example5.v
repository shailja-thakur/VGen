// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in) 
case (in)
3'b000 : pos = 1;
3'b001 : pos = 2;
3'b010 : pos = 3;
3'b011 : pos = 4;
3'b100 : pos = 5;
3'b101 : pos = 6;
default : pos = 3;

endcase
endmodule
