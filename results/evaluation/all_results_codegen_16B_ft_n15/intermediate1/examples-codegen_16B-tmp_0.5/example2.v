// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is the function that will be called by the synthesizer.
// It will synthesize the logic for the half adder.
// All the inputs are wires.
// The output should be a wire, named 'sum'.
// The carry out should be a wire, named 'cout'.
// The logic should be a synthesizable circuit.
// The synthesizer should be able to synthesize the circuit and
// produce a hardware implementation.
assign sum = a ^ b;
assign cout = a & b;

endmodule
