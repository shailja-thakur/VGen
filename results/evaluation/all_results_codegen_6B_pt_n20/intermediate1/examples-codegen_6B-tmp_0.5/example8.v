// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// The half adder consists of two inputs, two outputs and a carry-out.
// The carry-out is used to add two bits together.
// The sum is the sum of the two inputs.
function half_adder_process( 
input a, b, 
output cout, sum );

// The half adder is a module. The inputs are two bits, a carry-out and a sum,
// and the outputs are two bits.
module half_adder_module( 
input a, b, 
output cout, sum );

// The half adder is a submodule. The inputs are two bits, a carry-out and a sum,
// and the outputs are two bits.
submodule half_adder_submodule( 
input a, b, 
output cout, sum );

// The half adder is a submodule. The inputs are two bitsendmodule
