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


signed_adder()
{
  
  // use the following logic to calculate the overflow:
  // if either a or b is negative, then the result is negative
  // if both are positive, then the result is positive
  // if both are zero, then the result is zero
  
  // if a is negative, then the result is negative
  // if b is negative, then the result is negative
  // if a is zero and b is zero, then the result is zero
  
  // if a is zero and b is negative, then the result is negative
  // if a is positive and b is zero, then the result is positive
  // if a is negative and b is positive, then the result is positive
  
  // if a is positive and b is zero, then the result is positive
  // if a is negative and b is zero, then the result is negative
  
endmodule
