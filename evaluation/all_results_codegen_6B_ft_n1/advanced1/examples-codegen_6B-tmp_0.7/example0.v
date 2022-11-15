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


wire [8:0] c;
wire [8:0] b_signed;

assign b_signed = ~b;
	
fulladder add1(a[0],b_signed[0],s[0],c[0],overflow[0]);
fulladder add2(a[1],b_signed[1],c[0],s[1],overflow[1]);
fulladder add3(a[2],b_signed[2],c[1],s[2],overflow[2]);
fulladder add4(a[3],b_signed[3],c[2],s[3],overflow[3]);
fulladder add5(a[4],b_signed[4],c[3],s[4],overflow[4]);
fulladder add6(a[5],b_signed[5],c[4],s[endmodule
