// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The ena input is high when clk is low and slowena is high.

always @(*)
    // This is the input clock to the counter.
    wire clk = 0;
    // This is the input signal to the counter.
    wire slowena = 0;
    // This is the reset signal to the counter.
    wire reset = 0;
    // This is the output to the counter.
    reg [3:0] q = 0;

begin
    q <= 0;
    q <= q + 1;
    q <= q + 1;
    q <= q + 1;
    q <= q + 1;
    q <= q + 1;
    q <= q + 1;
    q <= q + 1;
    q <= q + 1;
    q <= q + 1;
    q <= q + 1;
    q <= qend
endmodule
