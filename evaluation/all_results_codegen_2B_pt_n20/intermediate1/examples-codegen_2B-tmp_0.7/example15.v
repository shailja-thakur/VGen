// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input cin, cout;

always @(posedge cin) cout <= cout + 1;

reg  sum, carry_out;
const int MAX = 16;

// This is a full adder. A full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum, carry_out );

input cin, cout;

always @(posedge cin) cout <= cout + 1;

reg  sum, carry_out;
const int MAX = 16;

// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum, carry_out );

input cin, cout;

always @(posedge cin) cout <=endmodule
