// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*) begin
	casex (in)
	3'b000: pos = 2'b00;
	3'b001: pos = 2'b01;
	3'b010: pos = 2'b10;
	3'b011: pos = 2'b11;
	3'b100: pos = 2'b00;
	3'b101: pos = 2'b10;
	3'b110: pos = 2'b00;
	3'b111: pos = 2'b11;
	default: pos = 2'b00;
	endcase
end
endmodule
