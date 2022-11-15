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


/*

TODO:

Write a test bench that tests that any combination of a and b generates a signed sum that carries only a single negative or positive sign bit.

Write a test bench that tests that any combination of two 1's and an even number of 0's is treated as an unsigned lossless addition. Implement a hexadecimal logic function to interpret the two numbers and any control signals you put on the input and output ports. Essential control signals are manually set if a default test condition isn't adequate.

Specify when and how much information is written to a terminal during the simauation process.
For example, every time the number of digits is updated when the test CNN design switch is high.
Test whether the result functions as its expect externally.

Read and write the size of a decimal program unit.
Produce a command that simulates a decimal operation.


*/

/////////

// partendmodule
