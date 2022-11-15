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


wire [8:0] sum_b;
wire carry_over_b;

wire [9:0] sum_ab;
wire carry_over_ab;

wire carry_out;

bit_full_adder b0 (a[0],b[0],1'b0,sum_b[0],carry_over_b);
bit_full_adder b1 (a[1],b[1],carry_over_b,sum_b[1],carry_over_b);
bit_full_adder b2 (a[2],b[2],carry_over_b,sum_b[2],carry_over_b);
bit_full_adder b3 (a[3],b[3],carry_over_b,sum_b[3],carry_over_b);
bit_full_adder b4 (a[4],bendmodule
