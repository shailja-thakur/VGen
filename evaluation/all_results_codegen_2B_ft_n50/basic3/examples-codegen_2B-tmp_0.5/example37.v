// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or pos) begin
case(pos)
0: begin
	out <= in;
	end
1: begin
	out <= 2'b00;
	end
2: begin
	out <= 2'b01;
	end
3: begin
	out <= 2'b10;
	end
endcase
end
endmodule
