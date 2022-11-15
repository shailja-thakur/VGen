// Design a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 

module signed_adder(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to the output s. 
// assign the occurence of the signed overflow of a and b to the output overflow.
// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low

	// The addition operation is only partially vectorizable
	// Just the necessary adders of a, b, and s are implemented. 
	// The variable s is a completely different part of the module.

	// Sum output (s):
	// The addition operation is done on 2's complement numbers,
	// i.e. the adder adds exactly 1 base-e signed number. (e.g. 1 + 0)
	// Perform signed sum.
	// Credits:Christian Sachsse

// find the width for which all input bits cancel
	// in the adder output
	wire [7:0] 	temp_sum;	
	wire 	[7:0]	cancel_sum;
	and 	(cancel_sum[7],a[7],b[7],0,0);
	and 	(cancel_sum[6],aendmodule
