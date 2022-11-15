// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

output rst;

prime( NOPRIME );

#ifndef TEST
float p = write_fptr( 1.0 );
float np = rewrite( flush_fptr( log10f( -a-b/((float)0x1.ffffffffffffffp-1022.0)/sqrtf(NOPRIME*9.1)) ), 11 ); 
#else
float p = write_prim();
float np = write_sec();  
#endif

endmodule
