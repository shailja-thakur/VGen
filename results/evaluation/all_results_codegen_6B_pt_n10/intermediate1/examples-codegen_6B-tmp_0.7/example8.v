// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

module half_adder2( input a,
output cout, sum );

// This is a full adder. A full adder adds the two inputs, 
// and produces the sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

module full_adder2( input a, b,
output cout, sum );

// These are the half-adders for each of the 8-bit values.
module half_adder_1( input a, 
output cout, sum );

module half_adder_2( input a, 
output cout, sum );

module half_adder_3( input a, 
output cout, sum );

module half_adder_4( input a, 
output cout, sum );

module half_adder_5( input a, 
output cout, sum );

endmodule
