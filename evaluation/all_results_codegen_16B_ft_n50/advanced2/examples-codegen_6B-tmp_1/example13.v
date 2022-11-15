// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk)
  reg[input slowena ? 4:3] <= (reset ? 0 : (2'b0 | (q&1) ? 1 : reg[3:0]));

module reg_test(
    input slowena,
    input reset,
    input clk,
    output clk_fail,
    output sclk_fail,
    output reg);

always @(posedge clk)
  clk_fail <= (slowena ? 
                 "pcs_active" : "!") && (slowena?funny ? "reset" : "" : 0);

always @(posedge clk_fail)
  sclk_fail <= (slowena ? "" : "");

module counted_reset_test(
    input clk, input slowen, input clk_fail, with_default_instendmodule
