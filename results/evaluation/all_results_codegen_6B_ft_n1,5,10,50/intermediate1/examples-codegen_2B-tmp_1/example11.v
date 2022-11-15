// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

set input_q [1:0] to a;
set output_q [1:0] to 1;

module set_old_bit( 
input in_bits, output out_bits );

set_old_bit.bits [1:0] to input_func;
set_old_bit.in [1:0] to 1;

set_old_bit.bits [1:0] to output_func;
set_old_bit.out to 0;

module set_new_bit( 
input in_bits, output out_bits );

set_new_bit.bits [1:0] to input_func;
set_new_bit.in [1:0] to 2;

set_new_bit.bits [1:0] to output_func;
set_new_bit.out to 1;
endmodule
