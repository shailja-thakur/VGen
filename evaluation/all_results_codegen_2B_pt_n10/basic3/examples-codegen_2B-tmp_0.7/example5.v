// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign  pos = (in[0] ? in[1] : in[0]); 

// This is a 4-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [4:0] in,
output reg [3:0] pos ); 
// When sel=1, assign b to out
assign  pos = (in[0] ? in[1] : in[2] ? in[3] : in[4]); 

// This is a 8-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [8:0] in,
output reg [7:0] pos ); 
// When sel=1, assign b to out
assign  pos = (in[0] ? in[1endmodule
