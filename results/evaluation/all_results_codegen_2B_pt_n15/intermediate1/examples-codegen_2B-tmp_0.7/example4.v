// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// These are the only two half adders that use inputs in the range [0,1).
module half_adder_unsigned( 
input a, b,
output cout, sum );

// This is a half adder that produces a sum and carry-out.
module half_adder_sum( 
input a, b,
output cout, sum );

// These are the only two half adders that use inputs in the range [0,1).
module half_adder_unsigned_sum( 
input a, b,
output cout, sum );

// This is a half adder that produces a sum and carry-in.
module half_adder_sum_carry_in( 
input a, b,
output cout, sum );

// This is a half adder that produces a sum and carry-out.
module half_adder_unsigned_sum_carry_endmodule
