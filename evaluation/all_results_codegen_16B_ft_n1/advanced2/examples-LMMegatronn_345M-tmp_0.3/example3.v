// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

reg [3:0] q_next;

always @(posedge clk or posedge reset)
begin
  if (reset) q_next <= 4'b0;
  else if (slowena) q_next <= q_next + 4'b1;
end

assign q = q_next;

endmodule
