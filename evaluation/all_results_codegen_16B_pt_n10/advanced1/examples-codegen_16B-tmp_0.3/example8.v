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


// Example:
// a = [1, 0, 1, 1, 1, 0, 0, 1], b = [0, 1, 0, 0, 0, 1, 1, 1], s = [1, 0, 1, 1, 1, 0, 0, 1], overflow = [0, 0, 0, 0, 0, 0, 0, 0]

signed_adder(a, b, s, overflow);

// The output s is [1, 0, 1, 1, 1, 1, 1, 1], the output overflow is [0, 0, 0, 0, 0, 0, 0, 0]

// a = [1, 0, 1, 1, 1, 0, 0, 1], b = [0, 1, 0, 0, 0, 1, 1, 1], s = [1, 0, 1, 1, 1, 0, 0, 1endmodule
