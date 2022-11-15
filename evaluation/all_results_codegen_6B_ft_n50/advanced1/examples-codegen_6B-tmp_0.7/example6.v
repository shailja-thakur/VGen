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


wire signed [8:0] a_signed, b_signed, s_signed; // these registers hold the signed values of a and b

assign a_signed = {a[6:0],a[7]}; // a is converted to signed
assign b_signed = {b[6:0],b[7]}; // b is converted to signed
assign s_signed = {s[6:0],s[7]}; // s is converted to signed

assign s = (a_signed[8]&b_signed[8]) ? s_signed : a_signed+b_signed; // if a and b have opposite signs, s has the correct sign

assign overflow = (a_signed[8]&b_signed[8]) ? 1'b1 : (a_signed[7]&b_signed[7]); // if a and b haveendmodule
