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

  assign s = a + (s & ~b);
  assign overflow = 
    s[0:7] == (s & ~b) && s[0:7] != (s | b) &&
    s == a && (s[0:7] == (s | b)) && s[8:16'] == (s & ~a) && s[8:16'] != (s | a) &&
    s[11:15] == (s | a);
  assign overflow = 
    ((s == ~b) || (s == ~a)) && s[0] == 1 && ((a&b)[0] == ((s+b)[0] ));

  // if the most significant bits of b are low an overflow occurs when the most significant bit of s is high;
  assign overflow = 
    ((~a^b) & s[0endmodule
