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
initial begin

  r_reg = 0b0101010101;
  r_next = 0;
  feedback_value = r_reg ^ ((r_reg = 0) << 2);
  q = (r_reg >> 2) | (feedback_value >> 4);

end
);

//------------------------------------------------------------------------------
// design @5.2.2 VCD : register {
//
//
//
//------------------------------------------------------------------------------
// register full_j

// Design a (Fast) In-Place CRC with 64-bit input result and 64-bit output
// using a 6-bit, 4-bit poly, a ladder of 8 shift registers, the high clock
// bit, and 1-bit initial starting state.  The output part of the circuit is
// a Least Significant Bit at a Cache Line Boundary which the result in the
// 64-bit access may have shifted left orendmodule
