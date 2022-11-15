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



assign overflow = ((~a[7]) & b[7] & (~s[7]) & (~a[7] | b[7])) |

// check the sign of the numbers a and b for the cases where the numbers have opposite signs
// the overflow is high if the most significant bit of s is high and the most significant bit of a is low or b is high and the most significant bit of s is low
((~a[7]) & (~b[7]) & (~s[7]) & (~a[7] | b[7]));

// when a and b have opposite signs, the a and b are added and the result is negated
// the result of addition is stored in the output s
assign s[7:0] = (~a[7]) & (~b[7]) & (~s[7]) & (~a[7] | b[7]) ? (~endmodule
