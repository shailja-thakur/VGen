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


wire b_direction;
wire signed [(8)]b_shift; // << 1;

assign b_direction = b[0]; //b[0]; //opposite of b dir from b[0]=1 to b[0]=0;

// define shift operation on b
assign b_shift = b >> 1; // unsigned shift >>;
// define signed build of shift. Ssgn(b) << 1;

assign signed [(8)]b_signed = {b[7],b_shift[7]}; //concatenates the values together.



assign s = signed [(8)]a_signed << 1; //first defines the size; then concatenates; then defines the output.

assign overflow = a[7] & b[7] & ~s[7]; //s[7]; // final output is given by the most significant bit.endmodule
