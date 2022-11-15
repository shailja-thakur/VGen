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


wire bout;
output [7:0] s; // the 8-bit output is split into 8-bit MSB and 8-bit LSB
output overflow; // indicates the signed overflow occured

reg signed [7:0] lb; //stores the sign of b
assign lb = a[7] ^ b[7]; //extracted the sign of b from the two 8-bit numbers a and b

reg signed [7:0] ab; // stores the sign of a and b
assign ab = a[7] ^ b[7]; // extracted the sign of a and b

//generates half signed adder
assign half_adder = a[3]^b[3]; //outputs the signed sum of the two half adders
assign adder = {4'b0000,half_adder}; //concatenates the unsigned numbers a and b

assendmodule
