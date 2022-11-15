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

   assign  {s==b+a,s==0,s==0[_]})
   when  a_msb_a_msb_s = high ( s_msbit + a_msbit + b_msbit);
   when  a_msb_a_msb_s = low ( s_msbit + a_msbit + b_msbit);
   when  b_msb_a_msb_s = low ( s_msbit + a_msbit + b_msbit);
   then assign {s=a_msb_a_msb_s + b_msb_a_msb_s, overflow=0}
endsigned_adder; 

          
endmodule
