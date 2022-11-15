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
// update state machine register
// only register, do not change q
// this mux will decide how q will be displayed
always@(posedge clk, posedge reset)
if (reset) q <= 1;
else
	case(q)
clogi2	7'h0:q <= 1;	// zero
clogi2	7'h1:q <= 0;	// one
clogi2	7'h2:q <= 1;	// two
clogi2	7'h3:q <= 1;	// three
clogi2	7'h4:q <= 0;	// four
clogi2	7'h5:q <= 0;	// five
clogi2	7'h6:q <= 1;	// six
clogi2	7'h7:q <= 1;	// sevenendmodule
