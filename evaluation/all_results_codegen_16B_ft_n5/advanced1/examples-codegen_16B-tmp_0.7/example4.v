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

	wire signed [8:0] b_bar;
	wire s_most_sig_bit;

	not(b_bar, b); // use the not gate to invert the bits of b
	
	and(s_most_sig_bit, a[7], b[7]); // uses the and gate to determine if the most significant bit is 1
	or(overflow, s_most_sig_bit, b_bar[7]); // uses the or gate to create the output
	
	xor(s[7], overflow, s_most_sig_bit); // uses the xor gate to place a 1 in the most significant bit of s if there is a signed overflow
	
	assign s[6:0] = a[6:0] + b[6:0] + s_most_sig_bit; // uses the addition operatorendmodule
