// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

half_adder( 
input a, b,
output cout, sum,
output carry_out );

// This is a full adder. A full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum,
output carry_out );

full_adder( 
input a, b,
output cout, sum,
output carry_out );

// This is a carry-out detector. A carry-out detector detects if the carry-out is set.
module carry_out_detector( 
input a,
output cout );

carry_out_detector( 
input a,
output cout );

// This is a carry-out clear. A carry-out clear clears the carry-out.
module carry_out_clear( 
input a,
output coutendmodule
