// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos[2:0] ( sel[1:0] | (in[1]>>0));
// When sel=0, assign b to out
assign pos[2:0] ( pos[2:0]&0x3|sel[1:0] );
);
priority_encoder p;

// Distribute 32 input signals across the four locations
priority_register p_out;
assign p_out[3:0] ( 
p_out[3:0] | ( priority_encoder_out[pos[2:0]:0:4] << 2) 
); // pp\qpzzzzzzz is 4-bit value
priority_encode p_en2;
mode_select_en p_en;
priority_capture p_capture;
src_sel p_select = 50;

// Generateendmodule
