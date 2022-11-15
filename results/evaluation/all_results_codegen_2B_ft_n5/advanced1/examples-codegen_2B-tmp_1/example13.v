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


bool CheckOverflow(byte carry) {
  return carry && a_clo > b_clo;
}

void RunOne()
{
  int carry = 0;
  s_ = overflow = 0;
  for (byte i = 0; i<7; ++i) {
    carry = (a_ & (1 << i)) != 0 ? -1 : 0;
    s_ = s_ + carry;
    carry = b_ & (1 << i) ? 1 : 0;
    s_ = s_ + carry;
  }
  s_ &= 0xff;
  s_clo = (byte)(s_ & (1 << 7));
}

void RunMany()
{
  for (byte i = 1; i<128; ++i)
  {
    byte carry = CheckOverflow(i != 0);
    endmodule
