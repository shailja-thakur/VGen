// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign a to pos
assign pos = 1'b0
# clamp pos to [0, 63] and sel=1 to respective bits and sel=0 to zero
wire b
wire a;

endcase 

endmodule
