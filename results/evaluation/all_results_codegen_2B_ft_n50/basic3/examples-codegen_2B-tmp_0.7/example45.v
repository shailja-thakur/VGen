// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or pos)
begin : PUT
if (in[2])begin 
assign b = 1;
assign a = 0;
end
else if (in[1])begin
assign b = 0;
assign a = 1;
end
else if (in[0])begin
assign b = 1;
assign a = 0;
end
else begin
assign b = 0;
assign a = 0;
end
end
endmodule
