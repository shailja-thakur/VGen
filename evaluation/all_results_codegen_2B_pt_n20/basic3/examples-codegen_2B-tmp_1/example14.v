// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @( posedge in[0] or posedge in[1], posedge in[2] )
reg [1:0] pos; 
assign pos = pos>>2; 
# bundles a natural numbers into 0,1 
always @(posedge bypass, negedge in[1])
assign pos = dec($pos) 
endmodule
