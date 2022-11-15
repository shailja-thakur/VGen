// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always @(*)
begin
	case {reset,q[3:1]} 
	{1'b0, 3'd0}: q[3:1] <= 4'd1;
	{1'b0, 3'd1}: q[3:1] <= 4'd2;
	{1'b0, 3'd2}: q[3:1] <= 4'd3;
	{1'b0, 3'd3}: q[3:1] <= 4'd4;
	{1'b0, 3'd4}: q[3:1] <= 4'd5;
	{1'b0, 3'd5}: q[3:1] <= 4'd6;
	{1'b0, 3'd6}: q[3:1] <= 4'd7;
	{1'b0, 3'd7}: q[3:1] <= 4end
endmodule
