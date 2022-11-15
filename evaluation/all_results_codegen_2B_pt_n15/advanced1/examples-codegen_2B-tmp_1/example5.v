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


// 3/11/2010: Fixed signed_adder as given in the example.
// 
// This bug causes the AVR simulator to crash because it
// assumes that s is always 0 when overflow is 0.

signed_adder.derivations a = 
public sig  ([_n] a) {
  auto overflow = _n X_os.bit<int>(); 
  
  switch (overflow) {
    case (0x00): 
      s = s + a;
      break;
    case (0x01):
      extern void abort(void); abort();
      break;
    default:
      s = s + a + 1;
      break;
  }
  overflow = overflow.popdata<int>();
  s overflow = overflow.popdata<int>();

  return override;
}
signed_adder.endmodule
