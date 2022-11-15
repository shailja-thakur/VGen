// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, keep previous value in out
always @ ( * ) 
begin 
// Prioritizing in[2:0] 
casex ( in ) 
3'b0xx: pos = 2'd2; 
3'b1x0: pos = 2'd0; 
3'b0x1: pos = 2'd1; 
3'b1xx: pos = 2'd3; 
// Using default case for unexpected input, in this case, 011 
default: pos = 2'bz; 
endcase 
end 
endmodule
