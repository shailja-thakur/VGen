// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out

always @(*)
void
module p_in_assign( 
input [2:0] in, 
output reg [1:0] out ); 
//When sel=1, assign out to b

always @(*)
void
module p_out_assign( 
output reg [1:0] out, 
input reg [1:0] in ); 
//When sel=1, assign out to b

always @(*)
void 
p_init( 
input [2:0] in, 
output reg [1:0] out ); 
//When sel=1, assign out to b

always @(*)
void 
p_init_no_init_output( 
input [2:0] in, 
output reg [1:0] out ); 
//When sel=1,endmodule
