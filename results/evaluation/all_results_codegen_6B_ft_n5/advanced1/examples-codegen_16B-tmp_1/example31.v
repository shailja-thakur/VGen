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


assign overflow = ((is_a_negative & is_b_positive) | ((~is_a_negative) & is_b_negative & is_s_positive)) & 
((a[7] & b[7]) | ((a[7] & is_s_positive) & (~b[7])) | ((is_s_positive & b[7]) & (~a[7])));

// use two-accumulator architecture to detect the signed overflow

// if either a or b is negative, then the most significant bit of its absolute value is high and the
// remaining bits are low (makes a negative number)
// if the remainder of the addition is bigger than the msb of b, then there is an overflow

assign is_a_negative = a[7] & (a[6] | a[5] | a[4] | a[3endmodule
