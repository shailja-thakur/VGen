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


// add a to b in signed binary

  // add a to b in binary
  // carry through the most significant bit of a
  // carry through the most significant bit of b
  // add bits of a and b in binary
  // if bit at the most significant bit of a is high
    // carry bit of a to bit at most significant bit of b
  // if bit at the most significant bit of b is high
    // carry bit of b to bit at most significant bit of a
  // if bit at the most significant bit of b is high
    // carry bit of b to bit at most significant bit of a
  // if bit at the most significant bit of a is low
    // carry bit of a to bit at most significant bit of b
  // if bit at the most significant bit of b is low
    // carry bit of b to bit at most significant bit of a
  // ifendmodule
