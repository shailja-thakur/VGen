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



// $ cat t1.in t1.out 
// 1001 0111 1101 1011 0011 1001 0000 0000 0000 
// 1001 0111 1101 1011 0011 1001 0000 0000 0000 
// 
// $ cat t2.in t2.out 
// 1001 0111 1101 1011 0011 1001 0000 0000 0000 
// 1001 0111 1101 1011 0011 1001 0000 0000 0000 
// 
// $ cat t3.in t3.out 
// 1001 0111 1101 1011 0011 1001 0000 0000 0000 
// 1001 0111 1101 1011 0011 1001 0000 0000 0000 
// 
// $ cat t4.in t4.out 
// 1001 0111 1101 1011 0011 1001 0000 0000 0000 
// 1001 0111 1101 1011 0011endmodule
