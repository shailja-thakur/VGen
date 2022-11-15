// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// internal wires
wire xor_out, and_out;

// instantiate module's hardware
xor( xor_out, a, b );
xor( sum, xor_out, cout );
and( and_out, a, b );
and( cout, and_out, cout );

endmodule
