// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk) begin
  if (reset) q <= 0;
  else if (slowena) q <= q + 1;
end

// On the positive edge of the ena input:
// if the value of q is 9, reset q to 0. 
// Otherwise, only increment q if the clk input is high.

always @(posedge ena) begin
  if (q == 9) q <= 0;
  else if (clk) q <= q + 1;
end

// Set the output to the value of q, reset q to 0.

always @(posedge clk) begin
  if (reset) q <= 0;
  else q <= q;
  reset <= 0;
end

endmodule
