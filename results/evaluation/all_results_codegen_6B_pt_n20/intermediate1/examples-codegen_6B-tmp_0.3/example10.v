// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two bits and produces a sum.
module full_adder( 
input a, b,
output cout, sum );

// This is a half subtracter. A half subtracter subtracts two bits and produces a sum and carry-out.
module half_subtractor( 
input a, b,
output cout, sum );

// This is a full subtracter. A full subtracter subtracts two bits and produces a sum.
module full_subtractor( 
input a, b,
output cout, sum );

// This is a carry-out generator. A carry-out generator produces a carry-out.
module carry_out_generator( 
input cout,
output cout );

// This is a carry-out generator. A carry-out generator produces a carry-out.
module carry_outendmodule
