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

  // Check for overflow in s
  if (b[7] + ~ s[7] < ~ (0) + ~ (0) 
     or 
      b[7] + s[7]  >  (1 << 7) + (1 << 7)) {
    overflow = true;
  }
       
  // add b to s
  s[7]  +=  (1) + b[7];

  // check for s overflow
  if ( s[7] <=  (1) + b[7]) {
    overflow = true;
  }
  
  // add a to s
  s[7]  +=  a[7];

  // check for an unsigned overflow is the result > 2's complement of return value
  // We need to remove the 7th bit
  if (~s[70] < ~(0) ) {endmodule
