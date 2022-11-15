// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ ( in or sel ) begin
 if(sel == 1) begin
 assign pos = in;
 end
 else
 assign pos = 2'd0;
 end
endmodule
