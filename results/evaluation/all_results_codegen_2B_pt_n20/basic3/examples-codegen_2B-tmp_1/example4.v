// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos[0] = in[weak_run] << 2'h2;	
assign pos[1] = in[1'] << 2'h1;	
assign pos[2] = in[2'] << 2'h0;	
assign pos[3] = in[3'] << 1'b0 || pos[1];
assign out = pos[sel];
endmodule
