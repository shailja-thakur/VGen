// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Inputs: a = A, b = B, cout = Carry-out
var half_adder_output_carry_out = 0;
var half_adder_sum = 0;
var half_adder_carry_in = 0;

function half_adder_carry_out_1() {
  half_adder_carry_out = (half_adder_carry_out + 1) & 1;
  half_adder_sum = half_adder_sum + half_adder_input_carry_out;
}

function half_adder_carry_out_0() {
  half_adder_carry_out = half_adder_carry_out + half_adder_input_carry_out;
  half_adder_sum = half_adder_sum + half_adder_input_carry_out;
}

// Output: Carry-out
var half_adderendmodule
