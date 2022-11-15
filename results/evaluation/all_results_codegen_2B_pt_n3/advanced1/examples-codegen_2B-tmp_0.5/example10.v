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


// function f(a, b) returns the signed overflow status of a and b
function f(a, b)
{
  if ((a & 0x80) == 0) {
    if ((b & 0x80) == 0) {
      return 0;
    }
    else {
      return 1;
    }
  }
  else {
    if ((b & 0x80) == 0) {
      return 1;
    }
    else {
      return 2;
    }
  }
}

// function g(a, b) returns the output of the signed adder
function g(a, b)
{
  s = a;
  if (f(a, b) == 1) {
    s = s + b;
  }
  else if (f(a, b) == 2) {
    s =endmodule
