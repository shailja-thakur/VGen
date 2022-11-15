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
reg [3:0] logical_and12;
always @(posedge clk)
begin
if (reset)
	q <= 4'b1111;

	 // assigning 1 to the second positive edge of each(clock) dual-edge falling triggered & rising ,component only use one edge of the dual-edge
	else if (q == 4'b1111)
	// if the counter is at 12, toggle the reset based on the input truth table 
	// then serial trigger the output
	
	q <= (logical_and12 == 4'b1000) ? 4'b1000 : 4'b1111;
	
	else 
	// if the counter is not at 12 yet, increment the counter based on the clock edge
	q <= q + 4'b0001;	
	
game1 mu = 0;
	output[3:0] out
	section out = 4end
endmodule
