// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// This implementation says whether to "ena" or "reset" (ena" or "set" or "set").
// 
// When ena is high, the reset signal is high, and the output would
// be used as an "sr" just before the rising edge of the clock.
//
// The counter is implemented as a clock.
//
reg [3:0] q;

// When clk_ena is high, the output is enabled
// The output is latched when clk_ena is low.
// This implementation ensures that the clock at 50 MHz.
//
// The clk_ena signal is created by an assertion clk_ena.
//
always @(posedge clk or negedge reset)
    if(!reset) q <= 0;
    else        q <= q + 1;

//endmodule
