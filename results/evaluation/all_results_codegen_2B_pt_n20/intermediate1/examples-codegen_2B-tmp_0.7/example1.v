// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

/////
// This is a full adder. A full adder adds three bits and produces a sum and carry-out.
module full_adder( 
input a, b, c,
output cout, sum );

/////
// This is a half subtractor. A half subtractor subtracts two bits and produces a difference and borrow-out.
module half_subtractor( 
input a, b,
output dout, diff );

/////
// This is a full subtractor. A full subtractor subtracts three bits and produces a difference and borrow-out.
module full_subtractor( 
input a, b, c,
output dout, diff );

/////
// This is a full oracle that checks the the sum and carry-out (or difference and borrow-out) values against the inputs.
module oracle_checker( 
endmodule
