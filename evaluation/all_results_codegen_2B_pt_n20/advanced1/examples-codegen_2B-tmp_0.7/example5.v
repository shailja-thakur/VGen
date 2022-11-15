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


signed_adder(s, a, b, overflow)
{
  s(7:0) = a(7:0) + b(7:0);
  if (s(7:0) > 0x7f) {
    s(7:0) = 0x7f;
    overflow(1);
  }
  else if (s(7:0) < 0x80) {
    s(7:0) = 0x80;
    overflow(1);
  }
  else {
    s(7:0) = 0x00;
    overflow(0);
  }
  
}

// Driver code

signed_adder a, b, s;
unsigned char overflow_cnt = 0;

a(7:0) = 0x7f;
b(7:0) = 0x80endmodule
