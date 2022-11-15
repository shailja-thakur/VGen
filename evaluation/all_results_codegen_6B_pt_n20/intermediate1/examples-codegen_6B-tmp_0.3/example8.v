// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_entry( a, b, cout, sum );

function half_adder_exit( a, b, cout, sum );

function half_adder_run( a, b, cout, sum );

function half_adder_next( a, b, cout, sum );

function half_adder_error( a, b, cout, sum );

function half_adder_drain( a, b, cout, sum );

function half_adder_done( a, b, cout, sum );

function half_adder_reset( a, b, cout, sum );

function half_adder_load( a, b, cout, sum );

function half_adder_load_next( a, b, cout, sum );

function half_adder_load_error( a, b, cout, sum );

function half_adder_loadendmodule
