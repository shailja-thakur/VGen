// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a half subtractor. It subtracts two bits and produces a sum.
module half_sub( 
input a, b,
output bout, sum );

boolean greater;


module g1( 
input a1, a2, b1, b2,
output chk1, chk2, sum );

integer s0;

void checker( 
input solo1, solo2, ment1, ment0);


void checker_outputs( 
input a, b, c, d, 
output ch_1, ch_2, sum );

// ==============================================

input a;
input b;
input cout;
integer sum;

output run_solo()
{
  a = (input) inputLUT[0];
  b = (input) inputLUT[1];
  endmodule
