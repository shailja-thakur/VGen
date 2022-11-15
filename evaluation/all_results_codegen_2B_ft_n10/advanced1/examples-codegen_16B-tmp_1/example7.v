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


// The above conditions does not perfectly capture all the conditions of a signed adder. We need logic in the case where 
// a and b2's most significant is the same, but s1 is lower than the other condition where s1 is higher than s2

always@(a or b)
 begin
for(i=0;i<8;i++) 

 if(a[i]==1'b1)
 begin
 if(b[i]==1'b1)
 begin
 s[i]=1'b1;
 end

 else s[i]=1'b0;
 end

 else s[i]=1'b0;
 end

assign overflow1=(a[7]==1'b1 && b[7]==1'b1 && s[7]==1'b0)? 1'b1: 1'b0;
assign overflowendmodule
