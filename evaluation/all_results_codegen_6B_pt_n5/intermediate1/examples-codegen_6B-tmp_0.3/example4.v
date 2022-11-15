// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_inst( a, b )
{
  cout = a + b;
  sum = a + b + 1;
}

// This is a full adder. A full adder adds two bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

function full_adder_inst( a, b )
{
  cout = a + b;
  sum = a + b + 1;
}

// This is a subtracter. A subtracter subtracts two bits and produces a sum and carry-out.
module subtracter( 
input a, b,
output cout, sum );

function subtracter_inst( a, b )
{
  cout = a - b;
  sum = a - b + 1;
}

// This isendmodule
