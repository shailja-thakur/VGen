// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
input inputs [1], 
         in [1], 
         carry, 
         current_out [1];
input sum_res, carry_res

begin

carry = 0;

sum = 0;
carry_res:= 0;
sign = a < 0;


  // interpret the input bits into an array by taking each bit
  // where the number of bits is half a counter
  for ( n=0; n < ((a + b) /2 ) & 1; n++)
    in[n] = a & 1;
    
  // increment the carry
  carry += (carry_res = a >>= 1 & 1 );

  current_out [0] = b >> 2;
  if ( carry == 1 ) {
    current_out [1] = b >> 1 & 1; 
    current_out [2] = b &end
endmodule
