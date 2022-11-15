// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @*
pos=in[1]?2'd3:in[2] ? 2'd1:in[0] ? 2'd0: 2'd0;
endmodule
