// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This finds an exact carry-out:
module adder12(
input a, b,
output cout, sum, carry_out );

// This finds the propagation carry-out:
module adder13(
input a, b,
output cout, s, carry_out );

// Kernel definitions and parameters:
parametrize(tuple(sig(1) + (a - b), sig(0), sig(1), 0));
parameters (clock, 100k, 52, s);
generate(clock,...);
endparameterization();

constexpr int inputbits = 64;
constexpr int outputbits = 64;

mux[0]([+](bool a) { if ( a ) sim += inputbits; return sig(0); },
[+](bool b) { if ( b ) sim += inputbits/2; return sig(endmodule
