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
wire 
    [3:0]
    counter_q2;
// Let's begin: 
initial begin
    clk <= clk_en;		// clock enable requires clock-cycle to be 1
    reset <= reset_in;	// reset signal does require reset to be low before it is high
    q <= [3:0]; 			// pointer to the first counter register
    counter_q2 <= 12;	// 32...1

loop (counter_q2!=12) // assume on_reset needs an initial value to know if it should load the initial value or increment it to the one on the next reset.
    if (q==3) {			// clk is high, reset is low, increment is still not high
	q <= [3:0];			// after reset, q must be reset
	if (counter_q2 == 12)	// if nextend
endmodule
