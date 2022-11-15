// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_output_sum( 
input a, b,
output cout, sum );

function half_adder_output_carry_out( 
input a, b,
output cout, sum );

function half_adder_carry_out( 
input a, b,
output cout, sum );

function half_adder_sum( 
input a, b,
output cout, sum );

function half_adder_carry_out_sum( 
input a, b,
output cout, sum );

function half_adder_carry_out_sum_carry_out( 
input a, b,
output cout, sum );

function half_adder_carry_out_sum_carry_out_sum( 
input a, b,
output cout, sum );

function half_adder_carry_out_sum_carry_outendmodule
