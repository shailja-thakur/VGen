// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or sel)
begin
	if (sel) begin
	// If sel is high, output is equal to input
	// If sel is low, output is 0
	pos = in;
	end
	else begin
	pos = 2'b00;
	end
end
endmodule
