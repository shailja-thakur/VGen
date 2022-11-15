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

  reg [7:0] s_internal;

  always @ (a or b)

    begin
    s_internal = a + b;
    end
  
  assign overflow = (((a[7]=='0')&amp;(b[7]=='0')&amp;(s_internal[7]=='1')) | ((a[7]=='1')&amp;(b[7]=='1')&amp;(s_internal[7]=='0')));
  
  assign s = s_internal; 

endmodule
