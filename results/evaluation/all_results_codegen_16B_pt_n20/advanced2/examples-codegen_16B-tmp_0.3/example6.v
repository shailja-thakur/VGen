// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or negedge reset)
    if (reset)
        q <= 0;
    else if (slowena && q < 9)
        q <= q + 1;

// The decade counter is implemented as a decade counter register (DCR)
// that counts from 0 through 9, inclusive. The DCR is clocked by the
// clock input and reset whenever the reset input is high.

always @(posedge clk or negedge reset)
    if (reset)
        q <= 0;
    else if (slowena)
        q <= q + 1;

endmodule
