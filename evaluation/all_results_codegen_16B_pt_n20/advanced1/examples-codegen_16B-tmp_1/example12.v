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

  internal logic [2:0] i3,
  internal logic [1:0] i2,
  internal logic [0:0] i1,
  internal logic [7:6] i3a,
  internal logic [5:4] i3b,
  internal logic [3:2] i2a,
  internal logic [1:0] i2b,
  internal logic [7:6] i1a,
  internal logic [5:4] i1b,
  internal logic [3:2] dst_xor,
  internal logic [1:0] i1c,
  internal logic [7:6] i1d;

  int low_8_bits = ((int)s[0]) & 0xFF;
  int low = ((int)a) + ((int)b) + low_8_bits; 

  endmodule
