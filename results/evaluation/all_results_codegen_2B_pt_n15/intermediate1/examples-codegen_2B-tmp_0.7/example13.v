// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two words and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

// This is a subtraction. A subtraction is a half-adder and a full-adder.
module subtract( 
input a, b,
output cout, sum );

// The adder stages.
module adder( );

// The subtractor stages.
module subtractor( );

// The concatenation stages.
module concatenation( );

// The counter gates.
module counting (
input [8:0] count,
output [7:0] counter );

// The adder gates.
module adder_1 (
input [7:0] a,
input [7:0] b,
input [7:0] carry,endmodule
