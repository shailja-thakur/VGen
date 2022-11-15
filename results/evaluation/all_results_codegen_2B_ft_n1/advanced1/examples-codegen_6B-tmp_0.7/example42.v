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


assign overflow = ((a[7] & b[7]) & ~s[7]) | ((~(a[7] | b[7])) & s[7]);

// a and b are positive if a[7] is high or if a[7] and b[7] are high
// s is negative if s[7] is high

// positive if a[7] or a[7] and b[7] are high
// negative if s[7] is high

// adder adds two numbers a and b and puts the result in s

// xor adds two numbers a and b and puts the result in q

// output of the adder

endmodule
