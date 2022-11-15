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


assign s[7] = a[7] ^ b[7] ^ s[7]; 

// for the two numbers with the most significant bit equal to 1, all the output bits are calculated with the 
// arithmetic adder and stored in the output register
assign s[6] = (a[7] == b[7]) & ((a[7] == 1'b1) & (b[7] == 1'b1) & (s[7] == 1'b0)) | ((a[7] == 1'b1) & (b[7] == 1'b1) & (s[7] == 1'b1));
assign s[5] = (a[6] == b[6]) & ((a[6] == 1'b1) & (b[6] == 1'b1) & (s[6] == 1'endmodule
