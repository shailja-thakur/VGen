// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

{
  
  // ----------------------- First Half ---
  
  // This is the sum line.
  sum := a + b;
  
  // The overflow line.
  if ( sum > 127 )
  {
    sum -= 256;
  }
  
  // Output the result.
  cout
  |= ( sum & 1 );
  
}
endmodule
