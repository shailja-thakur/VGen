// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// A full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

// This is a full adder with carry-in.
module full_adder_with_carryin( 
input a, b,
output cout, sum, carryin );

// This is a full adder with carry-in and carry-out.
module full_adder_with_carryin_and_carryout( 
input a, b,
output cout, sum, carryin, carryout );

// This is a full adder with carry-in and carry-out.
module full_adder_with_carryin_and_carryout_and_borrow( 
input a, b,
output cout, sum, carryin, carryout, borrow );

// This is a full addendmodule
