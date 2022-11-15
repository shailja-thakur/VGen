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


wire signed [8:0] a_signed, b_signed; // the two 8-bit numbers that are added, high and low

assign a_signed = {a[7], a[6:0]}; // a is the signed number, high 8 bits
assign b_signed = {b[7], b[6:0]}; // b is the signed number, high 8 bits

assign s = {a[7], a_signed + b_signed}; // s is the signed sum, low 8 bits

assign overflow = {a[7]^b[7], a_signed[7]^b_signed[7]}; // the final occurence of a or b was recorded in the overflow variable

endmodule
