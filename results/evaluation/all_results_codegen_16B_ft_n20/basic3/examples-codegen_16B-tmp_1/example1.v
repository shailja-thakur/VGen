// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(in or sel)
begin
	casex(sel)
	[2:1] 4'b0000 : pos <= 6'b000000;
	[2:1] 4'b0001 : pos <= 6'b000001;
	[2:1] 4'b0010 : pos <= 6'b000010;
	[2:1] 4'b0011 : pos <= 6'b000011;
	[2:1] 4'b0100 : pos <= 6'b000100;
	[2:1] 4'b0101 : pos <= 6'b000101;
	// default - assign 0000 -- all low
	[2:0] : pos <= 6'b000000;
	endcase
end
// main module logic
// note that this is just a 3-to-1 mux, not a true priority encoder
always @(endmodule
