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


wire [7:0] s_fract_o;
wire [7:0] s_iter;

// Store the result.
assign s_fract_o = a * b;
assign s_iter = a / b;

// Calculate the result.
assign s = a % b;

// Calculate if the two's complement numbers are equal.
assign overflow = (a[31] ^ b[31]) & (b[31] ^ s_fract_o[31]) & (b[31] ^ s_iter[31]);

endmodule
