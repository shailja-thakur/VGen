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


wire signed a1; // the most significant bit of a is replaced with a1 and the rest of a[7:1] are 0
wire signed b1; // the most significant bit of b is replaced with b1 and the rest of b[7:1] are 0

assign a1 = a[7];
assign b1 = b[7];

assign s = {a1, a[6:0]^b[6:0]}; // s is a[7:1], where s[7] is the bias of the most significant bit of s = (b[7])((a[7]^b[7])^(a[6]^b[6])^(a[5]^b[5])^(a[4]^b[4])^(a[3]^b[3])^(a[2]^b[2endmodule
