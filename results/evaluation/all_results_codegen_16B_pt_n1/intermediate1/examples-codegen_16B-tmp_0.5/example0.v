// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds four bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

// This is a full adder with a carry-in. A full adder adds four bits and produces a sum and carry-out.
module full_adder_carried_in( 
input a, b,
output cout, sum, carry_in );

// This is a full adder with a carry-in. A full adder adds four bits and produces a sum and carry-out.
module full_adder_carried_out( 
input a, b,
output cout, sum, carry_out );

// This is a full adder with a carry-in and carry-out. A full adder adds four bits and produces a sum and carry-out.
moduleendmodule
