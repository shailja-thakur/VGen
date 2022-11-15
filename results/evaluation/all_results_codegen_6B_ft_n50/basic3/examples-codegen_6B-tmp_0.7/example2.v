// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) 
begin 
 if (in[0]|in[1]|in[2]) 
 pos=2'd0; 
 else if (in[3]|in[4]|in[5]) 
 pos=2'd1; 
 else if (in[6]|in[7]|in[8]) 
 pos=2'd2; 
 else 
 pos=2'd3; 
end 
endmodule
