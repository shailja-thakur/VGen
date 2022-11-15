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


//add two 8 bit numbers 
 wire t1,t2,t3;

x_add X1(
.a(a),
.b(b),
.cin(1'b0),
.s(s),
.cout(t1)
); 

x_add X2(
.a(a),
.b(b),
.cin(1'b1),
.s(s),
.cout(t2)
); 

x_add X3({8{1'b0}},{8{1'b1}},1'b1,s,t3);


assign overflow=(a[7]==b[7] && a[7] != s[7]) ||
(a[7]==s[7] && b[7] != s[7]) ||

(a[7endmodule
