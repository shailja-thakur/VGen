// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// create wires here
wire xor_out;
wire and_out;

// instantiate modules here
xor U1 (a, b, xor_out); // performs a xor operation
half_adder U2 (xor_out, cout, sum); // performs a half adder operation

endmodule
