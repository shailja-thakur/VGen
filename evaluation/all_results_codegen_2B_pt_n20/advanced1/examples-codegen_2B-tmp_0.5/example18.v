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


task main() 
{
  
  input [7:0] a, b, s;
  
  a = {000, 001, 002, 003, 004, 005, 006, 007};
  b = {010, 011, 012, 013, 014, 015, 016, 017};
  s = {000, 000, 000, 000, 000, 000, 000, 000};
  
  // assign the occurence of the signed overflow of a and b to the output overflow.
  s overflow = a[7] + b[7];
  
  // assign the most significant bit of a and b to the output a.
  a [7] = a [7] ? b[7] : a[7];
  
  // assign the most significant bit of a and b to the output b.
  endmodule
