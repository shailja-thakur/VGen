// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a_in, b_in, cout_in, sum_in;

input a_valid, b_valid, cout_valid, sum_valid;

input a_ready, b_ready, cout_ready, sum_ready;

input a_in_valid, b_in_valid, cout_in_valid, sum_in_valid;

input a_ready_valid, b_ready_valid, cout_ready_valid, sum_ready_valid;

input a_ready_ready, b_ready_ready, cout_ready_ready, sum_ready_ready;

input a_ready_ready_valid, b_ready_ready_valid, cout_ready_ready_valid, sum_ready_ready_valid;

input a_ready_ready_ready, b_ready_ready_ready, cout_ready_ready_ready,endmodule
