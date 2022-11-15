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

 input overflow_behavior "{
	when overflow =>
	    sldb({output overflow});
     }".
/***********************************************************************/
void
signed_adder::entry_point()
{
  // [s] and [overflow] signals are provided by the design service
  // a latch is used to make sure that sequence begins at first execution
  // in case action statement has no effect
  ldb(a[7:0]) lda(b[7:0]);
  if (a[7:0] < b[7:0])
    s[7:0] = a[7:0];
  else
    s[7:0] = b[7:0];
  
  // Don't write to sldb on default path
  s[7:0] += boot_counter;
  
  #pragma HLS INLINE off endmodule
