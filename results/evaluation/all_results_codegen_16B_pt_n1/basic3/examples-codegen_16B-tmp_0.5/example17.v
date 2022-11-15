// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ ( in or sel ) 
begin 
	casex ( in ) 
	// 00xx, 01x?, 10x?, 11x
	4'b0000 : pos = 2'b00; 
	4'b0001 : pos = 2'b01; 
	4'b0010 : pos = 2'b10; 
	4'b0011 : pos = 2'b11; 
	// 01xx, 10x?, 11x? => 
	4'b0100 : pos = 2'b00; 
	4'b0101 : pos = 2'b01; 
	4'b0110 : pos = 2'b10; 
	4'b0111 : pos = 2'b11; 
	// 10x? or 11x? => 
	4'b1000 : pos = 2'b00; 
end
endmodule
