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


// Create a concatenation wire s[7:0] = a[7:0] + b[7:0]
wire [7:0] sum;
wire carry;

// Create a concatenation wire carry[1:0] = {a[7],b[7]};
// The concatenation wire carry[1:0] is the carry input.
// The carry input is placed in the first input of the adder to create the carry output wire
// The carry output wire is placed in the second input of the adder.

// Create some wires for the output of the adder. 
// These wires will be assigned to the output of the adder.

// Create an XOR gate to determine the output of the adder.
// XOR the carry in to the sum wire and the carry in to the carry wire.
// Assign the output of the adderendmodule
