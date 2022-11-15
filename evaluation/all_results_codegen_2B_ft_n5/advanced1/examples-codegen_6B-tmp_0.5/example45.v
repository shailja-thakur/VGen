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


wire signed [7:0] b_signed = ~b[7] + 1; //2s complement of b

assign s = a + b_signed + {8'b0,overflow}; //s is the sum of a and b, where the carry is the overflow.

//assign overflow = (a[7] & b[7]) & ~s[7]; //the carry is the overflow if the sum has a carry and the carry is high where it should be.

endmodule
