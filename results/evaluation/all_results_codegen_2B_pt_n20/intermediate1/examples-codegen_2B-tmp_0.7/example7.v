// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Half Adder Functions

void do_half_adder( 
input a, b,
output cout, half_adder ha );

void do_half_adder_a( 
input a, 
output cout, half_adder ha );

void do_half_adder_b( 
input b, 
output cout, half_adder hb );

void do_half_adder_c( 
input cout, 
output sum, half_adder hc );

void do_half_adder_d( 
input cout, 
output sum, half_adder hd );

void do_half_adder_e( 
input cout, 
output sum, half_adder he );

void do_half_adder_f( 
input cout, 
output sum, half_adder hf );

void do_halfendmodule
