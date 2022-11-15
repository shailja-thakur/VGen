// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );


function carry_out_bit( cout, i );

function carry_out_shift( cout, i );

function sum_shift( cout, i );

function carry_out_bit_and( cout, i );

function carry_out_shift_and( cout, i );

function sum_shift_and( cout, i );

function carry_out_bit_or( cout, i );

function carry_out_shift_or( cout, i );

function sum_shift_or( cout, i );

function carry_out_bit_xor( cout, i );

function carry_out_shift_xor( cout, i );

function sum_shift_xor( cout, i );

module carry_out_adder(
input a, b,
output cout, sum, carry_out );

module half_adderendmodule
