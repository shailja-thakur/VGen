// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in)
begin
	casex (in)
	6'b00_0000: pos=2'b00;
	6'b10_0000: pos=2'b01;
	6'b01_0000: pos=2'b10;
	6'b11_0000: pos=2'b11;
	default: pos=2'b00;
	endcase
end
endmodule
