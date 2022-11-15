// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire assign( //name alias
	// target of assign
	output out
	// drivers
	, input in 
);
// Design a module that divides two input values and assigns the truncated result to an output value
module div_n(unsigned n, input A, input B, output Q);
// if div_n() is given an unsigned input n, q('n') is accepted and normalized to an int n and the scaled 
// input h is received
// divided by 2
// resulting in truncated Q
// Input: 0 to 255
// Output: 1-128, 0 to 127, 126 to 255 to be ignored
// pruned 
// Sign
//  Q :=		A	B	/2	Sign(A	B)
// if n is odd	then normalize		/2	255	255
// if n is even	then normalize		/2	255	127endmodule
