// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
//
// This implementation uses a simple shift register.

always @(posedge clk) begin
    if (reset) q <= 0;
    else if (slowena) {
        if (q < 9) q <= q + 1;
    }
end

// On the negative edge of the clock:
// only reset the q register if the reset input is high.
//
// This implementation uses a simple flip-flop.

always @(posedge clk or negedge rst) begin
    if (rst) q <= 0;
    else if (!slowena) q <= 9;
end

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
//
// This implementation uses a simple shift registerendmodule
