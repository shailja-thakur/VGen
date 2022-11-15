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


wire signed [7:0] b_signed = {b[6:0],b[7]};

// assigns the value of b to b_signed if b is a signed value

wire signed [5:0] sum_msb = a[6:0] + b_signed[6:0]; // adds a and b, and stores the carry in the seventh bit of s

wire [6:0] sum_lsb = a[7:1] + b_signed[5:1]; // adds a and b, and stores the carry in the first bit of s

// assigns the values of a and b to s

assign s = {sum_msb[5:0], sum_lsb[6:0]};

//assigns the value of a and b to s

assign overflow = (a[7] & b_signed[7endmodule
