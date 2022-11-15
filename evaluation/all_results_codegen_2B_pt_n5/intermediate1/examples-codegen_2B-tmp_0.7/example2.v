// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

`

//-----------------------------------------------------------------------------

#define NUM_INPUTS 3

void
assign_inputs( 
half_adder *self,
unsigned inputs[] ) {

  // The inputs are the inputs to the half-adder.
  self->a = inputs[0];
  self->b = inputs[1];
  self->cout = inputs[2];
}

//-----------------------------------------------------------------------------

void
check_outputs( 
half_adder *self ) {

  // The outputs are the outputs to the half-adder.
  check_output( self->c, self->cout, 2, "cout" );
}

//-----------------------------------------------------------------------------

void
check_output( 
unsigned output,
unsigned output_expected,
unsigned n,
const char *name ) {

  if ( output != output_expected ) {
    printf(endmodule
