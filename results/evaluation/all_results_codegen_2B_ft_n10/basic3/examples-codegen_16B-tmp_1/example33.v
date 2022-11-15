// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*)
begin
// MAX priority encoder
	pos = 2'd0;
	if(in[2])
	begin
	// 2 appears as 0 and 1 appears as 1 
	// Therefore, we have a 100% chance to get 010
	pos = 2'd1;
	end 
	if(in[1])
	begin
	// 1 appears as 0 and 0 appears as 2
	// Therefore, we have a 50% chance to get 0;
	// In this case, we would courtily NOT assign 0 to pos
	if(in[0]==0)
	pos = 2'd0;
	end 
	if(in[0]) 
	pos = 2'd2;
end 
endmodule
