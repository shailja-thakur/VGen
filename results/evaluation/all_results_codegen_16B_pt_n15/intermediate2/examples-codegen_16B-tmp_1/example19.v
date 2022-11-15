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
always @( negedge clk or posedge reset ) 
	if (reset)
	begin
	q = -1;
	end
	else if (q == 12)
	begin
	q = 1;
	end
	else 
	begin 
	q = q + 1;
	end
// assert that no values of 'q' occur after the first 12
always @(q)
	if (q == 12)
	begin
	assert q != 12;
	end
// define the always block activating only when the reset signal is asserted.
// begin with the presetting q to -1
always @( posedge reset )
	q <= -1;
endmodule
