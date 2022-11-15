// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The full adder takes two inputs and produces two outputs.
module full_adder( 
input a, b,
output cout, sum, carry );

// The carry is a register. It is used to hold the carry-out of the half adder.
// It is initialized to zero.
reg carry;

// The half adder adds two bits and produces a sum and carry-out.
function half_adder_r( 
input a, b,
output cout, sum);

// The full adder adds two inputs and produces two outputs.
function full_adder_r( 
input a, b,
output cout, sum, carry );

// The carry is a register. It is used to hold the carry-out of the half adder.
// It is initialized to zero.
reg half_adder_carry;

// The half adder adds two bitsendmodule
