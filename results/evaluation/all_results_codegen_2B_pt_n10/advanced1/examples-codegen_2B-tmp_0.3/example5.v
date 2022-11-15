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



s <= b;
s <= a;
s <= overflow;

// The following is a simple implementation of the signed adder. 
// It is not optimized for speed. 

signed_adder adder;

void adder_init() {
  // Set the inputs to the signed adder to 0. 
  for (int i = 0; i < 7; i++) {
    adder.a[i] = 0;
    adder.b[i] = 0;
  }
}

void adder_run() {
  // The following is a simple implementation of the signed adder. 
  // It is not optimized for speed. 

  // Add the inputs to the signed adder. 
  for (int i = 0; i < 7; i++) {
    adder.s[i] = adder.a[i] + addendmodule
