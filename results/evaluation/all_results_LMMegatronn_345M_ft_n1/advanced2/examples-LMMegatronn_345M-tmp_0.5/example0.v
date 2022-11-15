// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

reg [3:0] q_1;

always @(posedge clk, posedge reset)
begin
  if (reset) q_1 <= 0;
  else        q_1 <= q_1 + 1;
end

always @(posedge clk, posedge reset)
begin
  if (reset) q_2 <= 0;
  else        q_2 <= q_1;
end

always @(posedge clk, posedge reset)
begin
  if (reset) q_3 <= 0;
  else        q_3 <= q_2;
end

always @(posedge clk, posedge reset)
begin
  if (reset) q_4 <= 0;
  else        q_4 <= qend
endmodule
