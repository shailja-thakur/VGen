// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Outputs cout, the sum of a and b.
function half_adder_out( 
input a, b,
output cout, sum );

// Inputs cout, sum, and carry-out, and produces a, the bit-wise "and" of a and b.
function half_adder_carry( 
input cout, sum,
output a, b );

// Inputs a and b, outputs cout, the sum of a and b.
function half_adder_carry_out( 
input a, b,
output cout, sum );

// Computes a bit-wise "and" of a and b.
function half_adder_and( 
input a, b );

// Computes a bit-wise "or" of a and b.
function half_adder_or( 
input a, b );

// Computes a bit-endmodule
