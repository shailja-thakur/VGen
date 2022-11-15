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


signal [7:0] carry_in,
signal overflow;

signal [7:0] carry_out;
signal [7:0] a_d,
signal [7:0] b_d;

signal [7:0] a_s,
signal [7:0] b_s;

signal [7:0] s_out;

always @(posedge clk)
    if (a_d == b_d)
    {
        s_out = 0;
        carry_out = 1;
    }
    else
    {
        s_out = a_s + b_s;
        carry_out = (s_out > 0xff);
    }

    if (s_out > 0xff)
        overflow = true;

always @(posedge clkendmodule
