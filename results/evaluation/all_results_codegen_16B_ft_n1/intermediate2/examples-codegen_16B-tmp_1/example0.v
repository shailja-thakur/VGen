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
always @ (posedge clk or negedge reset) 
begin 
	if(reset == 1) 
	// case: reset asserted, set q to 1
	q <= 4'b0001; 
	else if(q == 12)
	// case: we are at the required division, we need to do the math
	q <= 4'b0001; 
	else
	// case: increment q
	q <= q + 4'b0001;
end
endmodule
