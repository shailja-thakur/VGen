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

  assign overflow = a[7] // overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
      && b[7] // overflow occurs if the most significant bits of a and b are high and the most significant bit of s is low

  s[7:0] = a[7:0] + b[7:0];
//let overflow = bout >>s[7]  // make everything unsigned truncates the bailout condition

  s[7] = s.boudsoverflow_and_low ? 0 : 1 ;
// zero-borrow Ellison-Luiseno overflow
  vout(s) .or_(overflow_evidence);
 
//overflow A/TTL: 
// During the binop we alter the supports while we call mutate, 
// so the overflow sensor must be called before doing anything concerning the rightendmodule
