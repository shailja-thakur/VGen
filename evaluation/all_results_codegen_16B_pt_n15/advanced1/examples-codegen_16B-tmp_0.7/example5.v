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


signed_adder:
    // The most significant bit of a is low. 
    // The most significant bit of b is low.
    assign a_overflow = 0;
    assign b_overflow = 0;
    // The most significant bit of s is low.
    assign s_overflow = 0;
    // The most significant bit of a and b are high. 
    assign a_high = 1;
    assign b_high = 1;
    // The most significant bit of a and b are low. 
    assign a_low = 1;
    assign b_low = 1;

    // The most significant bit of a is low. 
    // The most significant bit of b is low.
    assign a_overflow_lut[0] = a_overflow;
    assign b_overflow_lendmodule
