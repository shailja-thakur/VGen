// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The counter is reset to 0 on the negative edge of the clock.
always @(posedge clk)
    if (reset)
        q <= 0;
    else if (slowena && q < 9)
        q <= q + 1;
    else
        q <= 0;

// On the negative edge of the clock:
// if slowena is high, then count down.
// If slowena is low, then count up.
always @(negedge clk)
    if (slowena)
        if (q > 0)
            q <= q - 1;
        else
            q <= 9;
    else
        if (q > 0)
            q <= q + 1;
        else
            q <= 9;

endmodule
