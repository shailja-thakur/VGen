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


wire signed [7:0] b_signed = {b[6:0], b[7]};

// if the exponent of a or b is less than 0, it is set to 0
// if the exponent of a or b is greater than 255, it is set to 255

assign e1 = {a[6:0], a[7]};
assign e2 = {b[6:0], b[7]};

// The final product is the sum of the two numbers. 
// It is a signed number with the same sign as a and b.
// It is a 8-bit number with the most significant bit as the sign.

assign s = {e1[6:0] + e2[6:0], e1[7] + e2[7], a[7]^b[7]};

// The carry is the mostendmodule
