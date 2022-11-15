// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. A full adder adds two words and produces a sum.
module full_adder( 
input a, b,
output sum, carry );

module clock( 
input clk,
output [1:0] clock_in,
output [1:0] clock_out,
output [1:0] clock_toggle );

module top(
input [3:0] a,
input [3:0] b,
input [3:0] c,
input [3:0] d,
output [3:0] e,
output [3:0] f,
output [3:0] g,
output [3:0] h,
output [3:0] i,
output [3:0] j,
output [3:0] k,
output [3:0] l,
outputendmodule
