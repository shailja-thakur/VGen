// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

#include "term.h"

#include "../term.h"
#include "../term_adder.h"
#include "../sum_carry_o.h"

#include "../loop.h"
#include "../loop_adder.h"
#include "../loop_loop_adder.h"
#include "../loop_sum_carry_o.h"

#include "print.h"

int main() {

  printf( "The tests run with:\n" );
  print( "\t" ); print( library_print_flags() );

  printf( "The half_adder test:\n" );
  const int NUMBER_OF_INPUTS = 3;
  term< half_adder<> > aa[NUMBER_OF_INPUTS];
  sum_endmodule
