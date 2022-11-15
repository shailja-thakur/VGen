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


reg a;
reg b;
reg s;
reg overflow;
reg c;

always @ (posedge clk)
    a = a0; 
    b = b0;
    s = s0;
  
    #5
    if (0')
      {
      overflow = (a < b);
      #7
      if( (a & 0x08) == (b & 0x08) )
          #7 if (a & 0x30) == (b & 0x30) then // use this to check overflow
           overflow = 0;
      }
      
    else 
      overflow = " = 0"; 

#29
assign overflow = overflow;
#32 


always @ (posedge clk)
     #    5
     #7 
     if (overflow' == /* !!!endmodule
