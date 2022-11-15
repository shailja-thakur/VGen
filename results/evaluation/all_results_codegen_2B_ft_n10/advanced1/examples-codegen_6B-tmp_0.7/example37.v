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


	full_adder f1(a[0],b[0],s[0],s1[1],s[1]);
	full_adder f2(a[1],b[1],s1[0],s[2],s1[2]);
	full_adder f3(a[2],b[2],s1[1],s[3],s1[3]);
	full_adder f4(a[3],b[3],s1[2],s[4],s1[4]);
	full_adder f5(a[4],b[4],s1[3],s[5],s1[5]);
	full_adder f6(a[5],b[5],s1[4],s[6],s1[6]);
	full_adder f7(a[6],b[6],s1[5],endmodule
