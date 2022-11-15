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


wire signed [(8 - 1):0, b[7:0]]=b;	 // make b [(8-1):0] in order to use the unsigned adder
wire [(8 - 1):0,a[7:0]] =a;	 // same a[7:(8-1)]


assign overflow = ((a[7] & ~b[7]) | (b[7] & a[7])); // Or if the highest bit of a is high then the adder should return a signed overflow

wire w1a = a[7] ^ b[7]; // a xor b //w1 is the a output with highest bit equal to high 
wire w1b = a[7] ^ b[7]; // b xor a 
wire w2a = w1a & a[6]; //intermediate a output (all less significant bits than a[7])endmodule
