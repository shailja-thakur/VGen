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

      T logic carry, C logic overflow_flag; 
      if\^(a < b)
        overflow <= carry; 
      end;

      s <= a + b;
      C := (s [7:0] & 0100)...0;    // carry flag for overflow of the addition of a and b
      carry <= carry;   
      overflow <= overflow;

      if\^(carry)
        overflow <= '1' else overflow <= '0';

      // output overflow cause (0 = 0)
      output overflow
';

endmodule
