// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
module logic [1:0] #3[3:0] ( sel, in, pos );
// cp_out is defined and usable by your design. It susceptible to be the only one you use externally!
module logic [1:0] cp_out [3:0];
assign #3[3:0] = sel ? pos : cp_out;
endmodule
