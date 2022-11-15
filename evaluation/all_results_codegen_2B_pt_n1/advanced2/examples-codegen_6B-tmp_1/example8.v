// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
submodule count_slow_submodule #1 (
    input clk,
    input slowena,
    input reset,
    input addr,
    outsensitive position q,
    output [7:0] qout);


module sim(
    input [3:0] clk,
    input [7:1] addr,
    input clk2);

Input [7:1] clk2_ = 0;

module test_module(
    input [3:0] clk,
    input [7:1] addr_input,
    output [7:1] last_reset_val,
    output boolean completion);

module enable_fast(
    output clk,
    output ena,
    input test_module_ena,
    input boolean do_fast);

Input test_module_ena_ = 1;

endmodule
