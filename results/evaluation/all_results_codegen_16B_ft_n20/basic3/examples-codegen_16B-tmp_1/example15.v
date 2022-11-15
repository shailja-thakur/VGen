// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
	// Conditionally assign b
always @*
if (~in[2] & in[1] & in[0])
begin 
 pos[1]=1;
 pos[0]=0;
 end
else if (~in[2] & in[1] & ~in[0])
begin 
 pos[1]=1;
 pos[0]=1;
 end
else if (~in[2] & ~in[1] & in[0])
begin 
 pos[1]=0;
 pos[0]=1;
 end
else if (~in[2] & ~in[1] & ~in[0])
begin 
 pos[1]=0;
 pos[0]=0;
 end
// If none of the above cases is true, then the output will be 
// 1'bx and should therefore be unchanged.
endmodule
