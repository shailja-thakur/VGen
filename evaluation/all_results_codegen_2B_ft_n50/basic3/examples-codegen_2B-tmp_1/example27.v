// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
parameter no_priority = 3'd0;
parameter requirement = 3'd1;
parameter command = 3'd2;
parameter delaration = 3'd3;
always @ (in)
begin
casex (in)
no_priority:
begin
pos = 2'd0;
end
requirement:
begin
pos = 2'd1;
end
command:
begin
pos = 2'd2;
end
delaration:
begin
pos = 2'd3;
end
endcase
end
endmodule
