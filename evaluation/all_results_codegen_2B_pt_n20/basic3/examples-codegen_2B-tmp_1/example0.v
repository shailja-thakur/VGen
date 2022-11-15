// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign bias_sel [1:0] f = 0x10 if in[0]<in[1];
// probe when pos[1:0]=0
assign pos_decoded [1:0] pos[1:0] <= pos_DEC_test; 
always @(posedge out_buffer_clk or posedge in)
begin
// when pos<pos_bit...
if ( pos[1:0]<=pos_bit ) begin
	#if f_vec_possel_selp==0
	// debugger break
	#endif
	// assign position position_f state
	pos_bit[1:0] <= pos;
end
// when pos[1:0].v>=pos_bit and out_buf+in!=2
#if f_vec_possel_selp==1 && out_buffer==0
	endmodule
