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


assign overflow = ((a[7] == b[7]) && (a[7] != s[7])) ||
((a[7] != b[7]) && (a[7] != s[7]) && (b[7] != s[7]));
// Add two 8-bit two's complement numbers and then convert the final result to two's complement 


assign s = a + b; // Add the two numbers
assign s[7] = ^s[7]; // If the most significant bit (MSB) of the output number is a 1, flip it (a.k.a, change to 2's complement)
/* If any of the above described events occur, then overflow needs to be a non-zero number */


endmodule
