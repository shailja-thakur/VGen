// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// This is a full adder. It may alter its input bits to sum them collectively 
module full_adder( 
input a, b, c,
output cout, sum );

// The signals in tulip_bit_adder contain only 'bits' bits (the bit density in a node)
// The signals in half_adder and full_adder contain 'bits' bits plus the carry-out signal
// half_adder not only acts as a half adder but also as a numerical state
// full_adder is also a numerical state
// bits: the word size, equivalent to the bit density in a module
// loc: the location of the input/output on the module
tlm_behavior half_adder::behaviour()
{
  // the adder's behaviour can be described as a half adder behaviour
  tmpl(
  if ( got_cout ) { 
    endmodule
