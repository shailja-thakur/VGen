// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

// This is the input to the half and full adder.
module input_adder(
input a, b,
output cout, sum );

// This is the output of the half and full adder.
module output_adder(
input a, b,
output cout, sum );

// The adder module.
module adder(
input a, b,
output cout, sum );

// This is the adder module in the half-adder.
module half_adder_adder(
input a, b,
output cout, sum );

// This is the adder module in the full-adder.
module full_adder_adder(
input a, b,endmodule
