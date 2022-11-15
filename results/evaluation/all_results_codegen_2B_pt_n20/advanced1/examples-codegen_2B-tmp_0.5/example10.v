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


// In this case, the output overflow is always set to 1 and the overflow occurs if the most significant bit of a is low and the most significant bit of b is high
// the output overflow is always set to 0 and the overflow occurs if the most significant bit of a is high and the most significant bit of b is low

// if the most significant bits of a and b are equal, the output overflow is always set to 0
// if the most significant bits of a and b are different, the output overflow is always set to 1

s <= (a | b)
s <= (a & b)
s <= (a & ~b)
s <= (~a | b)
s <= (~a & b)
s <= (~a & ~b)
s <= (~a & ~b & ~c)
s <= (~a & ~b & ~c & ~d)
s <= (~a & ~b &endmodule
