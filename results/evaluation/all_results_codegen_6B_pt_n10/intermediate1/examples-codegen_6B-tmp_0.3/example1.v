// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two bits and produces a sum, carry-out, and carry-in.
module full_adder( 
input a, b,
output cout, sum, carry_in );

// This is a full adder with carry-in. A full adder adds two bits and produces a sum, carry-out, and carry-in.
module full_adder_with_carry_in( 
input a, b,
output cout, sum, carry_in );

// This is a full adder with carry-out. A full adder adds two bits and produces a sum, carry-out, and carry-in.
module full_adder_with_carry_out( 
input a, b,
output cout, sum, carry_out );

// This is a full adder with carry-in and carry-out.endmodule
