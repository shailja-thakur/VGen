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


// For a two bit wire, counts 0, and 1, add the values 
assign s[0] = a[0] ^ b[0];
assign s[1] = a[1] ^ b[1];

assign overflow = ((a[0] ^ b[0]) & ((a[1] ^ b[1]) & ~(&a ^ b))) & (a[0] & b[0]) & ^(&a ^ b);

// As part of this gate design, you need to specify two mutually exclusive AND drivers on a 5-bit four-input truth table
// (5-bit (the remaining drivers, i.e. exccode_s and linectrl_s, do not have to be specified)
// and finally add the NOT mutantsigned out and the two NOTs)
assign se = ((~a[3]) & (~a[2])endmodule
