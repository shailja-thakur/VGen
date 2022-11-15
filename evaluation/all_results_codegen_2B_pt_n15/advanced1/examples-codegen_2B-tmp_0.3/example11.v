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


// This is a simple implementation of the signed_adder.
// The input a and b are stored in the registers a and b.
// The output s is stored in the register s.
// The output overflow is stored in the register overflow.

// The following registers are used:
// a, b, s, overflow

// The following instructions are used:
// add, sb, sbz, sbz_c, sbz_c_c, sbz_c_c_c, sbz_c_c_c_c, sbz_c_c_c_c_c, sbz_c_c_c_c_c_c, sbz_c_c_c_c_c_c_c, sbz_c_c_c_c_c_c_c_c, sbz_cendmodule
