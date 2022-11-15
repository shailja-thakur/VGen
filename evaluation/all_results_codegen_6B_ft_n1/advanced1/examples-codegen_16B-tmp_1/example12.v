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


 wire [8:0] asl; // Overflow detect detector (shifts with 0-fill over 8 bits)
 wire ssme [7:0]; // output o the same as a

xor(ssme[0], a[0], b[0]);
xor(ssme[1], a[1], b[1]);
xor(ssme[2], a[2], b[2]);
xor(ssme[3], a[3], b[3]);
xor(ssme[4], a[4], b[4]);
xor(ssme[5], a[5], b[5]);
xor(ssme[6], a[6], b[6]);
xor(ssme[7], a[7], b[7]);

assign asl[8]= ( ^(a[7:0]) ^ ^(endmodule
