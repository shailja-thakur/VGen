// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*)
if (in[2]==1'b1)
assign b=in[2];
else if (in[1]==1'b1)
assign b=in[1];
else if (in[0]==1'b1)
assign b=in[0];
else
assign b=0;
always @(*)
if (in[2]==1'b1)
assign sel=1'b1;
else if (in[1]==1'b1)
assign sel=1'b1;
else if (in[0]==1'b1)
assign sel=1'b1;
else
assign sel=1'b0;
always @(*)
if (in[2]==1'b1)
assign out=2'b11endmodule
