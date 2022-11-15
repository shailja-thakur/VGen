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



//the carry is the output of a full adder that adds a and b

wire [8:0] carry;

//the 8-bit sum is the output of the adder

wire [8:0] sum;

//the number which is the sum of a and b

wire [8:0] sum_w_o;

//the carry output of the adder

wire carry_w_o;


//carry in is the output of a full adder that adds a and b

assign carry_in = carry;

//the carry is the output of a full adder that adds a and b

assign carry_out = carry_w_o; 

//the number which is the sum of a and b

assign sum = sum_w_o;

//carry out is the output of a full adder that addsendmodule
