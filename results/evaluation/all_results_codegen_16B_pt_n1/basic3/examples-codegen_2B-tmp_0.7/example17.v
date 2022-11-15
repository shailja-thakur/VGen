// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign b = ( out == 1 ) ? 1'b1 : 1'b0;

module logic_mux( 
input [2:0] in, 
input [3:0] pos, 
output reg [3:0] out); 

// When sel=1, assign b' to out[0:2]
assign b' = ( b == 1 ) ? 1'b1 : 1'b0;

wire [3:0] tmp_pos;

// When sel=1, assign b' to out[3:0]
assign b' = ( b == 1 ) ? 1'b1 : 1'b0;

wire [4:0] tmp_in[4:0];

wire [4:0] in_out;

reg [4:0] tmp_out;

always @( posedendmodule
