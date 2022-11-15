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


assign overflow = ((a[7]==1'b1)&b[7]&(a[7]^b[7])&~s[7])|((a[7]&b[7])&~a[7]&b[7]&(s[7]^~s[7]));
// A simple conversion nibble adder works as adder in all blades. (s, bus)
generate 
genvar num1;
generate
for(num1=0;num1<8;num1++)
begin
add add_temp(.a(a[num1]), .b(a[num1]), .y(s[num1]), .penultch(one[num1]));
end
endgenerate
endgenerate 
// The input 0s are extra to enable negative numbers. 
// Remember it’s enoughendmodule
