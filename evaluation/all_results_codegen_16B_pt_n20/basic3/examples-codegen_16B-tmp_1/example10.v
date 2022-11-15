// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always_ff @$display( pos ); end

enum addr_mode {
    mode_IDD = 2'b11,
    mode_IA  = 2'b10,
    mode_DA  = 2'b01,
    mode_AA  = 2'b00
};

enum addr_ce {
	ce_IDD = 1'b1,
	ce_DA  = end
};

enum width {
	width_1 = 1'b0,
	width_4 = 1'b1
};

addrs #( .WIDTH( width_1 ), .MODE( addr_mode ), .CE( addr_ce ) ) addrs_m, 
addr_i #( .MODE( addr_mode ), .IDD( 1'b1 ) ) addr_i_m; 
opts #( .WIDTH( widthendmodule
