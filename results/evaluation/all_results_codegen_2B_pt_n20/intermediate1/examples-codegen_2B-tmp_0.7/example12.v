// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a_in, b_in;
output cout_out, sum_out;

// output signals
wire carry_out;

wire carry_in;

// input signals
wire a_in_l, a_in_h,
b_in_l, b_in_h;

// internal signals
wire sum_in,
sum_out,
sum_l,
sum_h,
sum_c;

assign a_in_l = a & 1,
a_in_h = a >> 1,
b_in_l = b & 1,
b_in_h = b >> 1;

assign sum_in = a_in_h ^ a_in_l ^ b_in_h ^ b_in_l;

always @(posedge clk)
{
    sum_out = sumendmodule
