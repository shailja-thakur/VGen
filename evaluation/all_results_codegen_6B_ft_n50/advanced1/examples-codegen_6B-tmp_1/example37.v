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


//plus_4(e7,e6,e5,e4,e3,e2,e1,e0, f7,f6,f5,f4,f3,f2,f1,f0)
//plus(s7,01,e7,a[7], b[7],c[1]); 

assign s=a+b;
assign overflow=(p[3]^p[2]^p[1]^p[0]^s[7]);
assign ea=(p[3]^p[2]^p[1]^p[0])^s[7];
assign eb=(p[3]^p[2]^p[1]^p[0])^s[6];
assign e0=(p[2]^p[1]^p[0])^s[endmodule
