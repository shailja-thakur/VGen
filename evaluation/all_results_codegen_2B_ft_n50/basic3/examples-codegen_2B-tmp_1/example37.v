// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// and sel=0, assign a to out
always @(*)
case (in)
2'b00:
#1 pos = 2'bxx;
2'b01:
#1 pos = 2'b00;
2'b10:
#1 pos = 2'b01;
2'b11:
#1 pos = 2'b10;
endcase
assign pos = ~pos; 
endmodule
