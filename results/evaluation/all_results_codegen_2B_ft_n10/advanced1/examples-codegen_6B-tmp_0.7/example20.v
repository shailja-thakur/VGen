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



wire [7:0]b_s; // the most significant bit of b is replaced with the most significant bit of b_s

assign b_s[0] = b[0];
assign b_s[1] = b[1];
assign b_s[2] = b[2];
assign b_s[3] = b[3];
assign b_s[4] = b[4];
assign b_s[5] = b[5];
assign b_s[6] = b[6];
assign b_s[7] = b[7];

//if a[7] is high and b[7] is low then we have an overflow
assign overflow = (a[7]^b_s[7])&(a[7]^s[7]);

//if a[7endmodule
