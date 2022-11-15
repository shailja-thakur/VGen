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


// Specify the behavior of the signed adder in the case that a signed 
// overflow occurs. 

// if a or b is negative, it's value is wrapped around to the other side of the word and the carry bit is set. 
// if s is negative, it's value is wrapped around to the other side of the word and the carry bit is set. 
// if a and b are both positive and s is negative, an unsigned carry is generated and the result of the add is wrapped around to the most significant bit of the word.

// The use of the carry bit to avoid the need for an additional status bit is not required in this design.

signed_adder
    sig_carry_out_a,
    sig_carry_out_b,
    is_overflow
    (
        input [7:0] a,
        input [7:0] bendmodule
