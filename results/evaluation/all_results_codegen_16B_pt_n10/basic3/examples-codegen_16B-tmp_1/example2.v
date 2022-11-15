// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign 0 to out
// Output = (~(in & sel) !=0) << prio
always @(posedge clk) 
if (pos == 0) begin
	output[0] <= 0; 
	output[1] <= 0; 
end else begin
	if (((~(in[0]&1) == 0) && (sel[0] == 1)) || ((~(in[1]&1) == 0) && (sel[0] == 0))) output[0] <= 1;
	if (((~(in[0]&1) == 0) && (sel[1] == 1)) || ((~(in[1]&1) == 0) && (sel[1] == 0))) output[1] <= 1;
end 
endmodule
