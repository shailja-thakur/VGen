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
always @(posedge clk)
  if ((reset == 0) && (r_next == 0)) r_next = ( r [4:0] > 1)? r [4:0] : 0;
  case ((r_next >> 3) & 1) : feedback_value = ( r_next [7:2] ^ (r_next >> 1) & 077);
  case ((r_next >> 2) & 1) : feedback_value = ( r_next [7:0] ^ r_next << 2 & 077);
  case ((r_next >> 1) & 1) : feedback_value = ( r_next [8:0] ^ r_next << 1 & 077);
  case ((r_next >> 0) & 1) : feedback_value = ( r_next [8:9] ^ r_next << 0 & 077);
  qendmodule
