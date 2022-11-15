// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Create the adder modules.
// Input a and b are binary, so we need two 1-bit wires.
// Output cout is binary, so we need another 1-bit wire.
// The adder modules take two 1-bit inputs and produce a 1-bit output and carry-out.
// The adder modules don't care if the inputs are binary or not.
// They use boolean logical operations to perform the add. 
// This is the arithmetic adder module. It takes two 1-bit inputs and produces a 1-bit output and carry-out.
// The carry-out is the overflow bit.
// This can be seen as a two-bit adder with a carry-in.
// The carry-in is a special case of the carry-out since it's the same as a one-bit adder.
// Carry-in is the output of a one-bit adder.endmodule
