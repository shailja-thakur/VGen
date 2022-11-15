// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The half adder is a single bit adder. It adds two bits and produces a sum.
// The carry-out is discarded.
module half_adder_single_bit( 
input a, b,
output cout, sum );

// The half adder is a single bit adder. It adds two bits and produces a sum.
// The carry-out is discarded.
module half_adder_single_bit_carry_out( 
input a, b,
output cout, sum );

// The half adder is a single bit adder. It adds two bits and produces a sum.
// The carry-out is discarded.
module half_adder_single_bit_carry_out_discard( 
input a, b,
output cout, sum );

// The half adder is a single bit adder. It adds two bits and produces a sum.
endmodule
