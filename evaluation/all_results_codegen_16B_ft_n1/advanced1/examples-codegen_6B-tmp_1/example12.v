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


module adder(input [31:0] a,
    input [31:0] b,
    input [31:0] c,
    output [31:0] s);

module subtractor(input [31:0] a, 
    input [31:0] b,
    output [31:0] s);

module tricky_adc(input [7:0] a_ext,
    input [7:0] stored_a[7:0],
    input [7:0] stored_b[7:0],
    input [7:0] c,
    output [31:0] sum_out,
    output carry);

 module most_significant_bits(input [7:0] a,
    input [7:0] b,
    input b0,
    output bit,
    output b_less_signendmodule
