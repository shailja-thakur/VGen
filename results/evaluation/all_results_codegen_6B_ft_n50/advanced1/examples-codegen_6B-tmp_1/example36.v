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


wire signed [8:0] c;

assign c[0] = 0; // I'm gonna have the carry be its own separte module which is a little bit more interesting

assign c[1] = (a[0] == b[0]) ? a[0] : (a[0] ^ b[0]) ; //if a[0] and b[0] have opposite signs, subtract c[0] from a[0] and c[0] from b[0]
assign c[2] = (a[1] == b[1]) ? a[1] : (a[1] ^ b[1]) ; //if a[1] and b[1] have opposite signs, subtract c[1] from a[1] and c[1] from b[1]
assign c[3] = (a[2] == b[2endmodule
