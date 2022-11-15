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


// implementation of addition function to create the + b

assign a_plus_b = a + b; 

// implementation of subtraction function to create the - b

assign a_minus_b = a - b; 

// implementation of bitwise AND function to create the & b

assign and_gate = a & b; 

// implementation of bitwise OR function to create the | b

assign or_gate = a | b; 

// implementation of bitwise XOR function to create the ^ b

assign xor_gate = a ^ b; 

// implementation of NOT function

assign not_b = ~b; 

// Used together with the above functions to create a + - & | ^ s


assign s = (a_plus_b[7]) ? a_plus_b : 
(aendmodule
