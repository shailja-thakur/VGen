// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

predicate false_b;
predicate c2_d_f;
predicate c2_e;
predicate c2;
predicate c1_e_f;
predicate c1_d_e;
predicate c1;

function hash( length, a );

function half_adder2( input c_d, input c_e, output cout, a_b, sum_out );

function c2( );

function c1( );

metric counter(halfadder, counter, false_b);

namespace halfadder {

  int bits = 2;
  int carry = 0;
  int localcarry = 0;
  int negatecarry = 0;
  int abutton = 0;
  int bbutton = 0;
  int dbutton = 0;
  int ebutton = 0;
  int x = 0endmodule
