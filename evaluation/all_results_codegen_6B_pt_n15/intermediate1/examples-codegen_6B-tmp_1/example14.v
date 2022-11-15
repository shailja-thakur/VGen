// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

always @( posedge clk ) 
{
  sum <= (unsigned char)(a+b+cout);
}
endfunction

// this module represents a shift register.
//
// A shift register is a variable that retieves bit 23, 24, 25.
// After that bit 24 goes to bit 0 and the feedback circuit inverts the 
// existing state, then adds in the correct kind of 0 its subtracts all the
// bits from position 1.

// this is the next line after the definition of main():
// the implementation of TEST() we wrote on line 11

#define TEST // UN-comment this line to see testing
#include "test.h"

module test_shift_register( 
input clk, input a, input b, 
output c, output d_out, output inited );
int i;

always @( posedgeendmodule
