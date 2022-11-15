// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = b[1];
// When sel=0, assign a to out
assign b[1] = a[1];
// When sel=1, assign a to out
assign a[1] = b[1];
// When sel=0, assign b to out
assign b[0] = a[0];
// When sel=1, assign a to out
assign a[0] = b[0];
// When sel=0, assign a to out
assign b[2] = a[2];
// When sel=1, assign a to out
assign a[2] = b[2];
// When sel=0, assign a to out
assign b[3] = a[3];
// When sel=1, assign a to out
assign a[3] = b[3];endmodule
