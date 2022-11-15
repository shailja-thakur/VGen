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


reg of1;
reg of2;
wire [7:0] tempA;
wire [7:0] tempB;
wire [7:0] tempS;
assign tempA = a ^ b;
assign tempB = a & b;
assign tempS = tempA + tempB;
assign overflow = tempS[7] ^ tempS[6] ^ tempS[5] ^ tempS[4] ^ tempS[3] ^ tempS[2] ^ tempS[1] ^ tempS[0]; // check this out
assign s = tempS;

endmodule
