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



// If the most significant bit of a or b is high then the signed addition of a and b will create a negative number.
// The most significant bit of s is high if the sum is negative. 
// If the sum is negative then the carry out is high, otherwise the carry out is low.

assign s = (a[7]^b[7]) ? ((~(a[7]^b[7]))^(a[6:0]^b[6:0]))^(a[7]^b[7]) : (a[7]^b[7])^(a[6:0]^b[6:0]);

assign overflow = (a[7]^b[7])^(a[6:0]^b[6:0])^(a[7]^b[7]);

endmodule
