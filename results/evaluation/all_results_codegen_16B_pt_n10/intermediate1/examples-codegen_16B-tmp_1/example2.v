// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

assign sum = ( a + b ) - ( a + ( b ^ 0x22 ) );

// This is a full adder. A full adder adds three bits and produces a sum and carry-out.
module full_adder(
input a, b, c,
output cout, sum );

assign sum = ( a + b ) + ( ( a + c ) + ( b ^ 0x22 ) );

// This is a half subtractor. A half subtractor subtracts three bits.
// The carry-out goes to the result: use the extra carry-out pin because the library does not have a register for it.
module half_subtractor(
input a, b, c,
output cout, sum );

assign sum = ( c ) ); // in XTL is an implicit zero bit

// This is a full subtractor. A full subtractor subtractendmodule
