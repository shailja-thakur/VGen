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


// Memory

unsigned memory[2];

// Inputs

// a and b are passed in through the memory cells.

// A and B are read from the memory and passed to the adder through the a and b input parameter.

// The result, s, is stored in the s memory cell

// Overflow is passed out through the overflow output parameter

//Assumptions

//a and b are 2's complement numbers.

//if an operand is 0 , the operand is treated as having an infinite numerical value. 

//if the sum causes an overflow , an Overflow fault is generated

// if The sum does not cause an overflow , no overflow is generated and s is loaded with the subtraction result.
  
void main () {
    signed_adder(memory[0],memory[1],memory[2], memory [3]);

    // a = inputendmodule
