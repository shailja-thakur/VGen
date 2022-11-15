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


wire [7:0] b_ext; // the most significant bit of b is extended with a high impedance

assign b_ext = {b[6:0],1'b0}; // b is padded with a high impedance of 1 bit

assign s = a + b_ext; // the two numbers are added to get the final result

assign overflow = (a[7] & b_ext[7]) & ~s[7]; // the second most significant bit is high if a and b have a signed overflow.endmodule
