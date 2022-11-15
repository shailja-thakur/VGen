// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

localparam double_mode_mul_lp_z = 0.01, outer_lp_z = 0.01;

localparam uint32_t lp_z_bits = 0.70;

module mult( 
input a,
output b, sum, carry_out );

// Matlab's LUT computes the min and max (z-coding) of the smallest
// representable number, if all inputs are in the input range, else,
// the smallest or largest representable number is decided by the value
// of the smaller or largest input. This is made easier to understand
// trying to take the floor and ceiling of the input, fires the min
// or max losses to an output LUT just as the internal operation,
// context it makes answer comes out
module common_lut( 
input in_in,
output in_out, int_endmodule
