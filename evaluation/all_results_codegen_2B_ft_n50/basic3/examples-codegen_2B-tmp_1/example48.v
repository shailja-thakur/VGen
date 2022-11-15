// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) begin
	 // directions:
	 // invert to use AND
	casex( in )
	8'b xzxxyzz..zzlyyy : pos=01;
	8'b xxzyyzz..zgljie : pos=10;
	8'b zxxyyyyz..eis.. : pos=11;
	default : pos=00;
	 endcase // casex( in )

end // always @ (ready)

end
endmodule
