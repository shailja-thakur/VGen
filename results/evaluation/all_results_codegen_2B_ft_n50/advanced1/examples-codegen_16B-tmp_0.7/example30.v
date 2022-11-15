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




// Design a 4-bit adder
module adder_1bit(input a,
 maj,
 input b,
 min,
 output s,
 output v
);

// The 4-bit adder is implemented as the 2-bit adders in a MUX.
// The 2-bit adders are implemented as the 1-bit adders twice.

// Implement the 1-bit adders
module adder_1bit_0(input a,
 maj,
 input b,
 min,
 output s,
 output v);

// If any of the bits is 1 in the input a or b, the sum is equal to the higher of the 2 bits.
// If the two bits are equal, then the sum is equal to the lesser of the 2 bits.
assign s = (a & b & maj) | (a & ~b & ~min) | (~a &endmodule
