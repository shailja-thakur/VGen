// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The half adder has a carry-out.
module half_adder_carry_out( 
output cout, sum ); // The carry-out is the last value in the output.

// The half adder adds two bits and produces a sum and carry-out.
module half_adder_saturating( 
input a, b,
output cout, sum );

// This is a fixed-point adder.
module fixed_point_adder( 
input a, b,
output cout, sum );

// This is a fixed-point adder.
module fixed_point_adder_carry_out( 
output cout, sum ); // The carry-out is the last value in the output.

// This is a fixed-point adder.
module fixed_point_adder_saturating( 
input a, b,
output cout, sum );
endmodule
