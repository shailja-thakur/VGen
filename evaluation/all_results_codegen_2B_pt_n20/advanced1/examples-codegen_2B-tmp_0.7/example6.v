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


signal [7:0] carry_out;
signal [7:0] carry_in;
signal overflow;

assign carry_out = 0;

assign carry_in = (a[7]>0 ? a[7] : 0) + (b[7]>0 ? b[7] : 0);

if ( (carry_in>=128) || (carry_in<-128) )
  { 
    carry_out=0;
    overflow = 1;
  }
else
  {
    carry_out = carry_in;
    overflow = 0;
  }

s[7:0] = carry_out;

endmodule
