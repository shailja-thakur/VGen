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


assign overflow = (a[7] == 1'b0) & (b[7] == 1'b0) & (s[7] == 1'b1); // check for overflow

// define the negative bit of the output to be the xor of the most significant bits
assign s[7] = a[7] ^ b[7];

// define the bits of the output that are to the right of the negative bit (the most significant bits) to be the sum of the two most significant bits (a + b)
assign s[6:0] = a[6:0] + b[6:0];

endmodule
