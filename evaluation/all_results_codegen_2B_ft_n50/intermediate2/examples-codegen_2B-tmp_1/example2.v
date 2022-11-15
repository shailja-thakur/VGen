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
reg re_enable_reg;
always @(clear1,clk)
	begin
	if (reset)
	//......
	re_enable_reg <= 0;
	else if (clear1) begin
	// set re_enable to 0 in each clock cycle after reset operation.
	re_enable_reg <= 0;
	// reset no. to 12
	q <= 12;
	end
	else if (q==12) 
	// no change
	re_enable_reg<=1;
	else if (clk)//on this clock change (no new data from the deback)
	// ....
	re_enable_reg<=1;
	else// clock change "only" happened during currently clearing
	re_enable_reg<=0; 
end
 // no new data till the button is pressed
always @(posedge clendmodule
