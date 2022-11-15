// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
parameter sel=1;
parameter [1:0] b={b[0],b[0]}; 
always @(*) 
case(sel) 
1: pos=b; 
default: pos={pos[0],pos[0]}; 
endcase 
endmodule
