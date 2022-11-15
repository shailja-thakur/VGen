// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// Then take the values of in and 'or' them to determine the output one at a time
always @( in ) 
casex ( in ) 
3'b0x0: pos = 2'b00; // low 4 bits 
3'b?X0: pos = 2'b10; // high 4 bits
3'b??x: pos = 2'b01; // default output = 1
default: pos = 2'bxx;
endcase
endmodule
