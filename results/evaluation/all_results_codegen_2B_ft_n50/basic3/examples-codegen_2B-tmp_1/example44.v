// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) begin
	casex (in)
	0 : {pos} <= 0;
	1 : {pos} <= 1;
	2 : {pos} <= 2;
	3 : {pos} <= 9;
	4 : {pos} <= 8;
	5 : {pos} <= 75;
	6 : {pos} <= 33;
	7 : {pos} <= 6;
	8 : {pos} <= 9;
	9 : {pos} <= 9;
	default : {pos} <= 0;
	endcase
end
endmodule
