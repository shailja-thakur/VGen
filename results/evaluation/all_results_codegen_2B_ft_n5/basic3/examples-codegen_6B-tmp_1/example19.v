// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (posedge clk or ( posedge rst and rst_n = 0")) begin
	if((in[1]==0)) b <= ~in[0] + pos;
	else (sel ) b <= byt2bv(bit_stall)+(pos);
end
endmodule
