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


wire cin = 1'b0;
assign s = cin ^ (b ^ a); // s = b XOR a XOR cin
wire t; // temporary wire

assign t = a[7] ^ b[7]; // t = a MSB ^ b MSB
assign overflow = cin | t; // overflow = cin OR t
// overflow is HIGH only if the two most significant bits of both numbers are HIGH and the sign bit of s is also HIGH


endmodule
