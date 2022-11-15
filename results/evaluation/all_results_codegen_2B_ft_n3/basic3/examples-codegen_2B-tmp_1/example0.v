// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ ( in or pos ) begin
	if( pos == 2'b0b ) begin
	assign b = in[2];
	assign a = 1'b0; 
	end
	else if( in[2] == 1'b1 ) begin 
	assign b = in[1];
	assign a = in[0]; 
	end
	else 
	begin
	assign b = 1'b0;
	assign a = in[1];
	end
end
endmodule
