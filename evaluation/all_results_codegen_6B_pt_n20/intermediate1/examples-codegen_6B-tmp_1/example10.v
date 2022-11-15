// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
(*output cout = (( a << 6 ) + ( b << 2 )) & 0x3F; *//* Each output bit was OR-ed by "a << 6" */
 
bit [6] sum = 325 ^ ( a xor b ) | (( sum xor call 24)( & a, & b ));

/* A full adder is just a half adder, plus the carry.. */
    
half_adder ( a + b, b, r1, r0 ); 
(*output r7 = (sum + r1 ), *r8 = (sum + r0 ) xor 0x3F; print 18, *r64 |* r64 = (a xor r1 ) & 0x3F; *//* Variable active_r7 modifies being subtracted by carry, r2 */

half_adder( a & b, ( sum << 2 ), r7, rendmodule
