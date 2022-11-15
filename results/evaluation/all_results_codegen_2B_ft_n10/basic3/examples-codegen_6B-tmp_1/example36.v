// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*)
begin 
	if(sel[1] && sel[2])
	pos = 2'd3;
	else if (sel[2])
	pos = 2'd2;
	else if (sel[1])
	pos = 2'd1;
	else 
	pos = 2'd0;
end
endmodule
