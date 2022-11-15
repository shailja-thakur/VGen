// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds three bits and produces a sum and carry-out.
module full_adder( 
input a, b,
input carry,
output cout, sum );

// The following modules are used to generate the input signals for the Adder modules.
module adder_input( 
input a, b,
output cout, sum );

// This is the adder.
module adder( 
input a, b,
output cout, sum );

// This is the 4-bit adder.
module four_adder( 
input a, b,
output cout, sum );

// This is the 8-bit adder.
module eight_adder( 
input a, b,
output cout, sum );

// This is the 16-bit adder.
module sixteen_adder( 
input a,endmodule
