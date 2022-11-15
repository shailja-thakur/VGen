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

	wire [7:0] b_inverted;
	wire [7:0] a_inverted;
	wire [7:0] s_inverted;
	wire [7:0] a_and_b_inverted;
	wire [7:0] s_and_b_inverted;
	wire [7:0] s_or_b_inverted;
	wire [7:0] s_or_a_inverted;
	wire [7:0] a_or_b_inverted;
	wire [7:0] a_or_s_inverted;

	not n1(b_inverted[7], b[7]);
	not n2(b_inverted[6], b[6]);
	not n3(b_inverted[5], b[5]);
	not n4(b_inendmodule
