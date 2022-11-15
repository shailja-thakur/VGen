// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or negedge rst) begin
	if(rst) or (sel and negedge reset) or (sel and active); 
	output <= 
		pos[0] when (sel and in[0]=1) or (sel and in[1]=1) or (sel and in[2]=1) 
		or (sel and in[3]=1) or (sel and in[4]=1) 
		or (sel and in[5]=1) or (sel and in[6]=1) 
		or (sel and in[7]=1) 
		or (sel and in[8]=1) 
		or (sel and in[9]=1) or (sel and in[10]=1) 
		or (sel and in[11]=1) orend
endmodule
