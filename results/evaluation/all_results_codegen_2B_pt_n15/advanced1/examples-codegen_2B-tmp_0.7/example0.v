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


// Add two numbers a and b, using the 2's complement method.
//  - a[7:0] and b[7:0] are summed.
//  - The most significant bit of the sum is stored in the output s[7:0].
//  - The signed overflow bit in the output overflow[7:0] is set if the most significant bit of a[7:0] is low and the most significant bit of b[7:0] is high.

// Assume all 16 bits of a and b are valid (i.e. do not overflow).

const a: [7:0] = 0xd3;
const b: [7:0] = 0x46;

const s: [7:0] = 0xd3;
const overflow: [7:0] = 0x00;

// Output

// s[7:0]endmodule
