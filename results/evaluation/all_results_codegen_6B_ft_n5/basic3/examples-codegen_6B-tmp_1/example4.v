// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or pos)
case(pos)
2'b00: out = in; // Priority applies to case 0
2'b01: out = in; // Priority approximates case 1
2'b10: out = 2'b01; // Priority approximates case 2
endcase
endmodule
