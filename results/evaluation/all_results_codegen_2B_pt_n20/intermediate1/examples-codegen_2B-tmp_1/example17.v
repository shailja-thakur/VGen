// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

/*..................................................................................................................................
@@. part of "pack fru" part which does the "full" adder:                                                       @*/
module full_adder( 
input a, b,
output cout, sum );

module encoder( 
input in,
input rw,
output adder );

// this module generates the sequence rw | in1 | in2 ..
module frid_3013_0( 
input rw,
input in1, in2, ...);
//This module generates the sequence adder | rw | in1 | in2 ...
module frid_3013_full( 
input rw,
input in1, in2, ...,
output cout1, cout2 );

endmodule
