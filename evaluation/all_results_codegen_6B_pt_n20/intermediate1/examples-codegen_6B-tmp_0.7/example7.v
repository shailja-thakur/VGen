// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. An adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum, carryout );

// This is a carry-clear adder.
// The sum and cout are stored and the carryout is set to zero.
module carry_clear_adder( 
input a, b,
output cout, sum,
output carryout );

// This is a carry-set adder.
// The sum and cout are stored and the carryout is set to one.
module carry_set_adder( 
input a, b,
output cout, sum,
output carryout );

// This is a carry-set and carry-clear adder.
// The sum and cout are stored and the carryout is set to one.
module half_carry_adder( 
endmodule
