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
wire lfsr_sig;
always @(posedge clk) 
  // decrement bit values at output
  if (r_next[0] != 128) {
    feedback_value = r_reg[0] >> 1;
    // FXn is (FULL_DISPLAY|DISABLED|2nd FRAME|3RD_FRAME|PREVIOUS_BIT_SHIFTED)
    switch ((uint8_t)(r_reg[0] & THREE_QUARTER_MASK))
{

      case FULL_DISPLAY : for (i = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}; i < 64; i = i + 1) 
        r_reg[i] = r_reg[i] & (~ONE_BIT) | (0b1 << 7endmodule
