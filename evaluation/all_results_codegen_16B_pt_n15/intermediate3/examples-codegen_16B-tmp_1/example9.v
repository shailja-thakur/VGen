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
assign q = {feedback_value, fa, fb, fc, fd, co, q.length, q[q.length - 1], r_reg[3], r_reg[2], r_reg[1], r_reg[0]};

  // the Galois LFSR state is comprised of the feedback_value
  // the register r_reg (the various taps of the LFSR) and my q
  // To implement a Galois LFSR one need to know a finite field and an
  // irreducible polynomial to generate the look-up-table for
  // calculating the next possible output value.
  // Specifically:
  //     The Galois LFSR used the form of a shift register (a register
  //     that can clock in two different sequenced values). This was
  //     designed dynamically with a finite field (theendmodule
