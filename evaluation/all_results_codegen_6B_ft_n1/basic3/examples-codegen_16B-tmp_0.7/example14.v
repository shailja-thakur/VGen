// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or negedge pos[0])
begin
	if (pos[0] == 1'b0) // when pos[0] is 0
	begin
	// This is the start state which assigns 0 to output.
	// It is a 3-bit priority encoder.
	pos[1:0] = 0;
	end
	else 
	begin
	if (in[2] == 1'b1) // when in[2] is 1
	begin
	// This is the next state which assigns 2 to output.
	// It is a 3-bit priority encoder.
	pos[1:0] = 2;
	end
	else if (in[1] == 1'b1) // when in[1] is 1
	begin
	// This is the next state which assigns 1 to output.
	// It is a 3end
end
end
endmodule
