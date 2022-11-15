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


wire [8:0] c; // internal wire that holds the carry during the 4-bit carry lookhead adder

wire [3:0] d; // d is the fourth digit of the sum

wire [7:0] e; // e is the third digit of the sum

wire [6:0] f; // f is the second digit of the sum

wire [5:0] g; // g is the first digit of the sum

wire [4:0] h; // h is the fourth digit of the sum

wire [3:0] i; // i is the third digit of the sum

wire [2:0] j; // j is the second digit of the sum

wire [1:0] k; // k is the first digit of the sum


// instantiate the carry lookhead adder

carry_lookahead_adder_4bitendmodule
