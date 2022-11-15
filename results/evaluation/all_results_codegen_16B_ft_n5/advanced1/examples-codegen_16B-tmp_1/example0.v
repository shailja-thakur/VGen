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




// Code for CMP	

module cmp #(parameter W = 8)	// the W parameter determines the size of the width of the two 8 bit inputs
(
	input wire signed [W-1:0] in1,
	input wire signed [W-1:0] in2,
	output wire signed [W-1:0] out
);

	assign out = in1 > in2 ? in1 : in2;


endmodule
