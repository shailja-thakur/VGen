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


wire signed [7:0] s1;
wire signed [7:0] s2;
wire zero1, zero2, zero3;

full_adder adder0(a[0], b[0], 1'b0, s1[0], zero1);
full_adder adder1(a[1], b[1], zero1, s1[1], zero2);
full_adder adder2(a[2], b[2], zero2, s1[2], zero3);
full_adder adder3(a[3], b[3], zero3, s1[3], zero1);
full_adder adder4(a[4], b[4], zero1, s1[4], zero2);
full_adder adder5(a[5], b[5], zero2, s1[5], zero3);
fullendmodule
