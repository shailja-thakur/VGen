// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always@(in or negedge pos[0]) begin
	if(in[2]==1) pos[1:0] <= 2'b11;	// 00 => 11
	else if(in[1]==1) pos[1:0] <= 2'b10;	// 01 => 10
	else if(in[0]==1) pos[1:0] <= 2'b01;	// 10 => 01 
	else pos[1:0] <= 2'b00;	// 11 => 00
end
endmodule
