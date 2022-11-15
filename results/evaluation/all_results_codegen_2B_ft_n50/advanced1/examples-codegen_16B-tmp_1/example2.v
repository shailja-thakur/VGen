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


assign carry[7:0] = {carry[6], a[7] + b[7] };
assign s[7:0] = { carry[7], po, carry[6:0]};
assign ovf = (a[7]==0 & b[7]==1 & low2[7]==1 & s[7]==1) | (a[7]==1 & b[7]==0 & high2[7]==1 & s[7]==0);

integer low0;
integer mid0;
integer hi0;
integer mid1;
integer lo1;
integer hi1;
integer mid2;
integer lo2;
integer hi2;
integer mid3;
integer lo3;
integer hi3;

always@(a or b or s) begin

low0[0] = a[0end
endmodule
