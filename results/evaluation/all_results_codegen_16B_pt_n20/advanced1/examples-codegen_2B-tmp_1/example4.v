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


// Hidden variables
wire s0,s1,one;
wire [7:0] k,k2k,k4k,k8k,k16k,k32k,k64k,k128k;
wire [8:0] k9;
wire [9:0] k2k9;
// s0 = (b<<7)+(a<<7); s1 = (b<<7)-a;
subtract_full r1(.difference(b<<7), .s_bit(a<<7), .borrow(1'b0), .B(b), .difference(k));
// reduction using leasts first
// the number k receives the rest of the subtract operation

subtract_full r2(.difference(a<<7), .s_bit(k), .borrow(1'b1), .A(endmodule
