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


task signed_adder_test()
{
  int a = {0x5, 0x00, 0x00, 0x00, 0x01};
  int b = {0x6, 0x00, 0x00, 0x00, 0x01};

  int s = {0x0, 0x00, 0x00, 0x00, 0x00};
  int overflow = 0;

  int a_v = 0x5;
  int b_v = 0x6;

  signed_adder.s = s;
  signed_adder.overflow = overflow;

  signed_adder.a = a;
  signed_adder.b = b;

  wait();

  if (a_v == s[7] && b_v == s[6]) {
    wait();
    overflow = s[5];
  }endmodule
