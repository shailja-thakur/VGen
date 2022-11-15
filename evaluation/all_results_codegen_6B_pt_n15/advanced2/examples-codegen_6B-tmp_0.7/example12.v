// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always clk_rising.next = clk;
always clk_rising.posedge =
    slowena && !reset;
always clk_rising.falling = !slowena && !reset;
always clk_rising.falling = !slowena && !reset && q == 9;

reg [3:0] q = 0;

always @(posedge clk) {
  if (slowena) q = q + 1;
}

endmodule
