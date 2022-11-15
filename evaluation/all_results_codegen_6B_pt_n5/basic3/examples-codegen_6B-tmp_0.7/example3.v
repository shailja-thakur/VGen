// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (posedge i) 
  priority_encoder_sel <= in[1] & in[0];
always @ (posedge i) 
  priority_encoder_sel <= in[1];
always @ (posedge i) 
  priority_encoder_sel <= in[0];
always @ (posedge i) 
  priority_encoder_sel <= 1;

// This is a 3-bit priority decoder. If none of the input bits are high, output is zero.
module priority_decoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (posedge i) 
  priority_decoder_sel <= in[1] & in[0];
always @ (posedge i) 
  priority_decoder_selendmodule
