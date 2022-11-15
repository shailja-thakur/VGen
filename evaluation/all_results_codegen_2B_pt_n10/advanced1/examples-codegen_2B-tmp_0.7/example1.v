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


void 
main()
{
  s = a + b;
  overflow = a + b;
}

int
main()
{
  signed_adder a;
  signed_adder b;
  signed_adder c;
  signed_adder d;

  a.in0(0b11100100);
  a.in1(0b11100100);
  a.in2(0b11100100);
  a.in3(0b11100100);
  a.in4(0b11111111);
  a.in5(0b11111111);
  a.in6(0b11111111);
  a.in7(0b11111111);

  b.in0(0b11100100);
  b.in1(0b11111111);
  b.in2(0b11111111);endmodule
