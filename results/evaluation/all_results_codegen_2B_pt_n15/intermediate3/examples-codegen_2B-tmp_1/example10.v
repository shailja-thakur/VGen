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
function main()
{
  // on clock rise
  if(clk==1)
  {
    // assign feedback value in r_reg to r_next
    r_next[5] = r_next[3];
    r_next[3] = 1;
    
    // assign as output value feedback and reset the register
    // feedback concatenated with most significant bits
    // of old and new value reversed
    q[0] = 10 ^ (r_next^r_reg);
    q[1] = 30 ^ (r_next^r_reg);
    r_reg = r_next;
  }
  // on clock fall
  else
  {
    // foward the feed back value in old register into r_next
    r_next[3] = r_next[5] + (r_reg[5]<<4)endmodule
