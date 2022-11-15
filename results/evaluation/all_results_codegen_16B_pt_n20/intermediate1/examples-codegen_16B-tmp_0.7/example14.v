// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Register the inputs and outputs.
reg a, b;
reg cout;
reg sum;

// This is the instantiation of the half adder.
// It receives the inputs A and B and produces
// the outputs SUM and CARRY-OUT.

void half_adder_inst(
input A, B,
output SUM, CARRY-OUT );

// The instantaneousiation of the half adder.
inst half_adder(
input a, b,
output cout, sum
)
{
  // Register instantiation
  half_adder_inst(
    a, b, cout, sum
  );
}

// The top level method for the half adder.
void half_adder_top(
input a, b,
output cout, sum
)
{
  // Assign registers to the input values
  a = A;
  b =endmodule
