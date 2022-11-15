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


s signed_adder ([7:0] a, [7:0] b, [7:0] s0, [7:0] s1, [7:0] overflow) Bus;
{
   //b' = b
//conditional b overflow  
   if (b' > 0x7F && b' < 0x80)
    {
      s1 <- s0 + 1 
      overflow := 1
    } else 
      {
      b' <- b
      s1 <- s0  
      overflow <- 0
    };
  //a' = a + b'
 // conditinal a overflow
   if (a' > 0x7F && a' < 0x80)
    {
      s0 <- s1 + 1
      overflow := 1
    } else 
      {
      a' <- a
      sendmodule
