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


// Implementation
// A truth table is given for the number of the selected operation
// x | y | a b | s overflow
// 0 | 1 | + |
// 0 | 0 | + |
// 0 | n | + |
// 1 | n | + |
// n | n | + |
// n | 0 | + |
// anything | - | -
//
assign overflow = (aciescond1) ? ax`bznine :1'b0;

// a and b are added together
assign s = a + b;

// Overflow for the ADD operation
assign acycon = (bracelements[`ADD]) ? (agents[`ADD]|overflow) :1'b0;

// Remove the sign of the negative outputs
assign axn = ~a [7];
assign bxn = ~b [7]; // Removeendmodule
