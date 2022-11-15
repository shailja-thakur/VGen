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


task signed_adder_task()
{
  unsigned int i;
  unsigned int carry = 0;
  unsigned int overflow = 0;

  for (i = 7; i >= 0; i--)
  {
    carry = a[i] + b[i] + carry;
    s[i] = carry & 0x80;
    carry = carry >> 7;
  }

  overflow = a[7] + b[7] + carry;
  s[7] = overflow & 0x80;
  overflow = overflow >> 7;
  overflow = overflow + carry;
  s[6] = overflow & 0x80;
  overflow = overflow >> 7;
  overflow = overflow + carry;
  s[5] = overflow & 0x80;
  overflow = overflow >> 7;
  overflow = overflow + carry;endmodule
