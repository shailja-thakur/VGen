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
reg [2:0] clock_count; 
always @(posedge clk)
if (reset)
	begin
	q <= 0;
	clock_count <= 0;
	end
// increment the counter 
else
	begin
	clock_count <= clock_count + 1;
	q <= clock_count + q;
	end
endmodule
