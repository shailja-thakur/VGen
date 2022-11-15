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


// a and b are added together. the 8 low bits of the result are stored in s. The overflow bit s[7] is set to 1 if the operation caused overflow,
// inclusive of overflow caused by signed or unsigned large. This bit is set to 0 otherwise.

always@(*)

begin
 if (a<b)
 begin
 r<=8'b0;
 if (overflowIncr)? overflow <=1'b1: overflow <=1'b0;
 end
 
 else if (a>b)
 begin
 r<=8'bx;
 overflow <=1'b1;
 end

 else if (a>b)
 overflow <=1'b0;
 else
 overflow <=1'b0;
end


endendmodule
