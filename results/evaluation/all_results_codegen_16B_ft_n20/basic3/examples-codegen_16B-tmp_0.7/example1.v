// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or pos)
begin
	casex ({in})
	4'b0xxx: pos = 2'b00;	//0
	4'b1000: pos = 2'b01;	//8
	4'b1001: pos = 2'b10;	//9
	4'b1010: pos = 2'b11;	//10
	default: pos = 2'b00;	//0
	endcase
end
endmodule
