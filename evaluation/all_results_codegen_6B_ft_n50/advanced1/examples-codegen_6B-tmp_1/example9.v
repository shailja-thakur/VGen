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


output [7:0]s; 
output overflow;
input [7:0]a;
input [7:0]b;
wire [8:0]c;
wire [1:0]carry;

assign carry[0] =1'b0; 

// 8-bit ripple carry adder with carry out
fulladder b0carry0(.a(a[0]), .b(b[0]), //inputs and carry in 
	.s(s[0]), //output and sum 
	.carry(carry[1])); //carry out 

fulladder b1carry1(.a(a[1]), .b(b[1]), .carry(carry[2]), //inputs and carry in 
	.s(s[1]), //output and sum 
	.carry(carry[3])); 

fullendmodule
