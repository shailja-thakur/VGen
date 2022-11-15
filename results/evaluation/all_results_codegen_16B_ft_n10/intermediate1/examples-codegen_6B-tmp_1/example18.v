// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

  input add_clk, cat_clk; 
#( 32+1, 32+1 )
int table[] = {
#( 0, 0 )
  #( 0, 1 ) #( 1, 0 )
, #( 1, 1 ) #( 1, 0 )
#( 2, 0 )
, #( 2, 1 )
, #( 3, 0 )
, #( 3, 1 )
, #( 4, 0 )
, #( 4, 1 )
, #( 5, 0 )
, #( 5, 1 )
, #( 6, 0 )
, #( 6, 1 )
, #( 7, 0 )
, #( 7, 1 )
, #( 8, 0 )
, #( 8, 1 )
, #( 9, 0 )
, #( 9, 1 )
, #( 10, 0endmodule
