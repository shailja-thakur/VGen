// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always@(in, pos)
casex(in)
3'bxz: pos = 2'bxx;
3'b0z: pos = 2'bxx;
3'b1z: pos = 2'bzz;
3'b10: pos = 2'bzz;
3'b11: pos = 2'bzz;
default: pos = 2'bxx;
endcase
endmodule
