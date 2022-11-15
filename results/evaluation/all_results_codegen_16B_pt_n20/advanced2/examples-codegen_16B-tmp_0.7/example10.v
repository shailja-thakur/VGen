// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk or posedge reset)
    if (reset) q <= 0;
    else if (slowena && q < 9) q <= q + 1;

// On the positive edge of the slow clock:
// if the reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge slowclk or posedge reset)
    if (reset) q <= 0;
    else if (slowena && q < 9) q <= q + 1;

// We need a separate clock for the enable signal to avoid contention with the
// other signals.
always @(posedge clk or posedge reset)
    if (reset) enable <= 0;
    else if (slowena) enable <= 1;

reg [3:0] q = 0endmodule
