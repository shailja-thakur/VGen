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


void @unsigned_adder(
    input     a[7:0],
    input     b[7:0],
    output    s[7:0],
    output    overflow
)
{
  // memcpy function in ROS
  // all the data that you can send to that memory location memory copy to the addressed location
  memcpy(q, &b, 7);
  memcpy(r, &a, 7);
  
  // subtract part of the number
  q[7] -= b[7];
  r[7] -= a[7];
  
  // logical shift
  r[7] <<= 1;
  r[7] >>= 1;
  
  
  s[7] = q[7];
  s[6] = r[6];
  s[5] = r[5];
  endmodule
