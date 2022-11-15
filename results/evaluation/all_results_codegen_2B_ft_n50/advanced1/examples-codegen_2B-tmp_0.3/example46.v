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


wire signed [7:0] sum;
wire overflow;

// adder_1 is the first adder in the chain.
// adder_2 is the second adder in the chain.
// adder_3 is the final adder in the chain.
// The result of the adder_3 is assigned to the output s.

// adder_1 is a 8-bit adder that takes two 8-bit numbers and adds them.
adder_1 adder_1(a, b, sum, overflow);

// adder_2 is a 8-bit adder that takes the result of the first adder in the chain and adds it to the second adder in the chain.
adder_2 adder_2(sum, overflow, s, overflow_);

// adder_3 is a 8-bit adder that takes the result of the second adder in theendmodule
