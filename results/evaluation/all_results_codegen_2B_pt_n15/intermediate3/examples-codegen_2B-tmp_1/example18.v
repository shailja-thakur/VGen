// Design a 5-bit maximal-length Galois LFSR with taps at bit positions 5 and 3
module lfsr( 
    input clk,
    input reset,
    output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign feedback concatenated with 4 most significant bits of r_reg to r_next
// assign r_reg to the output q
task lfsr_gen
{
  for (int i=15; i>=0; i--)
  {
    if ((r_reg & (0x80>>i)) == 0) {
    r_reg = r_reg | (0x80>>i);
    r_next = r_reg;
    q <= r_reg;
    }
    feedback_value = xor( (r_reg>>5)^(r_reg>>2)^(r_reg>>3) );
    r_reg = r_next;
  }

  if (clk)
    r_reg = r_reg | (0x80^(0x0f>>2));

  if (reset)
    r_reg = 0x01;
}

// design a 5-bit maximal-length Galois LFSR that when fed withendmodule
