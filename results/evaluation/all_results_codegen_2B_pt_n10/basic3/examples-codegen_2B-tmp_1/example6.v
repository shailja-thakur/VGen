// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = in[BITS_1BIT[0:0]:1] ^ (FIELD_BOOL1[0:0] << 1);     
wire 
[] decode_args[63] dump_opts[63];

wire 
[] out_to_dl_sel;

/* Select clock input specified in @$PRIORITY*/
wire general_timer4_in_4;
reg [2:0] dcomp;

wire general_timer4_out;
out [2:0] out_bits;

// Priority encoder
cap @"out_to_dl_sel"
	sel<bool> out_to_dl_sel;
// select internal clock or general_timer4
wire internal_clock_sel;

reg general_timer4_freq_sel; // general_timer4 clock in or internal_clock
reg [14endmodule
