// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

(*output cout[0], output cout[1] =

half_adder( a[0], b[0], cout[0], cout[1] ) 

, half_adder( a[1], b[0], cout[0], cout[1] ) 

, half_adder( a[0], b[1], cout[0], cout[1] ) 

, half_adder( a[1], b[1], cout[0], cout[1] ) 

);
*/
endmodule
