// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @( posedge in ) 
priority_encoder_sel( 
sel, 
b, 
pos ); 

// This is a 3-bit priority decoder. If none of the input bits are high, output is zero.
module priority_decoder( 
input [2:0] in, 
output reg [3:0] pos ); 
// When sel=1, assign b to out
always @( posedge in ) 
priority_decoder_sel( 
sel, 
b, 
pos ); 

// This is a 4-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder_4bit( 
input [4:0] in, 
output reg [5:0] pos ); 
// When sel=1, assign b to out
always @(endmodule
