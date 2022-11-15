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

 
wire [7:0] b_as_negated; // b is a negative number, so we have to actually add 1 to it to get a positive number

assign b_as_negated = generate_negative_b(b); // ([7:0]) is what is printed on the paper. SHIPS OPCODE SUCKS

full_adder add1(a[0], b_as_negated[0], s[0], s[1], s[2]); 
full_adder add2(a[1], b_as_negated[1], s[3], s[4], s[5]); 
full_adder add3(a[2], b_as_negated[2], s[6], s[7], s[8]);
assign overflow = b_as_negated[3] ^ a[3]; // xor of theendmodule
