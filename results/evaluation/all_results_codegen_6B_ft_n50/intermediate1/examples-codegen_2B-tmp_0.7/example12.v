// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input [1:0] cinp, ainp, binp, binp,
output cout, sum;

input cout;
output sum;

// This is a full adder. A full adder adds all bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

input [7:0] cinp, ainp, binp, binp, cout, sum;

input cout;
output sum;

// This is a carry-out. A carry-out produces a carry-out as output.
module carry_out( 
input cout,
output sum );

input cout, sum;

// This is an inverter, a inverter inverts the output of its input.
module inverter( 
input cout,
output sum );

inputendmodule
