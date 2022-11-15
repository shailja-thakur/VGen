// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in or pos)
begin
case(pos)
0: begin
	if(in[2] == 1)
	begin
	pos <= 1;
	end
	else
	pos <= 0;
end
1: begin
	if(in[1] == 1)
	begin
	pos <= 2;
	end
	else
	pos <= 0;
end
2: begin
	if(in[0] == 1)
	begin
	pos <= 3;
	end
	else
	pos <= 0;
end
endcase
end
endmodule
