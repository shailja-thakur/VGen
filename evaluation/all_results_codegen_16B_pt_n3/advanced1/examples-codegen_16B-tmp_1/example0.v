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


s <= a add b + (a[7] * (s[7] - 1)) + (b[7] * (0 - 1)) + (s[6:0] + a + b) 
s[7:0] <= (a - s) + (b + 1 + (s[7] - 1))
s[7:0] <= a + b
s[7:0] >= a and s[7:0] >= b
enableOverflow low


assume
a >= b
overflow <= '0'

// 36 reg, 9 constants, and 16 intermediate variables
signed_adder num_reg = 36 reg, 9 constants, 16 intermediate vars


signed_adder signed_adder( input a, input b, output s, output overflow ) {
l1   : for( i = 7; i > 0; i-- ) {
    $(aendmodule
