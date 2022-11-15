// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

real a, b;
real cout;
real sum;

begin
  a = a + b;
  cout = a;

  if( a >= 4 )
  {
    a = a - 8;
    sum = a + b;
    cout = a + b;
  }
  else
  {
    sum = a;
  }
end
endmodule
