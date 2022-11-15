// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a_in, b_in, cout_in;
input sum_in;

input a_in_1, a_in_2, b_in_1, b_in_2, cout_in_1, cout_in_2;

output a_out, b_out, cout_out;

input a_out_1, a_out_2, b_out_1, b_out_2, cout_out_1, cout_out_2;

// This is the half adder.
module half_adder_module(
input a_in, b_in,
output a_out, b_out,
output cout_out );

// This is the half adder.
module half_adder_module_1(
input a_in_1, a_in_2,
output a_out_1,endmodule
