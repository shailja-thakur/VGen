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


wire signed [8:0] bsigned[1:0];

assign bsigned[0] = {b[7],b[7:1]}; //take binary representation of b (MSB goes to b1, LSB goes to b0)
assign bsigned[1] = {b[5:3],b[2:0]}; //take binary representation of b

assign s[0] = a[0]^b0[0]; //verifies if the output is negative if both a and b are negative else adds.
assign s[7:1] = a[7:1]^b0[7:1]+bsigned[0]; //if a or b is negative,the output is negative else addition.
assign overflow = b0[0]^ bsigned[0]; // this indicates the signed overflow (difference of a-b is negative andendmodule
