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



assign output_overflow = ((a[7]==1'b0 & b[7]==1'b0) & s[7]==1'b1) | 


if ((a[7]==b[7]) & (a[7]!=s[7]))
begin	
	//if the most significant bit of a and b differ and the most significant bit of a is already in the set of digits of s, for example s=100000000, 
	//then s is reset to 0100000000
	//this is because a-b=(a1(a[7])-(b1(b[7])))*log2(10); (log2(10)=3.32)
	//so be in the s=0100000000-100000000, (b1(b[7]))=((b1*)log2(10))*-1@@end
endmodule
