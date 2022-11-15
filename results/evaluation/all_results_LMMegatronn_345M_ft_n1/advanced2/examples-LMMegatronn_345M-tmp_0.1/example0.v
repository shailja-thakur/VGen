// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// This is an example for counter that chooses which
// the actual clocked clk.

reg [3:0] q_reg;

always @(posedge clk or posedge reset)
begin
  if (reset)
    q_reg <= 0;
  else
    q_reg <= q_reg + 1;
end

assign q = q_reg;

endmodule
