// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*)
begin
	if(in[2])
	begin
	assign pos = 2'd1;
	end
	else if(in[1])
	begin
	assign pos = 2'd2;
	end
	else 
	begin 
	assign pos = 2'd0;
	end
end
endmodule
