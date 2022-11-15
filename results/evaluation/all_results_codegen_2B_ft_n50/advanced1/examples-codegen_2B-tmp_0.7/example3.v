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



wire [7:0] carry;
wire [7:0] s_borrow;

assign carry[7] = 1'b0;

fa add_0(a[0],b[0],1'b0,carry[0],s[0],carry[1]);
fa add_1(a[1],b[1],carry[0],carry[1],s[1],carry[2]);
fa add_2(a[2],b[2],carry[1],carry[2],s[2],carry[3]);
fa add_3(a[3],b[3],carry[2],carry[3],s[3],carry[4]);
fa add_4(a[4],b[4],carry[3],carry[4],s[4],carry[5]);
fa add_5(a[5],b[endmodule
