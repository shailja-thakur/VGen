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
always @(posedge clk or negedge reset) begin
  if (reset) begin
    r_reg <= 1;
  end
  else begin
    r_reg <= r_next ^ ( (r_reg >> 4) & 1);
    feedback_value <= (r_reg & 0b1110) << 5;
  end
end

// The following function is an implementation of a Galois LFSR with taps at
// bit positions 3, 5, 7, and 9.
// The taps are bit positions 3, 5, 7, and 9.
// The taps are also known as the "polynomial taps".
// The taps are used in the Galois LFSR.
// The taps are also used in the Galois LFSR for the polynomial division algorithm.
// The taps are also used in the polynomial division algorithm.
// The tapsendmodule
