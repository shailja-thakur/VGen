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



signed_adder S0;
signed_adder S1;
signed_adder S2;
//signed_adder SCRT = (S0+S1) - S2;
constexpr boolean overflow = false;

signed_adder add([7:0] a, [7:0] b);
signed_adder add([7:0] a2, [7:0] b2) {
    return add(a, b);
}



{
  overflow:SCRT =::add(a, b);

  if ((S0[7:0]+S1[7:0])<S2[7:0]) 
    S0[7:0] = S2[7:0] % (1<<8);
  else 
    S0[7:0] = (S0[7:0]+S1[7:endmodule
