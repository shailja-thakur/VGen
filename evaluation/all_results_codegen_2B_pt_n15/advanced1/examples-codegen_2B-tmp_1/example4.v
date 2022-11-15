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


signed_adder( \beta,\tau,s,overflow)\ 
this->b = a[7:0] + b[7:0];
this->s = s[7:0] + this->b;

 // if overflow is true, the most significant bit of the sum of the bits is a sign bit of the most significant bit of s. 
  if (this->b[0] != 0) {
    this->s[0] = 1;
  } else {
    this->s[0] =0;
  }

{ // if overflow is cinfinity, dont add the zero extenstion
if (this->b[576] < 0x80) {
  this->overflow = this->overflow is TRUE;
}else {
  this->overflow = FALSE;
}
}



endmodule
