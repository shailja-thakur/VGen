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


// adder module
// wire is used to capture the carry output of the adder
// assign output to desired module

// adder module
// carry is a first-order adder
// create carry input and carry output wires
// create two 8-bit full adders, one with input a, the other with b, the carry in, and the carry out
// assign carryin to the carry output of the adder
// propagate the exception output of the full adder to the exception output of the sign adder
// assign overflow to the exception output of the sign adder

// adder modules
// sign adder module
// exception module
// sign adder module
// adder module
// adder module
// adder module
// adder module

// carry input to the full adder module
// first full adder module
// second full adder module
// third full adder moduleendmodule
