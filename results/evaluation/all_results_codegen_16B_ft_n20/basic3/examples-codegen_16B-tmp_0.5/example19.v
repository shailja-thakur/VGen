// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or posedge pos[1])
begin
	if (in[2] == 1'b1)
	begin
	pos[1] <= 1'b1;
	pos[0] <= 1'b0;
	end
	else if (in[1] == 1'b1)
	begin
	pos[1] <= 1'b0;
	pos[0] <= 1'b1;
	end
	else if (in[0] == 1'b1)
	begin
	pos[1] <= 1'b0;
	pos[0] <= 1'b0;
	end
	else
	begin
	pos[1] <= 1'b0;
	pos[0] <= 1'b0;
	end
end
endmodule
