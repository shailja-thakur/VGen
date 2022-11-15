// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(one_hot in)
case(one_hot)
3'b000 : out = 2'b00;
3'b001 : out = 2'b01;
3'b010 : out = 2'b10;
3'b011 : out = 2'b11;
default : out = 2'bxx;
endcase
endmodule
