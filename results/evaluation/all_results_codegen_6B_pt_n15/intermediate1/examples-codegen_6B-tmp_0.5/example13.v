// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two bits and produces a sum.
module adder( 
input a, b,
output cout, sum );

// This is a full adder with carry-out. A full adder adds two bits and produces a sum.
module full_adder( 
input a, b,
output cout, sum );

// This is an 8-bit register.
module register8( 
input a, b,
output cout, sum );

// This is a 16-bit register.
module register16( 
input a, b,
output cout, sum );

// This is an 8-bit register with a carry-out.
module register8_with_carry( 
input a, b,
output cout, sum );

// This is a 16-bit register with a carry-out.
module registerendmodule
