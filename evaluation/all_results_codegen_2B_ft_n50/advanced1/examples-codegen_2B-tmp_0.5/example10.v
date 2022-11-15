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



wire [7:0] s_temp;
wire [2:0] overflow_temp;

// The adder is implemented as a single 8-bit ripple carry adder. 

full_adder_8_bit FA1(a[0], b[0], 1'b0, s_temp[0], overflow_temp[0]);
full_adder_8_bit FA2(a[1], b[1], overflow_temp[0], s_temp[1], overflow_temp[1]);
full_adder_8_bit FA3(a[2], b[2], overflow_temp[1], s_temp[2], overflow_temp[2]);
full_adder_8_bit FA4(a[3], b[3], overflow_temp[2], s_temp[3], overflow_temp[3]);
full_adder_8_bit FAendmodule
