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


module SIGNED_ADD(
  input [7:0] a,
    input [7:0] b,
);

module SIGNED_ADD_I(
  input [7:0] a,
    input [7:0] b,
    input maximum_signed_a,
    input least_signed_a,
    input maximum_signed_b,
    input least_signed_b,
);

module SIGNED_ADD_EQ(
  input [9:0] a,
    input [9:0] b,
    input z,
    input bit_wise_or,
    32'h19, 24, 15, 7, 1
);

module SIGNED_ADD_EQ_I(
    input [7:0] a,
    input [7:0] b,
    input signed_a_maxendmodule
