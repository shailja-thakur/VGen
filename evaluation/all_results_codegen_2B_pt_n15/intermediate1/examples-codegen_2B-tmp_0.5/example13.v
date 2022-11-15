// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a_in, b_in, cout_in;

input a_in_b_in_cout : a_in & b_in & cout_in;

output a_out, b_out, cout_out;

input a_in_b_out_cout : a_in_b_in_cout & a_out & b_out & cout_out;

output a_out_b_out_cout : a_out_b_out_cout & a_in_b_out_cout;

output a_out_b_out_cout_sum : a_out_b_out_cout_sum & a_in_b_out_cout & sum;

input a_out_b_out_cout_sum_carry_out : a_out_b_out_cendmodule
