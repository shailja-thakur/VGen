// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*)
case(in)
3'b0000: pos = 2'b00;
3'b0001: pos = 2'b01;
3'b0010: pos = 2'b10;
3'b0011: pos = 2'b11;
default: pos = 2'b00;
endcase
endmodule
